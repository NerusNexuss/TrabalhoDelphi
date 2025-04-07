unit U_FrmTela3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    EdtProduto: TEdit;
    RgFormaPagamento: TRadioGroup;
    LbResultado: TLabel;
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


function CalcularValorFinal(valorCompra: Double; formaPagamento: Integer): Double;
begin
  case formaPagamento of
    0:
      CalcularValorFinal := valorCompra * 0.90; // 10% de desconto
    1:
      CalcularValorFinal := valorCompra; // Sem alteração
    2:
      CalcularValorFinal := valorCompra * 1.05; // 5% de juros
  else
    CalcularValorFinal := valorCompra;
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  valorCompra, valorFinal: Double;
begin
  valorCompra := StrToFloat(EdtProduto.Text);

  valorFinal := CalcularValorFinal(valorCompra, RgFormaPagamento.ItemIndex);

  LbResultado.Caption := 'Valor final: R$ ' + FormatFloat('0.00', valorFinal);
end;
end.
