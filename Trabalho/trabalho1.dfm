object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object LbNome: TLabel
    Left = 134
    Top = 131
    Width = 36
    Height = 15
    Caption = 'Nome:'
  end
  object LbIdade: TLabel
    Left = 136
    Top = 179
    Width = 32
    Height = 15
    Caption = 'Idade:'
  end
  object LbNomeResultado: TLabel
    Left = 184
    Top = 216
    Width = 39
    Height = 15
    Caption = 'Nome :'
  end
  object LbFaixa: TLabel
    Left = 184
    Top = 248
    Width = 130
    Height = 32
    Caption = 'Faixa etaria :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object EdtIdade: TEdit
    Left = 184
    Top = 176
    Width = 121
    Height = 23
    TabOrder = 0
    TextHint = 'Digite a sua idade'
  end
  object EdtNome: TEdit
    Left = 184
    Top = 128
    Width = 121
    Height = 23
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    Text = 'Digite o seu nome:'
    TextHint = 'Digite o seu nome:'
  end
  object BtnSaberFaixa: TButton
    Left = 328
    Top = 175
    Width = 113
    Height = 25
    Caption = 'Calcular Faixa Etaria'
    TabOrder = 2
    OnClick = BtnSaberFaixaClick
  end
end
