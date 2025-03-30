unit U_FrmTela5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmTela5 = class(TForm)
    EdtNome: TEdit;
    EdtSalarioBruto: TEdit;
    EdtDependentes: TEdit;
    CmbCargo: TComboBox;
    chkPlanoSaude: TCheckBox;
    BtnCalcular: TButton;
    lblResultado: TLabel;
    procedure BtnCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTela5: TFrmTela5;

implementation

{$R *.dfm}

procedure TFrmTela5.BtnCalcularClick(Sender: TObject);
  var
  nome: string;
  cargo: string;
  salarioBruto, salarioLiquido: Double;
  dependentes: Integer;
  descontoINSS, acrescimoDependente, descontoPlano: Double;
begin
  nome := edtNome.Text;
  cargo := cmbCargo.Text;
  salarioBruto := StrToFloat(edtSalarioBruto.Text);
  dependentes := StrToInt(edtDependentes.Text);

  descontoINSS := salarioBruto * 0.11;
  acrescimoDependente := dependentes * 150.00;

   if chkPlanoSaude.Checked then
    descontoPlano := 200.00
  else
    descontoPlano := 0.00;


  salarioLiquido := salarioBruto - descontoINSS + acrescimoDependente - descontoPlano;

  lblResultado.Caption := 'Funcionário: ' + nome + sLineBreak +
                          'Cargo: ' + cargo + sLineBreak +
                          'Salário líquido: R$ ' + FormatFloat('#,##0.00', salarioLiquido);


end;

end.
