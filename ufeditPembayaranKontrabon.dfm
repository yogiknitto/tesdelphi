object feditPembayaranKontrabon: TfeditPembayaranKontrabon
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  BorderWidth = 1
  ClientHeight = 299
  ClientWidth = 398
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 20
    Top = 20
    Width = 120
    Height = 18
    Caption = 'No Penjualan      :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbNoPenjualan: TLabel
    Left = 143
    Top = 20
    Width = 85
    Height = 18
    Caption = 'No Penjualan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbCustomer: TLabel
    Left = 143
    Top = 50
    Width = 85
    Height = 18
    Caption = 'No Penjualan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 20
    Top = 50
    Width = 118
    Height = 18
    Caption = 'Customer          :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbEkspedisi: TLabel
    Left = 143
    Top = 83
    Width = 85
    Height = 18
    Caption = 'No Penjualan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 20
    Top = 83
    Width = 117
    Height = 18
    Caption = 'Ekspedisi           :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 20
    Top = 152
    Width = 116
    Height = 18
    Caption = 'Ongkir              :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 19
    Top = 190
    Width = 119
    Height = 18
    Caption = 'Asuransi            :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbResi: TLabel
    Left = 143
    Top = 113
    Width = 85
    Height = 18
    Caption = 'No Penjualan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 20
    Top = 113
    Width = 119
    Height = 18
    Caption = 'No Resi             :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object tongkir: TcxTextEdit
    Left = 143
    Top = 147
    AutoSize = False
    ParentFont = False
    Properties.ReadOnly = False
    Properties.OnChange = tongkirPropertiesChange
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 0
    Text = '0'
    OnKeyUp = tongkirKeyUp
    Height = 30
    Width = 211
  end
  object tasuransi: TcxTextEdit
    Left = 143
    Top = 185
    AutoSize = False
    ParentFont = False
    Properties.ReadOnly = False
    Properties.OnChange = tongkirPropertiesChange
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 1
    Text = '0'
    OnKeyUp = tongkirKeyUp
    Height = 30
    Width = 211
  end
  object Panel25: TPanel
    Left = 165
    Top = 246
    Width = 70
    Height = 30
    Color = clNavy
    ParentBackground = False
    TabOrder = 2
    object SpeedButton7: TSpeedButton
      Left = 1
      Top = 1
      Width = 68
      Height = 28
      Cursor = crHandPoint
      Align = alClient
      Caption = 'SIMPAN'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton7Click
      ExplicitLeft = 2
      ExplicitTop = 2
      ExplicitWidth = 69
    end
  end
end
