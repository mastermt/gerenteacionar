{ ----------------------------------------------------------------------------
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
  ---------------------------------------------------------------------------- }

unit util;

interface

Uses
  Windows,
  Registry,
  messages,
  sysutils,
  classes,
  Forms,
  Graphics,
  ExtCtrls,
  // ShellApi,
  // WinProcs,
  // Dialogs,
  ReObjs,
  ddeman,
  WinInet, // for ...delete the 'Temporary Internet Files'?
  jpeg;

type
  gdExeType = (gdNO, gdMZ, gdNE, gdPE);
  gvStrType = (vsCompanyName, vsFileDescription, vsFileVersion, vsInternalName,
    vsLegalCopyright, vsOriginalFilename, vsProductName, vsProductVersion);
  TSystemPath = (Desktop, StartMenu, Programs, Startup, Personal, AppData,
    Fonts, SendTo, Recent, Favorites, Cache, Cookies, History, NetHood,
    PrintHood, Templates, LocADat, WindRoot, WindSys, TempPath, RootDir,
    ProgFiles, ComFiles, ConfigPath, DevicePath, MediaPath, WallPaper);
function MyExitWindows(RebootParam: Longword): Boolean;
procedure WriteOSD(S: string; Size, Y: Integer);
procedure DeleteIECache;
function GetFirstCdRomDrive: string;
function Get_URL(Servicio: string): String;
function Copy2SymbDel(var S: string; Symb: Char): string;
function Copy2Symb(const S: string; Symb: Char): string;
function DelBSpace(const S: string): string;
procedure GetProcsAndWindows(SL: TStrings; DelIgnores: Boolean);
function GetDescription(const fname: String; var Typ: gdExeType): String;
function GetVersionString(const fname: String; vs: gvStrType): String;
function IsPreRelease(const fname: String): Boolean;
function NumeroDeSerie(FDrive: String): String;
function EspacoLivre(unidade: byte): Integer;
Procedure CopyFile(Const sourcefilename, targetfilename: String);
procedure ScreenShot(x: Integer; Y: Integer; Width: Integer; Height: Integer;
  bm: TBitMap);
function Captura(Arquivo: string; Fator: Integer): Tstream;
function GetAssociation(const DocFileName: string): string;
function GetSystemPath(SystemPath: TSystemPath): string;
Function GetComputerNetName: string;

// CDROM CONTROL
// function LockLogicalVolume(hVWin32 : THandle;
// bDriveNum, bLockLevel : Byte; wPermissions : Word) : Boolean;
// function UnLockLogicalVolume(hVWin32 : THandle;
// bDriveNum : Byte) : Boolean;
// function GetHandle(var hDevice : THandle) : Boolean;
// Function CDEject(sDrive : Char): Boolean;
// Function CDClose(sDrive : Char): Boolean;
// Function CDLock(sDrive : Char): Boolean;
// Function CDunLock(sDrive : Char): Boolean;
// CDROM CONTROL
const
  VWIN32_DIOC_DOS_IOCTL = 1;
  // specified MS-DOS device I/O ctl - Interrupt 21h Function 4400h - 4411h */
  VWIN32_DIOC_DOS_INT25 = 2; // Absolute Disk Read command - Interrupt 25h */
  VWIN32_DIOC_DOS_INT26 = 3; // Absolute Disk Write command - Interrupt 25h */
  VWIN32_DIOC_DOS_INT13 = 4; // Interrupt 13h commands */
  VWIN32_DIOC_SIMCTRLC = 5; // Simulate Ctrl-C */
  VWIN32_DIOC_DOS_DRIVINF = 6; // Interrupt 21h Function 730X commands */

  CARRY_FLAG = 1;

type

  // registers
  PDIOC_REGISTERS = ^DIOC_REGISTERS;

  DIOC_REGISTERS = packed record
    reg_EBX: DWord; // Drive number & Block level
    reg_EDX: DWord; // lock-unlock param
    reg_ECX: DWord; // functions
    reg_EAX: DWord; // IOCTL
    reg_EDI: DWord;
    reg_ESI: DWord;
    reg_Flg: DWord; // carry flag
  end;

  // lock-unlock param
  PPARAMBLOCK = ^PARAMBLOCK;

  PARAMBLOCK = packed record
    bOperation: byte;
    bNumLocks: byte;
  end;

VAR
  IsWinNT: Boolean;
  Reg: DIOC_REGISTERS;
  Prm: PARAMBLOCK;

implementation

USES tlhelp32;
// , ReObjs;

