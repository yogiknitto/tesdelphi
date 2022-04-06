object fperbedaanorder: Tfperbedaanorder
  Left = 0
  Top = 0
  Caption = 'fperbedaanorder'
  ClientHeight = 524
  ClientWidth = 869
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
    Width = 433
    Height = 41
    Caption = 'DATA FAKTUR SEMENTARA'
    Color = clHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlightText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 434
    Top = 0
    Width = 433
    Height = 41
    Caption = 'DATA FAKTUR ASLI'
    Color = clHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlightText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 40
    Width = 441
    Height = 441
    TabOrder = 2
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'VisualStudio2013Blue'
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsqsementara
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,#0.;(#,#0.);#,#0'
          Kind = skSum
          Column = cxGrid1DBTableView1subtotal
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1berat
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      object cxGrid1DBTableView1nama_kain: TcxGridDBColumn
        DataBinding.FieldName = 'nama_kain'
        Width = 100
      end
      object cxGrid1DBTableView1jenis_warna: TcxGridDBColumn
        DataBinding.FieldName = 'jenis_warna'
        Width = 100
      end
      object cxGrid1DBTableView1harga: TcxGridDBColumn
        DataBinding.FieldName = 'harga'
      end
      object cxGrid1DBTableView1berat: TcxGridDBColumn
        DataBinding.FieldName = 'berat'
      end
      object cxGrid1DBTableView1subtotal: TcxGridDBColumn
        DataBinding.FieldName = 'subtotal'
        Width = 100
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxGrid2: TcxGrid
    Left = 432
    Top = 40
    Width = 433
    Height = 441
    TabOrder = 3
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Whiteprint'
    object cxGridDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsqasli
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,#0.;(#,#0.);#,#0'
          Kind = skSum
          Column = cxGridDBTableView1subtotal
        end
        item
          Kind = skSum
          Column = cxGridDBTableView1berat
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      object cxGridDBTableView1nama_kain: TcxGridDBColumn
        DataBinding.FieldName = 'nama_kain'
        Width = 100
      end
      object cxGridDBTableView1jenis_warna: TcxGridDBColumn
        DataBinding.FieldName = 'jenis_warna'
        Width = 100
      end
      object cxGridDBTableView1harga: TcxGridDBColumn
        DataBinding.FieldName = 'harga'
      end
      object cxGridDBTableView1berat: TcxGridDBColumn
        DataBinding.FieldName = 'berat'
      end
      object cxGridDBTableView1subtotal: TcxGridDBColumn
        DataBinding.FieldName = 'subtotal'
        Width = 100
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 481
    Width = 865
    Height = 41
    TabOrder = 4
    object Button1: TButton
      Left = 341
      Top = 3
      Width = 177
      Height = 33
      Caption = 'Lanjutkan Cetak faktur'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 784
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Keluar'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object qasli: TUniQuery
    Connection = tabel.server
    SQL.Strings = (
      
        'SELECT nama_kain,jenis_warna,harga,pr.berat,pr.berat*harga AS su' +
        'btotal'
      
        'FROM detail_pengeluaranstok JOIN perincian_pengeluaranstok pr US' +
        'ING(no_Detail)'
      'JOIN warna w USING(id_Warna) JOIN kain k USING(id_kain)'
      'ORDER BY jenis_warna,nama_kain ASC, berat DESC')
    Left = 632
    Top = 112
    object qaslinama_kain: TStringField
      FieldName = 'nama_kain'
      Required = True
      Size = 100
    end
    object qaslijenis_warna: TStringField
      FieldName = 'jenis_warna'
      ReadOnly = True
      Required = True
      Size = 75
    end
    object qasliharga: TFloatField
      FieldName = 'harga'
      ReadOnly = True
      Required = True
    end
    object qasliberat: TFloatField
      FieldName = 'berat'
      ReadOnly = True
      Required = True
    end
    object qaslisubtotal: TFloatField
      FieldName = 'subtotal'
      ReadOnly = True
      Required = True
    end
  end
  object qsementara: TUniQuery
    Connection = tabel.server
    SQL.Strings = (
      
        'SELECT nama_kain,jenis_warna,harga,pr.berat,pr.berat*harga AS su' +
        'btotal'
      
        'FROM detail_pengeluaranstok_temp JOIN perincian_pengeluaranstok_' +
        'temp pr USING(no_Detail)'
      'JOIN warna w USING(id_Warna) JOIN kain k USING(id_kain)'
      'ORDER BY jenis_warna,nama_kain ASC, berat DESC')
    Left = 336
    Top = 104
    object qsementaranama_kain: TStringField
      FieldName = 'nama_kain'
      Required = True
      Size = 100
    end
    object qsementarajenis_warna: TStringField
      FieldName = 'jenis_warna'
      ReadOnly = True
      Required = True
      Size = 75
    end
    object qsementaraharga: TFloatField
      FieldName = 'harga'
      ReadOnly = True
      Required = True
    end
    object qsementaraberat: TFloatField
      FieldName = 'berat'
      ReadOnly = True
      Required = True
    end
    object qsementarasubtotal: TFloatField
      FieldName = 'subtotal'
      ReadOnly = True
      Required = True
    end
  end
  object dsqasli: TUniDataSource
    DataSet = qasli
    Left = 696
    Top = 112
  end
  object dsqsementara: TUniDataSource
    DataSet = qsementara
    Left = 232
    Top = 112
  end
end
