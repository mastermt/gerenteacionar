// {$IFDEF AGENTE}
// object Agente: TAgent
// Left = 344
// Top = 16
// Width = 32
// Height = 32
// OnClick = AgenteClick
// ControlData = {020200004F0300004F030000}
// end
// {$ENDIF}

unit main;
{ -------------------------------------------------------------------------------
  GERENTE
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
  ------------------------------------------------------------------------------- }

interface

// {$I VER.INC}
uses
  Windows, Messages, SysUtils, Classes,
  Graphics, Controls, Forms, Dialogs,
  Menus, StdCtrls, Buttons, ScktComp,
  ExtCtrls, ComCtrls, Tabnotbk,
  ImgList, ToolWin, Mask, ActnList, WinSock,
  MMSystem,
  ShellApi, CheckLst,
  OleCtrls,
{$IFDEF AGENTE}
  AgentObjects_TLB,
{$ENDIF}
  jpeg,
  Registry, IniFiles, System.UITypes, System.Actions, System.ImageList,
// dcntree,
// DECUtil, Hash, Cipher
  Vcl.Themes,
  Vcl.Styles;
type
  TReportar = (rtLocal, rtEnviar, rtReceber, rtEnviar_Receber, rtNConectado);

  TCliente = class(TForm)
  Panel_Reports: TPanel;
    IL_Comp1: TImageList;
    StatusBar1: TStatusBar;
    IL_Ligacao: TImageList;
    Panel_Micros: TPanel;
    LV_Maquinas: TListView;
    Splitter1: TSplitter;
    BarraFerra: TImageList;
    PM_Programas: TPopupMenu;
    Executar1: TMenuItem;
    Incluir1: TMenuItem;
    Excluir1: TMenuItem;
    SalvarLista1: TMenuItem;
    PM_Maquinas: TPopupMenu;
    SelecionarTodos1: TMenuItem;
    Conectar1: TMenuItem;
    Desconectar1: TMenuItem;
    ActionList1: TActionList;
    Action_Conectar: TAction;
    Action_Desconectar: TAction;
    Action_Selecionar: TAction;
    Realocar1: TMenuItem;
    Timer1: TTimer;
    Timer2: TTimer;
    ToolBar2: TToolBar;
    SB_Reiniciar: TToolButton;
    SB_Desligar: TToolButton;
    TB_DesligaMonitor: TToolButton;
    ToolBar3: TToolBar;
    SB_Enderecar: TToolButton;
    SB_Icone: TToolButton;
    SB_Lista: TToolButton;
    SB_Conectar: TToolButton;
    SB_Desconectar: TToolButton;
    TB_WalkOnLAN: TToolButton;
    Caderno: TTabbedNotebook;
    Bevel1: TBevel;
    Label1: TLabel;
    Panel_Libera_Botao: TPanel;
    B_LiberaBotao: TButton;
    B_InverteSelect: TButton;
    CheckListBox1: TCheckListBox;
    B_LerAcionar: TButton;
    B_SalvarAcionar: TButton;
    StaticText7: TStaticText;
    B_RodarScript: TButton;
    B_CapturaTela: TButton;
    Edit1: TEdit;
    UpDown1: TUpDown;
    ToolBar4: TToolBar;
    TB_AbreCDROM: TToolButton;
    TB_FechaCDROM: TToolButton;
    TB_TravaCDROM: TToolButton;
    TB_LiberaCDROM: TToolButton;
    Mensagem: TEdit;
    TB_Mensagem: TToolButton;
    E_Script_File: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    UpDown2: TUpDown;
    LV_Programas: TListView;
    Panel_Prog_Dados: TPanel;
    SB_Executar: TSpeedButton;
    SB_Programas: TSpeedButton;
    Label2: TLabel;
    Label3: TLabel;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    Edit_Liberar: TEdit;
    Edit_ISO: TEdit;
    Edit_Mapeamento: TEdit;
    ComboBox1: TComboBox;
    Resolucao: TComboBox;
    Edit_Programa: TEdit;
    Edit_Pasta: TEdit;
    Edit_Executar: TEdit;
    LV_Processos: TListView;
    Panel1: TPanel;
    SB_Ver_Processos: TSpeedButton;
    SB_Kill_Process: TSpeedButton;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    LV_Registro: TListView;
    Panel_Registro1: TPanel;
    LV_Internet: TListView;
    ToolBar1: TToolBar;
    TB_Propriedades: TToolButton;
    TB_Internet: TToolButton;
    TB_EraseIexplorer: TToolButton;
    LV_Report: TListView;
    Panel_Micro_Total: TPanel;
    L_Conectado: TLabel;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    SB_Sair: TToolButton;

    procedure FormCreate(Sender: TObject);
    procedure About1Execute(Sender: TObject);
    procedure SB_DesconectarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SB_ReiniciarClick(Sender: TObject);
    procedure SB_MensagemClick(Sender: TObject);
    procedure SB_Kill_ProcessClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SB_Ver_ProcessosClick(Sender: TObject);
    procedure SB_EnderecarClick(Sender: TObject);
    procedure SB_IconeClick(Sender: TObject);
    procedure SB_ListaClick(Sender: TObject);
    procedure LV_MaquinasSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure Reportar(SReport, SAddress: String; Iindice: TReportar);
    procedure Preencher_Program();
    procedure LV_ProgramasDblClick(Sender: TObject);
    procedure SB_DesligarClick(Sender: TObject);
    procedure MaquinasError(Sender: TObject; Socket: TCustomWinSocket;
      ErrorEvent: TErrorEvent; var ErrorCode: Integer);
    procedure MaquinasConnect(Sender: TObject; Socket: TCustomWinSocket);
    procedure MaquinasDisconnect(Sender: TObject; Socket: TCustomWinSocket);
    procedure MaquinasRead(Sender: TObject; Socket: TCustomWinSocket);
    procedure SB_ConectarClick(Sender: TObject);
    procedure Action_ExecutarExecute(Sender: TObject);
    procedure SB_ProgramasClick(Sender: TObject);
    { procedure Verificar(); }
    procedure Splitter1Moved(Sender: TObject);
    procedure TB_AbreCDROMClick(Sender: TObject);
    procedure ListViewCompare(Sender: TObject; Item1, Item2: TListItem;
      Data: Integer; var Compare: Integer);
    procedure ListViewColumnClick(Sender: TObject; Column: TListColumn);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure TB_InternetClick(Sender: TObject);
    procedure TB_DesligaMonitorClick(Sender: TObject);
    procedure LV_ProgramasClick(Sender: TObject);
    procedure SB_ExecutarClick(Sender: TObject);
    procedure Action_ConectarExecute(Sender: TObject);
    procedure Action_SelecionarExecute(Sender: TObject);
    procedure LV_MaquinasChange(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure LV_InternetDblClick(Sender: TObject);
    procedure TB_FechaCDROMClick(Sender: TObject);
    procedure B_LiberaBotaoClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure B_InverteSelectClick(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
{$IFDEF AGENTE}
    procedure AgenteClick(Sender: TObject; const CharacterID: WideString;
      Button, Shift, x, y: Smallint);
{$ENDIF}
    procedure B_RodarScriptClick(Sender: TObject);
    procedure B_CapturaTelaClick(Sender: TObject);
    procedure TB_TravaCDROMClick(Sender: TObject);
    procedure TB_LiberaCDROMClick(Sender: TObject);
    procedure TB_EraseIexplorerClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure TB_WalkOnLANClick(Sender: TObject);
    procedure TB_MensagemClick(Sender: TObject);
    procedure PopupBox1Change(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure SB_SairClick(Sender: TObject);

  private
{$IFDEF AGENTE} vPersonagem: String; {$ENDIF}
    Ver_Micro: Word;
    Resp_Micro: Boolean;
    Micros: Word;
    Inicio: Boolean;
  public

  protected

  end;

const
  MAX_MICROS_LIGADOS = 20;
  MICRO_NAO_CONECTADO_NAO_SELECIONADO = 0;
  MICRO_NAO_CONECTADO_SELECIONADO = 1;
  MICRO_CONECTADO_NAO_SELECIONADO = 2;
  MICRO_CONECTADO_SELECIONADO = 3;
  InitialSize = $1; // Any positive value is acceptable.

  GPCMD_PREVENT_ALLOW_MEDIUM_REMOVAL = $1E;

var
  Cliente: TCliente;
  Maquina: array [0 .. MAX_MICROS_LIGADOS] of TClientSocket;
  //CompName: array [0 .. MAX_COMPUTERNAME_LENGTH] of Char;
  CompName: String;
  CompWinDir: array [0 .. MAX_PATH] of Char;
  vURL: OleVariant;
  teste: Boolean;

implementation

uses
  {criptografia,}
  About, Util
  {,LmErr, LmErrText}
    ;

{ resourcestring
  sAppTitle = 'Gerente - %d conexões';
  sComputerName = 'Computador: %s';
  sDeleteShare = 'Remove Compartilhamento "%s" ?';
  sDisconnectUser = 'Desconetar Computador "%s" ?';
  sServerName = 'Servidor: %s';
}
{$R *.DFM}

const
  MaxNetArrayItems = 512;

procedure TCliente.ListViewCompare(Sender: TObject; Item1, Item2: TListItem;
  Data: Integer; var Compare: Integer);
begin
  LVCompare(TListView(Sender), Item1, Item2, Data, Compare);
end;

procedure TCliente.ListViewColumnClick(Sender: TObject; Column: TListColumn);
begin
  LVColumnClick(TListView(Sender), Column);
end;

function GetParam(Text: string; Sep: Char; P: Byte): string;
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
    Result := ''
  else if Pos(Sep, Text) = 0 then
    Result := Text
  else
    Result := Copy(Text, 1, Pos(Sep, Text) - 1);
end;

procedure TCliente.About1Execute(Sender: TObject);
begin
  with TAboutDlg.Create(Application) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TCliente.Reportar(SReport, SAddress: String; Iindice: TReportar);
var
  Conteudo: TListItem;
  Indice: Integer;
begin
  case Iindice of
    rtLocal:
      Indice := 1;
    rtEnviar:
      Indice := 5;
    rtReceber:
      Indice := 6;
    rtEnviar_Receber:
      Indice := 7;
    rtNConectado:
      Indice := 8;
  else
    ;
    Indice := 0;
  end;

  with Cliente.LV_Report do
  begin
    Items.BeginUpdate;
    try
      with Conteudo do
      begin
        Conteudo := Items.Add();
        Caption := SAddress;
        ImageIndex := Indice;
        SubItems.Add(SReport);
        SubItems.Add(DateToStr(Date));
        SubItems.Add(TimeToStr(Time));
        // Cliente.Caderno.ActivePage:='Report';
        StatusBar1.SimpleText := SAddress + ': ' + SReport;
      end;
    finally
      Items.EndUpdate;
    end;
  end;
end;

procedure TCliente.PopupBox1Change(Sender: TObject);
begin
  // case PopupBox1.ItemIndex of
  // 0: Layer.Style := nil;
  // 1: Layer.Style := modernStyle;
  // 2: Layer.Style := vistaStyle;
  // 3: Layer.Style := airStyle;
  // end;
end;

procedure TCliente.Preencher_Program();
var
  SProgramas: String;
  I: Integer;
  Lista: TstringList;
  Conteudo: TListItem;
begin
  Lista := TstringList.Create;
  SProgramas := ExtractFilePath(Application.ExeName) + 'Programas.ini';

  If (FileExists(SProgramas)) then
  begin
    Reportar('Localizando Lista de Programas', CompName, rtLocal);
    try
      WITH TIniFile.Create(SProgramas) DO
        try
          ReadSections(Lista);
          with LV_Programas do
          begin
            Items.Clear;
            FOR I := 0 TO Lista.Count - 1 DO
            begin
              Conteudo := Items.Add;
              Conteudo.Caption := Lista[I];
              Conteudo.SubItems.Add(ReadString(Lista[I], 'Mapeamento', ''));
              Conteudo.SubItems.Add(ReadString(Lista[I], 'Drive', 'Letra'));
              Conteudo.SubItems.Add(ReadString(Lista[I], 'Executavel', ''));
              Conteudo.SubItems.Add(ReadString(Lista[I], 'Pasta', ''));
              Conteudo.SubItems.Add(ReadString(Lista[I], 'Size', '640x480x8'));
              Conteudo.SubItems.Add(ReadString(Lista[I], 'Liberar', ''));
              Conteudo.SubItems.Add(ReadString(Lista[I], 'ISO', ''));
            end; // for
          end; // with LV_Programas
        finally
          Reportar('Lista de Programas - OK', CompName, rtLocal);
          Free;
        end; // try 2
    finally
      Lista.Free;
    end; // try 1
  end // begin if
  else
    Reportar('Não encontrei a Lista de Programas (Programas.ini)',
      CompName, rtLocal);
end;

{
  Realiza o relacionamento do numero de IP que há no arquivo
  Maquinas.ini para a lista de IP das Maquinas
}
procedure TCliente.SB_EnderecarClick(Sender: TObject);
var
  SMaquinas: String;
  I: Integer;
  Lista: Tstrings;
  Conteudo: TListItem;
begin

  Lista := TstringList.Create;
  LV_Maquinas.Items.Clear;
  Reportar('Localizando Lista de Computadores', CompName, rtLocal);
  try
    Screen.Cursor := crHourglass;
    SMaquinas := ExtractFilePath(Application.ExeName) + 'Maquinas.ini';
    If (FileExists(SMaquinas)) then
    begin
      Lista.LoadFromFile(SMaquinas);
      for I := 0 to Lista.Count - 1 do
      begin
        Conteudo := LV_Maquinas.Items.Add();
        Conteudo.Caption := UpperCase(Lista.Strings[I])
      end; // for
      Reportar('Lista de Computadores - OK', CompName, rtLocal);
    end // if
    else
      Reportar('Não encontrei Lista de Computadores (Maquinas.ini)',
        CompName, rtLocal);
  finally
    Screen.Cursor := crDefault;
    Lista.Free;
  end;
end;

procedure TCliente.FormCreate(Sender: TObject);
var
{$IFDEF AGENTE}
  Agent_Name: TFileName;
{$ENDIF}
  I: Byte;
  //L: DWORD;
  Temp: string;
  reg: TIniFile;

begin
  teste := True;
  Ver_Micro := 0;
  Micros := 0;
  Resp_Micro := False;
  Timer1.Enabled := False;
  Timer2.Enabled := False;
  Inicio := True;
{$IFDEF AGENTE}
  Agent_Name := GetWindowsDir + '\MSAGENT\CHARS\';
{$ENDIF}
  // L := Sizeof(CompWinDir);
  // GetWindowsDirectory(@CompWinDir,L); // Windows directory path
  //L := Sizeof(CompName);
  //Win32Check(GetComputerName(@CompName, L));
  CompName:=GetComputerNetName;

  // Cliente.Caption:=Cliente.Caption+' - '+CompName;
  // gvStrType = (vsCompanyName,    vsFileDescription,
  // vsFileVersion,    vsInternalName,
  // vsLegalCopyright, vsOriginalFilename,
  // vsProductName,    vsProductVersion);

  Cliente.Caption := 'Gerente - Pedro Tomaz Alves 1996-2023 v' +
                      GetAppVersionStr + ' - ' + CompName;



{$IFDEF AGENTE}
  try
    { como exemplo esta sendo carregado o character "genie"
      caso voce tenha instalado e queira utilizando outro
      character basta mudar o texto "Genie" pelo nome do
      seu character nas 2 linhas abaixo }
    vPersonagem := 'Peedy';

    if FileExists(Agent_Name + 'genie.acs') Then
      Agent_Name := Agent_Name + 'genie.acs';
    if FileExists(Agent_Name + 'peedy.acs') Then
      Agent_Name := Agent_Name + 'peedy.acs';
    if FileExists(Agent_Name + 'merlin.acs') Then
      Agent_Name := Agent_Name + 'merlin.acs';
    if FileExists(Agent_Name + 'robby.acs') Then
      Agent_Name := Agent_Name + 'robby.acs';

    Agente.Characters.Load(vPersonagem, Agent_Name);

    with Agente.Characters.Character(vPersonagem) do
    begin
      moveto(400, 300, 0);
      show(False);
      Play('Congratulate');
      Speak('Bem vindo! ao Gerente.', vURL);
    end;
  except
    // gera uma exceção caso o character definido seja invalido
    Reportar('O Character especificado não pode ser carregado!',
      CompName, rtLocal);
  end;
{$ENDIF}
  Caderno.PageIndex := 0;
  SB_Enderecar.Click;
  Preencher_Program;
  with LV_Maquinas.Items do
  begin
    for I := 0 to Count - 1 do
    begin
      Maquina[I] := TClientSocket.Create(Cliente);
      Maquina[I].Active := False;
      // Maquina[I].Address      := Item[I].Caption;
      Maquina[I].Host := Item[I].Caption;
      Maquina[I].Port := 1025;
      Maquina[I].ClientType := ctNonBlocking;
      Maquina[I].OnConnect := MaquinasConnect;
      Maquina[I].OnDisconnect := MaquinasDisconnect;
      // Maquina[I].OnConnecting := MaquinasConnecting;
      Maquina[I].OnError := MaquinasError;
      Maquina[I].OnRead := MaquinasRead;
      // Maquina[I].Active       := True;
      // Maquina[I].Open;
      Application.ProcessMessages;
    end; // for i
  end; // with

  // Acionar Paginas
  reg := Nil;
  try
    try
      reg := TIniFile.Create(ExtractFilePath(Application.ExeName) +
        'Acionar.ini');
      CheckListBox1.Items.Clear;
      with reg do
      begin
        for I := 0 to 32 do
        begin
          Temp := ReadString('TABSHEET_NOME', IntToStr(I + 1), 'ACABOU');
          if Temp = 'ACABOU' then
            break;
          with CheckListBox1 do
          begin
            Items.Add(Temp);
            State[I] := cbChecked;
          end;
        end; // for I
      end; // with reg
    Except
      Reportar('Não encontrei o arquivo Acionar.ini!', CompName, rtLocal);
    end;

  finally
    reg.Free;
  end; // try

  Sleep(3000);
end;

{
  Quando o formulario Cliente for destruido deve-se realizar a desconcção com
  todos os gerentes
}

procedure TCliente.FormDestroy(Sender: TObject);
var
  I: Byte;
begin
  with LV_Maquinas.Items do
  begin
    for I := 0 to Count - 1 do
    begin
      if Item[I].ImageIndex = 3 then
      begin
        try
          Maquina[I].Close;
          Maquina[I].Active := False;
          // Item[I].ImageIndex:=1;
          // Maquina[I].active  := true;
        Except
          Maquina[I].Active := False;
        end;
      end;
    end;
  end;
{$IFDEF AGENTE}
  with Agente do
  begin
    { Esconde o personagem }
    Characters.Character(vPersonagem).Hide(False);
    { Descarrega o personagem }
    Characters.Unload(vPersonagem);
    { termina os serviços como o Servidor do Assistente }
    Connected := False;
  end;
{$ENDIF}
end;

procedure TCliente.FormResize(Sender: TObject);
begin
  Panel_Micros.Width := Trunc(Cliente.Width * 0.30);
end;

procedure TCliente.SB_DesconectarClick(Sender: TObject);
var
  I: Byte;
begin
  with LV_Maquinas.Items do
  begin
    for I := 0 to Count - 1 do
    begin
      if ((Item[I].ImageIndex = 3) and Maquina[I].Active) then
      begin
        Reportar('Tentando desconectar ' + Maquina[I].Host
          { Address } , CompName, rtEnviar);
        Maquina[I].Socket.SendText('57');
        // Maquina[I].Socket.Close;
        // Item[I].ImageIndex := 1;
      end;
    end;
  end;
end;

{
  Envia mensagem ao worker dizendo que a maquina em que se hospeda deve
  ser reinicado forçadamente
}
procedure TCliente.SB_ReiniciarClick(Sender: TObject);
var
  I: Byte;
begin
  with LV_Maquinas.Items do
  begin
    for I := 0 to Count - 1 do
    begin
      if ((Item[I].ImageIndex = 3) and Maquina[I].Active) then
      begin
        Maquina[I].Socket.SendText('12');
        Reportar('Tentando reiniciar ' + Maquina[I].Host
          { Address } , CompName, rtEnviar);
      end;
    end;
  end;
end;

procedure TCliente.SB_SairClick(Sender: TObject);
begin
  Application.Terminate;
end;

{
  Envia mensagem ao worker dizendo que o texto que esta sendo mandado
  deve apresentar-se na tela da mesma como se fosse uma mensagem
}
procedure TCliente.SB_MensagemClick(Sender: TObject);

begin

end;

{
  Apartir da lista que se tem em poder no gerente e solicitado que determinados
  processos previamente marcados sejam  destruido, desta forma manda-se o
  numero ID do mesmo para que na maquina em que esta executando seja derrubado
}
procedure TCliente.SB_Kill_ProcessClick(Sender: TObject);
var
  I, F: Integer;
  Process: TListItem;
  // Proximo: TItemStates;
begin
  StatusBar1.SimpleText := 'Tentando Remover Processos';

  with LV_Processos do
  begin
    if SelCount > 0 Then
    begin
      Items.BeginUpdate;
      Process := Selected;
      for F := 0 to Items.Count - 1 { (SelCount-1) } do
      begin
        // Micro:=Process.ListView.Selected;
        // for I := 0 to MAX_MICROS_LIGADOS do
        for I := 0 to (LV_Maquinas.Items.Count - 1) do
        begin
          if (Maquina[I].Host = Process.Caption) Then
            break;
        end; // for I
        if (I < LV_Maquinas.Items.Count) Then
        begin
          if Maquina[I].Active Then
          begin
            Maquina[I].Socket.SendText(AnsiString('14#' + Process.SubItems.Strings[2]));
            Reportar('Tentando matar processo: ' + Process.SubItems.Strings[2] +
              ' em ' + Process.Caption, CompName, rtEnviar);
          end; // if Maquina[i]
        end; // if not I > NAX...
        Process := GetNextItem(Process, sdBelow, [isSelected] { Proximo } );
        if Process = nil then
          break;
      end; // for F
      Items.EndUpdate;
    end; // if
  end; // with lv_processos
end;

{
  Solicita ao 'acionar' que se faça um levantamento de processos que estão
  em ação neste instante na maquina que este se hospeda, e retorne ao
  gerenciador com a lista atual
}
procedure TCliente.SB_Ver_ProcessosClick(Sender: TObject);
var
  I: Byte;
  oldViewStyle: TViewStyle;
begin
  oldViewStyle := LV_Maquinas.ViewStyle;
  LV_Maquinas.ViewStyle := vsList;

  with LV_Maquinas.Items do
  begin
    BeginUpdate;
    try
      LV_Processos.Items.Clear;
      for I := 0 to Count - 1 do
      begin
        if ((Item[I].ImageIndex = 3) and Maquina[I].Active) then
        begin
          Maquina[I].Socket.SendText('13');
          Reportar('Pedindo Lista de Processos em ' + Maquina[I].Host
            { Address } , CompName, rtEnviar);
        end; // if
      end; // for i
    finally
      EndUpdate;
      LV_Maquinas.ViewStyle := oldViewStyle;
    end; // try
  end; // with LV_Maquinas

end;

// procedure TCliente.TempoTimer(Sender: TObject);
// begin
// Caderno.visible     := False;
// LV_Maquinas.Visible := False;
// Reportar('Desativando Telas, Proteção com Senha', CompName,rtLocal);
// end;

procedure TCliente.FormShow(Sender: TObject);
var
  I: Byte;
begin
  try
    LV_Maquinas.Cursor := crAppStart;

    with LV_Maquinas.Items do
    begin
      for I := 0 to Count - 1 do
      begin
        if Item[I].ImageIndex = MICRO_NAO_CONECTADO_NAO_SELECIONADO then
        begin
          Maquina[I].Active := True;
          Application.ProcessMessages;
        end; // if item[i]
      end; // for I:=0
      Owner.SelectAll;
    end; // with }
  finally
    LV_Maquinas.Cursor := crDefault;
  end; // finally
  Timer1.Interval := 1800;
  Timer2.Interval := 1000;
  Timer1.Enabled := True;
  // Timer1.Enabled  := False;

  // Senha.Setfocus;

end;

{
  Lista as maquinas com icones Grandes
}
procedure TCliente.SB_IconeClick(Sender: TObject);
begin
  LV_Maquinas.ViewStyle := TViewStyle(vsIcon);
  Reportar('Modo Icone na Lista de Computadores', CompName, rtLocal);
end;

{
  Lista as maquinas com icones pequenos
}
procedure TCliente.SB_ListaClick(Sender: TObject);
begin
  LV_Maquinas.ViewStyle := TViewStyle(vsList);
  Reportar('Modo Lista na Lista de Computadores', CompName, rtLocal);
end;

procedure TCliente.LV_MaquinasSelectItem(Sender: TObject; Item: TListItem;
  Selected: Boolean);
begin
  // Muda o Imageindex para indicar o estado da maquina ...
  // se for 0 o IP esta disponivel, se for 1 esta selecionado,
  // se for 2 indica conectado mas sem estar selecionado,
  // 3 conectado e selecionado.
  Item.ImageIndex := (Item.ImageIndex xor 1);
end;

procedure TCliente.SB_ExecutarClick(Sender: TObject);
var
  I: Byte;
  Status: String;
begin
  try
    Screen.Cursor := crHourglass;
    with LV_Maquinas do
    begin
      for I := 0 to Items.Count - 1 do
      begin
        if Items.Item[I].ImageIndex = { 3 } MICRO_CONECTADO_SELECIONADO then
        begin
          try
            if Maquina[I].Socket.Connected then
            begin
              Status := '05' + '#' + Edit_Programa.Text + '#' +
                Edit_Mapeamento.Text + '#' + ComboBox1.Text + '#' +
                Edit_Executar.Text + '#' + Edit_Pasta.Text + '#' +
                Resolucao.Text + '#' + Edit_Liberar.Text + '#' + Edit_ISO.Text;
              Maquina[I].Socket.SendText(AnsiString(Status));
              Reportar(Status, Maquina[I].Host { Address } , rtEnviar);
            end;
          except
            // Reportar('Servidor não disponivel',
            // CompName, rtNConectado);
            // + 'ao executar '); // +
            // LV_Report.Items.Item[I].
            // SubItems.Strings[0]);

          end;
        end; // if
      end; // for
    end; // with

  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TCliente.LV_ProgramasClick(Sender: TObject);
begin
  with LV_Programas.Selected do
  begin
    Edit_Programa.Text := Caption;
    Edit_Mapeamento.Text := SubItems.Strings[0];
    ComboBox1.Text := SubItems.Strings[1];
    Edit_Executar.Text := SubItems.Strings[2];
    Edit_Pasta.Text := SubItems.Strings[3];
    Resolucao.Text := SubItems.Strings[4];
    Edit_Liberar.Text := SubItems.Strings[5];
    Edit_ISO.Text := SubItems.Strings[6];

  end;
end;

procedure TCliente.LV_ProgramasDblClick(Sender: TObject);
var
  I: Byte;
begin
  try
    Screen.Cursor := crHourglass;
    if LV_Programas.Selected.Index >= 0 then
    begin
      StatusBar1.SimpleText := '';
      with LV_Maquinas do
      begin
        for I := 0 to Items.Count - 1 do
        begin
          if Items.Item[I].ImageIndex = 3 then
          begin
            try
              if Maquina[I].Socket.Connected then
              begin
                StatusBar1.SimpleText := '05' + '#' +
                  LV_Programas.Selected.Caption + '#' +
                  LV_Programas.Selected.SubItems.Strings[0] + '#' +
                  LV_Programas.Selected.SubItems.Strings[1] + '#' +
                  LV_Programas.Selected.SubItems.Strings[2] + '#' +
                  LV_Programas.Selected.SubItems.Strings[3] + '#' +
                  LV_Programas.Selected.SubItems.Strings[4];
                Maquina[I].Socket.SendText(AnsiString(StatusBar1.SimpleText));
                Reportar(StatusBar1.SimpleText, Maquina[I].Host, rtEnviar);
              end;
            except
              // Reportar('Servidor não disponivel',
              // CompName, rtNConectado);
              // + 'ao executar '); // +
              // LV_Report.Items.Item[I].
              // SubItems.Strings[0]);

            end;
          end; // if
        end; // for
      end; // with
    end; // if

  finally
    Screen.Cursor := crDefault;
  end;
end;

{
  Envia mensagem ao worker dizendo que a maquina em que se hospeda deve
  ser Desligada
}

procedure TCliente.SB_DesligarClick(Sender: TObject);
var
  I: Byte;
begin
  with LV_Maquinas.Items do
  begin
    for I := 0 to Count - 1 do
    begin
      if ((Item[I].ImageIndex =
        { 3 } MICRO_CONECTADO_SELECIONADO) and Maquina[I].Active) then
      begin
        Maquina[I].Socket.SendText('11');
        Reportar('Tentando desligar ' + Maquina[I].Host
          { Address } , CompName, rtEnviar);
      end;
    end;
  end;
end;

procedure TCliente.MaquinasError(Sender: TObject; Socket: TCustomWinSocket;
  ErrorEvent: TErrorEvent; var ErrorCode: Integer);
var
  I: Byte;
  errotexto: string;
begin

  // ShowMessage('Erro via Gerente'#13 + IntToStr(ErrorCode));

  if ErrorCode = WSAEADDRINUSE then
  begin // 10048
    Reportar('Listen port in use', CompName, rtNConectado);
    // Log();
    // if Assigned(FOnListenPortInUse) then
    // FOnListenPortInUse(Self);
    ErrorCode := 0;
  end

  else
    case ErrorCode of
      WSAEADDRNOTAVAIL: // 10049
        errotexto :=
          format('Problema com a conexão %s, Erro: Host unreachable (%d)',
          [Socket.RemoteAddress, ErrorCode]);
      WSAENETUNREACH: // 10051
        errotexto :=
          format('Problema com a conexão %s, Erro: Network unreachable (%d)',
          [Socket.RemoteAddress, ErrorCode]);
      WSAECONNABORTED: // 10053
        errotexto :=
          format('Problema com a conexão %s, Erro: Connection aborted (%d)',
          [Socket.RemoteAddress, ErrorCode]);
      WSAECONNRESET: // 10054
        errotexto :=
          format('Problema com a conexão %s, Erro: Connection reset (%d)',
          [Socket.RemoteAddress, ErrorCode]);
      WSAETIMEDOUT: // 10060
        errotexto :=
          format('Problema com a conexão %s, Erro: Connection timed out (%d)',
          [Socket.RemoteAddress, ErrorCode]);
      WSAECONNREFUSED: // 10061
        errotexto :=
          format('Problema com a conexão %s, Erro: Connection refused (%d)',
          [Socket.RemoteAddress, ErrorCode]);
      WSAEHOSTUNREACH: // 10065
        errotexto :=
          format('Problema com a conexão %s, Erro: Host unreachable (%d)',
          [Socket.RemoteAddress, ErrorCode]);
    else
      errotexto := format('Problema com a conexão %s, Erro: %d',
        [Socket.RemoteAddress, ErrorCode]);
    end; { case ErrorCode }

  Reportar(errotexto, CompName, rtNConectado);
  with LV_Maquinas.Items do
  begin
    for I := 0 to Count - 1 do
    begin
      if (Item[I].ImageIndex =
        { 3 } MICRO_CONECTADO_SELECIONADO) and
        ((Item[I].Caption = Socket.RemoteAddress) or
        (Item[I].Caption = UpperCase(Socket.RemoteHost))) then
      begin
        Item[I].ImageIndex := { 1 } MICRO_NAO_CONECTADO_SELECIONADO;
        Maquina[I].Close;
        Maquina[I].Open;
        break;
      end; // if item
    end; // for
  end; // with

  // Reportar(format('Problema com a conexão %s, Erro: %d',
  // [socket.RemoteAddress, ErrorCode]),
  // CompName,rtNConectado);
  ErrorCode := 0;
end;

procedure TCliente.MaquinasConnect(Sender: TObject; Socket: TCustomWinSocket);
var
  I: Byte;
  Status, RemoteHost, RemoteAddress: String;

begin
  RemoteHost := UpperCase(Socket.RemoteHost);
  RemoteAddress := Socket.RemoteAddress;
  with LV_Maquinas.Items do
  begin
    for I := 0 to Count - 1 do
    begin
      if ((RemoteAddress = Maquina[I].Host) or
        (RemoteHost = Maquina[I].Host)) then
      begin

        Status := 'Tentando conectar a: ';
        if RemoteHost <> '' Then
        begin
          Status := Status + RemoteHost;
          Item[I].Caption := RemoteHost;
        end
        else
          Status := Status + RemoteAddress;

        Reportar(Status, RemoteAddress, rtEnviar_Receber);
        break;
      end;
    end;
  end;

end;

procedure TCliente.MaquinasDisconnect(Sender: TObject;
  Socket: TCustomWinSocket);
var
  I: Byte;
  RemoteHost, RemoteAddress: String;
begin
  RemoteHost := UpperCase(Socket.RemoteHost);
  RemoteAddress := Socket.RemoteAddress;

  with LV_Maquinas.Items do
  begin

    for I := 0 to Count - 1 do
    begin
      if (Item[I].ImageIndex =
        { 3 } MICRO_CONECTADO_SELECIONADO) and
        ((Item[I].Caption = RemoteAddress) or
        (Item[I].Caption = UpperCase(RemoteHost))) then
      begin
        Item[I].ImageIndex := { 1 } MICRO_CONECTADO_NAO_SELECIONADO;
        Maquina[I].Close;
        Maquina[I].Open;
        break;
      end; // if item
    end; // for
  end; // with
end;

procedure TCliente.MaquinasRead(Sender: TObject; Socket: TCustomWinSocket);
var
  Palavra, Mestra1: String;
  Numero: Word;
  Conteudo: TListItem;
  I: Word;
  x, Apagar: Integer;
{$IFDEF AGENTE} URL_OK: Boolean; {$ENDIF}
  RemoteHost, RemoteAddress: String;
begin
  RemoteHost := UpperCase(Socket.RemoteHost);
  RemoteAddress := Socket.RemoteAddress;
  Palavra := String(Socket.ReceiveText);
  // Retira o numero da string
  Numero := StrToIntDef(GetParam(Palavra, '#', 1), 0);
  // StrToIntDef(Copy2SymbDel(Palavra,'#'),0);
  // Delete(Palavra,1,1);
  Mestra1 := GetParam(Palavra, '#', 2);
  // Copy2SymbDel(Palavra,'#');
  case Numero of
    0: // Somente mensagems
      begin
        Reportar(Mestra1, RemoteAddress, rtReceber);
{$IFDEF AGENTE}
        try
          with Agente.Characters.Character(vPersonagem) do
          begin
            // StopAll('');
            if Pos('Mundança de Display', Mestra1) = 0 then
            begin
              Play('Announce');
              Speak('O micro ' + RemoteHost + ', diz: ' + Mestra1, vURL);
            end;
          end;
        except
          // gera uma exceção caso o character não tenha esta animação
          Reportar('Agente não possui a animação definida!', 'Erro', rtLocal);
        end;
{$ENDIF}
      end;
    1: // Coneccao aceita pelo servidor
      with LV_Maquinas.Items do
      begin
        for I := 0 to Count - 1 do
        begin
          if ((Item[I].Caption = RemoteAddress) or
            (Item[I].Caption = RemoteHost)) Then
          begin
            if Item[I].ImageIndex < 2 Then
              Item[I].ImageIndex := Item[I].ImageIndex xor 2;
            Inc(Micros); // adiciona micros conectados;
            Reportar(Mestra1, RemoteAddress, rtReceber);
            // Item[I]. GetParam(Palavra,'#',3);
            break;
          end;
        end; // for I
        if Inicio Then
          Inicio := False;
        Ver_Micro := 0;
      end; // with LV_Maquinas
    2: // Desconeccao do Servidor
      with LV_Maquinas.Items do
      begin
        for I := 0 to Count - 1 do
        begin
          if (Item[I].Caption = RemoteAddress) or
            (Item[I].Caption = RemoteHost) Then
          begin
            Item[I].ImageIndex := Item[I].ImageIndex and 253;
            Dec(Micros); // diminue micros conectados;
            Reportar(Mestra1, RemoteAddress, rtReceber);
            break;
          end;
        end; // for I
      end; // with LV_Maquinas

    13: // Recebendo lista de Processos
      Begin
        Reportar('Recebendo ' + Mestra1,
          { Socket.RemoteAddress } RemoteHost, rtReceber);
        // Socket.SendText(Statusbar1.SimpleText);
        Copy2SymbDel(Palavra, '#');
        Delete(Palavra, 1, 1);
        Copy2SymbDel(Palavra, '#');
        Delete(Palavra, 1, 1);
        while Palavra <> '' do
        begin
          LV_Processos.Items.BeginUpdate;
          try
            Conteudo := LV_Processos.Items.Add();
            // Conteudo.Caption := RemoteHost;
            Conteudo.Caption := RemoteAddress;
            Conteudo.SubItems.Add(Copy2SymbDel(Palavra, '#'));
            Delete(Palavra, 1, 1);
            Conteudo.SubItems.Add(Copy2SymbDel(Palavra, '#'));
            Delete(Palavra, 1, 1);
            Conteudo.SubItems.Add(Copy2SymbDel(Palavra, '#'));
            Delete(Palavra, 1, 1);
          finally
            LV_Processos.Items.EndUpdate;
          end; // try
        end; // while
      end;
    14: // Processo removido com successo
      Begin
        Reportar('Processo ' + Mestra1 + ' terminado.', RemoteAddress,
          rtReceber);
        with LV_Processos.Items do
        begin
          BeginUpdate;
          try
            for x := 0 to Count - 1 do
            begin
              Apagar := Item[x].SubItems.IndexOf(Mestra1);
              if Apagar > -1 Then
              begin
                Item[x].Delete;
                break;
              end; // if apagar
            end; // for x
          finally
            EndUpdate;
          end; // try
        end; // with LV_processos
      end;
    56: // Recebendo lista de URL de internet
      Begin

        with LV_Internet.Items do
        begin
          try
            BeginUpdate;
            Conteudo := Add();
            Conteudo.Caption := RemoteAddress;
            Conteudo.SubItems.Add(Mestra1);
            Conteudo.SubItems.Add(DateToStr(Date));
            Conteudo.SubItems.Add(TimeToStr(Time));
            Conteudo.ImageIndex := 6;
{$IFDEF AGENTE}
            try
              with Agente.Characters.Character(vPersonagem) do
              begin
                // StopAll('');
                Play('GetAttention');
                Mestra1 := ApagarStr(Mestra1, 'http://');
                // Mestra1 := ApagarStr(Mestra1, 'www.');
                // Mestra1 := Copy2SymbDel(Mestra1, '/');
                URL_OK := (length(Mestra1) > 4);
                // if URL_OK Then
                // URL_OK := (Pos('hotmail',Mestra1) = 0) ;
                if URL_OK Then
                begin
                  Speak('O micro ' + RemoteHost + ', está na página: ' +
                    Mestra1, vURL);
                  Play('GetAttentionReturn');
                end;
              end;
            except
              // gera uma exceção caso o character
              // não tenha esta animação
              Reportar('Agente não possui a animação definida!',
                'Erro', rtLocal);
            end;
{$ENDIF}
          finally
            EndUpdate;
          end; // try
        end; // while
      end;
    99: // O Acionar respondeu ao meu chamado
      begin
        Resp_Micro := True;
{$IFDEF DEBUG}
        Reportar(Mestra1, RemoteAddress, rtReceber);
{$IFDEF AGENTE}
        try
          with Agente.Characters.Character(vPersonagem) do
          begin
            StopAll('');
            Play('Write');
            Speak('O micro ' + RemoteHost + ', avisa que está OK!'
              { + Mestra1 } , vURL);
            Play('WriteReturn');
          end;
        except
          // gera uma exceção caso o character não tenha esta animação
          Reportar('Agente não possui a animação definida!', 'Erro', rtLocal);
        end;
{$ENDIF}
{$ENDIF}
      end;
    { with LV_Maquinas.Items do
      begin
      for I := 0 to Count-1 do
      begin
      if (Item[I].Caption = RemoteAddress) or
      (Item[I].Caption = RemoteHost) Then
      begin
      Item[I].ImageIndex := Item[I].ImageIndex and 253;
      Reportar(Mestra1, RemoteAddress, rtReceber);
      break;
      end;
      end; // for I
      end;// with LV_Maquinas }
  end;
end;

{
  Realiza o processo de coneção entre o gerente e o worker com as maquinas que
  estiverem marcadas
}
procedure TCliente.SB_ConectarClick(Sender: TObject);
var
  I: Byte;
begin
  try
    LV_Maquinas.Cursor := crAppStart;
    if LV_Maquinas.SelCount < 1 Then // verifica se ha alguma selecao
      exit; // se nao termina

    with LV_Maquinas.Items do
    begin
      for I := 0 to Count - 1 do
      begin
        if Item[I].ImageIndex = { 1 } MICRO_NAO_CONECTADO_SELECIONADO then
        begin
          Maquina[I].Active := True;
          Application.ProcessMessages;
        end; // if item[i]
      end; // for I:=0
    end; // with
  finally
    LV_Maquinas.Cursor := crDefault;
  end; // finally
  Timer1.Interval := 1800;
  Timer2.Interval := 1000;
  Timer1.Enabled := True;

end;

procedure TCliente.Action_ExecutarExecute(Sender: TObject);
begin
  LV_ProgramasDblClick(Self);
end;

procedure TCliente.SB_ProgramasClick(Sender: TObject);
begin
  Preencher_Program;
end;

procedure TCliente.Splitter1Moved(Sender: TObject);
begin
  // Panel1.Width:=Panel1.Width-1;
end;

procedure TCliente.TB_AbreCDROMClick(Sender: TObject);
var
  I: Byte;
begin
  StatusBar1.SimpleText := '';
  with LV_Maquinas.Items do
  begin
    for I := 0 to Count - 1 do
    begin
      if ((Item[I].ImageIndex =
        { 3 } MICRO_CONECTADO_SELECIONADO) and Maquina[I].Active) then
      begin
        Maquina[I].Socket.SendText('60#Abrir');
        Reportar('Abrindo Drive de CDROM ' + Maquina[I].Host
          { Address } , CompName, rtEnviar);
      end; // if
    end; // for i
  end; // with LV_Maquinas
end;

procedure TCliente.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  // Ask user if shutdown should occur.
  case MessageDlg('Não saia deste programa!!!' + #13 + #10 +
    'Você quer Reiniciar o Windows?', mtConfirmation, mbYesNoCancel, 0) of
    mrYes:
      begin
        CanClose := True; // Allow Windows to shut down.
        Application.Terminate;
      end;
    mrNo:
      begin
        CanClose := False; // Prevent Windows from shutting down.
      end;
  end;

end;

procedure TCliente.TB_InternetClick(Sender: TObject);
var
  I: Byte;
begin
  with LV_Maquinas.Items do
  begin
    for I := 0 to Count - 1 do
    begin
      if ((Item[I].ImageIndex =
        { 3 } MICRO_CONECTADO_SELECIONADO) and Maquina[I].Active) then
      begin
        Maquina[I].Socket.SendText('56');
        Reportar('Qual o endereço de internet em ' + Maquina[I].Host
          { Address } , CompName, rtEnviar);
      end;
    end;
  end;
end;

procedure TCliente.TB_DesligaMonitorClick(Sender: TObject);
var
  I: Byte;
begin
  with LV_Maquinas.Items do
  begin
    for I := 0 to Count - 1 do
    begin
      if ((Item[I].ImageIndex =
        { 3 } MICRO_CONECTADO_SELECIONADO) and Maquina[I].Active) then
      begin
        Maquina[I].Socket.SendText('16');
        Reportar('Desligando o Monitor de Video em ' + Maquina[I].Host
          { Address } , CompName, rtEnviar);
      end;
    end;
  end;
end;

procedure TCliente.Action_ConectarExecute(Sender: TObject);
begin
  SB_ConectarClick(Self);
end;

procedure TCliente.Action_SelecionarExecute(Sender: TObject);
// var
// I: byte;
begin
  LV_Maquinas.Items.Owner.SelectAll;
  // with LV_Maquinas.Items do
  // begin
  // for I := 0 to Count-1 do
  // begin
  // Item[I].Selected:=True;
  // end;
  // end;
end;

procedure TCliente.LV_MaquinasChange(Sender: TObject; Item: TListItem;
  Change: TItemChange);
begin
  // if Change = ctText Then
  // Maquina[Item.Index].Host := Item.Caption;
end;

procedure TCliente.LV_InternetDblClick(Sender: TObject);
var
  endereco: string;
  Selecao: Integer;
begin
  Selecao := LV_Internet.Selected.Index;
  if Selecao >= 0 Then
  begin
    endereco := LV_Internet.Selected.SubItems.Strings[0];

    ShellExecute(Application.Handle, 'open', PChar(endereco), nil, nil,
      { SW_SHOWDEFAULT } SW_SHOWNORMAL);
  end;
end;

procedure TCliente.TB_FechaCDROMClick(Sender: TObject);
var
  I: Byte;
begin
  StatusBar1.SimpleText := '';
  with LV_Maquinas.Items do
  begin
    for I := 0 to Count - 1 do
    begin
      if ((Item[I].ImageIndex =
        { 3 } MICRO_CONECTADO_SELECIONADO) and Maquina[I].Active) then
      begin
        Maquina[I].Socket.SendText('60');
        Reportar('Fechando Drive de CDROM ' + Maquina[I].Host
          { Address } , CompName, rtEnviar);
      end; // if
    end; // for i
  end; // with LV_Maquinas
end;

procedure TCliente.B_LiberaBotaoClick(Sender: TObject);
var
  I, F: Byte;
  Temp: AnsiString;
begin
  StatusBar1.SimpleText := '';
  with LV_Maquinas.Items do
  begin
    for I := 0 to Count - 1 do
    begin
      if ((Item[I].ImageIndex =
        { 3 } MICRO_CONECTADO_SELECIONADO) and Maquina[I].Active) then
      begin
        Temp := '58#';

        for F := 0 to (CheckListBox1.Items.Count - 1) do
        begin
          if CheckListBox1.State[F] = cbChecked Then
            Temp := Temp + 'ON%'
          else
            Temp := Temp + 'OFF%'
        end; // for F

        // for F := 0 to (DCTree1.Items.Count {CheckListBox1.Items.Count} - 1) do
        // begin
        // if  DCTree1.Items.Item[F].State { CheckListBox1.State[F]} = cbChecked Then
        // Temp := Temp + 'ON%'
        // else
        // Temp := Temp + 'OFF%'
        // end; // for F

        Maquina[I].Socket.SendText(Temp);

        Reportar('Mudando atributos do ACIONAR ' + Maquina[I].Host
          { Address } , CompName, rtEnviar);
      end; // if
    end; // for i
  end; // with LV_Maquinas
end;

procedure TCliente.Timer1Timer(Sender: TObject);
begin
  StatusBar1.SimpleText := '';
  if Micros = 0 Then
    L_Conectado.Caption := 'Nenhuma Conecção'
  else
  begin
    if Micros = 1 Then
      L_Conectado.Caption := IntToStr(Micros) + ' Conecção'
    else
      L_Conectado.Caption := IntToStr(Micros) + ' Conecções'
  end;
  if Inicio Then
    exit;
  {
    with LV_Maquinas.Items do
    begin
    if (((Item[Ver_Micro].ImageIndex = MICRO_CONECTADO_SELECIONADO)
    or (Item[Ver_Micro].ImageIndex = MICRO_CONECTADO_NAO_SELECIONADO )
    and Maquina[Ver_Micro].Active) then
    begin
    Resp_Micro:=False;
    Maquina[Ver_Micro].Socket.SendText('1#Voce esta ai?');
    //{$IFDEF DEBUG }
  // Reportar(Maquina[Ver_Micro].Address+' perguntado se esta bem!',
  { Reportar(Maquina[Ver_Micro].Host+' perguntado se esta bem!',
    CompName, rtEnviar);
  }
  // {$ENDIF}
  { Timer2.Enabled:=True;
    end //;if
    else
    begin
    // se a nao estiver conectado tentar reconectar
    if (Item[Ver_Micro].ImageIndex < MICRO_CONECTADO_NAO_SELECIONADO) then
    begin
    Maquina[Ver_Micro].Active := True;
    Maquina[Ver_Micro].Open;
    //             Maquina[Ver_Micro].Socket.Connect(Maquina[Ver_Micro].Socket.Handle);
    end;
    inc(Ver_Micro);
    if Ver_Micro > Count-1 Then Ver_Micro:=0;
    end;
    end; // with LV_Maquinas
  }
end;

procedure TCliente.Timer2Timer(Sender: TObject);
begin
  Timer1.Enabled := False;
  Timer2.Enabled := False;
  if Not Resp_Micro Then
  begin
    with Maquina[Ver_Micro].Socket do // força desconeccao
      // close;
      Disconnect(Handle);
    with LV_Maquinas.Items.Item[Ver_Micro] do // modifica icone
      ImageIndex := ImageIndex and 253;
    Maquina[Ver_Micro].Active := False;
    Dec(Micros); // diminue micros conectados;
{$IFDEF DEBUG}
    Reportar(Maquina[Ver_Micro].Host
      { Address } + ' não responde.', CompName, rtEnviar);
{$ENDIF}
    Timer1.Enabled := True;
    exit;
  end;
{$IFDEF DEBUG}
  if Resp_Micro Then
    Reportar(Maquina[Ver_Micro].Host
      { Address } + ' diz OLA!', CompName, rtEnviar);
{$ENDIF}
  Inc(Ver_Micro);
  if Ver_Micro > LV_Maquinas.Items.Count - 1 Then
    Ver_Micro := 0;

  Timer1.Enabled := True;
end;

procedure TCliente.TB_MensagemClick(Sender: TObject);
var
  I: Byte;
begin
  with LV_Maquinas.Items do
  begin
    for I := 0 to Count - 1 do
    begin
      if ((Item[I].ImageIndex = 3) and Maquina[I].Active) then
      begin
        Maquina[I].Socket.SendText(AnsiString('08#' + Mensagem.Text));
        Reportar('Enviando Mensagem: ' + Mensagem.Text + ' para ' +
          Maquina[I].Host { Address } , CompName, rtEnviar);
      end;
    end;
  end;
end;

procedure TCliente.B_InverteSelectClick(Sender: TObject);
var
  F: Byte;
begin
  for F := 0 to (CheckListBox1.Items.Count - 1) do
  begin
    if CheckListBox1.State[F] = cbUnchecked Then
      CheckListBox1.State[F] := cbChecked
    Else
      CheckListBox1.State[F] := cbUnchecked
  end;
  // for F := 0 to (DCTree1.Items.Count {CheckListBox1.Items.Count} - 1) do
  // begin
  // if DCTree1.Items.Item[F].State{CheckListBox1.State[F]} = cbUnchecked Then
  // DCTree1.Items.Item[F].State{CheckListBox1.State[F]} := cbChecked
  // Else
  // DCTree1.Items.Item[F].State{CheckListBox1.State[F]} := cbUnChecked
  // end;
end;
{$IFDEF AGENTE}

procedure TCliente.AgenteClick(Sender: TObject; const CharacterID: WideString;
  Button, Shift, x, y: Smallint);
begin
  with Agente.Characters.Character(vPersonagem) do
  begin
    StopAll('');
  end;
end;
{$ENDIF}

procedure TCliente.B_RodarScriptClick(Sender: TObject);
var
  I: Byte;

begin
  with LV_Maquinas.Items do
  begin
    for I := 0 to Count - 1 do
    begin
      if ((Item[I].ImageIndex =
        { 3 } MICRO_CONECTADO_SELECIONADO) and Maquina[I].Active) then
      begin
        // rodar script
        Maquina[I].Socket.SendText(AnsiString('4#' + E_Script_File.Text));

        Reportar('Tentando rodar script em ' + Maquina[I].Host
          { Address } , CompName, rtEnviar);
      end; // if
    end; // for i
  end; // with LV_Maquinasend;
end;

procedure TCliente.B_CapturaTelaClick(Sender: TObject);
var
  I: Byte;
begin
  with LV_Maquinas.Items do
  begin
    for I := 0 to Count - 1 do
    begin
      if ((Item[I].ImageIndex =
        { 3 } MICRO_CONECTADO_SELECIONADO) and Maquina[I].Active) then
      begin
        Maquina[I].Socket.SendText(AnsiString('10#' + Edit1.Text + '#Captura de Tela'));
        Reportar('Captura de Tela' + Maquina[I].Host
          { Address } , CompName, rtEnviar);
      end; // if
    end; // for i
  end; // with LV_Maquinas
end;

procedure TCliente.TB_TravaCDROMClick(Sender: TObject);
var
  I: Byte;
begin
  StatusBar1.SimpleText := '';
  with LV_Maquinas.Items do
  begin
    for I := 0 to Count - 1 do
    begin
      if ((Item[I].ImageIndex =
        { 3 } MICRO_CONECTADO_SELECIONADO) and Maquina[I].Active) then
      begin
        Maquina[I].Socket.SendText('61#Travar');
        Reportar('Tentando Travar Drive de CDROM ' + Maquina[I].Host
          { Address } , CompName, rtEnviar);
      end; // if
    end; // for i
  end; // with LV_Maquinas
end;

procedure TCliente.TB_LiberaCDROMClick(Sender: TObject);
var
  I: Byte;
begin
  StatusBar1.SimpleText := '';
  with LV_Maquinas.Items do
  begin
    for I := 0 to Count - 1 do
    begin
      if ((Item[I].ImageIndex =
        { 3 } MICRO_CONECTADO_SELECIONADO) and Maquina[I].Active) then
      begin
        Maquina[I].Socket.SendText('60#Destravar');
        Reportar('Tentando Destrar Drive de CDROM ' + Maquina[I].Host
          { Address } , CompName, rtEnviar);
      end; // if
    end; // for i
  end; // with LV_Maquinas
end;

procedure TCliente.TB_EraseIexplorerClick(Sender: TObject);
var
  I: Byte;
begin
  StatusBar1.SimpleText := '';
  with LV_Maquinas.Items do
  begin
    for I := 0 to Count - 1 do
    begin
      if ((Item[I].ImageIndex =
        { 3 } MICRO_CONECTADO_SELECIONADO) and Maquina[I].Active) then
      begin
        Maquina[I].Socket.SendText('62');
        Reportar('Tentando Apagar chace do IExplorer ' + Maquina[I].Host
          { Address } , CompName, rtEnviar);
      end; // if
    end; // for i
  end; // with LV_Maquinas
end;
// interpets request and sends back data
{
  procedure TMain.TfrmServerExecute(AThread: TIdPeerThread);

  var
  s, sCommand, sAction : string;
  fStream : TFileStream;
  tBM : tbitmap;
  begin
  CS.Enter;
  try
  s := uppercase(AThread.Connection.ReadLn);
  sCommand := copy(s,1,3);
  sAction := copy(s,5,100);

  if sCommand = 'LST' then
  begin
  AThread.Connection.WriteLn(GetList);
  AThread.Connection.Disconnect;
  end
  else
  if sCommand = 'PIC' then
  begin
  if FileExists(ExtractFileDir(ParamStr(0)) + '\images\' + sAction) then
  Begin
  lstRequests.items.add('Serving up: ' + sAction);
  // open file stream to image requested
  fStream := TFileStream.Create(ExtractFileDir(ParamStr(0)) + '\images\' + sAction,fmOpenRead	+ fmShareDenyNone);
  // copy file stream to write stream
  AThread.Connection.OpenWriteBuffer;
  AThread.Connection.WriteStream(fStream);
  AThread.Connection.CloseWriteBuffer;
  // free the file stream
  FreeAndNil(fStream);
  lstRequests.items.add('File transfer completed');
  End
  else
  AThread.Connection.WriteLn('ERR - Requested file does not exist');
  AThread.Connection.Disconnect;
  End
  else
  if sCommand = 'SRN' then
  begin
  // in production version you would use a unique file name such as one generated
  // from a tickcount plus clint IP / id etc.
  // take snapshot
  lstRequests.items.add('Taking screen snap shot');
  tBM := TBitmap.Create;
  ScreenShot(0,0,Screen.Width,Screen.height,tBM);
  if fileExists (ExtractFileDir(ParamStr(0)) + '\images\ScreenShot.BMP') then DeleteFile(ExtractFileDir(ParamStr(0)) + '\images\ScreenShot.BMP');
  tBM.SaveToFile(ExtractFileDir(ParamStr(0)) + '\images\ScreenShot.BMP');
  tBm.FreeImage;
  FreeAndNil(tBM);

  lstRequests.items.add('Serving up: SCREENSHOT.BMP');
  // open file stream to image requested
  fStream := TFileStream.Create(ExtractFileDir(ParamStr(0)) + '\images\ScreenShot.BMP',fmOpenRead	+ fmShareDenyNone);
  // copy file stream to write stream
  AThread.Connection.OpenWriteBuffer;
  AThread.Connection.WriteStream(fStream);
  AThread.Connection.CloseWriteBuffer;
  // free the file stream
  FreeAndNil(fStream);
  lstRequests.items.add('File transfer completed');

  AThread.Connection.Disconnect;
  End
  else
  if (sCommand <> 'LST') and (sCommand <> 'PIC') and (sCommand <> 'SRN') then
  Begin
  AThread.Connection.WriteLn('ERR : Unknown command / action');
  AThread.Connection.Disconnect;
  end;
  except
  on E : Exception do
  ShowMessage(E.Message);
  End;
  CS.Leave;

  end;
}

procedure TCliente.Button1Click(Sender: TObject);
var
  I: Byte;
begin
  with LV_Maquinas.Items do
  begin
    for I := 0 to Count - 1 do
    begin
      if ((Item[I].ImageIndex =
        { 3 } MICRO_CONECTADO_SELECIONADO) and Maquina[I].Active) then
      begin
        // rodar script
        Maquina[I].Socket.SendText(AnsiString('33#' + Edit2.Text));

        Reportar('Mudadando Tranparência do Acionar em ' + Maquina[I].Host
          { Address } , CompName, rtEnviar);
      end; // if
    end; // for i
  end; // with LV_Maquinasend;
end;

procedure TCliente.TB_WalkOnLANClick(Sender: TObject);
begin
  Reportar('Trying to wake-up remote host: CPA101', CompName, rtEnviar);
  WakeUPComputer('00:40:A7:12:A1:E5');
  Reportar('Trying to wake-up remote host: CPA119', CompName, rtEnviar);
  WakeUPComputer('00:40:A7:0E:AA:29');
  Reportar('Trying to wake-up remote host: CPA120', CompName, rtEnviar);
  WakeUPComputer('00:40:A7:0E:A8:E6');
end;

end.