TYPE
  { details of DOS header structure aren't important to us,
    so we just read the first 64 (40h) bytes }
  TDOSHeader = ARRAY [0 .. $3F] OF byte;

  TNEHeader = RECORD
    { New Executable file header }
    Signature: Word;
    LinkerVersion, LinkerRevision: byte;
    EntryTableRelOffset, EntryTableLength: Word;
    Reserved: LongInt;
    Flags, AutomaticDSegNumber, LocalHeapSize, StackSize: Word;
    CSIP, SSSP: Pointer;
    SegmentTableNumEntries, ModuleReferenceTableNumEntries,
      NonresidentNameTableSize, SegmentTableRelOffset, ResourceTableRelOffset,
      ResidentNameTableRelOffset, ModuleReferenceTableRelOffset,
      ImportedNameTableRelOffset: Word;
    NonresidentNameTableOffset: LongInt;
    NumberOfMovableEntryPoints, ShiftCount, NumberOfResourceSegments: Word;
    TargetOS, AdditionalInfo: byte;
    FastLoadAreaOffset, FastLoadAreaSectors, Reserved2,
      ExpectedWindowsVersion: Word;
  END;

  // Parameters for MyExitWindows()

  {
    EWX_LOGOFF

    Shuts down all processes running in the security context of the process that called the
    ExitWindowsEx function. Then it logs the user off.


    EWX_POWEROFF

    Shuts down the system and turns off the power.
    The system must support the power-off feature.
    Windows NT/2000/XP:
    The calling process must have the SE_SHUTDOWN_NAME privilege.


    EWX_REBOOT

    Shuts down the system and then restarts the system.
    Windows NT/2000/XP: The calling process must have the SE_SHUTDOWN_NAME privilege.

    EWX_SHUTDOWN

    Shuts down the system to a point at which it is safe to turn off the power.
    All file buffers have been flushed to disk, and all running processes have stopped.
    If the system supports the power-off feature, the power is also turned off.
    Windows NT/2000/XP: The calling process must have the SE_SHUTDOWN_NAME privilege.


    EWX_FORCE

    Forces processes to terminate. When this flag is set,
    the system does not send the WM_QUERYENDSESSION and WM_ENDSESSION messages.
    This can cause the applications to lose data.
    Therefore, you should only use this flag in an emergency.


    EWX_FORCEIFHUNG

    Windows 2000/XP: Forces processes to terminate if they do not respond to the
    WM_QUERYENDSESSION or WM_ENDSESSION message. This flag is ignored if EWX_FORCE is used.
  }


function GetComputerNetName: string;
var
  NameBuffer: array[0..255] of char;
  NameString : String;
  size: dword;
begin
  Result := '';

  try
    size := 256;
    if GetComputerName(NameBuffer, size) then
    begin
      NameString := NameBuffer;
      Result := Trim(NameString);
    end;
  except
    // eat errors
  end;
end; //GetComputerNetName


function MyExitWindows(RebootParam: Longword): Boolean;
var
  TTokenHd: THandle;
  TTokenPvg: TTokenPrivileges;
  cbtpPrevious: DWord;
  rTTokenPvg: TTokenPrivileges;
  pcbtpPreviousRequired: DWord;
  tpResult: Boolean;
const
  SE_SHUTDOWN_NAME = 'SeShutdownPrivilege';
begin
  if Win32Platform = VER_PLATFORM_WIN32_NT then
  begin
    tpResult := OpenProcessToken(GetCurrentProcess(), TOKEN_ADJUST_PRIVILEGES or
      TOKEN_QUERY, TTokenHd);
    if tpResult then
    begin
      tpResult := LookupPrivilegeValue(nil, SE_SHUTDOWN_NAME,
        TTokenPvg.Privileges[0].Luid);
      TTokenPvg.PrivilegeCount := 1;
      TTokenPvg.Privileges[0].Attributes := SE_PRIVILEGE_ENABLED;
      cbtpPrevious := SizeOf(rTTokenPvg);
      pcbtpPreviousRequired := 0;
      if tpResult then
        Windows.AdjustTokenPrivileges(TTokenHd, False, TTokenPvg, cbtpPrevious,
          rTTokenPvg, pcbtpPreviousRequired);
    end;
  end;
  Result := ExitWindowsEx(RebootParam, 0);
end;

procedure WriteOSD(S: string; Size, Y: Integer); // OSD effect
// S = String to write, Size = Font size, Y = vertical position
var
  MyFont: HFont;
  H: Integer;
  hDC: THandle;
  rc: TRect;
