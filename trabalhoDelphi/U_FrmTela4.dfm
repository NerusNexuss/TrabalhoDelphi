object FrmTela4: TFrmTela4
  Left = 0
  Top = 0
  Caption = 'FrmTela4'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 216
    Top = 216
    Width = 61
    Height = 15
    Caption = 'Resultado : '
  end
  object Edit1: TEdit
    Left = 216
    Top = 120
    Width = 145
    Height = 23
    TabOrder = 0
    TextHint = 'Digite o valor do Produto'
  end
  object ComboBox1: TComboBox
    Left = 216
    Top = 168
    Width = 145
    Height = 23
    TabOrder = 1
    TextHint = 'Selecione a cidade'
    Items.Strings = (
      'Curitiba - PR'
      'Londrina - PR'
      'Maring'#225' - PR'
      'S'#227'o Paulo - SP'
      'Florian'#243'polis - SC')
  end
  object Button1: TButton
    Left = 384
    Top = 119
    Width = 81
    Height = 25
    Caption = 'Calcular Frete'
    TabOrder = 2
    OnClick = Button1Click
  end
end
