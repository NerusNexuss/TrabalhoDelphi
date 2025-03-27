unit imc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    LbIcm: TLabel;
    LbClassificacao: TLabel;
    EdtAltura: TEdit;
    EdtPeso: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
  var
    Peso,Altura,IMC: Double;
    Classificacao: String;
begin
  Altura := StrToFLoat(EdtAltura.Text);
  Peso := StrToFloat(EdtPeso.Text);

  IMC := Peso / (Altura * Altura);

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

    LbIcm.Caption := 'IMC:' + FormatFloat('0.00', IMC);
    LbClassificacao.Caption := 'Classificação: ' + Classificacao;


end;

end.
