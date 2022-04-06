object ftambahkonfirmasi: Tftambahkonfirmasi
  Left = 0
  Top = 0
  ClientHeight = 385
  ClientWidth = 526
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 8
    Top = 63
    Width = 46
    Height = 13
    Caption = 'Customer'
  end
  object Label3: TLabel
    Left = 8
    Top = 110
    Width = 82
    Height = 13
    Caption = 'Tanggal Transfer'
  end
  object Label4: TLabel
    Left = 8
    Top = 137
    Width = 52
    Height = 13
    Caption = 'Atas Nama'
  end
  object Label5: TLabel
    Left = 8
    Top = 164
    Width = 23
    Height = 13
    Caption = 'Bank'
  end
  object Label6: TLabel
    Left = 8
    Top = 191
    Width = 61
    Height = 13
    Caption = 'Jumlah Uang'
  end
  object Label7: TLabel
    Left = 8
    Top = 218
    Width = 56
    Height = 13
    Caption = 'Keterangan'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 526
    Height = 41
    Align = alTop
    Caption = 'TAMBAH KONFIRMASI PEMBAYARAN'
    Color = clHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 344
    Width = 526
    Height = 41
    Align = alBottom
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
      Left = 199
      Top = 5
      Width = 121
      Height = 30
      Caption = 'Konfirmasi'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object tnama: TEdit
    Left = 112
    Top = 60
    Width = 289
    Height = 21
    Enabled = False
    TabOrder = 2
  end
  object ttgl: TcxDateEdit
    Left = 112
    Top = 107
    Properties.DateButtons = [btnToday]
    Properties.DisplayFormat = 'dd mmm yyyy'
    Properties.EditFormat = 'dd mmm yyyy'
    TabOrder = 3
    Width = 121
  end
  object tjam: TcxComboBox
    Left = 239
    Top = 107
    Properties.AutoSelect = False
    TabOrder = 4
    Width = 50
  end
  object tmenit: TcxComboBox
    Left = 295
    Top = 107
    Properties.AutoSelect = False
    TabOrder = 5
    Width = 50
  end
  object tatas: TEdit
    Left = 112
    Top = 134
    Width = 289
    Height = 21
    TabOrder = 6
  end
  object tbank: TcxComboBox
    Left = 112
    Top = 161
    Properties.AutoSelect = False
    Properties.DropDownListStyle = lsFixedList
    TabOrder = 7
    Width = 289
  end
  object tjml: TEdit
    Left = 112
    Top = 188
    Width = 289
    Height = 21
    TabOrder = 8
    Text = '0'
    OnKeyUp = tjmlKeyUp
  end
  object tket: TMemo
    Left = 112
    Top = 215
    Width = 289
    Height = 89
    TabOrder = 9
  end
  object Panel5: TPanel
    AlignWithMargins = True
    Left = 295
    Top = 84
    Width = 106
    Height = 21
    Margins.Left = 250
    Margins.Top = 5
    Margins.Right = 250
    Margins.Bottom = 20
    Color = 8544830
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 10
    object SpeedButton1: TSpeedButton
      Left = 1
      Top = 1
      Width = 104
      Height = 19
      Align = alClient
      Caption = 'Cari Customer'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton1Click
      ExplicitLeft = 40
      ExplicitWidth = 144
      ExplicitHeight = 79
    end
  end
end
