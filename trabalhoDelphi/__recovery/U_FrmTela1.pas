unit U_FrmTela1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmTela1 = class(TForm)
    BtnCalcular: TButton;
    LbAltura: TLabel;
    LbPeso: TLabel;
    EdtAltura: TEdit;
    EdtPeso: TEdit;
    LbIMC: TLabel;
    LbClassificacao: TLabel;
    procedure BtnCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTela1: TFrmTela1;

implementation

{$R *.dfm}

function CalcularIMC(peso, altura: double):double;
var
  imc: double;
begin

imc := peso / (altura * altura);
CalcularIMC := imc;

end;

function ValidarDados(Peso, Altura: double): boolean;
  var
    ehValido := boolean;
begin

end;

procedure TFrmTela1.BtnCalcularClick(Sender: TObject);
var
  Peso,Altura, IMC: Double;
  Classificacao: String;
begin
  Peso := StrToFloatDef(EdtPeso.Text,0);
  Altura := StrToFloatDef(EdtAltura.Text, 0);

  if (Peso <= 0) or (Altura <= 0) then
  begin
   showMessage('Por favor inserir valores validos para o peso');
   exit;
  end;

  IMC := CalcularIMC(Peso,Altura);

  if IMC < 18.5 then
    Classificacao := 'Magreza'
  else if IMC < 24.9 then
    Classificacao := 'Normal'
  else if IMC < 29.9 then
    Classificacao := 'Sobrepeso'
  else if IMC < 39.9 then
    Classificacao := 'Obesidade'
  else
    Classificacao := 'Obesidade Grave';

  // Exibe os resultados nas labels
  LbIMC.Caption := 'IMC: ' + FormatFloat('0.00', IMC);
  LbClassificacao.Caption := 'Classificação: ' + Classificacao;




end;



end.
