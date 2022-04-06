object fpemasanganmanual: Tfpemasanganmanual
  Left = 0
  Top = 0
  ClientHeight = 398
  ClientWidth = 534
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 9
    Top = 51
    Width = 60
    Height = 13
    Caption = 'No Rekening'
  end
  object Label3: TLabel
    Left = 10
    Top = 81
    Width = 23
    Height = 13
    Caption = 'Bank'
  end
  object Label4: TLabel
    Left = 10
    Top = 113
    Width = 37
    Height = 13
    Caption = 'Nominal'
  end
  object Label5: TLabel
    Left = 10
    Top = 145
    Width = 56
    Height = 13
    Caption = 'Keterangan'
  end
  object Label6: TLabel
    Left = 10
    Top = 218
    Width = 40
    Height = 13
    Caption = 'Kategori'
  end
  object Label7: TLabel
    Left = 10
    Top = 250
    Width = 39
    Height = 13
    Caption = 'Catatan'
  end
  object Panel1: TPanel
    Left = -1
    Top = -1
    Width = 534
    Height = 41
    Color = clHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 96
      Top = 8
      Width = 359
      Height = 23
      Caption = 'PEMASANGAN MANUAL REKENING KORAN'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 355
    Width = 534
    Height = 41
    Color = clHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    object Button1: TButton
      Left = 119
      Top = 5
      Width = 121
      Height = 30
      Caption = 'Pasangkan'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 408
      Top = 5
      Width = 121
      Height = 30
      Caption = 'Keluar'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object trekening: TEdit
    Left = 120
    Top = 48
    Width = 238
    Height = 21
    Enabled = False
    TabOrder = 2
  end
  object tbank: TEdit
    Left = 121
    Top = 78
    Width = 237
    Height = 21
    Enabled = False
    TabOrder = 3
  end
  object tnominal: TEdit
    Left = 121
    Top = 110
    Width = 237
    Height = 21
    Enabled = False
    TabOrder = 4
  end
  object mket: TMemo
    Left = 120
    Top = 144
    Width = 399
    Height = 57
    Enabled = False
    Lines.Strings = (
      'mket')
    TabOrder = 5
  end
  object cbkategori: TComboBox
    Left = 120
    Top = 213
    Width = 241
    Height = 22
    Style = csOwnerDrawFixed
    TabOrder = 6
    OnDropDown = cbkategoriDropDown
  end
  object mcat: TMemo
    Left = 120
    Top = 248
    Width = 241
    Height = 89
    Lines.Strings = (
      '')
    TabOrder = 7
  end
end
