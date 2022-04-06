object fedittanggal: Tfedittanggal
  Left = 0
  Top = 0
  ClientHeight = 286
  ClientWidth = 527
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 16
    Top = 56
    Width = 52
    Height = 13
    Caption = 'Atas Nama'
  end
  object Label3: TLabel
    Left = 16
    Top = 90
    Width = 23
    Height = 13
    Caption = 'Bank'
  end
  object Label4: TLabel
    Left = 16
    Top = 124
    Width = 60
    Height = 13
    Caption = 'Jumlah uang'
  end
  object Label5: TLabel
    Left = 16
    Top = 158
    Width = 91
    Height = 13
    Caption = 'Tanggal/Jam/Menit'
  end
  object Panel1: TPanel
    Left = -7
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
      Width = 367
      Height = 23
      Caption = 'EDIT TANGGAL KONFIRMASI PEMBAYARAN'
    end
  end
  object Panel2: TPanel
    Left = -7
    Top = 243
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
      Left = 151
      Top = 5
      Width = 121
      Height = 30
      Caption = 'Edit'
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
  object Edit1: TEdit
    Left = 112
    Top = 53
    Width = 272
    Height = 21
    Enabled = False
    TabOrder = 2
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 112
    Top = 87
    Width = 272
    Height = 21
    Enabled = False
    TabOrder = 3
    Text = 'Edit1'
  end
  object Edit3: TEdit
    Left = 112
    Top = 119
    Width = 272
    Height = 21
    Enabled = False
    TabOrder = 4
    Text = 'Edit1'
  end
  object cxDateEdit1: TcxDateEdit
    Left = 114
    Top = 154
    Properties.DateButtons = [btnClear, btnToday]
    Properties.DisplayFormat = 'dd-mmm-yyyy'
    Properties.EditFormat = 'dd-mmm-yyyy'
    Properties.SaveTime = False
    Properties.ShowTime = False
    TabOrder = 5
    Width = 153
  end
  object cxjam: TcxComboBox
    Left = 277
    Top = 154
    TabOrder = 6
    OnExit = cxjamExit
    Width = 49
  end
  object cxmenit: TcxComboBox
    Left = 335
    Top = 154
    TabOrder = 7
    OnExit = cxmenitExit
    Width = 49
  end
end
