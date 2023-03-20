unit Util;

interface

uses
  Windows,
  SysUtils,
  Classes,
  ComCtrls,
  WinTypes;
// ,IdBaseComponent, //WakOnLAN
// IdComponent, IdUDPBase, IdUDPClient; //WakOnLAN

type
  gdExeType = (gdNO, gdMZ, gdNE, gdPE);
  gvStrType = (vsCompanyName, vsFileDescription, vsFileVersion, vsInternalName,
    vsLegalCopyright, vsOriginalFilename, vsProductName, vsProductVersion);

function GetFirstCdRomDrive: string;
function FmtStrToInt(S: String): Integer;
procedure LVColumnClick(ListView: TListView; Column: TListColumn);
procedure LVCompare(ListView: TListView; Item1, Item2: TListItem; Data: Integer;
  var Compare: Integer);
function GetWindowsDir: TFileName;
function GetSystemDir: TFileName;
function ApagarStr(S: string; P: string): string;
function Copy2SymbDel(var S: string; Symb: Char): string;
function Copy2Symb(const S: string; Symb: Char): string;
function DelBSpace(const S: string): string;
function GetAppVersionStr: string;
function GetVersionString(const fname: String; vs: gvStrType): String;
function NumeroDeSerie(FDrive: String): String;
function EspacoLivre(unidade: byte): Integer;
Procedure CopyFile(Const sourcefilename, targetfilename: String);
procedure WakeUPComputer(aMacAddress: string);
function GetComputerNetName: string;

implementation

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

function GetFirstCdRomDrive: string;
var
  r: LongWord;
  Drives: array [0 .. 128] of Char;
  pDrive: pchar;
begin
  Result := '';
  r := GetLogicalDriveStrings(sizeof(Drives), Drives);
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

function FmtStrToInt(S: String): Integer;
var
  I: Integer;
begin
  I := 1;
  while I <= Length(S) do
    if not (CharInSet(S[I], ['0' .. '9', '-'])) then
      Delete(S, I, 1)
    else
      inc(I);
  Result := StrToInt(S);
end;

function LVCheckFocusChanged(Item: TListItem; Change: TItemChange): Boolean;
begin
  Result := (Item <> nil) and (Change = ctState) and Item.Focused and
    Item.Selected;
end;

procedure LVColumnClick(ListView: TListView; Column: TListColumn);
var
  ColIndex: Integer;
begin
  ColIndex := Column.Index;
  with ListView do
  begin
    if Tag and $FF = ColIndex then
      Tag := Tag xor $100
    else
      Tag := ColIndex;
    AlphaSort;
    if Selected <> nil then
      Selected.MakeVisible(False);
  end;
end;

procedure LVCompare(ListView: TListView; Item1, Item2: TListItem; Data: Integer;
  var Compare: Integer);
var
  ColIndex: Integer;
begin
  with ListView do
  begin
    ColIndex := Tag and $FF - 1;
    if Columns[ColIndex + 1].Alignment = taLeftJustify then
    begin
      if ColIndex = -1 then
        Compare := AnsiCompareText(Item1.Caption, Item2.Caption)
      else
        Compare := AnsiCompareText(Item1.SubItems[ColIndex],
          Item2.SubItems[ColIndex]);
    end
    else
    begin
      if ColIndex = -1 then
        Compare := FmtStrToInt(Item1.Caption) - FmtStrToInt(Item2.Caption)
      else
        Compare := FmtStrToInt(Item1.SubItems[ColIndex]) -
          FmtStrToInt(Item2.SubItems[ColIndex]);
    end;
    if Tag and $100 <> 0 then
      Compare := -Compare;
  end;
end;

// The Windows Directory
function GetWindowsDir: TFileName;
var
  WinDir: array [0 .. MAX_PATH - 1] of Char;
begin
  SetString(Result, WinDir, GetWindowsDirectory(WinDir, MAX_PATH));
  if Result = '' then
    raise Exception.Create(SysErrorMessage(GetLastError));
end;

// The Windows System Directory
function GetSystemDir: TFileName;
var
  SysDir: array [0 .. MAX_PATH - 1] of Char;
begin
  SetString(Result, SysDir, GetSystemDirectory(SysDir, MAX_PATH));
  if Result = '' then
    raise Exception.Create(SysErrorMessage(GetLastError));
end;

function ApagarStr(S: string; P: string): string;
var
  I: word;
begin
  Result := S;
  I := pos(P, S);
  if I > 0 Then
    Result := Copy(S, I + Length(P), Length(S) - (I + Length(P)));
end;

function StrReverse(S: string): string;
var
  Temp: string;
  I: Integer;
