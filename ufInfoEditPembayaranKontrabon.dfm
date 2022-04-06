object fInfoEditPembayaranKontrabon: TfInfoEditPembayaranKontrabon
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 141
  ClientWidth = 630
  Color = clWhite
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
  object Label1: TLabel
    Left = 20
    Top = 12
    Width = 596
    Height = 66
    Alignment = taCenter
    AutoSize = False
    Caption = 
      'Nilai tagihan lebih kecil dari sebelumnya, buat dokumen A/R Cred' +
      'it Memo, A/P Credit Memo dan Incoming Payment untuk Ekspedisi BA' +
      'NDUNG EXPRESS di SAP sebesar Rp. 15.700'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object Panel25: TPanel
    Left = 10
    Top = 100
    Width = 300
    Height = 30
    Color = clNavy
    ParentBackground = False
    TabOrder = 0
    object SpeedButton7: TSpeedButton
      Left = 1
      Top = 1
      Width = 298
      Height = 28
      Cursor = crHandPoint
      Align = alClient
      Caption = 'COPY UNTUK A/R CR. MEMO'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton7Click
      ExplicitWidth = 120
    end
  end
  object cxGrid34: TcxGrid
    Left = 487
    Top = 68
    Width = 279
    Height = 129
    TabOrder = 1
    Visible = False
    object cxGrid34DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsvtsapkontrabon
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid34DBTableView1description: TcxGridDBColumn
        Caption = 'Description'
        DataBinding.FieldName = 'description'
      end
      object cxGrid34DBTableView1glakun: TcxGridDBColumn
        Caption = 'G/L Account'
        DataBinding.FieldName = 'glakun'
      end
      object cxGrid34DBTableView1tax: TcxGridDBColumn
        Caption = 'Tax Code'
        DataBinding.FieldName = 'tax'
      end
      object cxGrid34DBTableView1wtax: TcxGridDBColumn
        Caption = 'WTax Liable'
        DataBinding.FieldName = 'wtax'
      end
      object cxGrid34DBTableView1total: TcxGridDBColumn
        Caption = 'Total (LC)'
        DataBinding.FieldName = 'total'
      end
      object cxGrid34DBTableView1longdescription: TcxGridDBColumn
        Caption = 'Long Description'
        DataBinding.FieldName = 'longdescription'
      end
    end
    object cxGrid34Level1: TcxGridLevel
      GridView = cxGrid34DBTableView1
    end
  end
  object Panel1: TPanel
    Left = 320
    Top = 100
    Width = 300
    Height = 30
    Color = clNavy
    ParentBackground = False
    TabOrder = 2
    object SpeedButton1: TSpeedButton
      Left = 1
      Top = 1
      Width = 298
      Height = 28
      Cursor = crHandPoint
      Align = alClient
      Caption = 'COPY UNTUK A/P CR. MEMO / IN. Payment'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton1Click
      ExplicitWidth = 120
    end
  end
  object vtsapkontrabon: TVirtualTable
    Left = 511
    Top = 38
    Data = {04000000000000000000}
    object vtsapkontrabondescription: TStringField
      FieldName = 'description'
      Size = 255
    end
    object vtsapkontrabonglakun: TStringField
      FieldName = 'glakun'
      Size = 100
    end
    object vtsapkontrabonglakunname: TStringField
      FieldName = 'glakunname'
      Size = 200
    end
    object vtsapkontrabontax: TStringField
      FieldName = 'tax'
      Size = 100
    end
    object vtsapkontrabonwtax: TStringField
      FieldName = 'wtax'
      Size = 50
    end
    object vtsapkontrabontotal: TStringField
      FieldName = 'total'
      Size = 255
    end
    object vtsapkontrabonblanket: TStringField
      FieldName = 'blanket'
      Size = 10
    end
    object vtsapkontrabonqty: TStringField
      FieldName = 'qty'
      Size = 100
    end
    object vtsapkontrabonprice: TStringField
      FieldName = 'price'
      Size = 255
    end
    object vtsapkontrabonlongdescription: TStringField
      FieldName = 'longdescription'
      Size = 255
    end
  end
  object dsvtsapkontrabon: TUniDataSource
    DataSet = vtsapkontrabon
    Left = 520
    Top = 14
  end
end
