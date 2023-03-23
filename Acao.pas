{ ---------------------------------------------------------------------------
  ACIONAR
  Copyright (C) 1996-2023  Pedro Tomaz Alves

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
  -------------------------------------------------------------------------- }

unit Acao;

interface

uses
  Windows, Messages, SysUtils, Classes, Controls, Forms,
  ShellApi,
  ExtCtrls, StdCtrls, WinTypes, WinProcs, Registry, IniFiles,
  ImgList, Buttons, ComCtrls, ToolWin, Dialogs, Menus,
  ScktComp,
  MMSystem,
  Graphics, jpeg, System.ImageList;

const
  // WallPaperStyles
  WPS_Tile = 0;
  WPS_Center = 1;
  WPS_SizeToFit = 2;
  WPS_XY = 3;
  // crlf =^M^J;
  quote = #039;
  MAX_COMPUTERNAME_LENGTH = 32;

type
  TResourceTypes = (rtDisk, rtPrint, rtAny);

  TMain = class(TForm)
    ImageList_EnglishDisc: TImageList;
    ImageList_Children: TImageList;
    ImageList_Outros: TImageList;
    PageControl1: TPageControl;
    TabSheet_Discovery: TTabSheet;
    TabSheet_Children: TTabSheet;
    ToolBarEnglishDiscovery: TToolBar;
    ToolButton2: TToolButton;
    ToolButton1: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolBarChildren: TToolBar;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    TabSheet_Outros: TTabSheet;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    ToolButton17: TToolButton;
    ToolBarOutros: TToolBar;
    ToolButton26: TToolButton;
    TabSheet_Espanhol: TTabSheet;
    ToolBarEspanol: TToolBar;
    ImageList_espanhol: TImageList;
    ImageList_Ingles: TImageList;
    ToolButton20: TToolButton;
    ToolButton21: TToolButton;
    ToolButton22: TToolButton;
    ToolButton19: TToolButton;
    TabSheet_English: TTabSheet;
    ToolBarEnglish: TToolBar;
    UpDown1: TUpDown;
    Edit1: TEdit;
    EngCDROM: TToolButton;
    ToolButton25: TToolButton;
    UpDown2: TUpDown;
    Edit2: TEdit;
    ESPCD: TToolButton;
    ToolButton27: TToolButton;
    ToolButton23: TToolButton;
    ToolButton24: TToolButton;
    ToolButton28: TToolButton;
    ToolButton18: TToolButton;
    ToolButton30: TToolButton;
    TabSheet_Control: TTabSheet;
    ToolBarControl: TToolBar;
    ImageList_Control: TImageList;
    ToolButton32: TToolButton;
    ToolButton33: TToolButton;
    ToolButton31: TToolButton;
    ToolButton34: TToolButton;
    ToolButton35: TToolButton;
    ToolButton37: TToolButton;
    ToolButton38: TToolButton;
    ToolButton40: TToolButton;
    ListaScreen: TListBox;
    TB_Video: TToolButton;
    Timer_Explorer: TTimer;
    ToolButton39: TToolButton;
    TabSheet_Educativos: TTabSheet;
    ToolBarEducativos: TToolBar;
    TabSheet_Teacher: TTabSheet;
    ToolButton41: TToolButton;
    ToolButton42: TToolButton;
    ToolButton43: TToolButton;
    ToolButton44: TToolButton;
    ToolButton45: TToolButton;
    ToolButton46: TToolButton;
    ToolButton52: TToolButton;
    TabSheet_Reward: TTabSheet;
    ToolBar2: TToolBar;
    ToolButton53: TToolButton;
    ToolButton55: TToolButton;
    ToolButton54: TToolButton;
    ToolButton56: TToolButton;
    ToolButton57: TToolButton;
    ToolButton58: TToolButton;
    ToolButton59: TToolButton;
    S: TToolButton;
    ToolButton60: TToolButton;
    ToolButton61: TToolButton;
    ToolButton62: TToolButton;
    TS_Aluno: TTabSheet;
    Label_Aluno: TLabel;
    Foto_Aluno: TImage;
    B_Login: TBitBtn;
    Label_Tempo: TLabel;
    B_Logout: TBitBtn;
    Workers: TServerSocket;
    Label_Codigo: TLabel;
    Label_Senha: TLabel;
    Edit_Codigo: TEdit;
    Edit_Senha: TEdit;
    Label_Turma: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Edit1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure TudoClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SystemKeys(Disable: Boolean);
    procedure ShowDesktop(const YesNo: Boolean);
    procedure WorkersAccept(Sender: TObject; Socket: TCustomWinSocket);
    procedure WorkersClientDisconnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure WorkersClientRead(Sender: TObject; Socket: TCustomWinSocket);
    procedure VideoChange(I: byte);
    Procedure Conectar(Server: Pchar; Letra: Pchar; Programa: Pchar;
      PastaAtual: Pchar; SizeScreen: String; Liberar: Pchar; MontarISO: Pchar);
    procedure WorkersClientError(Sender: TObject; Socket: TCustomWinSocket;
      ErrorEvent: TErrorEvent; var ErrorCode: Integer);
    procedure Timer_ExplorerTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ApagaLicaoReward();
    procedure B_LoginClick(Sender: TObject);
    procedure B_LogoutClick(Sender: TObject);
    procedure ListaScreenDblClick(Sender: TObject);
    procedure ListaScreenKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    // procedure TfrmServerExecute(AThread: TIdPeerThread);
    procedure JumpTo(const aAdress: String);

  private
    procedure WMDisplayChange(var Message: TMessage); message WM_DISPLAYCHANGE;
    procedure WMNCHitTest(var Msg: TWMNCHitTest); message wm_NCHitTest;
    // procedure WMSysCommand(var Msg: TWMSysCommand);message WM_SYSCOMMAND;
    // Impedir que o form seja arrastado para fora das margens da tela
    // procedure WMMove(var Msg: TWMMove); message WM_MOVE ;
    // we capture the WM_DEVICECHANGE message
    // Put this line into private section
    // of your form's declaration
    procedure WMDeviceChange(var Msg: TMessage); message WM_DEVICECHANGE;

  public
    procedure EnviaTexto(Numero: byte; Texto: String; Desligar: Boolean);
    Procedure WinMsg(Var Msg: TMsg; Var Handled: Boolean);
    { Public declarations }
  end;

var
  Workers: TServerSocket;
  Main: TMain;
  Servidor: String;
  registro: TIniFile;
  edroot: String;
  SProgs: TStringList;
  //CompName: array [0 .. MAX_COMPUTERNAME_LENGTH] of Char;
  CompName: String;
  Tela: String;


  // {$DEFINE DEBUG}

implementation

uses senha, reobjs, workers_unit, Util;

{$R *.DFM}

//const
//  CDRIP = 'CDRip.dll';

var
  OldWindowProc: Pointer; { Variable for the old windows proc }
  MyMsg: DWord; { custom systemwide message }

//function CR_EjectCD(Abri: Boolean): Boolean; stdcall; external CDRIP;
//function CR_LockCD(Lock: Boolean): Boolean; stdcall; external CDRIP;
//function CR_Init(CDROM: String): Boolean; stdcall; external CDRIP;

procedure TMain.JumpTo(const aAdress: String);
var
  buffer: String;
begin
  //buffer := 'http://' + aAdress;
  buffer := aAdress;
  ShellExecute(Application.Handle, nil, PChar(buffer), nil, nil, SW_SHOWNORMAL);
end;

function DeleteFileWithUndo(FileName: string): Boolean;

