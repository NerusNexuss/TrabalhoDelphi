unit U_FrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TFrmPrincipal = class(TForm)
    MenuPrincipal: TMainMenu;
    Principal: TMenuItem;
    Tela1: TMenuItem;
    ela21: TMenuItem;
    ela31: TMenuItem;
    procedure Tela1Click(Sender: TObject);
    procedure ela21Click(Sender: TObject);
    procedure ela31Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses U_FrmTela1, U_FrmTela2, U_FrmTela3;

procedure TFrmPrincipal.ela21Click(Sender: TObject);
begin
 FrmTela2.Show;
end;

procedure TFrmPrincipal.ela31Click(Sender: TObject);
begin
  FrmTela3.Show;
end;

procedure TFrmPrincipal.Tela1Click(Sender: TObject);
begin
 FrmTela1.Show;
end;

end.
