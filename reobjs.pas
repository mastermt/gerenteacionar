{-------------------------------------------------------------------------------
ACIONAR
Copyright (C) 1996-2009  Pedro Tomaz Alves

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
-------------------------------------------------------------------------------}

unit reObjs;
//Contem objetos usados em SneakerNet para armazenar
// informação Sobre processos e janelas

// Trabalhado em 28 de Agosto 1999
//  21/09/1999 Pedro Tomaz Alves
//  29/09/1999 Jeronimo C.Bezerra
/// varias alteracoes posteriores ...
/// ....
/// 29/05/2003 Pedro Tomaz Alves
/// Utilizando fonte do Programa KillAll da PCMagazine

interface
uses Windows, SysUtils, Classes;
{
type
  TAppType =
    (atNone,    // type not yet determined
     atVisWin,  // application with visible windows
     atHidWin,  // application with only hidden windows
     atExplor,  // Windows Explorer
     atNonWin); // application with no windows
  TProtType =
    (ptNone,   // no protection - close or kill
     ptNoClos, // can't close, only kill
     ptNoKill, // can't kill, only close
     ptNoBoth, // protected - no close or kill
     ptHiProt, // permanently protected
     ptClosed, // already closed
     ptKilled); // already killed

  HWndArray = ARRAY OF HWnd;
}
type
  TProcWinObj = class(TObject)
  private
    fProcID      : DWORD;
    fExename     : String;
    fDescription : String;
    function GetDescription: String;
  public
  constructor Create(vProcID : DWORD; const vExename : String);
              overload;
  published
    property ProcID      : DWORD read fProcID;
    property ExeName     : String read fExename;
    property Description : String read GetDescription;
  end;

// original --- killall
///-----------------------------------
{
  TProcWinObj = class(TObject)
  private
    fProcID      : DWORD;     // process ID
    fExename     : String;    // executable filename
    fDescription : String;    // program description
    fWinds       : HWndArray; // array of window handles
    fProtType    : TProtType; // protection type
    fAppType     : TAppType;  // appliaction type
    fCloseFailed : Boolean;   // true if close failed
    fKillFailed  : Boolean;   // true if kill failed
    function VisCount: Integer; // # of visible windows
    function WinCount: Integer; // # of windows, total
    // property get/set functions
    function GetAppType      : TAppType;
    function GetAppTypeName  : String;
    function GetCloseOK      : Boolean;
    function GetDescription  : String;
    function GetExpWindows   : Integer;
    function GetKillOK       : Boolean;
    function GetProtFont     : TFontStyles;
    function GetProtTypeName : String;
    function GetWinTitle     : String;
    procedure SetCloseFailed(const Value: Boolean);
    procedure SetKillFailed (const Value: Boolean);
    procedure SetProtType   (const Value: TProtType);
  public
    constructor Create(vProcID : DWORD; const vExename : String);
    function FileNameIs(const S : String) : Boolean;
    procedure AddHWnd(H : HWnd);
  published
    // read-only properties
    property AppType      : TAppType    read GetAppType;
    property AppTypeName  : String      read GetAppTypeName;
    property CloseOK      : Boolean     read GetCloseOK;
    property Descript     : String      read GetDescription;
    property ExeName      : String      read fExename;
    property ExpWindows   : Integer     read GetExpWindows;
    property KillOK       : Boolean     read GetKillOK;
    property ProcID       : DWORD       read fProcID;
    property ProtFont     : TFontStyles read GetProtFont;
    property ProtTypeName : String      read GetProtTypeName;
    property Winds        : HWndArray   read fWinds;
    property WinTitle     : String      read GetWinTitle;
    // read-write properties
    property CloseFailed : Boolean      read fCloseFailed
                                        write SetCloseFailed;
    property KillFailed  : Boolean      read fKillFailed
                                        write SetKillFailed;
    property ProtType    : TProtType    read fProtType
                                        write SetProtType;

  end;
}
///-----------------------------------


