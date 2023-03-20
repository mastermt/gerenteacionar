program Gerente;

uses
  Forms,
  MAIN in 'MAIN.PAS' {Cliente},
  Unit_TelaInicial in 'Unit_TelaInicial.pas',
  Util in 'Util.pas',
  Vcl.Themes,
  Vcl.Styles;

{$R *.RES}


begin
  Application.Initialize;
  with TTela_Inicial.Create(nil) do
    try
      Show; // Mostra tela de abertura
      Update; // force display of tela de abertura
  Application.Title := 'Gerente';
      Application.CreateForm(TCliente, Cliente);
  finally
      Free;
    end;

  Application.Run;

end.
