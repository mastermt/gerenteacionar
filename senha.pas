{ -------------------------------------------------------------------------------
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
  ------------------------------------------------------------------------------- }

unit senha;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ShellAPI;

type
  TPasswordDlg = class(TForm)
    Label1: TLabel;
    Password: TEdit;
    OKBtn: TButton;
    CancelBtn: TButton;
    procedure CancelBtnClick(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PasswordDlg: TPasswordDlg;

implementation

uses Acao;

{$R *.dfm}

procedure TPasswordDlg.CancelBtnClick(Sender: TObject);
begin
  PasswordDlg.Close;
end;

procedure TPasswordDlg.OKBtnClick(Sender: TObject);
begin
  if PasswordDlg.Password.Text = 'K1ll3R' Then
  begin
    try
      // Stop the time controler
      Main.Timer_Explorer.Enabled := False;
      // Enable Start Button:
      EnableWindow(FindWindowEx(FindWindow('Shell_TrayWnd', nil), 0, 'Button',
        nil), TRUE);
      { Show desktop icons }
      Main.ShowDesktop(TRUE);
      // enable system keys
      // Main.SystemKeys(False);
      // To show the task bar use
      ShowWindow(FindWindow('Shell_TrayWnd', nil), SW_SHOWNA);
      // Application.CreateForm(TPasswordDlg2, PasswordDlg2);
      // Winexec('C:\WINDOWS\EXPLORER.EXE', SW_SHOWNORMAL);
      Winexec('C:\WINDOWS\EXPLORER.EXE /n,/e,C:\', SW_SHOWNORMAL);
    except

    end;
  end
  else
  begin
    // Start the time controler
    Main.Timer_Explorer.Enabled := TRUE;
    // Disable Start Button:
    EnableWindow(FindWindowEx(FindWindow('Shell_TrayWnd', nil), 0, 'Button',
      nil), False);

    // Show/Hide the TaskBar in Windows 95
    // To hide the task bar use
    ShowWindow(FindWindow('Shell_TrayWnd', nil), SW_HIDE);
    // desable system keys
    // Main.SystemKeys(False);
    // Hide desktop icons
    Main.ShowDesktop(False);
  end;
  PasswordDlg.Password.Text := '';
  PasswordDlg.Close;
end;

procedure TPasswordDlg.FormShow(Sender: TObject);
begin
  Password.SetFocus;
end;

end.
