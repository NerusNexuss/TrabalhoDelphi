object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object LbResultado: TLabel
    Left = 200
    Top = 289
    Width = 58
    Height = 15
    Caption = 'Resultado :'
  end
  object EdtProduto: TEdit
    Left = 168
    Top = 120
    Width = 153
    Height = 23
    TabOrder = 0
    TextHint = 'Digite o valor do Produto'
  end
  object RgFormaPagamento: TRadioGroup
    Left = 168
    Top = 161
    Width = 185
    Height = 105
    Caption = 'FormaPagamento'
    Items.Strings = (
      #192' vista '
      'Cart'#227'o '
      'Parcelado')
    TabOrder = 1
    StyleName = 'Windows'
  end
  object Button1: TButton
    Left = 352
    Top = 119
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = Button1Click
  end
end