begin
  // Traverse string
  Temp := '';
  for I := Length(S) downto 1 do
    Temp := Temp + S[I];
  StrReverse := Temp;
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
  P := pos(Symb, S);
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

function GetAppVersionStr: string;
var
  Exe: string;
  Size, Handle: DWORD;
  Buffer: TBytes;
  FixedPtr: PVSFixedFileInfo;
begin
  Exe := ParamStr(0);
  Size := GetFileVersionInfoSize(PChar(Exe), Handle);
  if Size = 0 then
    RaiseLastOSError;
  SetLength(Buffer, Size);
  if not GetFileVersionInfo(PChar(Exe), Handle, Size, Buffer) then
    RaiseLastOSError;
  if not VerQueryValue(Buffer, '\', Pointer(FixedPtr), Size) then
    RaiseLastOSError;
  Result := Format('%d.%d.%d.%d',
    [LongRec(FixedPtr.dwFileVersionMS).Hi,  //major
     LongRec(FixedPtr.dwFileVersionMS).Lo,  //minor
     LongRec(FixedPtr.dwFileVersionLS).Hi,  //release
     LongRec(FixedPtr.dwFileVersionLS).Lo]) //build
end;

function GetVersionString(const fname: String; vs: gvStrType): String;
VAR
  verInfoSize: Integer;
  DummyGets0: DWORD;
  verInfoBuff: Pointer;
  P, langCodeP: Pointer;
  langCode: DWORD;
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
        inc(PDWORD(P), 4);
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
          inc(PDWORD(P), 4);
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

Function NumeroDeSerie(FDrive: String): String;
Var
  Serial: DWORD;
  DirLen, Flags: DWORD;
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
{ Retorna a porcentagem de espaço livre em uma unidade de disco }
var
  A, B, Percentual: longint;
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
{ Copia um arquivo de um lugar para outro }
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

// Wake On LAN
{ procedure WakeOnLan(const AMacAddress : string);
  type
  TMacAddress = array [1..6] of byte;

  TWakeRecord = packed record
  Waker : TMACAddress;
  MAC   : array[0..15] of TMACAddress;
  end;

  var i : integer;
  WR : TWakeRecord;
  MacAddress : TMacAddress;
  UDP : TIdUDPClient;
  sData : string;
  begin
  // Convert MAC string into MAC array
  fillchar(MacAddress,SizeOf(TMacAddress),0);
  sData := trim(AMacAddress);

  if length(sData) = 17 then begin
  for i := 1 to 6 do begin
  MacAddress[i] := StrToIntDef('$' + copy(sData,1,2),0);
  sData := copy(sData,4,17);
  end;
  end;

  for i := 1 To 6 do WR.Waker[i] := $FF;
  for i := 0 to 15 do WR.MAC[i] := MacAddress;
  // Create UDP and Broadcast data structure
  UDP := TIdUDPClient.Create(nil);
  UDP.Host := '255.255.255.255';
  UDP.Port := 32767;
  UDP.BroadCastEnabled := true;
  UDP.SendBuffer(WR,SizeOf(TWakeRecord));
  UDP.BroadcastEnabled := false;
  UDP.Free;
  end;

}

procedure WakeUPComputer(aMacAddress: string);
{
  var
  i, j: Byte;
  lBuffer: array[1..116] of Byte;
  //  lUDPClient:TIUDPClient;
  lUDPClient:TIdUDPClient;
}
begin
  { try
    for i := 1 to 6 do
    lBuffer[i] := HexToInt(aMacAddress[(i * 2) - 1] + aMacAddress[i * 2]);
    lBuffer[7] := $00;
    lBuffer[8] := $74;
    lBuffer[9] := $FF;
    lBuffer[10] := $FF;
    lBuffer[11] := $FF;
    lBuffer[12] := $FF;
    lBuffer[13] := $FF;
    lBuffer[14] := $FF;
    for j := 1 to 16 do
    for i := 1 to 6 do
    lBuffer[15 + (j - 1) * 6 + (i - 1)] := lBuffer[i];
    lBuffer[116] := $00;
    lBuffer[115] := $40;
    lBuffer[114] := $90;
    lBuffer[113] := $90;
    lBuffer[112] := $00;
    lBuffer[111] := $40;
    lUDPClient := TIdUDPClient.Create(nil);
    lUDPClient.BroadcastEnabled := true;
    lUDPClient.Host := '255.255.255.255';
    lUDPClient.Port := 2050;
    //lUDPClient.SendBuffer(lBuffer, 116);
    lUDPClient.SendBuffer(lBuffer,116);
    //    writeln('Trying to wake-up remote host: ' + aMacAddress);
    lUDPClient.Free;
    except
    on E: Exception do writeln('There was an error');
    end;
  }
end;

end.