implementation
uses util;
constructor TProcWinObj.Create(vProcID : DWORD;
                               const vExename : String);
begin
  Inherited Create;
  fProcID      := vProcID;
  fExeName     := vExeName;
  fDescription := '';
end;

// Create killall
///-----------------------------------------
{
constructor TProcWinObj.Create(vProcID : DWORD;
  const vExename : String);

  function NeedHiProt: Boolean;
  begin
    Result := True;
    IF fProcID = GetCurrentProcessID THEN Exit;
    IF FilenameIs('SYSTRAY.EXE') THEN Exit;
    IF IsWinNT THEN
      begin
        IF FilenameIs('LSASS.EXE')    THEN Exit;
        IF FilenameIs('SERVICES.EXE') THEN Exit;
        IF FilenameIs('WINLOGON.EXE') THEN Exit;
      end
    ELSE
      begin
        IF FilenameIs('KERNEL32.DLL') THEN Exit;
        IF FilenameIs('RNAAPP.EXE')   THEN Exit;
      end;
    Result := False;
  end;

begin
  Inherited Create;
  fAppType     := atNone;
  fCloseFailed := False;
  fDescription := '';
  fExeName     := lowercase(vExeName);
  fKillFailed  := False;
  fProcID      := vProcID;
  SetLength(fWinds, 0);
  IF NeedHiProt THEN fProtType   := ptHiProt
  ELSE               fProtType   := ptNone;
end;
}
///-----------------------------------------

function TProcWinObj.GetDescription: String; VAR dummy : gdExeType;
// Don't go get the description string until the first time
// it's requested
begin
  IF fDescription = '' THEN
    begin
     // fDescription := allfuncs.GetDescription(fExeName, dummy);
      fDescription := Util.GetDescription(fExeName, dummy);
      IF fDescription = '' THEN
         fDescription:= ExtractFileName(fExeName);
    end;
  Result := fDescription;
end;

