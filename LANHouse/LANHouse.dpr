program LANHouse;

uses
    Windows,
//    SysUtils,
    Messages
//    ,
//    ShellAPI
    ;

//{$R LASlave.RES}

const
    AppName = 'LANHouse Admin';

type
  LongRec = packed record
    case Integer of
      0: (Lo, Hi: Word);
      1: (Words: array [0..1] of Word);
      2: (Bytes: array [0..3] of Byte);
  end;
// windows 2k, xp
//TRegisterService = function (dwProcessID, dwType:DWord):Dword;stdcall;
// win 9x
//function RegisterServiceProcess32(dwProcessID, dwType: DWORD): DWORD;
//  stdcall; external 'KERNEL32.DLL';

//var
//    tid: TNotifyIconData;
//    WndClass: array[0..50] of char;
//    h : HWnd ;

//------------------- SysUtils -----------------------
{ FileAge returns the date-and-time stamp of the specified file. The return
  value can be converted to a TDateTime value using the FileDateToDateTime
  function. The return value is -1 if the file does not exist. }

function FileAge(const FileName: string): Integer;
var
  Handle: THandle;
  FindData: TWin32FindData;
  LocalFileTime: TFileTime;
begin
  Handle := FindFirstFile(PChar(FileName), FindData);
  if Handle <> INVALID_HANDLE_VALUE then
  begin
    Windows.FindClose(Handle);
    if (FindData.dwFileAttributes and FILE_ATTRIBUTE_DIRECTORY) = 0 then
    begin
      FileTimeToLocalFileTime(FindData.ftLastWriteTime, LocalFileTime);
      if FileTimeToDosDateTime(LocalFileTime, LongRec(Result).Hi,
        LongRec(Result).Lo) then Exit;
    end;
  end;
  Result := -1;
end;
{ FileExists returns a boolean value that indicates whether the specified
  file exists. }

function FileExists(const FileName: string): Boolean;
begin
  Result := FileAge(FileName) <> -1;
end;

{ RenameFile renames the file given by OldName to the name given by NewName.
  The return value is True if the file was successfully renamed, or False if
  an error occurred. }
function RenameFile(const OldName, NewName: string): Boolean;
begin
  Result := MoveFile(PChar(OldName), PChar(NewName));
end;


//------------------------------------------------------------------------------

Procedure Rodar(Programa:Pchar; PastaAtual:Pchar);
var
   pi  : TProcessInformation;
   si  : TStartupInfo;
begin
   FillMemory( @si, sizeof( si ), 0 );
   si.cb := sizeof( si );
   CreateProcess( Nil,
            // path to the executable file:
            Programa,
            Nil, Nil, False,
            NORMAL_PRIORITY_CLASS, Nil , PastaAtual,
            si, pi );
   CloseHandle( pi.hProcess );
   CloseHandle( pi.hThread );
end;

//------------------------------------------------------------------------------

function DummyWindowProc (Wnd: hWnd; Msg, wParam: Word; lParam: LongInt):
         LongInt; stdcall;
begin
//  DummyWindowProc := 0;
  case Msg of
  WM_TIMER:
    begin
      if FindWindow(nil,'Acionar') < 1 then
      begin
        if FileExists('C:\Acionar\AcionarNovo.exe') then
        begin
          DeleteFile('C:\Acionar\Acionar.exe');
          RenameFile('C:\Acionar\AcionarNovo.exe',
                     'C:\Acionar\Acionar.exe');
        end;
        Rodar('C:\Acionar\Acionar.exe', nil);
      end;
    end;

  WM_Destroy:
    PostQuitMessage (0);

  end;
  DummyWindowProc := DefWindowProc (Wnd, Msg, wParam, lParam);
end;

//------------------------------------------------------------------------------

procedure WinMain;
var
  Wnd: hWnd;
  Msg: TMsg;
  cls: TWndClass;

begin
  { Previous instance running ?  If so, exit }
  if FindWindow (AppName, Nil) <> 0 then halt(0);

  { Register the window class }
  FillChar (cls, sizeof (cls), 0);
  cls.lpfnWndProc := @DummyWindowProc;
  cls.hInstance := hInstance;
  cls.lpszClassName := AppName;
  RegisterClass (cls) ;

  { Now create the dummy window }
  Wnd := CreateWindow (Appname, Appname, WS_POPUP,
                       0, 0, 1, 1,
                       0, 0, hInstance, Nil);
  SetTimer(Wnd,0,4000,nil);
  // hide, verstecken
  //RegisterServiceProcess32(GetCurrentProcessID, 1);
  if Wnd <> 0 then begin
    ShowWindow (Wnd, sw_hide);
    while GetMessage (Msg, 0, 0, 0) do begin
      TranslateMessage (Msg);
      DispatchMessage (Msg);
    end;
  end;
end;

begin
  WinMain;
end.
