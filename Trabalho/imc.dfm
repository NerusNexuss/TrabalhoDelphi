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
  object Label1: TLabel
    Left = 152
    Top = 123
    Width = 35
    Height = 15
    Caption = 'Altura:'
  end
  object Label2: TLabel
    Left = 152
    Top = 171
    Width = 28
    Height = 15
    Caption = 'Peso:'
  end
  object LbIcm: TLabel
    Left = 200
    Top = 216
    Width = 25
    Height = 15
    Caption = 'IMC:'
  end
  object LbClassificacao: TLabel
    Left = 200
    Top = 248
    Width = 71
    Height = 15
    Caption = 'Classifica'#231#227'o:'
  end
  object EdtAltura: TEdit
    Left = 200
    Top = 120
    Width = 121
    Height = 23
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    TextHint = 'Digite a sua Altura:'
  end
  object EdtPeso: TEdit
    Left = 200
    Top = 168
    Width = 121
    Height = 23
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TextHint = 'Digite o seu Peso:'
  end
  object Button1: TButton
    Left = 344
    Top = 167
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = Button1Click
  end
end
