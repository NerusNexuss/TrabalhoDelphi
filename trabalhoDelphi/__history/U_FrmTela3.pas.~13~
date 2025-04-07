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

procedure TForm1.Button1Click(Sender: TObject);
var
  valorCompra, valorFinal: Double;
begin

  valorCompra := StrToFloat(EdtProduto.Text);


  case RgFormaPagamento.ItemIndex of
    0:
      valorFinal := valorCompra * 0.90;
    1:
      valorFinal := valorCompra;
    2:
      valorFinal := valorCompra * 1.05;
  else
    valorFinal := valorCompra;
  end;


 LbResultado.Caption := 'Valor final: R$ ' + FormatFloat('0.00', valorFinal);
end;
end.