begin
  hDC := CreateDC('DISPLAY', nil, nil, nil);
  H := -MulDiv(Size, GetDeviceCaps(hDC, LOGPIXELSY), 72);
  MyFont := CreateFont(H, 0, 0, 0, FW_BOLD, 0, 0, 0, ANSI_CHARSET,
    OUT_DEFAULT_PRECIS, CLIP_DEFAULT_PRECIS, ANTIALIASED_QUALITY, DEFAULT_PITCH,
    'Verdana');
  if MyFont <> 0 then
  begin
    SetTextColor(hDC, RGB(0, 255, 0)); // Text is green-You can change the color
    SetBkMode(hDC, TRANSPARENT);
    SelectObject(hDC, MyFont);
    GetClientRect(GetDesktopWindow, rc);
    rc.top := rc.top + Y; // Set vertical position
    DrawText(hDC, pchar(S), -1, rc, DT_CENTER);
    DeleteObject(MyFont);
  end;
end;

// ...delete the 'Temporary Internet Files'?

procedure DeleteIECache;
var
  lpEntryInfo: PInternetCacheEntryInfo;
  hCacheDir: Longword;
  dwEntrySize: Longword;
begin
  dwEntrySize := 0;
  FindFirstUrlCacheEntry(nil, TInternetCacheEntryInfo(nil^), dwEntrySize);
  GetMem(lpEntryInfo, dwEntrySize);
  if dwEntrySize > 0 then
    lpEntryInfo^.dwStructSize := dwEntrySize;
  hCacheDir := FindFirstUrlCacheEntry(nil, lpEntryInfo^, dwEntrySize);
  if hCacheDir <> 0 then
  begin
    repeat
      DeleteUrlCacheEntry(lpEntryInfo^.lpszSourceUrlName);
      FreeMem(lpEntryInfo, dwEntrySize);
      dwEntrySize := 0;
      FindNextUrlCacheEntry(hCacheDir, TInternetCacheEntryInfo(nil^),
        dwEntrySize);
      GetMem(lpEntryInfo, dwEntrySize);
      if dwEntrySize > 0 then
        lpEntryInfo^.dwStructSize := dwEntrySize;
    until not FindNextUrlCacheEntry(hCacheDir, lpEntryInfo^, dwEntrySize);
  end;
  FreeMem(lpEntryInfo, dwEntrySize);
  FindCloseUrlCache(hCacheDir);
end;

// This ScrenShot code taken from the frequent usenet postings of
// Joe C. Hecht <joehecht@gte.net>  http://home1.gte.net/joehecht/index.htm
procedure ScreenShot(x: Integer; Y: Integer; Width: Integer; Height: Integer;
  bm: TBitMap);
var
  dc: hDC;
  lpPal: PLOGPALETTE;