{ Thanks to Poul Dige for this comment:
  ALWAYS make sure, that FileName ends with two chr(0), i.e.
  FileName :=	 FileName+#0+#0;
  If you want to process more than one file, the file names
  should be separated by a single #0, e.g.
  FileName := File1+#0+File2+#0.....+FileN+#0+#0; }
var
  SHFileOpStruct: TSHFileOpStruct;
begin
  FillChar(SHFileOpStruct, SizeOf(SHFileOpStruct), 0);
  with SHFileOpStruct do
  begin { specifies the operation }

    wFunc := FO_DELETE;

    { specifies the filename to operate }
    pFrom := Pchar(FileName);

    { flags for controlling the operation }
    { Preserves undo information, Responds with yes to all
      for any dialog box that is displayed, doesn't display a
      progress dialog }

    fFlags := FOF_ALLOWUNDO or FOF_NOCONFIRMATION or FOF_SILENT;
  end;
  { returns true if successful, otherwise false }
  result := (0 = ShFileOperation(SHFileOpStruct));
end;

procedure TMain.EnviaTexto(Numero: byte; Texto: String; Desligar: Boolean);
Begin
  with Workers.Socket do
  begin
    if ActiveConnections > 0 Then
      if Connections[0].Connected Then
      begin
        Connections[0].SendText(IntToStr(Numero) + '#' + Texto);
        if Desligar Then
          Disconnect(Handle);
        // Close;
      end;
  end;
End;

{ procedure TMain.WMSysCommand;
  begin
  if (Msg.CmdType = SC_MINIMIZE) or
  (Msg.CmdType = SC_MAXIMIZE) then
  MessageBeep(0);

  DefaultHandler(Msg);
  end; }

procedure TMain.WMNCHitTest(var Msg: TWMNCHitTest);
begin
  inherited;
  if Msg.result = htClient then
    Msg.result := htCaption;
end;

{
  procedure TMain.WMMove(var Msg: TWMMove);
  begin
  if Left < 0 then
  Left := 0;
  if Top < 0 then
  Top := 0;
  if Screen.Width - (Left + Width) < 0 then
  Left := Screen.Width - Width;
  if Screen.Height - (Top + Height) < 0 then
  Top := Screen.Height - Height;
  end;
}

Procedure TMain.WinMsg(Var Msg: TMsg; Var Handled: Boolean);

Begin
  case Msg.Message of
    WM_QUIT:
      EnviaTexto(0, 'Reiniciando Estação!', False);

    // WM_MOUSEMOVE : EnviaTexto(0,'Movendo Mouse!', False);
    // else ;
  end;
end;

// we capture the WM_DEVICECHANGE message
// the implementation part
procedure TMain.WMDeviceChange(var Msg: TMessage);
const
  CD_IN = $8000;
  CD_OUT = $8004;
var
  Msg_1: String;
begin
  inherited;
  case Msg.wParam of
    CD_IN:
      Msg_1 := 'CD in';
    CD_OUT:
      Msg_1 := 'CD out';
  end;
  // ShowMessage(Msg);
  EnviaTexto(0, Msg_1, False);
end;

procedure TMain.WMDisplayChange(var Message: TMessage);
begin
  if Screen.Width < 820 Then
    PageControl1.Height := 148
  else
    PageControl1.Height := 85;
  ClientHeight := PageControl1.Height;
  ClientWidth := Screen.Width - 12;
  EnviaTexto(0, 'Mundança de Display: ' + IntToStr(Screen.Width) + 'x' +
    IntToStr(Screen.Height), False);
  inherited;
end;

// ALT+TAB, CTRL+ESC, CTRL+ALT+DEL

{
  If you wish to disable those keys while your
  application is running call SystemKeys:
  When you call SystemKeys, if Disable is True,
  the keys will be disabled, False otherwise.
}
procedure TMain.SystemKeys(Disable: Boolean);
var
  OldVal: LongInt;
begin
  SystemParametersInfo(SPI_SCREENSAVERRUNNING, Word(Disable), @OldVal, 0);
end;

// show/hide Desktop Icons
// Mostra/Esconde icones da Area de Trabalho
procedure TMain.ShowDesktop(const YesNo: Boolean);
var
  h: THandle;
begin
  h := FindWindow('ProgMan', nil);
  h := GetWindow(h, GW_CHILD);
  if YesNo = True then
    ShowWindow(h, SW_SHOW)
  else
    ShowWindow(h, SW_HIDE);
end;

function NewWindowProc(WindowHandle: hWnd; TheMessage: Word; ParamW: LongInt;
  ParamL: LongInt): LongInt stdcall;
begin
  case TheMessage of
    // WM_QUIT : EnviaTexto(0,'Reiniciando Estação!', False);
    WM_MOUSEMOVE:
      SendMessage(Application.Handle, WM_SYSCOMMAND, SC_RESTORE, 0);
    // EnviaTexto(0,'Movendo Mouse!', False);
    // else ;
  end;
  if TheMessage = MyMsg then
  begin
    { Tell the application to restore, let it restore the form }
    SendMessage(Application.Handle, WM_SYSCOMMAND, SC_RESTORE, 0);
    SetForegroundWindow(Application.Handle);
    { We handled the message - we are done }
    result := 0;
    exit;
  end;
  { Call the original winproc }
  result := CallWindowProc(OldWindowProc, WindowHandle, TheMessage,
    ParamW, ParamL);
end;

//
// sWallpaperBMPPath
// - path to a BMP file
//
// nStyle
// - any of the above WallPaperStyles
//
// nX, nY
// - if the nStyle is set to WPS_XY,
// nX and nY can be used to set the
// exact position of the wall paper
//
procedure SetWallpaperExt(sWallpaperBMPPath: string; nStyle, nX, nY: Integer);
var
  regis: TRegIniFile;
  s1: string;
  X, Y: Integer;
begin
  //
  // change registry
  //
  // HKEY_CURRENT_USER\
  // Control Panel\Desktop
  // TileWallpaper (REG_SZ)
  // Wallpaper (REG_SZ)
  // WallpaperStyle (REG_SZ)
  // WallpaperOriginX (REG_SZ)
  // WallpaperOriginY (REG_SZ)
  //
  regis := TRegIniFile.Create('Control Panel\Desktop');

  with regis do
  begin
    s1 := '0';
    X := 0;
    Y := 0;

    case nStyle of
      WPS_Tile:
        s1 := '1';
      WPS_Center:
        nStyle := WPS_Tile;
      WPS_XY:
        begin
          nStyle := WPS_Tile;
          X := nX;
          Y := nY;
        end;
    end;

    WriteString('', 'Wallpaper', sWallpaperBMPPath);

    WriteString('', 'TileWallpaper', s1);

    WriteString('', 'WallpaperStyle', IntToStr(nStyle));

    WriteString('', 'WallpaperOriginX', IntToStr(X));

    WriteString('', 'WallpaperOriginY', IntToStr(Y));
  end;
  regis.Free;

  //
  // let everyone know that we
  // changed a system parameter
  //
  SystemParametersInfo(SPI_SETDESKWALLPAPER, 0, Nil, SPIF_SENDWININICHANGE);
end;

function GetParam(Text: string; Sep: Char; P: byte): string;
var
  I: Integer;
begin
  I := 1;
  while (I < P) and (Pos(Sep, Text) > 0) do
  begin
    Delete(Text, 1, Pos(Sep, Text));
    Inc(I);
  end;
  if P > I then
    result := ''
  else if Pos(Sep, Text) = 0 then
    result := Text
  else
    result := Copy(Text, 1, Pos(Sep, Text) - 1);
end;

procedure TMain.VideoChange(I: byte);
var
  DevMode: TDeviceMode;
  liRetValue: LongInt;
  Retorno: String;
begin
  Retorno := '';
{$IFOPT R+}
{$DEFINE CKRANGE}
{$R-} // range-checking of
{$ENDIF}
  if EnumDisplaySettings(nil, I, DevMode) then
  begin
    liRetValue := ChangeDisplaySettings(DevMode, 0);
{$IFDEF CKRANGE}
{$UNDEF CKRANGE}
{$R+}  // range-checking on
{$ENDIF}
    case liRetValue of
      DISP_CHANGE_SUCCESSFUL:
        Retorno := 'The settings change was successful.';
      DISP_CHANGE_RESTART:
        Retorno := 'The computer must be restarted in order ' +
          'for the graphics mode to work.';
      DISP_CHANGE_BADFLAGS:
        Retorno := 'An invalid set of flags was passed in.';
      DISP_CHANGE_FAILED:
        Retorno := 'The display driver failed the specified graphics mode';
      DISP_CHANGE_BADMODE:
        Retorno := 'The graphics mode is not supported';
      DISP_CHANGE_NOTUPDATED:
        Retorno := 'Unable to write settings to the registry.';
    end;
    EnviaTexto(0, format('Mundança de Display: %dx%d, ',
      [Screen.Width, Screen.Height]) + Retorno, False);
  end;
end;

Procedure TMain.Conectar(Server: Pchar; Letra: Pchar; Programa: Pchar;
  PastaAtual: Pchar; SizeScreen: String; Liberar: Pchar; MontarISO: Pchar);
var
  { NetErro: LongInt;
    Retorno: String; }
  NRW: TNetResource;
  pi: TProcessInformation;
  si: TStartupInfo;
  DC: THandle; // Display context
  n: Integer;
  Liberados: TStringList;

begin
  if Server = '' Then
    Server := Nil;
  if Letra = '' Then
    Letra := Nil;
  if Programa = '' Then
    Programa := Nil;
  if PastaAtual = '' Then
    PastaAtual := Nil;
  //if SizeScreen = '' Then
  //  SizeScreen := '';
  if Liberar = '' Then
    Liberar := Nil;
  if MontarISO = '' Then
    MontarISO := Nil;

  if not((Server = Nil) or (Letra = Nil)) Then
  begin
    with NRW do
    begin
      dwType := RESOURCETYPE_DISK;
      lpLocalName := Letra;
      lpRemoteName := Server;
      lpProvider := '';
    end; // with NRW
    WNetCancelConnection2(Letra, CONNECT_UPDATE_PROFILE, True);
    { try
      {NetErro := } WNetAddConnection2(NRW, '', 'alunos', 0
      { CONNECT_UPDATE_PROFILE } );

    { if Workers.Socket.ActiveConnections > 0 Then
      Begin
      case NetErro of
      ERROR_ACCESS_DENIED	   :
      Retorno:='Access to the network resource was denied.';
      ERROR_ALREADY_ASSIGNED	:
      Retorno:='The local device specified by lpLocalName '+
      'is already connected to a network resource.';
      ERROR_BAD_DEV_TYPE  :
      Retorno:='The type of local device and the type of ' +
      'network resource do not match.';
      ERROR_BAD_DEVICE	    :
      Retorno:='The value specified by lpLocalName is invalid.';
      ERROR_BAD_NET_NAME	   :
      Retorno:='The value specified by lpRemoteName is not ' +
      'acceptable to any network resource provider. ' +
      'The resource name is invalid, or the named ' +
      'resource cannot be located.';
      ERROR_BAD_PROFILE	:
      Retorno:='The user profile is in an incorrect format.';
      ERROR_BAD_PROVIDER	:
      Retorno:='The value specified by lpProvider does not '+
      'match any provider.';
      ERROR_BUSY		:
      Retorno:='The router or provider is busy,'+
      ' possibly initializing. The caller should retry.';
      ERROR_CANCELLED		:
      Retorno:='The attempt to make the connection was cancelled '+
      'by the user through a dialog box from one of the '+
      'network resource providers, or by a called resource.';
      ERROR_EXTENDED_ERROR		:
      Retorno:='A network-specific error occured. '+
      'Call the WNetGetLastError function '+
      'to get a description of the error.';
      ERROR_INVALID_PASSWORD	:
      Retorno:='The specified password is invalid.';
      ERROR_NO_NET_OR_BAD_PATH		:
      Retorno:='A network component has not started, ' +
      'or the specified name could not be handled.';
      ERROR_NO_NETWORK		:
      Retorno:='There is no network present.';
      end; // case NetError
      if Workers.Socket.Connections[0].Connected Then
      Workers.Socket.Connections[0].SendText('00#Network Erro: '+
      Retorno);
      end; // if Workers
      except
      NetErro:=0;

      End; }
  end; // if not

  // Get current video mode
  // DC := GetDC(Handle);
  //if SizeScreen <> Nil Then
  if SizeScreen <> '' Then
  begin
{$IFOPT R+}
{$DEFINE CKRANGE}
{$R-} // range-checking of
{$ENDIF}
    DC := Canvas.Handle;
    //if ((not(SizeScreen = Nil)) and (IntToStr(Screen.Width) + 'x' +
    if ((not(SizeScreen = '')) and (IntToStr(Screen.Width) + 'x' +
      IntToStr(Screen.Height) + 'x' + IntToStr(GetDeviceCaps(DC, BITSPIXEL)) <>
      ListaScreen.Items[ListaScreen.Items.IndexOf(SizeScreen)])) Then
    begin
      ListaScreen.ItemIndex := ListaScreen.Items.IndexOf(SizeScreen);
      if not(ListaScreen.ItemIndex < 0) Then
        VideoChange(ListaScreen.ItemIndex);
    end; // if ((not
{$IFDEF CKRANGE}
{$UNDEF CKRANGE}
{$R+}  // range-checking on
{$ENDIF}
  end // if SizeScreen
  else
  begin
    ListaScreen.ItemIndex := ListaScreen.Items.IndexOf(Tela);
    if ListaScreen.ItemIndex > -1 Then
      VideoChange(ListaScreen.ItemIndex)
    else
    begin
      ListaScreen.ItemIndex := ListaScreen.Items.IndexOf('1024x768x16');
      if ListaScreen.ItemIndex > -1 Then
        VideoChange(ListaScreen.ItemIndex)
      else
      Begin
        ListaScreen.ItemIndex := ListaScreen.Items.IndexOf('800x600x16');
        if ListaScreen.ItemIndex > -1 Then
          VideoChange(ListaScreen.ItemIndex)
      end;
    end;
  end;

  if MontarISO <> Nil Then
  Begin
    FillMemory(@si, SizeOf(si), 0);
    si.cb := SizeOf(si);
    CreateProcess(Nil,
      // path to the executable file:
      Pchar(GetSystemPath(ProgFiles) + 'DAEMON Tools\daemon.exe -mount 0,' +
      MontarISO), Nil, Nil, False, NORMAL_PRIORITY_CLASS, Nil,
      Pchar(GetSystemPath(ProgFiles) + 'DAEMON Tools\'), si, pi);
    CloseHandle(pi.hProcess);
    CloseHandle(pi.hThread);
    sleep(7000);
  End;

  if Liberar <> Nil then
  begin
    // liberar o programa
    Liberados := TStringList.Create;
    try
      //n := ExtractStrings([';', ','], [' '], Liberar, Liberados);
      Liberados.Add(ExtractFileName(Programa));

      for n := 0 to Liberados.Count - 1 do
      begin
        if SProgs.IndexOf(UpperCase(Liberados.Strings[n])) < 0 Then
        Begin
          SProgs.Add(Liberados.Strings[n]);
          // show on desktop the programs not authorized
          // WriteOSD('Programa:' + Liberados.Strings[n], 18 ,
          // ((GetSystemMetrics(SM_CYSCREEN) - 18) div 2) + n*20);
        end;
        // sleep(6000);
      end;
    finally
      Liberados.Free;
    end;
  end;

  if Programa <> Nil Then
  begin
    // liberar o programa

    if SProgs.IndexOf(UpperCase(ExtractFileName(Programa))) < 0 Then
    Begin
      SProgs.Add(UpperCase(ExtractFileName(Programa)));
    end;

    // executar programa
    FillMemory(@si, SizeOf(si), 0);
    si.cb := SizeOf(si);
    CreateProcess(Nil,
      // path to the executable file:
      Programa, Nil, Nil, False, NORMAL_PRIORITY_CLASS, Nil,
      PastaAtual, si, pi);

    CloseHandle(pi.hProcess);
    CloseHandle(pi.hThread);
  end;
end;

procedure TMain.FormCreate(Sender: TObject);
var
  //pi: TProcessInformation;
  //si: TStartupInfo;
  Papel, Usuario: String;
  I: Integer;
  //L: DWord;
  DevMode: TDeviceMode;
  temp: String;
  registro: TIniFile;
  // Botoes          : TIniFile;
  // MemoStream      : TMemoryStream;
  // StringStream    : TStringStream;
  // xbitmap         : TBitmap;
  // MaskColor       : TColor;
  // CDROM           : Boolean;
  //
  // variaveis do registro
  Regt: Tregistry;
  CtrlSet: string;

  //

begin
  // Workers := TServerSocket.Create(Main);

  // Previne q o prg seja carregado + de 1 vez na memoria
  // Register a custom windows message
  MyMsg := RegisterWindowMessage('Acionar');
  { Set form1's windows proc to ours and remember the old window proc }
  OldWindowProc := Pointer(SetWindowLong(Main.Handle, GWL_WNDPROC,
    LongInt(@NewWindowProc)));

  // Libera registro
  // User Key: [HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System]
  // Value Name: DisableRegistryTools
  // Data Type: REG_DWORD (DWORD Value)
  // Value Data: (0 = allow regedit, 1 = disable regedit)
  // try
  // Regt := Tregistry.Create;
  // Regt.RootKey := HKEY_CURRENT_USER;
  // Regt.OpenKey('SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System',
  // False);
  // Regt.WriteInteger('DisableRegistryTools', 0);
  // Regt.CloseKey;
  // except
  // end;

  // Registra a porta 1025 para liberar firewall
  try
    Regt := Tregistry.Create;
    Regt.RootKey := HKEY_LOCAL_MACHINE;
    Regt.OpenKey('SYSTEM\Select', False);
    CtrlSet := FormatFloat('000', Regt.ReadInteger('Current'));
    Regt.CloseKey;
    Regt.OpenKey('SYSTEM\ControlSet' + CtrlSet +
      '\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile\GloballyOpenPorts\List',
      True);
    if (not Regt.ValueExists('1025:TCP')) then
      Regt.WriteString('1025:TCP', '1025:TCP:*:Enabled:Gerente-Acionar');
    Regt.CloseKey;
  except
  end;

  edroot := ExtractFilePath(Application.exename); // + 'Acionar';
  // Pega Lista de programas autorizados
  SProgs := TStringList.Create;
  try
    SProgs.LoadFromFile(edroot + 'progs.ok');
  except
    SProgs.Clear;
    SProgs.Add('MMTASK.TSK');
    SProgs.Add('MPREXE.EXE');
    SProgs.Add('MSGSRV32.EXE');
  end;
  SProgs.Add('ACIONAR.EXE');
  SProgs.Add('LANHOUSE.EXE');

  // Localiza nome do Computador

  //L := SizeOf(CompName);
  //Win32Check(GetComputerName(@CompName, L));
  CompName:=GetComputerNetName;
  // permite checar mensagens enviadas
  Application.OnMessage := WinMsg;

  // procura quais formatos de video estao disponiveis
{$IFOPT R+}
{$DEFINE CKRANGE}
{$R-} // range-checking of
{$ENDIF}
  I := 0;
  while EnumDisplaySettings(nil, I, DevMode) do
  begin
    with DevMode do
      // acrescenta na lista de modos de videos
      ListaScreen.Items.Add(format('%dx%dx%d', [dmPelsWidth, dmPelsHeight,
        dmBitsperPel]));
    Inc(I);
  end;
{$IFDEF CKRANGE}
{$UNDEF CKRANGE}
{$R+}  // range-checking on
{$ENDIF}
{$IFDEF DEBUG}
  // Disable Start Button
  // Desativa Botao Iniciar
  // projeto
  EnableWindow(FindWindowEx(FindWindow('Shell_TrayWnd', nil), 0, 'Button',
    nil), False);
  // EnableWindow(FindWindowEx(FindWindow('Shell_TrayWnd', nil),
  // 0,'Button',nil),TRUE);

  // Show/Hide the TaskBar in Windows 95
  // Mostra/Esconde Barra de Tarefas do Windows
  // To hide the task bar use
  // projeto
  ShowWindow(FindWindow('Shell_TrayWnd', nil), SW_HIDE);
  // ShowWindow(FindWindow('Shell_TrayWnd',nil), SW_SHOW);

  // SystemKeys(True);
  { Hide desktop icons }
  // Esconde os icones do desktop
  // projeto
  ShowDesktop(False);
  // ShowDesktop(True);
{$ENDIF}
  // Apagar Todas as entradas no Registro de Run Application
  // [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU]
  // "a"=""
  // "MRUList"=""
  // "b"=""
  // "c"=""
  // "d"=""
  // "e"=""
  // "f"=""
  // "g"=""
  // "h"=""
  // "i"=""
  // "j"=""
  // "k"=""
  // "l"=""

  // try
  registro := TIniFile.Create(ExtractFilePath(Application.exename) +
    'Acionar.ini');
  with registro do
  begin
    Servidor := ReadString('Acionar', 'Servidor', '\\cpa\');
    Papel := ReadString('Acionar', 'PapelParede', '\\cpa\Public\Institut.bmp');
    Tela := ReadString('Tela', 'Tamanho', '800x600x8');
    Usuario := ReadString('Acionar', 'Usuario', 'RBA - Pedro Tomaz Alves');
{$IFDEF DEBUG}
    // show on desktop the programs not authorized
    WriteOSD('Paginas ' + IntToStr(PageControl1.PageCount), 12, 21);
{$ENDIF}
    for I := 0 to PageControl1.PageCount - 1 do
    begin
      temp := UpperCase(ReadString('TABSHEET', IntToStr(I + 1), 'OFF'));
      if temp = 'ON' Then
        PageControl1.Pages[I].Enabled := True
      else
        PageControl1.Pages[I].Enabled := False;
    end; // for I
  end; // with reg
  // finally
  // registro.free;
  // end;
  PageControl1.ActivePage := TabSheet_Discovery;

  if Servidor[Length(Servidor)] <> '\' then
    Servidor := Servidor + '\';

  // se tiver o arquivo de papel de parede, entao ative-o
  if FileExists(Papel) then
    SetWallpaperExt(Pchar(Papel), WPS_SizeToFit, 0, 0);

  // Muda modo de tela (Screen) para o indicado em tela
  ListaScreen.ItemIndex := ListaScreen.Items.IndexOf(Tela);
  if ListaScreen.ItemIndex < 0 Then
    ListaScreen.ItemIndex := ListaScreen.Items.IndexOf('800x600x8');

  VideoChange(ListaScreen.ItemIndex);

  if Screen.Width < 810 Then
    PageControl1.Height := 138
  else
    PageControl1.Height := 85;
  ClientHeight := PageControl1.Height;
  ClientWidth := Screen.Width - 12;
  Left := 0;
  Top := 0;

  // gvStrType = (vsCompanyName,    vsFileDescription,
  // vsFileVersion,    vsInternalName,
  // vsLegalCopyright, vsOriginalFilename,
  // vsProductName,    vsProductVersion);

  Main.Caption := CompName + ' (' + Usuario + ')' + ' - v' {+
    GetVersionString(Application.exename, vsFileVersion)};

  try
{$IFDEF DEBUG}
    WriteOSD('Iniciando CDROM', 18, (GetSystemMetrics(SM_CYSCREEN) - 18) div 2);
{$ENDIF}
    // ExtractFilePath(Application.exename) + 'Acionar.ini'
    //CR_Init(UpperCase(GetFirstCdRomDrive));
  except

  end;

  // Load bottoms
  // Carrega Botoes para a Barra de Ferramentas
  // clBlack = TColor($000000);
  // clMaroon = TColor($000080);
  // clGreen = TColor($008000);
  // clOlive = TColor($008080);
  // clNavy = TColor($800000);
  // clPurple = TColor($800080);
  // clTeal = TColor($808000);
  // clGray = TColor($808080);
  // clSilver = TColor($C0C0C0);
  // clRed = TColor($0000FF);
  // clLime = TColor($00FF00);
  // clYellow = TColor($00FFFF);
  // clBlue = TColor($FF0000);
  // clFuchsia = TColor($FF00FF);
  // clAqua = TColor($FFFF00);
  // clLtGray = TColor($C0C0C0);
  // clDkGray = TColor($808080);
  // clWhite = TColor($FFFFFF);
  {
    Botoes := TIniFile.Create(ExtractFilePath(Application.ExeName)+'botoes.ini');
    try    // use the string list
    MemoStream:=TMemoryStream.Create;
    try
    StringStream:=TStringStream.Create('');
    IdDecoderMIME1.DecodeToStream(Botoes.ReadString( 'WORDPAD',
    'ICONE',
    ''),
    StringStream);
    MemoStream.LoadFromStream(StringStream);
    try
    xbitmap:=TBitmap.Create;
    try
    temp:=Botoes.ReadString( 'WORDPAD', 'ICONMASK', 'clNone');
    MaskColor:=TColor($FF00FF);
    xbitmap.LoadFromStream(MemoStream);
    ImageList_Control.AddMasked(xbitmap,MaskColor);
    ToolButton32.ImageIndex:=ImageList_Control.Count-1;
    //          ToolBarOutros.
    except

    end;
    finally
    xbitmap.free;
    end;
    finally
    StringStream.Free;
    end;
    finally
    MemoStream.Free;
    end;
  }

  // Inicia LANHouse.exe
  // FillMemory(@si, SizeOf(si), 0);
  // si.cb := SizeOf(si);
  /// CreateProcess(Nil,
  // path to the executable file:
  // Pchar('C:\Acionar\LANHouse.exe'), Nil, Nil, False, NORMAL_PRIORITY_CLASS, Nil,
  // Pchar('C:\Acionar'), si, pi);
  // CloseHandle(pi.hProcess);
  // CloseHandle(pi.hThread);

  Workers.Active := True;

end;

procedure TMain.TudoClick(Sender: TObject);
var
  Comando: Integer;

begin
  Screen.Cursor := crHourglass;
  // try
  // TComponent(Sender as TToolButton).enable:=False;
  // Comando := TComponent(Sender).Tag;
  Comando := TComponent(Sender as TToolButton).Tag;

  case Comando of
    1:
      begin
        Conectar(Pchar(Servidor + 'b0_18_10'), Pchar('M:'),
          'C:\Engdisc\basic0\Ed0.exe', Nil, '640x480x8', '', '');
      end;
    2:
      begin
        Conectar(Pchar(Servidor + 'b1_29_09'), Pchar('M:'),
          'C:\Engdisc\Module1\Ed1_hv.exe', Nil, '640x480x8', '', '');
      end;
    3:
      begin
        Conectar(Pchar(Servidor + 'b2_29_09'), Pchar('M:'),
          'C:\Engdisc\basic2\Ed2.exe', Nil, '640x480x8', '', '');
      end;
    4:
      begin
        Conectar(Pchar(Servidor + 'b3_02_10'), Pchar('M:'),
          'C:\Engdisc\basic3\Ed3.exe', Nil, '640x480x8', '', '');
      end;
    5:
      begin
        Conectar(Pchar(Servidor + 'b4_22_09'), Pchar('M:'),
          'C:\Engdisc\basic4\Ed4.exe', Nil, '640x480x8', '', '');
      end;
    6:
      begin
        Conectar(Pchar(Servidor + 'b5_25_09'), Pchar('M:'),
          'C:\Engdisc\basic5\Ed5.exe', Nil, '640x480x8', '', '');
      end;
    7:
      begin
        Conectar(Pchar(Servidor + 'b6_22_09'), Pchar('M:'),
          'C:\Engdisc\basic6\Ed6.exe', Nil, '640x480x8', '', '');
      end;
    8:
      begin
        Conectar(Pchar(Servidor + 'b7_24_11'), Pchar('M:'),
          'C:\Engdisc\basic7\Ed7.exe', Nil, '640x480x8', '', '');
      end;
    9:
      begin
        Conectar(Pchar(Servidor + 'b8_24_11'), Pchar('M:'),
          'C:\Engdisc\basic8\Ed8.exe', Nil, '640x480x8', '', '');
      end;
    10:
      begin
        Conectar(Pchar(Servidor + 'b9_24_11'), Pchar('M:'),
          'C:\Engdisc\basic9\Ed9.exe', Nil, '640x480x8', '', '');
      end;
    // Cds do Reward
    20:
      Begin
        Conectar(Nil, Nil, Pchar(GetSystemPath(ProgFiles) + 'REWARD\euro.exe'),
          Pchar(GetSystemPath(ProgFiles) + 'REWARD'), '800x600x16', '',
          'c:\acionar\cds\Elementary-cd1.iso');
      End;

    21:
      Begin
        Conectar(Nil, Nil, Pchar(GetSystemPath(ProgFiles) + 'REWARD\euro.exe'),
          Pchar(GetSystemPath(ProgFiles) + 'REWARD'), '800x600x16', '',
          'c:\acionar\cds\Elementary-cd2.iso');
      End;

    22:
      Begin
        Conectar(Nil, Nil, Pchar(GetSystemPath(ProgFiles) + 'REWARD\euro.exe'),
          Pchar(GetSystemPath(ProgFiles) + 'REWARD'), '800x600x16', '',
          'c:\acionar\cds\Pre-intermediate-cd1.iso');
      End;

    23:
      Begin
        Conectar(Nil, Nil, Pchar(GetSystemPath(ProgFiles) + 'REWARD\euro.exe'),
          Pchar(GetSystemPath(ProgFiles) + 'REWARD'), '800x600x16', '',
          'c:\acionar\cds\Pre-intermediate-cd2.iso');
      End;

    24:
      Begin
        Conectar(Nil, Nil, Pchar(GetSystemPath(ProgFiles) + 'REWARD\euro.exe'),
          Pchar(GetSystemPath(ProgFiles) + 'REWARD'), '800x600x16', '',
          'c:\acionar\cds\Intermediate-cd1.iso');
      End;

    25:
      Begin
        Conectar(Nil, Nil, Pchar(GetSystemPath(ProgFiles) + 'REWARD\euro.exe'),
          Pchar(GetSystemPath(ProgFiles) + 'REWARD'), '800x600x16', '',
          'c:\acionar\cds\Intermediate-cd2.iso');
      End;

    30:
      Conectar(Pchar(Servidor + 'monica'), Pchar('M:'), 'M:\monica\monica.exe',
        'M:\monica', '640x480x8', '', '');

    31:
      Conectar(Pchar(Servidor + 'pc1'), Pchar('M:'),
        'M:\Story1.exe DATA\INDEX.MOD', 'M:\', '640x480x8', '', '');

    32:
      Conectar(Pchar(Servidor + 'Qsteps1'), Pchar('M:'), 'M:\Qsteps.exe', 'M:\',
        '640x480x32', '', '');

    33:
      Conectar(Pchar(Servidor + 'Qsteps2'), Pchar('M:'), 'M:\Qsteps2.exe',
        'M:\', '640x480x32', '', '');

    34:
      Conectar(Nil, Nil, Pchar('C:\Acionar\cds\Wordbird\Wordbi16.exe'),
        Pchar('C:\Acionar\cds\Wordbird'), '640x480x32', '', '');

    35:
      Conectar(Pchar(Servidor + 'dkmmmfd'), Pchar('M:'), 'M:\DKCODE\mfd.exe',
        'M:\', '640x480x32', '', '');

    36:
      Conectar(Nil, Nil, Pchar('C:\Acionar\Jogos\Word Rescue\Wr1.exe'),
        'C:\Acionar\Jogos\Word Rescue', '640x480x8', '', '');

    38:
      Conectar(Nil, Nil, Pchar(Servidor + 'Prince\Prince.exe'), Nil,
        '640x480x32', '', '');

    39:
      Conectar(Pchar(Servidor + 'sbcdpack'), Pchar('M:'), 'M:\autosb.exe',
        'M:\', '640x480x8', '', '');

    40:
      Conectar(Pchar(Servidor + 'mtd'), Pchar('M:'),
        'M:\WORKING\TBOOK.EXE M:\WORKING\tdict.tbk', 'M:\WORKING\',
        '640x480x8', '', '');

    41:
      Conectar(Pchar(Servidor + 'learn'), Pchar('M:'), Pchar('M:\setup.exe'),
        'M:\', '640x480x8', '', '');
    42:
      Conectar(Nil, Nil, Pchar('C:\DYNEDWIN\LAUNCH\Launchw.exe'), Nil,
        '640x480x16', '', '');

    43:
      Conectar(Nil, Nil, Pchar('C:\MYWORLD\MYWORLD.exe'), Nil,
        '640x480x32', '', '');

    44:
      Begin
        Conectar(Nil, Nil, Pchar(GetSystemPath(ProgFiles) +
          'THQ\Finding Nemo UWF\NemoUWF.exe'),
          Pchar(GetSystemPath(ProgFiles) + 'THQ\Finding Nemo UWF'),
          '800x600x16', 'NemoUWF.exe', 'c:\acionar\cds\nemo.iso');
      End;

    45:
      Begin
        Conectar(Nil, Nil, Pchar('C:\Acionar\cds\DisneysJungleFun\Tarzan.exe'),
          Pchar('C:\Acionar\cds\DisneysJungleFun'), '800x600x16', '',
          'c:\acionar\cds\tarzan.iso');
      End;

    48:
      Conectar(Nil, Nil, Pchar('C:\acionar\cds\Putt-Putt2\PuttPuttPBS.exe'),
        Pchar('C:\acionar\cds\Putt-Putt2'), '640x480x16', '', '');

    49:
      Conectar(Pchar(Servidor + 'FreddiFish2'), Pchar('M:'), 'M:\Freddi2.exe',
        'M:\', '640x480x32', '', '');
    50:
      Begin
        if Length(Edit2.Text) = 1 Then
          Edit2.Text := '0' + Edit2.Text;
        Conectar(Pchar(Servidor + 'brasil' + Edit2.Text), Pchar('M:'),
          'M:\Cdesp\ESP-CD.exe', Nil, '640x480x32', '', '');
      end;
    51:
      Conectar(Pchar(Servidor + 'Contact1'), Pchar('M:'), 'M:\cont1_95.exe',
        'M:\', '640x480x32', '', '');
    52:
      Conectar(Pchar(Servidor + 'Contact2'), Pchar('M:'), 'M:\cont2_95.exe',
        'M:\', '640x480x32', '', '');
    53:
      Conectar(Pchar(Servidor + 'Contacto_3'), Pchar('M:'), 'M:\cont3_95.exe',
        'M:\', '640x480x32', '', '');
    54:
      Conectar(Pchar(Servidor + 'tppsp'), Pchar('M:'),
        'M:\tplaysp\present.exe TPLAYSR.IWM', 'M:\tplaysp\',
        '640x480x32', '', '');
    70:
      Begin
        if Length(Edit1.Text) = 1 Then
          Edit1.Text := '0' + Edit1.Text;
        Conectar(Pchar(Servidor + 'brasil' + Edit1.Text), Pchar('M:'),
          'M:\Cdingles\Eng-ON.exe', Nil, '640x480x32', '', '');
      end;
    71:
      Conectar(Pchar(Servidor + 'arco'), Pchar('M:'), 'C:\TOEFL\TOEFL.EXE',
        'C:\TOEFL', '640x480x32', '', '');
    72:
      Conectar(Nil, Nil, Pchar(Servidor + 'arco\grammar3d\G3d32.exe'), Nil,
        '640x480x32', '', '');

    73:
      Begin
        // deletar pasta C:\Arquivos de programas\Macmillan\Inside Out\Beginner\Users
        DeleteFileWithUndo(GetSystemPath(ProgFiles) +
          'Macmillan\Inside Out\Beginner\Users\*.*'#0#0);
        Conectar(Nil, Nil, Pchar(GetSystemPath(ProgFiles) +
          'Macmillan\Inside Out\Beginner\data\start.exe'),
          Pchar(GetSystemPath(ProgFiles) +
          'Macmillan\Inside Out\Beginner\data\'), '1024x768x32', '',
          'c:\acionar\cds\IOB_10.mds');
      End;

    74:
      Begin
        DeleteFileWithUndo(GetSystemPath(ProgFiles) +
          'Macmillan\Inside Out\Elementary\Users\*.*'#0#0);
        Conectar(Nil, Nil, Pchar(GetSystemPath(ProgFiles) +
          'Macmillan\Inside Out\Elementary\data\start.exe'),
          Pchar(GetSystemPath(ProgFiles) +
          'Macmillan\Inside Out\Elementary\data\'), '1024x768x32', '',
          'c:\acionar\cds\IOE_10.mds');
      End;

    90:
      Conectar(Pchar(Servidor + 'Musicas'), Pchar('M:'), 'M:\Music.exe', 'M:\',
        '800x600x32', '', '');
    91:
      begin
        try
          DeleteFileWithUndo(GetSystemPath(Cookies) + '*.*');
        except
        end;

        VideoChange(ListaScreen.ItemIndex);
        Conectar(Nil, Nil, Nil, Nil, PAnsiChar(Tela),
          'Firefox.exe,iexplore.exe,chrome.exe,googlecrashandler.exe', Nil);
        ShellExecute(Handle, 'open', Pchar('http://www.ili.com.br/'), nil, nil,
          SW_SHOWNORMAL);;
      end;
    92:
      Conectar(Nil, Nil, Pchar(GetAssociation('.odt')), Nil, '',
        'soffice.bin,soffice.exe,swriter.exe,scalc.exe,smath.exe,' +
        'sweb.exe,simpress.exe,sbase.exe,crashrep.exe,' +
        'python.exe,quickstart.exe,wordpad.exe', '');
    94:
      Conectar(Nil, Nil, Pchar(GetAssociation('.rtf')), Nil, '',
        'soffice.bin,soffice.exe,swriter.exe,scalc.exe,smath.exe,' +
        'sweb.exe,simpress.exe,sbase.exe,crashrep.exe,' +
        'python.exe,quickstart.exe,wordpad.exe', '');
    95:
      Conectar(Nil, Nil, Pchar(GetAssociation('.txt')), Nil, '',
        'notepad.exe,notepad++.exe', '');
    200:
      begin
        // Muda modo de tela (Screen) para o indicado em tela
        ListaScreen.ItemIndex := ListaScreen.Items.IndexOf(Tela);
        if ListaScreen.ItemIndex < 0 Then
          ListaScreen.ItemIndex := ListaScreen.Items.IndexOf('800x600x8');
        VideoChange(ListaScreen.ItemIndex);
        PasswordDlg.Show(); // Liberar explorer (botao INICIAR)
      end;
    201:
      begin
        Winexec(PAnsiChar(GetSystemPath(WindSys) + PAnsiChar('sndvol32.exe')), SW_SHOWNORMAL);
        Winexec(PAnsiChar(GetSystemPath(WindRoot) + PAnsiChar('sndvol32.exe')), SW_SHOWNORMAL);
        Winexec(PAnsiChar(GetSystemPath(WindSys) + PAnsiChar('beats.exe')), SW_SHOWNORMAL);
      end;
    203: // Reiniciar Windows
      begin
        EnviaTexto(2, 'Reiniciando Windows', True);
        MyExitWindows(EWX_FORCE + EWX_REBOOT);
      end;
    204: // Desligar Windows
      begin
        EnviaTexto(2, 'Desligando Windows', True);
        MyExitWindows(EWX_FORCE + EWX_SHUTDOWN);
      end;
    206:
      VideoChange(ListaScreen.ItemIndex);
    210:
      begin
        EnviaTexto(2, 'Logon do Windows', True);
        // Login
        // funciona no Win XP
        MyExitWindows(EWX_FORCE + EWX_LOGOFF);
        // para win98x
        // ExitWindowsEx(EWX_FORCE + EWX_LOGOFF, 0);
      end;

    256:
      Conectar(Nil, Nil, Pchar('C:\acionar\cds\Sky1\Sky1.exe'),
        'C:\acionar\cds\Sky1', '800x600x16', '', '');

    258:
      Conectar(Pchar(Servidor + 'Builder'), Pchar('M:'), 'M:\Start.exe', 'M:\',
        '640x480x16', '', '');

  end; // case

  // finally
  // EnviaTexto(0, Format('Programa: (%d) %s', [Comando, registro.ReadString
  // ('Programas', IntToStr(Comando), 'Desconhecido')]), False);
  // end; // try finally
  Screen.Cursor := crDefault;
end;

procedure TMain.ApagaLicaoReward;
var
  Drive_CD: string;
  Read_INI: String;
begin
  // 73: Begin
  // Primeiro Drive de CDROm
  // Drive_CD:=UpperCase(GetFirstCdRomDrive);
  Drive_CD := 'E:\';

  with TIniFile.Create(GetSystemPath(ProgFiles) + 'REWARD\euro.cfg') do
  begin
    Read_INI := ReadString('Main', 'SrcDisk', 'D:\');
    WriteString('Main', 'SrcDisk',
      { Copy( } Drive_CD { ,1,2) } );

    // Read_INI    := ReadString( 'Elementary',
    // 'path',
    // 'D:\Elementary');
    // Read_ini:=Copy(Read_ini, 4 ,  Length(Read_ini)-3);
    WriteString('Elementary', 'path', Drive_CD + 'Elementary' { Read_INI } );

    // Read_INI    := ReadString( 'Pre-Intermediate',
    // 'path',
    // 'D:\Pre-Intermediate');
    // Read_ini:=Copy(Read_ini, 4 ,  Length(Read_ini)-3);
    WriteString('Pre-Intermediate', 'path', Drive_CD + 'Pre-Intermediate'
      { Read_INI } );

    // Read_INI    := ReadString( 'Intermediate',
    // 'path',
    // 'D:\Intermediate');
    // Read_ini:=Copy(Read_ini, 4 ,  Length(Read_ini)-3);
    WriteString('Intermediate', 'path', Drive_CD + 'Intermediate'
      { Read_INI } );

    // Read_INI    := ReadString( 'Upper-Intermediate',
    // 'path',
    // 'D:\Upper-Intermediate');
    // Read_ini:=Copy(Read_ini, 4 ,  Length(Read_ini)-3);
    WriteString('Upper-Intermediate', 'path', Drive_CD + 'Upper-Intermediate'
      { Read_INI } );

    // Read_INI := ReadString( 'Folders',
    // 'Sounds',
    // 'D:\Sounds');
    // Read_ini:=Copy(Read_ini, 4 ,  Length(Read_ini)-3);
    WriteString('Folders', 'Sounds', Drive_CD + 'Sounds' { Read_INI } );
  end; // with registro

  // deletar pasta C:\Arquivos de programas\REWARD\Users\alunos
  DeleteFileWithUndo(GetSystemPath(ProgFiles) + 'REWARD\Users\*.*'#0#0);
end;

procedure TMain.Edit1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = 13 Then
    EngCDROM.Click;
end;

procedure TMain.Edit2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = 13 Then
    ESPCD.Click;
end;

procedure TMain.FormDestroy(Sender: TObject);
begin
  SProgs.Free;
  { Set form1's window proc back to it's original procedure }
  SetWindowLong(Main.Handle, GWL_WNDPROC, LongInt(OldWindowProc));

  // Fechar porta do drive de CDROM
  //CR_EjectCD(False);

  Workers.Close;
end;

procedure TMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  // Ask user if shutdown should occur.
  case MessageDlg('Não saia deste programa!!!' + #13 + #10 +
    'Você quer Reiniciar o Windows?', mtConfirmation, mbYesNoCancel, 0) of
    mrYes:
      begin
        EnviaTexto(2, 'Worker desconectado pelo Usuario', True);
        CanClose := True; // Allow Windows to shut down.
        ExitWindowsEx(15, 0);
      end;
    mrNo:
      begin
        EnviaTexto(2, 'Worker desconectado pelo Usuario', True);
        CanClose := True; // Allow Windows to shut down.
        Application.Terminate;
      end;
    mrCancel:
      begin
        CanClose := False; // Prevent Windows from shutting down.
      end;
  end;

end;

procedure TMain.WorkersAccept(Sender: TObject; Socket: TCustomWinSocket);
begin
  EnviaTexto(1, 'Coneção aceita!', False);
end;

procedure TMain.WorkersClientError(Sender: TObject; Socket: TCustomWinSocket;
  ErrorEvent: TErrorEvent; var ErrorCode: Integer);
begin
  ShowMessage('Erro via Gerente'#13 + IntToStr(ErrorCode));
  ErrorCode := 0;
end;

procedure TMain.WorkersClientDisconnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  Workers.Active := False;
  Workers.Active := True;
end;

procedure TMain.WorkersClientRead(Sender: TObject; Socket: TCustomWinSocket);
var
  I: byte;
  Palavra: AnsiString;
  Numero: Integer;
  Nome, Caminho, Letra, Comando, Pasta, Size_Screen, Liberar, montar_iso: Pchar;
  // Script:TStrings;
begin
  Palavra := Socket.ReceiveText;
  // Retira o numero da string
  Numero := StrToIntDef(GetParam(Palavra, '#', 1), 0);
  Nome := Pchar(GetParam(Palavra, '#', 2));
  Caminho := Pchar(GetParam(Palavra, '#', 3));
  Letra := Pchar(GetParam(Palavra, '#', 4));
  Comando := Pchar(GetParam(Palavra, '#', 5));
  Pasta := Pchar(GetParam(Palavra, '#', 6));
  Size_Screen := Pchar(GetParam(Palavra, '#', 7));
  Liberar := Pchar(GetParam(Palavra, '#', 8));
  montar_iso := PWideChar(GetParam(Palavra, '#', 9));

  case Numero of
    1: // Aviso de Coneccao
      EnviaTexto(99, 'OK!', False);
    // 3: // atualizar Tela via http
    // Servidor_web;
    4: // teste de script
      begin
      end;
    // ScriptControl1.Run('Main',psarray);
    // ScriptControl1.ExecuteStatement('Call main');
    5: // adiciona drive compartilhado e executa programas
      begin
        if Size_Screen='Tela' Then
           Size_Screen:=PChar(Tela);
        Conectar(Caminho, Letra, Comando, Pasta, Size_Screen, Liberar, montar_iso);
      end;
    8: // mostra mensagens na tela...
      WriteOSD(Nome, 18, (GetSystemMetrics(SM_CYSCREEN) - 18) div 2);
    // ShowMessage(Nome);
    // Liga o Servidor HTTP
    // 9: if Nome = 'ON' Then
    // begin
    // end;
    // end
    // else

    // Copia a tela para ser visualizada pelo Servidor HTTP
    10:
      Captura(edroot + '\captura.jpg', StrToIntDef(Nome, 60));

    11: // desliga o windows
      begin
        EnviaTexto(2, 'Desligando Estação!', False);
        MyExitWindows(EWX_FORCE + EWX_SHUTDOWN);
      end;
    12: // reinicia o windows
      begin
        EnviaTexto(2, 'Reiniciando Estação!', True);
        MyExitWindows(EWX_FORCE + EWX_REBOOT);
      end;
    13: // Enviar lista de processos
      ListaProcessos;
    14:
      Begin // Remover processo da memoria
{$IFDEF DEBUG}
        // show on desktop the programs not authorized
        WriteOSD('Processo mumero ' + Nome, 14, 250);
{$ENDIF}
        // TerminateProcess(OpenProcess(PROCESS_TERMINATE, FALSE,
        // strtoint64Def(Nome, 0)),0);
        DetonProcessos(Nome);
      End;
    16: // Desligar Monitor de video
      // SendMessage(Application.Handle, WM_SYSCOMMAND, SC_MonitorPower, 0);
      // power on monitor
      // SendMessage(Application.Handle, WM_SYSCOMMAND, SC_MONITORPOWER, $FFFFFFFF);
      // power off monitor
      // SendMessage(Application.Handle, WM_SYSCOMMAND, SC_MONITORPOWER, 2);
      // power stand by mode
      SendMessage(Application.Handle, WM_SYSCOMMAND, SC_MONITORPOWER, 1);
    33: // Transparencia do Acionar
      Main.AlphaBlendValue := StrToIntDef(Nome, 190);

    56: // mostrar as conexoes de internet
      begin
        //EnviaTexto(56, Get_URL('IExplore'), False);
        //EnviaTexto(56, Get_URL('Firefox'), False);
      end;

    57: // Finalizar a conexao
      EnviaTexto(2, 'Worker desconectado pelo Gerente', True);
    58: // Liberar programas do ACIONAR
      begin
        for I := 0 to PageControl1.PageCount - 1 do
        begin
          if Pchar(GetParam(Nome, '%', I + 1)) = 'ON' Then
            PageControl1.Pages[I].Enabled := True
          else
            PageControl1.Pages[I].Enabled := False;
        end; // for I
      end;
    60: // Abrir ou Fechar porta do drive de CDROM
      if Nome = 'Abrir' then
      begin
{$IFDEF DEBUG}
        WriteOSD('CDEject ' + UpCase(GetFirstCdRomDrive[1]), 14, 200);
        if IsWinNT then
          WriteOSD('Versao Windows NT/XP', 14, 150)
        else
          WriteOSD('Versao Windows 9x', 14, 150);
{$ENDIF}
        //CR_EjectCD(True)
        mciSendString('Set cdaudio door open wait', nil, 0, handle)
      end
      else
      begin
{$IFDEF DEBUG}
        WriteOSD('CDCLOSE ' + UpCase(GetFirstCdRomDrive[1]), 14, 220);
{$ENDIF}
        //CR_EjectCD(False);
        mciSendString('Set cdaudio door closed wait', nil, 0, handle);
      end;
    61:
      if Nome = 'Travar' then
      begin
        // Travar porta do CDROM
{$IFDEF DEBUG}
        WriteOSD('CDLock ' + UpCase(GetFirstCdRomDrive[1]), 14, 250);
{$ENDIF}
        //CR_LockCD(True)
      end
      else
      begin
        // Destravar porta do CDROM
{$IFDEF DEBUG}
        WriteOSD('CDUnlock ' + UpCase(GetFirstCdRomDrive[1]), 14, 270);
{$ENDIF}
        //CR_LockCD(False);
      end;
    62: // ...delete the 'Temporary Internet Files'?
      DeleteIECache;
    70: // Desligando Paginador Interno
      // Web.Close;
    end;
  end;

  procedure TMain.Timer_ExplorerTimer(Sender: TObject);
  var
    // h : THandle;
    n, m: Integer;
    SL: TStringList;
    OK: Boolean;
    Teste, Programa: string;
    // , SizeScreen :string;
  begin

    SL := TStringList.Create;
    OK := True;
    try
      // generates list of processes
      GetProcsAndWindows(SL, False);
      FOR n := 1 TO SL.Count - 1 DO
      begin
        OK := True;
        For m := 0 to SProgs.Count - 1 do
        begin
          Programa := UpperCase(ExtractFileName((SL.Objects[n] AS TProcWinObj)
            .exename));
          Teste := UpperCase(SProgs.Strings[m]);
{$IFDEF DEBUG}
          // show on desktop the programs not authorized
          WriteOSD('Programa:' + Programa + '=' + Teste, 18,
            (GetSystemMetrics(SM_CYSCREEN) - 18) div 2);
{$ELSE}
          if Programa = Teste then
          begin
            OK := False;
            break;
          end;
        end;
        // If found the programs not authorized
        If OK Then
        begin
          // kill the programs not authorized
          TerminateProcess(OpenProcess(PROCESS_TERMINATE, False,
            (SL.Objects[n] AS TProcWinObj).ProcID), 0);
{$ENDIF}
        end;
      end;
    finally
      SL.Free;
      If OK Then
      begin

      end;
      // If OK Then
      // begin
      // SizeScreen:='800x600x16';
      // if (IntToStr(Screen.Width)+'x'+IntToStr(Screen.Height)+
      // 'x32'
      // <> ListaScreen.Items[ListaScreen.Items.IndexOf(SizeScreen)])  Then
      // begin
      // ListaScreen.ItemIndex:=ListaScreen.Items.IndexOf(SizeScreen);
      // if not (ListaScreen.ItemIndex < 0) Then
      // VideoChange(ListaScreen.ItemIndex);
      // end; // if ((not
      // end; // if SizeScreen
    end;

    // ajustar a janela
    if Left < 0 then
      Left := 0;
    if Top < 0 then
      Top := 0;
    if Screen.Width - (Left + Width) < 0 then
      Left := Screen.Width - Width;
    if Screen.Height - (Top + Height) < 0 then
      Top := Screen.Height - Height;
  end;

  procedure TMain.FormShow(Sender: TObject);
  begin
    // Timer_ExplorerTimer(Self);
  end;

procedure TMain.ListaScreenDblClick(Sender: TObject);
begin
  VideoChange(ListaScreen.ItemIndex);
end;

procedure TMain.ListaScreenKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 Then
    VideoChange(ListaScreen.ItemIndex);
end;

procedure TMain.B_LoginClick(Sender: TObject);
  begin
    Label_Aluno.Visible := True;
    Label_Turma.Visible := True;
    Label_Tempo.Visible := True;
    Foto_Aluno.Visible := True;
    B_Logout.Visible := True;
    B_Login.Visible := False;

  end;

  procedure TMain.B_LogoutClick(Sender: TObject);
  begin
    Label_Aluno.Visible := False;
    Label_Turma.Visible := False;
    Label_Tempo.Visible := False;
    Foto_Aluno.Visible := False;
    B_Logout.Visible := False;
    B_Login.Visible := True;
  end;

end.
