unit U_FrmaTela3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrmTela3 = class(TForm)
    Edit1: TEdit;
    RadioGroup1: TRadioGroup;
    Label1: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTela3: TFrmTela3;

implementation

{$R *.dfm}

procedure TFrmTela3.Button1Click(Sender: TObject);
var
  valorCompra, valorFinal: Double;
begin
  // L� o valor digitado
  valorCompra := StrToFloat(Edit1.Text);

  // Verifica a op��o selecionada no RadioGroup
  case RadioGroup1.ItemIndex of
    0: // � vista - 10% de desconto
      valorFinal := valorCompra * 0.90;
    1: // Cart�o - sem desconto
      valorFinal := valorCompra;
    2: // Parcelado - acr�scimo de 5%
      valorFinal := valorCompra * 1.05;
  else
    valorFinal := valorCompra; // Caso nenhuma op��o esteja selecionada
  end;

  // Exibe o valor final com duas casas decimais
  Label1.Caption := 'Valor final: R$ ' + FormatFloat('0.00', valorFinal);
end;

