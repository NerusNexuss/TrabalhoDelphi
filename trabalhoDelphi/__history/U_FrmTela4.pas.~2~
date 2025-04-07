unit U_FrmTela4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmTela4 = class(TForm)
    Edit1: TEdit;
    ComboBox1: TComboBox;
    Button1: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTela4: TFrmTela4;

implementation

{$R *.dfm}

procedure TFrmTela4.Button1Click(Sender: TObject);
var
  valorProduto, valorTotal, frete: Double;
  cidade: String;
begin

  valorProduto := StrToFloat(Edit1.Text);
  cidade := ComboBox1.Text;


  if cidade = 'Curitiba' then
    frete := 0
  else if (cidade = 'Londrina - PR') or (cidade = 'Maringá - PR') then
    frete := 10
  else
    frete := 25;


  valorTotal := valorProduto + frete;


  Label1.Caption := 'Valor total (com frete): R$ ' + FormatFloat('0.00', valorTotal);
end;


end.
