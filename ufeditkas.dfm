object feditkas: Tfeditkas
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'feditkas'
  ClientHeight = 236
  ClientWidth = 919
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox12: TGroupBox
    Left = 2
    Top = 47
    Width = 913
    Height = 144
    TabOrder = 0
    object Label36: TLabel
      Left = 4
      Top = 56
      Width = 38
      Height = 13
      Caption = 'Tanggal'
    end
    object Label37: TLabel
      Left = 4
      Top = 83
      Width = 54
      Height = 13
      Caption = 'Terima Dari'
    end
    object Label38: TLabel
      Left = 351
      Top = 84
      Width = 39
      Height = 13
      Caption = 'Catatan'
    end
    object Label39: TLabel
      Left = 6
      Top = 112
      Width = 43
      Height = 13
      Caption = 'Kas Bank'
    end
    object Label40: TLabel
      Left = 6
      Top = 24
      Width = 27
      Height = 13
      Caption = 'Jenis '
    end
    object Label41: TLabel
      Left = 350
      Top = 21
      Width = 45
      Height = 13
      Caption = 'Perkiraan'
    end
    object Label42: TLabel
      Left = 350
      Top = 48
      Width = 33
      Height = 13
      Caption = 'Jumlah'
    end
    object Label43: TLabel
      Left = 686
      Top = 16
      Width = 21
      Height = 13
      Caption = 'ACC'
    end
    object tterima: TEdit
      Left = 110
      Top = 77
      Width = 193
      Height = 24
      CharCase = ecUpperCase
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object mcatatan: TMemo
      Left = 424
      Top = 76
      Width = 199
      Height = 53
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object dtanggal: TDateTimePicker
      Left = 111
      Top = 50
      Width = 191
      Height = 21
      Date = 41771.412748101850000000
      Format = 'dd-MMM-yyyy'
      Time = 41771.412748101850000000
      Color = clWhite
      TabOrder = 2
    end
    object ComboBox1: TComboBox
      Left = 112
      Top = 20
      Width = 145
      Height = 22
      Style = csOwnerDrawFixed
      ItemIndex = 0
      TabOrder = 3
      Text = 'PENERIMAAN'
      OnChange = ComboBox1Change
      Items.Strings = (
        'PENERIMAAN'
        'PENGELUARAN')
    end
    object tperkiraan: TEdit
      Left = 425
      Top = 15
      Width = 197
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnChange = tperkiraanChange
      OnKeyDown = tperkiraanKeyDown
      OnKeyPress = tperkiraanKeyPress
    end
    object tjumlah: TEdit
      Left = 424
      Top = 45
      Width = 201
      Height = 21
      TabOrder = 5
      OnChange = tjumlahChange
    end
    object cxListBox2: TcxListBox
      Left = 424
      Top = 40
      Width = 201
      Height = 0
      ItemHeight = 13
      TabOrder = 6
      OnDblClick = cxListBox2DblClick
      OnKeyPress = cxListBox2KeyPress
    end
    object tkas: TcxComboBox
      Left = 111
      Top = 108
      TabOrder = 7
      Width = 194
    end
    object tacc: TcxComboBox
      Left = 727
      Top = 12
      Properties.Items.Strings = (
        'BELUM DI ACC')
      TabOrder = 8
      Text = 'BELUM DI ACC'
      Width = 170
    end
  end
  object Panel10: TPanel
    Left = 0
    Top = 196
    Width = 919
    Height = 40
    Align = alBottom
    Color = clActiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Button12: TButton
      Left = 393
      Top = 8
      Width = 161
      Height = 25
      Caption = 'Simpan Data'
      TabOrder = 0
      OnClick = Button12Click
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 919
    Height = 41
    Align = alTop
    Caption = 'EDIT KAS'
    Color = clHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlightText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
  end
end
