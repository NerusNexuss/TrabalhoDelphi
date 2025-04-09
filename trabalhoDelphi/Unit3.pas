unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    lblResultado: TLabel;
    EdtNome: TEdit;
    EdtSalarioBruto: TEdit;
    EdtDependentes: TEdit;
    CmbCargo: TComboBox;
    chkPlanoSaude: TCheckBox;
    BtnCalcular: TButton;
    procedure BtnCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

function CalcularINSS(salarioBruto: Double): Double;
begin
  CalcularINSS := salarioBruto * 0.11;
end;

function CalcularAcrescimoDependente(qtd: Integer): Double;
begin
  CalcularAcrescimoDependente := qtd * 150.00;
end;

function CalcularDescontoPlano(temPlano: Boolean): Double;
begin
  if temPlano then
    CalcularDescontoPlano := 200.00
  else
    CalcularDescontoPlano := 0.00;
end;

function CalcularSalarioLiquido(salarioBruto, descontoINSS, acrescimoDependente, descontoPlano: Double): Double;
begin
  CalcularSalarioLiquido := salarioBruto - descontoINSS + acrescimoDependente - descontoPlano;
end;


procedure TForm3.BtnCalcularClick(Sender: TObject);
var
  nome, cargo: string;
  salarioBruto, salarioLiquido: Double;
  dependentes: Integer;
  descontoINSS, acrescimoDependente, descontoPlano: Double;
begin
  nome := edtNome.Text;
  cargo := cmbCargo.Text;
  salarioBruto := StrToFloat(edtSalarioBruto.Text);
  dependentes := StrToInt(edtDependentes.Text);

  descontoINSS := CalcularINSS(salarioBruto);
  acrescimoDependente := CalcularAcrescimoDependente(dependentes);
  descontoPlano := CalcularDescontoPlano(chkPlanoSaude.Checked);
  salarioLiquido := CalcularSalarioLiquido(salarioBruto, descontoINSS, acrescimoDependente, descontoPlano);

  lblResultado.Caption := 'Funcionário: ' + nome + sLineBreak +
                          'Cargo: ' + cargo + sLineBreak +
                          'Salário líquido: R$ ' + FormatFloat('#,##0.00', salarioLiquido);

end;

end.
