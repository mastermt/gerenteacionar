program Acionar;

uses
  Forms,
  Windows,
  Messages,
  ShellAPI,
  sysutils,
  Acao in 'Acao.pas' {Main} ,
  senha in 'senha.pas' {PasswordDlg} ,
  escravo_unit in 'escravo_unit.pas',
  Util in 'Util.pas',
  uDGProcessList in 'uDGProcessList.pas';

{$R *.RES}

begin
  { Previous instance running ?  If so, exit }
  { Attempt to create a named mutex }
  CreateMutex(nil, false, 'Acionar');
  { if it failed then there is another instance }
  if GetLastError = ERROR_ALREADY_EXISTS then
  begin
    { Send all windows our custom message - only our other }
    { instance will recognise it, and restore itself }
    // SendMessage(HWND_BROADCAST,
    // RegisterWindowMessage('Acionar'),
    // 0,
    // 0);
    { Lets quit }
    Halt(0);
  end;
  Application.Initialize;

  // Remove the start bar button
  SetWindowLong(Application.Handle, GWL_EXSTYLE, WS_EX_TOOLWINDOW);

  // {Tell Delphi to un-hide it's hidden application window}
  // {This allows our instance to have a icon on the task bar}
  // Application.ShowMainForm := true;
  // ShowWindow(Application.Handle, SW_RESTORE);
  Application.Title := 'Acionar';
  Application.CreateForm(TMain, Main);
  Application.CreateForm(TPasswordDlg, PasswordDlg);
  Application.Run;

end.
