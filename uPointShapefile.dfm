object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 411
  ClientWidth = 525
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 525
    Height = 41
    Align = alTop
    TabOrder = 0
    object Button1: TButton
      Left = 32
      Top = 8
      Width = 89
      Height = 25
      Caption = 'Crear Shapefile'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object Map1: TMap
    Left = 0
    Top = 41
    Width = 525
    Height = 370
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 264
    ExplicitTop = 224
    ExplicitWidth = 100
    ExplicitHeight = 50
    ControlData = {
      31000C00433600003E26000000000000FFFFFF007B14AE47E17A943F00003333
      33333333D33F00000000001400000001000000000000000000E03F0000010000
      0000000001000000000100000002000000030000000600000001000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000001010000000000000000010100000004000000FFFFFFFFFFFFFFFF
      000000000000}
  end
end
