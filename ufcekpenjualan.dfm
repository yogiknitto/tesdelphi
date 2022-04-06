object fcekpenjualan: Tfcekpenjualan
  Left = 0
  Top = 0
  Caption = 'fcekpenjualan'
  ClientHeight = 503
  ClientWidth = 1214
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1214
    Height = 41
    Align = alTop
    Caption = 'DATA KONFIRMASI PEMBAYARAN'
    Color = clHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlightText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitLeft = -49
    ExplicitWidth = 919
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 41
    Width = 1214
    Height = 67
    Align = alTop
    Caption = 'Filter berdasarkan tanggal penjualan'
    TabOrder = 1
    ExplicitLeft = 6
    ExplicitTop = 46
    ExplicitWidth = 875
    object Label4: TLabel
      Left = 585
      Top = 29
      Width = 29
      Height = 13
      Caption = 'Selisih'
    end
    object Label3: TLabel
      Left = 336
      Top = 31
      Width = 47
      Height = 13
      Caption = 'Pencarian'
    end
    object dt1: TcxDateEdit
      Left = 6
      Top = 28
      Properties.DateButtons = [btnClear, btnToday]
      Properties.DisplayFormat = 'dd-mmm-yyyy'
      Properties.EditFormat = 'dd-mmm-yyyy'
      TabOrder = 0
      Width = 147
    end
    object Button2: TButton
      Left = 760
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Tampilkan'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Edit1: TEdit
      Left = 625
      Top = 26
      Width = 121
      Height = 21
      TabOrder = 2
      Text = '1000'
    end
    object tcari: TEdit
      Left = 400
      Top = 28
      Width = 179
      Height = 21
      TabOrder = 3
      OnKeyPress = tcariKeyPress
    end
    object dt2: TcxDateEdit
      Left = 166
      Top = 28
      Properties.DateButtons = [btnClear, btnToday]
      Properties.DisplayFormat = 'dd-mmm-yyyy'
      Properties.EditFormat = 'dd-mmm-yyyy'
      TabOrder = 4
      Width = 147
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 400
    Width = 1214
    Height = 103
    Align = alBottom
    TabOrder = 2
    object DBMemo1: TDBMemo
      Left = 10
      Top = 6
      Width = 1114
      Height = 89
      DataField = 'catatan'
      DataSource = dsqdata
      TabOrder = 0
    end
    object Button1: TButton
      Left = 1130
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Keluar'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 108
    Width = 1214
    Height = 292
    Align = alClient
    TabOrder = 3
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'iMaginary'
    ExplicitLeft = -16
    ExplicitTop = 117
    ExplicitWidth = 1230
    ExplicitHeight = 318
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsqdata
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Filter.Active = True
      DataController.Filter.AutoDataSetFilter = True
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      FilterRow.ApplyChanges = fracImmediately
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1tanggal: TcxGridDBColumn
        DataBinding.FieldName = 'tanggal'
        Width = 100
      end
      object cxGrid1DBTableView1no_pengeluaran: TcxGridDBColumn
        DataBinding.FieldName = 'no_pengeluaran'
        Width = 100
      end
      object cxGrid1DBTableView1nama: TcxGridDBColumn
        DataBinding.FieldName = 'nama'
        Width = 100
      end
      object cxGrid1DBTableView1tagihan: TcxGridDBColumn
        DataBinding.FieldName = 'tagihan'
        Width = 100
      end
      object cxGrid1DBTableView1ongkir: TcxGridDBColumn
        DataBinding.FieldName = 'ongkir'
        Width = 100
      end
      object cxGrid1DBTableView1katalog: TcxGridDBColumn
        DataBinding.FieldName = 'katalog'
        Width = 100
      end
      object cxGrid1DBTableView1diskon: TcxGridDBColumn
        DataBinding.FieldName = 'diskon'
        Width = 100
      end
      object cxGrid1DBTableView1totaltagihan: TcxGridDBColumn
        DataBinding.FieldName = 'totaltagihan'
        Width = 100
      end
      object cxGrid1DBTableView1tgl_transfer: TcxGridDBColumn
        DataBinding.FieldName = 'tgl_transfer'
        Width = 100
      end
      object cxGrid1DBTableView1atas_nama: TcxGridDBColumn
        DataBinding.FieldName = 'atas_nama'
        Width = 100
      end
      object cxGrid1DBTableView1jumlah_uang: TcxGridDBColumn
        DataBinding.FieldName = 'jumlah_uang'
        Width = 100
      end
      object cxGrid1DBTableView1bank: TcxGridDBColumn
        DataBinding.FieldName = 'bank'
        Width = 100
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object qdata: TUniQuery
    Connection = tabel.server
    SQL.Strings = (
      'select * from v_konfirmasipembayaran')
    FilterOptions = [foCaseInsensitive]
    Left = 276
    Top = 245
    object qdatatanggal: TDateField
      FieldName = 'tanggal'
      Required = True
      DisplayFormat = 'dd-mm-yyyy'
    end
    object qdatano_pengeluaran: TStringField
      FieldName = 'no_pengeluaran'
      Required = True
      Size = 25
    end
    object qdatanama: TStringField
      FieldName = 'nama'
      Required = True
      Size = 100
    end
    object qdatatagihan: TFloatField
      FieldName = 'tagihan'
      Required = True
      DisplayFormat = '#,#0.;(#,#0.);#,#0'
    end
    object qdataongkir: TFloatField
      FieldName = 'ongkir'
      Required = True
      DisplayFormat = '#,#0.;(#,#0.);#,#0'
    end
    object qdatakatalog: TFloatField
      FieldName = 'katalog'
      Required = True
      DisplayFormat = '#,#0.;(#,#0.);#,#0'
    end
    object qdatadiskon: TFloatField
      FieldName = 'diskon'
      Required = True
      DisplayFormat = '#,#0.;(#,#0.);#,#0'
    end
    object qdatatotaltagihan: TFloatField
      FieldName = 'totaltagihan'
      Required = True
      DisplayFormat = '#,#0.;(#,#0.);#,#0'
    end
    object qdatatgl_transfer: TDateField
      FieldName = 'tgl_transfer'
      DisplayFormat = 'dd-mm-yyyy'
    end
    object qdataatas_nama: TStringField
      FieldName = 'atas_nama'
      Size = 150
    end
    object qdatajumlah_uang: TFloatField
      FieldName = 'jumlah_uang'
      DisplayFormat = '#,#0.;(#,#0.);#,#0'
    end
    object qdatabank: TStringField
      FieldName = 'bank'
      Size = 100
    end
    object qdatacatatan: TMemoField
      FieldName = 'catatan'
      Required = True
      BlobType = ftMemo
    end
  end
  object dsqdata: TUniDataSource
    DataSet = qdata
    Left = 380
    Top = 235
  end
end
