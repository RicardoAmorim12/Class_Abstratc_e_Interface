inherited Form6: TForm6
  Caption = 'Form6'
  ClientHeight = 511
  Position = poScreenCenter
  ExplicitHeight = 550
  PixelsPerInch = 96
  TextHeight = 13
  object cbbOpcao: TComboBox
    Left = 240
    Top = 184
    Width = 145
    Height = 21
    ItemIndex = 0
    TabOrder = 0
    Text = 'Carro'
    Items.Strings = (
      'Carro'
      'Moto'
      'Pessoa'
      'Cachorro')
  end
  object btnFazBarulho: TButton
    Left = 237
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Faz Barulho'
    TabOrder = 1
    OnClick = btnFazBarulhoClick
  end
  object btnAnda: TButton
    Left = 318
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Anda'
    TabOrder = 2
    OnClick = btnAndaClick
  end
end
