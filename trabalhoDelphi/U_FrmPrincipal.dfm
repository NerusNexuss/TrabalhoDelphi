object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'FrmPrincipal'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MenuPrincipal
  TextHeight = 15
  object MenuPrincipal: TMainMenu
    Left = 304
    Top = 224
    object Principal: TMenuItem
      Caption = 'Principal'
      object Tela1: TMenuItem
        Caption = 'Tela 1 '
        OnClick = Tela1Click
      end
      object ela21: TMenuItem
        Caption = 'Tela 2'
        OnClick = ela21Click
      end
      object ela31: TMenuItem
        Caption = 'Tela 3'
        OnClick = ela31Click
      end
      object ela41: TMenuItem
        Caption = 'Tela 4'
        OnClick = ela41Click
      end
      object ela51: TMenuItem
        Caption = 'Tela 5'
        OnClick = ela51Click
      end
    end
  end
end
