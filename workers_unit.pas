{ -------------------------------------------------------------------------------
  ACIONAR
  Copyright (C) 1996-2013  Pedro Tomaz Alves

  This program is free software; you can redistribute it and/or
  modify it under the terms of the GNU General Public License
  as published by the Free Software Foundation; either version 2
  of the License, or (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  The GNU GPL can be found at:
  http://www.gnu.org/copyleft/gpl.html
  ------------------------------------------------------------------------------- }

unit workers_unit;

interface

uses
  Windows, Messages, SysUtils, Classes, ShellApi;

const
  exterm_OK = 00;
  exterm_openprocess = 01;
  exterm_terminateprocess = 02;
  exterm_terminatefailed = 03;
  exterm_openprocesstoken = 04;
  exterm_duplicatehandle = 05;
  exterm_createremotethread = 06;
  exterm_LookupPrivilegeValue = 07;
  exterm_AdjustTokenPrivileges1 = 08;
  exterm_AdjustTokenPrivileges2 = 09;
  exterm_beg = exterm_openprocess;
  exterm_end = exterm_AdjustTokenPrivileges2;
  exterm_message: ARRAY [exterm_beg .. exterm_end] OF String =
    ('Call to OpenProcess fonction failed',
    'Call to TerminateProcess function failed',
    'All functions succeeded, but process was not killed',
    'Call to OpenProcessToken function failed',
    'Call to DuplicateHandle function failed',
    'Call to CreateRemoteThread function failed',
    'Call to LookupPrivilegeValue function failed',
    'Call #1 to AdjustTokenPrivileges function failed',
    'Call #2 to AdjustTokenPrivileges2 function failed');

Procedure DetonProcessos(Processo: string);
Procedure ListaProcessos;

implementation

uses acao, util, uDGProcessList; // reobjs; //, mmSystem;

(* *************************************************************************** *)

function SetPrivilege(hToken: THandle; Privilege: PChar;
  // Privilege to enable/disable
  bEnablePrivilege: BOOL // TRUE to enable.  FALSE to disable
  ): integer;
// Technique from Microsoft Knowledge Base article Q131065
// translated into Delphi by Neil J. Rubenking

VAR
  tp: TOKEN_PRIVILEGES;
  luid: TLargeInteger;
  tpPrevious: TOKEN_PRIVILEGES;
  cbPrevious: DWORD;
begin
  cbPrevious := sizeof(TOKEN_PRIVILEGES);
  Result := exterm_LookupPrivilegeValue;
  IF NOT LookupPrivilegeValue(nil, Privilege, luid) THEN
    Exit;
  //
  // first pass.  get current privilege setting
  //
  tp.PrivilegeCount := 1;
  tp.Privileges[0].luid := luid;
  tp.Privileges[0].Attributes := 0;

  Result := exterm_AdjustTokenPrivileges1;
  AdjustTokenPrivileges(hToken, FALSE, tp, sizeof(TOKEN_PRIVILEGES), tpPrevious,
    cbPrevious);
  IF GetLastError() <> ERROR_SUCCESS THEN
    Exit;

  //
  // second pass.  set privilege based on previous setting
  //
  tpPrevious.PrivilegeCount := 1;
  tpPrevious.Privileges[0].luid := luid;

  WITH tpPrevious.Privileges[0] DO
    IF bEnablePrivilege THEN
      Attributes := Attributes OR SE_PRIVILEGE_ENABLED
    ELSE
      Attributes := Attributes AND (NOT SE_PRIVILEGE_ENABLED);

  Result := exterm_AdjustTokenPrivileges2;
  AdjustTokenPrivileges(hToken, FALSE, tpPrevious, cbPrevious, nil, cbPrevious);
  IF GetLastError() <> ERROR_SUCCESS THEN
    Exit;
  Result := exterm_OK;
end;

function Exterminate(Pid: DWORD): integer;
const
  SE_DEBUG_NAME = 'SeDebugPrivilege';
type
  ExitProcessType = procedure(uExitCode: UINT); stdcall;
VAR
  H: THandle;
  HProcessDup: THandle;
  hRT: THandle;
  dwTID: DWORD;
  hkernel: THandle;
  pfnExitProc: ExitProcessType;

  function WaitFlash(T: THandle): Boolean;
  VAR
    Count: integer;
  begin
    Result := WaitForSingleObject(T, 500) <> WAIT_TIMEOUT;
    IF NOT Result THEN
    begin
      Count := 0;
      REPEAT
        Inc(Count);
        Result := WaitForSingleObject(T, 500) <> WAIT_TIMEOUT;
      UNTIL Result OR (Count > 9);
    end;
  end;

VAR
  hToken: THandle;
begin
  IF NOT IsWinNT THEN // just terminate it
  begin
    H := OpenProcess(PROCESS_ALL_ACCESS, FALSE, Pid);
    IF H = 0 THEN
      Result := exterm_openprocess
    ELSE IF NOT TerminateProcess(H, 0) THEN
      Result := exterm_terminateprocess
    ELSE IF NOT WaitFlash(H) THEN
      Result := exterm_terminatefailed
    ELSE
      Result := exterm_OK;
    Exit;
  end;
  // Now the juicy WinNT stuff
  // Technique from Microsoft Knowledge Base article Q131065
  // gives our process DEBUG access
  IF NOT OpenProcessToken(GetCurrentProcess(), TOKEN_ADJUST_PRIVILEGES OR
    TOKEN_QUERY, hToken) THEN
  begin
    Result := exterm_openprocesstoken;
    Exit;
  end;
  try
    Result := SetPrivilege(hToken, SE_DEBUG_NAME, True);
    IF Result <> exterm_OK THEN
      Exit;
    try
      Result := exterm_openprocess;
      H := OpenProcess(PROCESS_ALL_ACCESS, FALSE, Pid);
      IF H = 0 THEN
        Exit;
      HProcessDup := INVALID_HANDLE_VALUE;
      dwTID := 0;
      Result := exterm_duplicatehandle;
      IF NOT DuplicateHandle(GetCurrentProcess, H, GetCurrentProcess,
        @HProcessDup, PROCESS_ALL_ACCESS, FALSE, 0) THEN
        Exit;
      hkernel := GetModuleHandle('Kernel32');
      pfnExitProc := GetProcAddress(hkernel, 'ExitProcess');
      hRT := CreateRemoteThread(HProcessDup, nil, 0, @pfnExitProc, nil,
        0, dwTID);
      IF hRT = 0 THEN
        Result := exterm_createremotethread
      ELSE
      begin
        IF NOT(WaitFlash(hRT) OR (TerminateProcess(H, 0) AND WaitFlash(H))) THEN
          Result := exterm_terminatefailed
        ELSE
          Result := exterm_OK;
        CloseHandle(hRT);
      end;
    finally
      SetPrivilege(hToken, SE_DEBUG_NAME, FALSE);
    end;
  finally
    CloseHandle(hToken);
  end;
end;

Procedure DetonProcessos(Processo: string);
var
  dwPid: DWORD;
  { saida     : Pchar; }
  procHandle: THandle;
  ExitCD: integer;
  // This does a "hard" kill. From the MS help file :
  // The TerminateProcess function is used to
  // unconditionally cause a process to exit.
  // Use it only in extreme circumstances.
  // The state of global data maintained by dynamic-link
  // Libraries (DLLs) may be compromised if TerminateProcess
  // is used rather than ExitProcess.
  // TerminateProcess causes all threads within a process to terminate,
  // and causes a process to exit, but DLLs attached to
  // the process are not notified that the process is terminating.
begin

  dwPid := strtoint64Def(Processo, 0);
  ExitCD := 0;
  procHandle := 0;
  try // and kill process
    // ShowWindow( dwPid, SW_MINIMIZE );
    // procHandle := OpenProcess(PROCESS_TERMINATE, false, dwPid );
    // TerminateProcess(procHandle, ExitCd);
    ExitCD := Exterminate(dwPid { Pid : DWord } );
    // TerminateProcess(OpenProcess(PROCESS_TERMINATE, FALSE,
    // strtoint64Def(Nome, 0)),0);
  except
    Main.EnviaTexto(0,
      format('Ocorreu um erro ao tentar matar o processo %s. Erro: %d',
      [Processo, ExitCD]), FALSE);
  end; // try  except
  if procHandle <> 0 then
    CloseHandle(procHandle);
  // end;
  if ExitCD = 0 then
  begin
    // espera a janela ser fechada
    sleep(200);
    Main.EnviaTexto(14, IntToStr(dwPid), FALSE); // envia sinal ao Gerente
    // para excluir intem da
    // lista
  end;
end;
(* ************************************************************************* *)

procedure ListaProcessos;
var
  Index: integer;
  ProcessList: TDGProcessList;
  JS: AnsiString;
begin
  Main.Workers.Socket.Connections[0].SendText('Iniciando Lista de Processos');
  ProcessList := TDGProcessList.Create;
  ProcessList.Refresh;
  JS := '13#Lista de Processos#';

  FOR Index := 0 TO ProcessList.Count - 1 DO
    JS := JS + ProcessList.ProcessInfoToStr2(Index);

  Main.Workers.Socket.Connections[0].SendText(JS);
  FreeAndNil(ProcessList);
end;

{
  Procedure ListaProcessos;
  var
  n:  integer;
  SL: TStringList;
  JS: AnsiString;
  begin
  SL := TStringList.Create;
  //Acao.Workers.Socket.Connections[0].SendText('Iniciando Lista de Processos');
  try
  GetProcsAndWindows(SL, False);
  js:='13#Lista de Processos#';
  FOR N := 0 TO SL.Count-1 DO
  WITH SL.Objects[N] AS TProcWinObj DO
  begin
  JS := JS + Description+ '#'+ ExeName + '#'+ (intToStr(ProcID))+'#';
  end;
  {$ifdef DEBUG }
{
  Util.WriteOSD(JS,14, 150);
  {$endif }
{
  Acao.Workers.Socket.Connections[0].SendText(js);
  finally
  SL.Free;
  end;
  end;
}

end.
