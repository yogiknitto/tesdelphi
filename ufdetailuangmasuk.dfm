object fdetailuangmasuk: Tfdetailuangmasuk
  Left = 0
  Top = 0
  Caption = 'fdetailuangmasuk'
  ClientHeight = 470
  ClientWidth = 897
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 54
    Height = 13
    Caption = 'Data Knitto'
  end
  object Label2: TLabel
    Left = 442
    Top = 17
    Width = 44
    Height = 13
    Caption = 'Data Sap'
  end
  object cxGrid1: TcxGrid
    Left = 8
    Top = 40
    Width = 417
    Height = 249
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      OnCellDblClick = cxGrid1DBTableView1CellDblClick
      DataController.DataSource = dsqdata
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      object cxGrid1DBTableView1tanggal: TcxGridDBColumn
        DataBinding.FieldName = 'tanggal'
      end
      object cxGrid1DBTableView1customer_code_sap: TcxGridDBColumn
        DataBinding.FieldName = 'customer_code_sap'
        Width = 114
      end
      object cxGrid1DBTableView1nama: TcxGridDBColumn
        DataBinding.FieldName = 'nama'
        Width = 127
      end
      object cxGrid1DBTableView1jml: TcxGridDBColumn
        DataBinding.FieldName = 'jml'
        Width = 99
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxGrid2: TcxGrid
    Left = 440
    Top = 40
    Width = 449
    Height = 425
    TabOrder = 1
    object cxGridDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object cxGrid3: TcxGrid
    Left = 8
    Top = 295
    Width = 417
    Height = 170
    TabOrder = 2
    object cxGridDBTableView2: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsq3
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      object cxGridDBTableView2urutan: TcxGridDBColumn
        DataBinding.FieldName = 'urutan'
        Width = 45
      end
      object cxGridDBTableView2no_transaksi: TcxGridDBColumn
        DataBinding.FieldName = 'no_transaksi'
        Width = 70
      end
      object cxGridDBTableView2ref_no: TcxGridDBColumn
        DataBinding.FieldName = 'ref_no'
        Width = 126
      end
      object cxGridDBTableView2status_sync: TcxGridDBColumn
        DataBinding.FieldName = 'status_sync'
        Width = 169
      end
    end
    object cxGridLevel2: TcxGridLevel
      GridView = cxGridDBTableView2
    end
  end
  object Button1: TButton
    Left = 344
    Top = 299
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 3
    OnClick = Button1Click
  end
  object qdata: TUniQuery
    Connection = tabel.server
    SQL.Strings = (
      
        'SELECT dk.no,DATE(dk.tanggal_transfer) AS tanggal,c.customer_cod' +
        'e_sap,c.`nama`,dk.jumlah_uang AS jml '
      'FROM `detail_konfirmasipembayaran` dk'
      'JOIN `uang_customer` uc ON uc.`id_konfirmasi`=dk.`no`'
      'JOIN customer c ON c.`id_customer`=uc.`id_customer`'
      
        'WHERE YEAR(dk.tanggal_transfer) = 2021 AND MONTH(dk.tanggal_tran' +
        'sfer) = 11 AND'
      '((LCASE(TRIM(SUBSTRING_INDEX(dk.bank, '#39'#'#39', -1))) = '#39'bca'#39') OR '
      '(LCASE(TRIM(SUBSTRING_INDEX(dk.bank, '#39'#'#39', -1))) = '#39'mandiri'#39') OR '
      '(LCASE(TRIM(SUBSTRING_INDEX(dk.bank, '#39'#'#39', -1))) = '#39'bri'#39'))')
    Left = 32
    object qdatatanggal: TDateField
      FieldName = 'tanggal'
      ReadOnly = True
    end
    object qdatacustomer_code_sap: TStringField
      FieldName = 'customer_code_sap'
      Size = 50
    end
    object qdatanama: TStringField
      FieldName = 'nama'
      Required = True
      Size = 100
    end
    object qdatajml: TFloatField
      FieldName = 'jml'
      ReadOnly = True
    end
    object qdatano: TIntegerField
      FieldName = 'no'
    end
  end
  object dsqdata: TUniDataSource
    DataSet = qdata
    Left = 112
  end
  object qdata2: TUniQuery
    Connection = tabel.server
    SQL.Strings = (
      'SELECT tanggal,customer_code_sap,nama,nominal AS jml '
      
        'FROM `a_sap_arinvoice` WHERE sts='#39'INCOMING PAYMENT'#39' AND SUBSTR(c' +
        'ustomer_code_sap,1,1) = '#39'C'#39
      'AND YEAR(tanggal) = 2021 AND MONTH(tanggal) = 11')
    Left = 792
    Top = 48
    object qdata2tanggal: TDateField
      FieldName = 'tanggal'
    end
    object qdata2customer_code_sap: TStringField
      FieldName = 'customer_code_sap'
      Size = 250
    end
    object qdata2nama: TStringField
      FieldName = 'nama'
      Size = 250
    end
    object qdata2jml: TFloatField
      FieldName = 'jml'
    end
  end
  object dsqdata2: TUniDataSource
    DataSet = qdata2
    Left = 848
    Top = 48
  end
  object q3: TUniQuery
    Connection = tabel.server
    SQL.Strings = (
      
        'SELECT * FROM sinkronisasi_data JOIN sinkronisasi_progres USING(' +
        'urutan) WHERE tabel='#39'Konfirmasi_pembayaran'#39)
    Left = 8
    Top = 296
    object q3urutan: TIntegerField
      FieldName = 'urutan'
    end
    object q3id: TIntegerField
      FieldName = 'id'
    end
    object q3tabel: TStringField
      FieldName = 'tabel'
      Size = 250
    end
    object q3tanggal_input: TDateTimeField
      FieldName = 'tanggal_input'
    end
    object q3no_transaksi: TStringField
      FieldName = 'no_transaksi'
      Size = 100
    end
    object q3ref_no: TStringField
      FieldName = 'ref_no'
      Size = 100
    end
    object q3id_jenis: TStringField
      FieldName = 'id_jenis'
      ReadOnly = True
      Size = 200
    end
    object q3status_sync: TStringField
      FieldName = 'status_sync'
      ReadOnly = True
      Size = 200
    end
    object q3jenis_transaksi: TStringField
      FieldName = 'jenis_transaksi'
      ReadOnly = True
      Size = 200
    end
    object q3updatedate: TDateField
      FieldName = 'updatedate'
      ReadOnly = True
    end
    object q3updatetime: TTimeField
      FieldName = 'updatetime'
      ReadOnly = True
    end
  end
  object dsq3: TUniDataSource
    DataSet = q3
    Left = 72
    Top = 264
  end
end
