object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Calculator'
  ClientHeight = 311
  ClientWidth = 643
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Summ: TButton
    Left = 314
    Top = 212
    Width = 25
    Height = 25
    Caption = '+'
    TabOrder = 0
    TabStop = False
    OnClick = SummClick
  end
  object Minus: TButton
    Left = 314
    Top = 181
    Width = 25
    Height = 25
    Caption = '-'
    TabOrder = 1
    TabStop = False
    OnClick = MinusClick
  end
  object Multiply: TButton
    Left = 314
    Top = 150
    Width = 25
    Height = 25
    Caption = 'x'
    TabOrder = 2
    TabStop = False
    OnClick = MultiplyClick
  end
  object Divide: TButton
    Left = 314
    Top = 119
    Width = 25
    Height = 25
    Caption = '/'
    TabOrder = 3
    TabStop = False
    OnClick = DivideClick
  end
  object Cancel: TButton
    Left = 225
    Top = 119
    Width = 25
    Height = 25
    Caption = 'C'
    TabOrder = 4
    TabStop = False
    OnClick = CancelClick
  end
  object Panel1: TPanel
    Left = 225
    Top = 72
    Width = 145
    Height = 42
    Color = clBtnHighlight
    ParentBackground = False
    TabOrder = 5
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 143
      Height = 14
      Align = alTop
      Alignment = taRightJustify
      BiDiMode = bdLeftToRight
      Color = clBtnHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
      ExplicitLeft = 140
      ExplicitWidth = 4
    end
    object Edit1: TEdit
      Left = 1
      Top = 20
      Width = 143
      Height = 21
      Align = alBottom
      Alignment = taRightJustify
      BiDiMode = bdLeftToRight
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
    end
  end
  object EqualTo: TButton
    Left = 345
    Top = 119
    Width = 25
    Height = 56
    Caption = '='
    TabOrder = 6
    TabStop = False
    OnClick = EqualToClick
  end
end
