unit trabalho1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    EdtIdade: TEdit;
    EdtNome: TEdit;
    LbNome: TLabel;
    LbIdade: TLabel;
    BtnSaberFaixa: TButton;
    LbNomeResultado: TLabel;
    LbFaixa: TLabel;
    procedure BtnSaberFaixaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.BtnSaberFaixaClick(Sender: TObject);
  var
    nome, FaixaEtaria: String;
    idade: integer;
begin
  nome := (EdtNome.Text);
  FaixaEtaria := (EdtIdade.Text);

  if idade <= 12 then
    FaixaEtaria := 'criança'
  else if idade >= 17 then
    FaixaEtaria := 'Adolecente'
  else if idade >= 59 then
    FaixaEtaria := 'Adulto'
  else if idade  >=60 then
    FaixaEtaria := 'Idoso'
  else


  LbFaixa.Caption := 'Faixa Etaria: ' + FaixaEtaria;



end;

end.
