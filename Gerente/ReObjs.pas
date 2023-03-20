unit reObjs;
//Contem objetos usados em SneakerNet para armazenar
// informação Sobre processos e janelas

// Trabalhado em 28 de Agosto 1999
//  21/09/1999 Pedro Tomaz Alves
//  29/09/1999 Jeronimo C.Bezerra

interface
uses Windows, SysUtils, Classes;
type
  TProcWinObj = class(TObject)
  private
    fProcID      : DWORD;
    fExename     : String;
    fDescription : String;
//    function GetDescription: String;
  public
  constructor Create(vProcID : DWORD; const vExename : String);
              overload;
  published
    property ProcID      : DWORD read fProcID;
//    property ExeName     : String read fExename;
//    property Description : String read GetDescription;
  end;


implementation
uses Criptografia;
constructor TProcWinObj.Create(vProcID : DWORD;
                               const vExename : String);
begin
  Inherited Create;
  fProcID      := vProcID;
  fExeName     := vExeName;
  fDescription := '';
end;

{
function TProcWinObj.GetDescription: String; VAR dummy : gdExeType;
// Don't go get the description string until the first time
// it's requested
begin
  IF fDescription = '' THEN
    begin
     // fDescription := allfuncs.GetDescription(fExeName, dummy);
      fDescription := Criptografia.GetDescription(fExeName, dummy);
      IF fDescription = '' THEN
         fDescription:= ExtractFileName(fExeName);
    end;
  Result := fDescription;
end;
}
end.
