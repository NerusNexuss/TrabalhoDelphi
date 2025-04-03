unit U_FrmTela2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmTela2 = class(TForm)
    BtnProcessar: TButton;
    Label1: TLabel;
    LbIdade: TLabel;
    EdtNome: TEdit;
    EdtIdade: TEdit;
    LbResultado: TLabel;
    procedure BtnProcessarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTela2: TFrmTela2;

implementation

{$R *.dfm}

function FeixaEtaria(idade: Integer): String;
  var
      resultado: String;
begin
  if (idade >= 0) and (idade <= 12) then
    resultado := 'criança'
  else if (idade >= 13) and (idade <= 17) then
    resultado := 'adolescente'
  else if (idade >= 18) and (idade <= 59) then
    resultado := 'adulto'
  else if (idade >= 60) then
    resultado := 'idoso'
  else
    resultado := 'idade inválida';

  FeixaEtaria := resultado;
end;
procedure TFrmTela2.BtnProcessarClick(Sender: TObject);
  var
     nome,resultado: String;
     idade: Integer;
begin
  nome:= (EdtNome.Text);
  idade:= StrToInt(EdtIdade.Text);
  LbResultado.Caption;

   resultado := FeixaEtaria(idade);

  LbResultado.Caption := nome + ' é ' + resultado;
end;


end.