/// outras funcoes do killall
///-----------------------------------------
{

function TProcWinObj.FileNameIs(const S: String): Boolean;
begin
  Result := AnsiCompareText(ExtractFilename(fExeName), S) = 0;
end;

procedure TProcWinObj.AddHWnd(H: HWnd);
begin
  SetLength(fWinds, High(fWinds) + 2);
  fWinds[High(fWinds)] := H;
end;

function TProcWinObj.VisCount: Integer;
VAR N : Integer;
begin
  Result := 0;
  FOR N := 0 TO High(fWinds) DO
    IF IsWindowVisible(fWinds[N]) THEN
      Inc(Result);
end;

function TProcWinObj.WinCount: Integer;
begin
  Result := Succ(High(fWinds));
end;

function TProcWinObj.GetAppType: TAppType;
begin
  // IF the app type has not yet been determined, figure it out
  IF fAppType = atNone THEN
    begin
//      IF (NOT IsWinNT) AND IsServiceProcess(fProcID) THEN
//        fAppType := atNonWin
//      ELSE
            IF FileNameIs('EXPLORER.EXE') THEN
        fAppType := atExplor
      ELSE IF VisCount > 0 THEN
        fAppType := atVisWin
      ELSE IF WinCount > 0 THEN
        fAppType := atHidWin
      ELSE fAppType := atNonWin;
    end;
  Result := fAppType;
end;

function TProcWinObj.GetAppTypeName: String;
begin
  CASE fAppType OF
    atVisWin : Result := 'Application';
    atHidWin : Result := 'Hidden';
    atExplor : Result := 'Explorer';
    atNonWin : Result := 'Process';
  END;
end;

function TProcWinObj.GetCloseOK: Boolean;
begin
  Result := fProtType IN [ptNone, ptNoKill];
end;

function TProcWinObj.GetDescription: String;
VAR dummy : gdExeType;
// Don't go get the description string until the first time
// it's requested
begin
  IF fDescription = '' THEN
    begin
      fDescription := Allfuncs.GetDescription(fExeName, dummy);
      IF fDescription = '' THEN
        fDescription := ExtractFileName(fExeName);
    end;
  Result := fDescription;
end;

function TProcWinObj.GetExpWindows: Integer;
VAR
  N : Integer;
  H : HWnd;
begin
  IF NOT FilenameIs('EXPLORER.EXE') THEN
    Raise(Exception.Create('GetExpWindows method is valid only for '+
      'EXPLORER.EXE'));
  Result := 0;
  FOR N := 0 TO High(fWinds) DO
    begin
      H := fWinds[N];
      IF NOT IsWindow(H)         THEN Continue;
      IF NOT IsWindowVisible(H)  THEN Continue;
      IF NOT IsExplorerWindow(H) THEN Continue;
      Inc(Result);
    end;
end;

function TProcWinObj.GetKillOK: Boolean;
begin
  Result := fProtType IN [ptNone, ptNoClos];
end;

function TProcWinObj.GetProtFont: TFontStyles;
begin
  IF fCloseFailed OR fKillFailed THEN
    Result := [fsItalic]
  ELSE
  CASE ProtType OF
    ptNoClos  : Result := [];
    ptNoKill  : Result := [];
    ptNoBoth  : Result := [];
    ptHiProt  : Result := [fsBold];
    ptClosed  : Result := [fsStrikeout];
    ptKilled  : Result := [fsStrikeout];
    ELSE        Result := [];
  END;
end;

function TProcWinObj.GetProtTypeName: String;
begin
  IF fCloseFailed THEN
    Result := 'Close failed'
  ELSE IF fKillFailed THEN
    Result := 'Kill failed'
  ELSE
  CASE ProtType OF
    ptNoClos  : Result := 'Can kill';
    ptNoKill  : Result := 'Can close';
    ptNoBoth  : Result := 'Protected';
    ptHiProt  : Result := 'PROTECTED';
    ptClosed  : Result := 'Closed';
    ptKilled  : Result := 'Killed';
    ptNone    : Result := 'Can kill or close';
    ELSE        Result := '';
  END;
end;

function TProcWinObj.GetWinTitle: String;
VAR
  Len, N : Integer;
  S : String;
begin
  IF FileNameIs('EXPLORER.EXE') THEN
    Result := Format('(%d visible Explorer windows)',
      [ExpWindows])
  ELSE IF FileNameIs('SYSTRAY.EXE') THEN
    Result := 'System tray'
  ELSE
    begin
      Result := '';
      IF High(Winds) < 0 THEN Exit;
      // Return the window title of the first visible window
      // whose title is non-empty
      FOR N := 0 TO High(Winds) DO
        IF IsWindowVisible(Winds[N]) THEN
          begin
            Len := GetWindowTextLength(Winds[N]);
            IF Len = 0 THEN Continue;
            SetLength(S, Len+1);
            GetWindowText(Winds[N], PChar(S), Len+1);
            IF S <> '' THEN
              begin
                Result := S;
                Exit;
              end;
          end;
      // Nothing yet? Then return the window title of the first
      // window, visible or otherwise, that is non-empty
      FOR N := 0 TO High(Winds) DO
        begin
          Len := GetWindowTextLength(Winds[N])+1;
          SetLength(S, Len);
          GetWindowText(Winds[N], PChar(S), Len);
          IF S <> '' THEN
            begin
              Result := S;
              Exit;
            end;
        end;
    end;
end;

procedure TProcWinObj.SetCloseFailed(const Value: Boolean);
begin
  IF fProtType <> ptHiProt THEN
    fCloseFailed := Value;
end;

procedure TProcWinObj.SetKillFailed(const Value: Boolean);
begin
  IF fProtType <> ptHiProt THEN
    fKillFailed := Value;
end;

procedure TProcWinObj.SetProtType(const Value: TProtType);
begin
  IF fProtType <> ptHiProt THEN
    fProtType := Value;
end;
}
///-----------------------------------------

end.