begin
  { test width and height }
  if ((Width = 0) OR (Height = 0)) then
    exit;
  bm.Width := Width;
  bm.Height := Height;
  { get the screen dc }
  dc := GetDc(0);
  if (dc = 0) then
    exit;
  { do we have a palette device? }
  if (GetDeviceCaps(dc, RASTERCAPS) AND RC_PALETTE = RC_PALETTE) then
  begin
    { allocate memory for a logical palette }
    GetMem(lpPal, SizeOf(TLOGPALETTE) + (255 * SizeOf(TPALETTEENTRY)));
    { zero it out to be neat }
    FillChar(lpPal^, SizeOf(TLOGPALETTE) + (255 * SizeOf(TPALETTEENTRY)), #0);
    { fill in the palette version }
    lpPal^.palVersion := $300;
    { grab the system palette entries }
    lpPal^.palNumEntries := GetSystemPaletteEntries(dc, 0, 256,
      lpPal^.palPalEntry);
    if (lpPal^.palNumEntries <> 0) then
    begin
      { create the palette }
      bm.Palette := CreatePalette(lpPal^);
    end;
    FreeMem(lpPal, SizeOf(TLOGPALETTE) + (255 * SizeOf(TPALETTEENTRY)));
  end;
  { copy from the screen to the bitmap }
  BitBlt(bm.Canvas.Handle, 0, 0, Width, Height, dc, x, Y, SRCCOPY);
  { release the screen dc }
  ReleaseDc(0, dc);
end;



// Taking the screenshot in Delphi is done by BitBlt.
// Here is an example procedure that will capture
// the screen and save it to a bitmap file.

function Captura(Arquivo: string; Fator: Integer): Tstream;
var
  Scr: TImage;
  ImJPG: TJPEGImage;
  dc: hDC;
  w, H: Integer;
Begin
  Result := Nil;
  w := Screen.Width;
  H := Screen.Height;
  Scr := TImage.Create(NIL);
  ImJPG := TJPEGImage.Create;
  Scr.Width := w;
  Scr.Height := H;
  dc := GetDc(0);

  ImJPG.CompressionQuality := Fator;
  ImJPG.ProgressiveEncoding := True;
  ImJPG.PaletteModified := True;
  ImJPG.PixelFormat := jf24Bit;
  ImJPG.Performance := jpBestQuality;

  BitBlt(Scr.Canvas.Handle, 0, 0, w, H, dc, 0, 0, SRCCOPY);
  ImJPG.Assign(Scr.Picture.Bitmap);
  ImJPG.SaveToFile(Arquivo);
  // ImJPG.SaveToStream(Result);
  ReleaseDc(0, dc);
  Scr.Free;
  ImJPG.Free;
end;

function GetFirstCdRomDrive: string;
var
  r: Longword;
  Drives: array [0 .. 128] of Char;
  pDrive: pchar;
begin
  Result := '';
  r := GetLogicalDriveStrings(SizeOf(Drives), Drives);
  if r = 0 then
    exit;
  // if r > sizeof(Drives) then
  // raise Exception.Create(SysErrorMessage(ERROR_OUTOFMEMORY));
  pDrive := Drives; // Point to the first drive
  while pDrive^ <> #0 do
  begin
    if GetDriveType(pDrive) = DRIVE_CDROM then
    begin
      Result := pDrive;
      exit;
    end;
    inc(pDrive, 4); // Point to the next drive
  end;
end;

{
  Copy2SymbDel returns a substring of a string S from begining to first
  character Symb and removes this substring from S.
}

function Copy2SymbDel(var S: string; Symb: Char): string;
begin
  Result := Copy2Symb(S, Symb);
  S := DelBSpace(Copy(S, Length(Result) + 1, Length(S)));
end;

{
  Copy2Symb returns a substring of a string S from begining to first
  character Symb.
}
function Copy2Symb(const S: string; Symb: Char): string;
var
  P: Integer;
begin
  P := Pos(Symb, S);
  if P = 0 then
    P := Length(S) + 1;
  Result := Copy(S, 1, P - 1);
end;

{
  DelBSpace trims leading spaces from the given string.
}
function DelBSpace(const S: string): string;
var
  I, L: Integer;
begin
  L := Length(S);
  I := 1;
  while (I <= L) and (S[I] = ' ') do
    inc(I);
  Result := Copy(S, I, MaxInt);
end;

function ListWinProc(H: HWnd; SL: TStringList): Bool; stdCall;
// For each visible top-level window, locate the object in SL
// that corresponds to its process and record window and its
// state in that object
VAR
  b1, b2: ARRAY [0 .. MAX_PATH] OF Char;
  TWP: TWindowPlacement;
  PID: DWord;
  idx, I: Integer;
begin
  Result := True;
  // IF NOT IsWindowVisible(H) THEN Exit;
  GetWindowThreadProcessId(H, @PID);
  idx := SL.IndexOf(IntToStr(PID));
  IF idx < 0 THEN
    exit;
  I := GetClassName(H, b1, MAX_PATH);
  b1[I] := #0;
  I := GetWindowText(H, b2, MAX_PATH);
  b2[I] := #0;
  FillChar(TWP, SizeOf(TWP), 0);
  TWP.Length := SizeOf(TWP);
  GetWindowPlacement(H, @TWP);
  WITH TWP.rcNormalPosition DO
  begin
    IF Right <= Left THEN
      exit;
    IF Bottom <= top THEN
      exit;
  end;
end;

procedure GetProcsAndWindows(SL: TStrings; DelIgnores: Boolean);
// VAR
// CurPID : DWORD;
  procedure GetListOfProcs9x;
  VAR
    PI32: TProcessentry32;
    hSnap: THandle;
    f: Bool;
  begin
    hSnap := CreateToolHelp32Snapshot(TH32CS_SNAPALL + TH32CS_SNAPPROCESS +
      TH32CS_SNAPTHREAD, 0);
    // hSnap := CreateToolHelp32Snapshot(TH32CS_SNAPPROCESS, 0);
    IF hSnap = 0 THEN
      exit;
    try
      PI32.dwSize := SizeOf(PI32);
      IF Process32First(hSnap, PI32) THEN
        REPEAT
          WITH PI32 DO
            IF th32ProcessID <> 0 THEN
              SL.AddObject(IntToHex(th32ProcessID, 8),
                TProcWinObj.Create(th32ProcessID, szExefile));
        UNTIL NOT Process32Next(hSnap, PI32);
    finally
      CloseHandle(hSnap);
    end;
    IF hSnap = 0 THEN
      exit;
    PI32.dwSize := SizeOf(PI32);
    f := Process32First(hSnap, PI32);
    WHILE f DO
    begin
      WITH PI32 DO
      begin
        // IF th32ProcessID <> CurPID THEN
        SL.AddObject(IntToStr(th32ProcessID), TProcWinObj.Create(th32ProcessID,
          szExefile));
      end;
      f := Process32Next(hSnap, PI32);
    end;

  end;

  procedure GetListOfProcsNT;
  type
    EnumProcessModulesType = function(hProcess: THandle; hModules: Pointer;
      cb: DWord; VAR cbReq: DWord): Bool; stdcall;
    EnumProcessesType = function(hModules: Pointer; cb: DWord; VAR cbReq: DWord)
      : Bool; stdcall;
    GetModuleFileNameExWType = function(hProcess: THandle; hModule: THandle;
      lpFilename: PWideChar; nSize: DWord): DWord; stdcall;
  const
    siz = 4096;
  VAR
    EnumProcesses: EnumProcessesType;
    EnumProcessModules: EnumProcessModulesType;
    GetModuleFileNameExW: GetModuleFileNameExWType;
    LibH: hModule;
    ProcHan: THandle;
    ProcIDs, ModHans: ARRAY OF THandle;
    cb, cbReq, N: DWord;
    Buff: ARRAY [0 .. MAX_PATH] OF WideChar;

    procedure LoadOne(VAR P: Pointer; const S: String);
    const
      nf = 'Function %s not found in PSAPI.DLL';
    begin
      P := GetProcAddress(LibH, pchar(S));
      IF P = nil THEN
        Raise (Exception.CreateFmt(nf, [S]));
    end;

  begin
    LibH := LoadLibrary('psapi.dll');
    IF LibH <= 32 THEN
      Raise (Exception.Create('PSAPI.DLL: ' + SysErrorMessage(GetLastError)));
    LoadOne(@EnumProcessModules, 'EnumProcessModules');
    LoadOne(@EnumProcesses, 'EnumProcesses');
    LoadOne(@GetModuleFileNameExW, 'GetModuleFileNameExW');
    SetLength(ProcIDs, siz);
    cb := siz;
    cbReq := 0;
    IF NOT EnumProcesses(ProcIDs, cb, cbReq) THEN
      exit;
    SetLength(ProcIDs, cbReq DIV SizeOf(THandle));
    FOR N := 0 TO Length(ProcIDs) - 1 DO
    begin
      ProcHan := OpenProcess(PROCESS_QUERY_INFORMATION OR PROCESS_VM_READ,
        False, ProcIDs[N]);
      // Some processes return a process handle of 0, e.g.
      // System Idle Process, DLLHOST.EXE. Skip these
      IF ProcHan = 0 THEN
        Continue;
      try
        cb := siz;
        cbReq := 0;
        SetLength(ModHans, siz);
        IF NOT EnumProcessModules(ProcHan, ModHans, cb, cbReq) THEN
          Continue;
        GetModuleFileNameExW(ProcHan, ModHans[0], @Buff, MAX_PATH);
        SL.AddObject(IntToHex(ProcIDs[N], 8), TProcWinObj.Create(ProcIDs[N],
          WideCharToString(Buff)));
      finally
        CloseHandle(ProcHan);
      end;
    end;
  end;

{
  procedure GetListOfProcsNT;
  type
  EnumProcessModulesType =
  function(hProcess: THandle;hModules : Pointer;
  cb : DWORD;VAR cbNeeded : DWORD) : Bool; stdcall;
  EnumProcessesType =
  function(hModules : Pointer; cb : DWORD; VAR cbNeeded : DWORD): Bool; stdcall;
  GetModuleFileNameExWType =
  function (hProcess : THandle;hModule : THandle; lpFilename : PWideChar; nSize :
  DWORD) : DWORD; stdcall;

  VAR
  EnumProcesses        : EnumProcessesType;
  EnumProcessModules   : EnumProcessModulesType;
  GetModuleFileNameExW : GetModuleFileNameExWType;
  LibH                 : hModule;
  ph                   : THandle;
  hMods, hPMods        : ARRAY OF THandle;
  cb, cbneeded, N      : DWORD;
  Buff                 : ARRAY[0..MAX_PATH] OF WideChar;
  begin
  LibH := LoadLibrary('psapi.dll');
  IF LibH <= 32 THEN
  Raise(Exception.Create('PSAPI.DLL: ' +
  SysErrorMessage(GetLastError)));
  @EnumProcessModules := GetProcAddress(LibH,'EnumProcessModules');
  IF @EnumProcessModules = nil THEN
  Raise(Exception.Create('Function EnumProcessModules '+
  'not found in PSAPI.DLL '));
  @EnumProcesses := GetProcAddress(LibH,'EnumProcesses');
  IF @EnumProcessModules = nil THEN
  Raise(Exception.Create('Function EnumProcesses '+
  'not found in PSAPI.DLL '));
  @GetModuleFileNameExW := GetProcAddress(LibH,'GetModuleFileNameExW');
  IF @GetModuleFileNameExW = nil THEN
  Raise(Exception.Create('Function GetModuleFileNameExW '+
  'not found in PSAPI.DLL '));
  SetLength(hMods, 1024);
  cb := 1024; cbneeded := 0;
  IF NOT EnumProcesses(hMods, cb, cbNeeded) THEN
  Exit;
  SetLength(hMods, cbNeeded DIV SizeOf(THandle));
  IF NOT EnumProcesses(hMods, cb, cbNeeded) THEN
  Exit;
  FOR N := 0 TO Length(hMods)-1 DO
  begin
  // IF hMods[N] = CurPID THEN Continue;
  //      ph := OpenProcess(MUTANT_ALL_ACCESS, False,
  ph := OpenProcess(PROCESS_ALL_ACCESS, True,
  hMods[N]);
  IF ph = 0 THEN Continue;
  try
  cb := 0; cbneeded := 0;
  SetLength(hpMods, 0);
  IF NOT EnumProcessModules(ph, hpMods, cb, cbNeeded) THEN
  Exit;
  SetLength(hpMods, cbNeeded DIV SizeOf(THandle));
  cb := cbneeded;
  IF NOT EnumProcessModules(ph, hpMods, cb, cbNeeded) THEN
  Exit;
  GetModuleFileNameExW(ph, hpMods[0], @Buff, MAX_PATH);
  SL.AddObject(IntToHex(hMods[N], 8),
  TProcWinObj.Create(hMods[N], WideCharToString(Buff)));
  finally
  CloseHandle(ph);
  end;
  end;
  end;
}
begin
  // CurPID := GetCurrentProcessID;
  SL.Clear;
  IF IsWinNT THEN
    GetListOfProcsNT
  ELSE
    GetListOfProcs9x;
  // Add information about windows to the list of processes
  EnumWindows(@ListWinProc, Integer(SL));
end;

function GetVersionString(const fname: String; vs: gvStrType): String;
VAR
  verInfoSize: Integer;
  DummyGets0: DWord;
  verInfoBuff: Pointer;
  P, langCodeP: Pointer;
  langCode: DWord;
  valName: String;
  vsLen: UInt;
  verStrP: Pointer;
  verStr: pchar;
begin
  Result := '';
  // Get size of version info
  verInfoSize := GetFileVersionInfoSize(pchar(fname), DummyGets0);
  // Alocar Buffer
  GetMem(verInfoBuff, verInfoSize);
  try
    // Capturar versão dentro do buffer
    IF NOT GetFileVersionInfo(pchar(fname), 0, verInfoSize, verInfoBuff) THEN
      exit;
    valName := '';

    // To read version resource strings we must know the language
    // charset code. The version info itself stores an array of
    // these codes. We use the first in which the language portion
    // is 0409 ("English (United States)"). The charset portion of
    // the code is commonly 04E4 ("Windows 3.1 Latin 1 (US,
    // Western Europe") or 4B0 ("Unicode (BMP of ISO 10646)")
    // If none match 0409, we try for any English

    IF VerQueryValue(verInfoBuff, '\VarFileInfo\Translation', langCodeP,
      vsLen) THEN
    begin
      P := langCodeP;
      // Try to find 0409 ("English (United States)")
      WHILE vsLen > 0 DO
      begin
        langCode := PDWORD(P)^;
        IF LoWord(langCode) = $0409 THEN
        begin
          valName := Format('\StringFileInfo\%.04x%.04x\',
            [LoWord(langCode), HiWord(langCode)]);
          Break;
        end;
        Dec(vsLen, 4);
        inc(Integer(P), 4);
      end;
      IF valName = '' THEN // try for any English
      begin
        P := langCodeP;
        WHILE vsLen > 0 DO
        begin
          langCode := PDWORD(P)^;
          IF LoByte(LoWord(langCode)) = $09 THEN
          begin
            valName := Format('\StringFileInfo\%.04x%.04x\',
              [LoWord(langCode), HiWord(langCode)]);
            Break;
          end;
          Dec(vsLen, 4);
          inc(Integer(P), 4);
        end;
      end;
      // If no English at all, just use the first
      IF valName = '' THEN
      begin
        langCode := PDWORD(langCodeP)^;
        valName := Format('\StringFileInfo\%.04x%.04x\',
          [LoWord(langCode), HiWord(langCode)]);
      end;
    end;
    IF valName = '' THEN
      valName := '\StringFileInfo\040904E4\';
    CASE vs OF
      vsCompanyName:
        valName := valName + 'CompanyName';
      vsFileDescription:
        valName := valName + 'FileDescription';
      vsFileVersion:
        valName := valName + 'FileVersion';
      vsInternalName:
        valName := valName + 'InternalName';
      vsLegalCopyright:
        valName := valName + 'LegalCopyright';
      vsOriginalFilename:
        valName := valName + 'OriginalFilename';
      vsProductName:
        valName := valName + 'ProductName';
      vsProductVersion:
        valName := valName + 'ProductVersion';
    END;
    // Now request the actual string
    IF VerQueryValue(verInfoBuff, pchar(valName), verStrP, vsLen) THEN
    begin
      verStr := StrNew(pchar(verStrP));
      try
        Result := StrPas(verStr);
      finally
        StrDispose(verStr);
      end;
    end;
  finally
    FreeMem(verInfoBuff);
  end;
end;

function IsPreRelease(const fname: String): Boolean;
VAR
  verInfoSize: Integer;
  DummyGets0: DWord;
  verInfoBuff: Pointer;
  vsLen: UInt;
  P: Pointer;
begin
  Result := False;
  // Get size of version info
  verInfoSize := GetFileVersionInfoSize(pchar(fname), DummyGets0);
  // Allocate buffer
  GetMem(verInfoBuff, verInfoSize);
  try
    // Get version info into buffer
    IF NOT GetFileVersionInfo(pchar(fname), 0, verInfoSize, verInfoBuff) THEN
      exit;
    // Now request the actual string
    IF VerQueryValue(verInfoBuff, '\', P, vsLen) THEN
    begin
      Result := PVSFIXEDFILEINFO(P)^.dwFileFlags AND VS_FF_PRERELEASE > 0;
    end;
  finally
    FreeMem(verInfoBuff);
  end;
end;

function GetDescription(const fname: String; var Typ: gdExeType): String;
// Return description from header for NE (16-bit)
// Return versioninfo description for PE (32-bit)
// Return null string otherwise
VAR
  f: File;
  w, N: Word;
  B: byte;
  DH: TDOSHeader;
  NEOffset: Word; { Offset of NE header }
  NE: TNEHeader;
  Desc: ARRAY [0 .. MAX_PATH] OF Char;

  PROCEDURE OpenForReadOnly(VAR f: File; fname: String);
  { The calling routine must handle any exception caused
    by the attempt to open the file }
  VAR
    OldFileMode: byte;
  BEGIN
    AssignFile(f, fname);
    OldFileMode := FileMode;
    FileMode := 0; { read-only }
    Reset(f, 1);
    FileMode := OldFileMode;
  END;

begin
  Typ := gdNO;
  Result := '';
  try
    OpenForReadOnly(f, fname);
    try
      BlockRead(f, DH, SizeOf(DH));
      Move(DH[0], N, 2);
      Move(DH[$18], w, 2);
      IF N = $5A4D THEN
        Typ := gdMZ;
      IF (N <> $5A4D { MZ } ) OR ((w < $40) AND (w > 0)) THEN
        // No DOS executable header. Shouldn't happen!
        exit;
      Move(DH[$3C], NEOffset, 2);
      Seek(f, NEOffset);
      BlockRead(f, NE, SizeOf(NE));
      IF NE.Signature = $454E { NE } THEN
      begin
        // 16-bit "New Executable"
        Typ := gdNE;
        Seek(f, NE.NonresidentNameTableOffset);
        BlockRead(f, B, 1);
        FillChar(Desc, SizeOf(Desc), 0);
        BlockRead(f, Desc, B);
        IF StrLen(Desc) <> 0 THEN
          Result := StrPas(Desc);
      end
      ELSE IF NE.Signature = $4550 { PE } THEN
      begin
        // 32-bit "Portable Executable"
        Typ := gdPE;
        Result := GetVersionString(fname, vsFileDescription);
      end;
    finally
      CloseFile(f);
    end;
  except
    ON EInOutError DO
      // Let it pass - result is blank
  end;
end;

Function NumeroDeSerie(FDrive: String): String;
Var
  Serial: DWord;
  DirLen, Flags: DWord;
  DLabel: Array [0 .. 11] of Char;
begin
  Try
    GetVolumeInformation(pchar(FDrive + ':\'), DLabel, 12, @Serial, DirLen,
      Flags, nil, 0);
    Result := IntToHex(Serial, 8);
  Except
    Result := '';
  end;
end;

function EspacoLivre(unidade: byte): Integer;
// Retorna a porcentagem de espaço livre em uma unidade de disco
var
  A, B, Percentual: LongInt;
begin
  if DiskFree(unidade) <> -1 then
  begin
    // Quantidade Livre
    A := DiskFree(unidade) div 1024;
    // Tamanho do Disco
    B := DiskSize(unidade) div 1024;
    Percentual := (A * 100) div B;
    Result := Percentual;
  end
  else
  begin
    Result := -1;
  end;
end;

Procedure CopyFile(Const sourcefilename, targetfilename: String);
// Copia um arquivo de um lugar para outro
Var
  S, T: TFileStream;
Begin
  S := TFileStream.Create(sourcefilename, fmOpenRead);
  try
    T := TFileStream.Create(targetfilename, fmOpenWrite or fmCreate);
    try
      T.CopyFrom(S, S.Size);
    finally
      T.Free;
    end;
  finally
    S.Free;
  end;
end;

function Get_URL(Servicio: string): String;
var
  Cliente_DDE: TDDEClientConv;
  temp: PAnsiChar; // <<-------------------------This is new
begin
  Result := '';
  Cliente_DDE := TDDEClientConv.Create(nil);
  with Cliente_DDE do
  begin
    SetLink(Servicio, 'WWW_GetWindowInfo');
    temp := RequestData('0xFFFFFFFF');
    Result := StrPas(temp);
    StrDispose(temp); // <<-Avoid Mem Leak:  Thanks to ronit
    CloseLink;
  end;
  Cliente_DDE.Free;
  // SHGetFileInfo(TWebBrowser);
end;

function GetAssociation(const DocFileName: string): string;
var
  FileClass: string;
  Reg: TRegistry;
begin
  Result := '';
  Reg := TRegistry.Create(KEY_EXECUTE);
  Reg.RootKey := HKEY_CLASSES_ROOT;
  FileClass := '';
  if Reg.OpenKeyReadOnly(ExtractFileExt(DocFileName)) then
  begin
    FileClass := Reg.ReadString('');
    Reg.CloseKey;
  end;
  if FileClass <> '' then
  begin
    if Reg.OpenKeyReadOnly(FileClass + '\Shell\Open\Command') then
    begin
      Result := Reg.ReadString('');
      Reg.CloseKey;
    end;
  end;
  Reg.Free;
end;

function GetSystemPath(SystemPath: TSystemPath): string;
var
  ph: pchar;
begin
  with TRegistry.Create do
    try
      RootKey := HKEY_CURRENT_USER;
      OpenKey('\Software\Microsoft\Windows\CurrentVersion\' +
        'Explorer\Shell Folders', True);
      case SystemPath of
        Desktop:
          Result := ReadString('Desktop');
        StartMenu:
          Result := ReadString('Start Menu');
        Programs:
          Result := ReadString('Programs');
        Startup:
          Result := ReadString('Startup');
        Personal:
          Result := ReadString('Personal');
        AppData:
          Result := ReadString('AppData');
        Fonts:
          Result := ReadString('Fonts');
        SendTo:
          Result := ReadString('SendTo');
        Recent:
          Result := ReadString('Recent');
        Favorites:
          Result := ReadString('Favorites');
        Cache:
          Result := ReadString('Cache');
        Cookies:
          Result := ReadString('Cookies');
        History:
          Result := ReadString('History');
        NetHood:
          Result := ReadString('NetHood');
        PrintHood:
          Result := ReadString('PrintHood');
        Templates:
          Result := ReadString('Templates');
        LocADat:
          Result := ReadString('Local AppData');
        WindRoot:
          begin
            GetMem(ph, 255);
            GetWindowsDirectory(ph, 254);
            Result := StrPas(ph);
            FreeMem(ph);
          end;
        WindSys:
          begin
            GetMem(ph, 255);
            GetSystemDirectory(ph, 254);
            Result := StrPas(ph);
            FreeMem(ph);
          end;
        TempPath:
          begin
            GetMem(ph, 255);
            GetTempPath(254, ph);
            Result := StrPas(ph);
            FreeMem(ph);
          end;
        RootDir:
          begin
            GetMem(ph, 255);
            GetSystemDirectory(ph, 254);
            Result := (Copy(StrPas(ph), 1, 2));
            FreeMem(ph);
          end;
      end;
      RootKey := HKEY_LOCAL_MACHINE;
      OpenKey('\SOFTWARE\Microsoft\Windows\CurrentVersion', True);
      case SystemPath of
        ProgFiles:
          Result := ReadString('ProgramFilesDir');
        ComFiles:
          Result := ReadString('CommonFilesDir');
        ConfigPath:
          Result := ReadString('ConfigPath');
        DevicePath:
          Result := ReadString('DevicePath');
        MediaPath:
          Result := ReadString('MediaPath');
        WallPaper:
          Result := ReadString('WallPaperDir');
      end;
    finally
      CloseKey;
      Free;
    end;
  if (Result <> '') and (Result[Length(Result)] <> '\') then
    Result := Result + '\';
end;

VAR
  OVI: TOsVersionInfo;

initialization

FillChar(OVI, SizeOf(OVI), 0);
OVI.dwOSVersionInfoSize := SizeOf(OVI);
GetVersionEx(OVI);
IsWinNT := OVI.dwPlatformId = 2;

{$IFDEF DEBUG}
WriteOSD('INICIO: ' + IntToStr(OVI.dwPlatformId), 14, 150);
{$ENDIF}

end.
