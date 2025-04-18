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

function CalcularIMC(peso: double; altura: double): double;
var imc: double;
begin
  imc := peso / (altura * altura);
  CalcularIMC := imc;
end;

function ObterClassificacaoIMC(imc: double): string;
var Classificacao: string;
begin
  if imc < 18.5 then
    Classificacao := 'Magreza'
  else if imc < 24.9 then
    Classificacao := 'Normal'
  else if imc < 29.9 then
    Classificacao := 'Sobrepeso'
  else if imc < 39.9 then
    Classificacao := 'Obesidade'
  else
    Classificacao := 'Obesidade Grave';

  ObterClassificacaoIMC := Classificacao;
end;

function ValidarDados(peso: double; altura: double): boolean;
var ehValido: boolean;
begin
  ehValido := true;
  if (peso <= 0) or (altura <= 0) then
  begin
    ehValido := false;
  end;
  ValidarDados := ehValido;
end;

procedure TFrmTela1.BtnCalcularClick(Sender: TObject);
var
  Peso,Altura, IMC: Double;
  Classificacao: String;
  ehValido: boolean;
begin
  Peso := StrToFloatDef(EdtPeso.Text,0);
  Altura := StrToFloatDef(EdtAltura.Text, 0);

  ehValido := ValidarDados(Peso, Altura);

  if(ehValido = false) then
  begin
    ShowMessage('Dados inválidos');
    Exit;
  end;

  IMC := CalcularIMC(Peso, Altura);

  Classificacao := ObterClassificacaoIMC(IMC);

  // Exibe os resultados nas labels
  LbIMC.Caption := 'IMC: ' + FormatFloat('0.00', IMC);
  LbClassificacao.Caption := 'Classificação: ' + Classificacao;

end;








end.
