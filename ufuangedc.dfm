object fuangedc: Tfuangedc
  Left = 0
  Top = 0
  Caption = 'fuangedc'
  ClientHeight = 498
  ClientWidth = 1176
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
    Width = 1176
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Incoming Payment EDC'
    Color = clHotLight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 1176
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 573
      Top = 13
      Width = 37
      Height = 21
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000090000
        000E000000100000001000000010000000100000001000000011000000110000
        001100000011000000100000000B00000003000000000000000019427ACA245A
        A5FF255CA7FF255BA7FF245AA6FF2459A6FF2358A5FF2358A4FF2356A4FF2256
        A4FF2255A3FF2154A3FF2153A1FF1C468AE303080F2900000002255DA5FF316B
        AEFF6DA6D5FF86CAF0FF46A6E4FF44A3E4FF41A1E3FF3FA0E2FF3C9EE2FF3B9C
        E1FF389BE0FF369AE0FF3498DFFF2C77C1FF10284D8B000000082B68AEFF4984
        BEFF4B8BC5FFB2E3F8FF68BBECFF55B0E8FF52AEE8FF4EACE7FF4CA9E6FF49A8
        E5FF47A6E4FF44A4E4FF41A2E3FF3A92D6FF1C4885D50000000D2F6FB4FF6CA7
        D2FF3F87C4FFAED9F0FF9AD8F5FF66BDEEFF63BBEDFF60B9EBFF5DB6EBFF5BB5
        EAFF57B2EAFF55B0E9FF51AEE7FF4FABE7FF2D69B1FF040B142F3276B9FF8FC7
        E6FF509FD4FF86BCE0FFC5EFFCFF78CAF2FF74C8F1FF72C5F0FF6FC4F0FF6DC2
        EFFF69C0EEFF66BDEEFF63BBEDFF60B9EBFF448BC9FF122D4D81357CBCFFAFE3
        F5FF75C8EDFF59A2D4FFDDF7FDFFDFF8FEFFDDF7FEFFDBF7FEFFD8F5FEFFD4F4
        FDFFD0F2FDFFCCEFFCFFC7EDFBFFC1EBFBFF9ACBE9FF215187CB3882C1FFC7F5
        FEFF97E5FCFF64BAE5FF4D9FD3FF4D9DD2FF4B9BD1FF4A99CFFF4998CFFF4896
        CEFF4694CCFF4592CBFF3073B7FF3072B6FF2F71B5FF2A65A4EA3A88C5FFCDF7
        FEFFA6ECFEFF9CE8FDFF93E4FBFF8EE1FBFF89DFFBFF86DEFAFF81DAFAFF7ED8
        F9FF7BD7F9FF79D6F9FF2A6BB0FF000000140000000A000000073D8EC8FFD0F8
        FEFFAEF0FEFFAAEEFEFFA6EDFEFFA5EBFDFFBBF2FDFFD4F9FEFFD5F9FEFFD3F8
        FEFFD1F8FEFFCEF7FDFF3680BFFF0000000800000000000000003F92CBFFD3F9
        FEFFB6F3FEFFB3F1FDFFB0F1FEFFB8EDFAFF4895CBFF3B8CC6FF3B8AC6FF3A89
        C5FF3A88C5FF3A87C3FF2A6391C20000000500000000000000004197CEFFE2FC
        FEFFE2FCFEFFE1FCFEFFD4F3FAFF458FBFEC040A0E1B00000006000000060000
        000600000006000000060000000400000001000000000000000031739ABF429A
        D0FF4299D0FF4299D0FF4297CFFF153244590000000200000000000000000000
        0000000000000000000000000000000000000000000000000000000000020000
        0003000000030000000400000003000000020000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = SpeedButton1Click
    end
    object Label2: TLabel
      Left = 6
      Top = 14
      Width = 36
      Height = 13
      Caption = 'Periode'
    end
    object sEdit1: TsEdit
      Left = 475
      Top = 13
      Width = 88
      Height = 21
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 619
      Top = 13
      Width = 81
      Height = 21
      Caption = 'Import'
      TabOrder = 1
      OnClick = cxButton2Click
    end
    object cxButton1: TcxButton
      Left = 704
      Top = 13
      Width = 81
      Height = 21
      Caption = 'Refresh'
      TabOrder = 2
    end
    object ComboBox6: TComboBox
      Left = 50
      Top = 12
      Width = 145
      Height = 22
      Style = csOwnerDrawFixed
      TabOrder = 3
      Items.Strings = (
        'Januari'
        'Februari'
        'Maret'
        'April'
        'Mei'
        'Juni'
        'Juli'
        'Agustus'
        'September'
        'Oktober'
        'November'
        'Desember')
    end
    object ComboBox5: TComboBox
      Left = 202
      Top = 12
      Width = 145
      Height = 22
      Style = csOwnerDrawFixed
      TabOrder = 4
      OnDropDown = ComboBox5DropDown
    end
    object Button3: TButton
      Left = 353
      Top = 12
      Width = 75
      Height = 25
      Caption = 'Cek Data'
      TabOrder = 5
      OnClick = Button3Click
    end
  end
  object cxGrid1: TcxGrid
    AlignWithMargins = True
    Left = 0
    Top = 87
    Width = 563
    Height = 372
    Margins.Left = 5
    Margins.Right = 5
    TabOrder = 2
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsdata
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,#0.;(#,#0.);#,#0'
          Kind = skSum
          Column = cxGrid1DBTableView1jumlah
        end
        item
          Format = '#,#0.;(#,#0.);#,#0'
          Kind = skSum
          Column = cxGrid1DBTableView1nominalsap
        end
        item
          Format = '#,#0.;(#,#0.);#,#0'
          Kind = skSum
          Column = cxGrid1DBTableView1selisih
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.FooterAutoHeight = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1tanggal: TcxGridDBColumn
        DataBinding.FieldName = 'tanggal'
        Width = 64
      end
      object cxGrid1DBTableView1customer_code_sap: TcxGridDBColumn
        DataBinding.FieldName = 'customer_code_sap'
        Width = 77
      end
      object cxGrid1DBTableView1nama: TcxGridDBColumn
        DataBinding.FieldName = 'nama'
        Width = 83
      end
      object cxGrid1DBTableView1no_order: TcxGridDBColumn
        DataBinding.FieldName = 'no_order'
        Width = 58
      end
      object cxGrid1DBTableView1ref_no: TcxGridDBColumn
        DataBinding.FieldName = 'ref_no'
        Width = 57
      end
      object cxGrid1DBTableView1jumlah: TcxGridDBColumn
        DataBinding.FieldName = 'jumlah'
        Width = 60
      end
      object cxGrid1DBTableView1nominalsap: TcxGridDBColumn
        DataBinding.FieldName = 'nominalsap'
        Width = 69
      end
      object cxGrid1DBTableView1selisih: TcxGridDBColumn
        DataBinding.FieldName = 'selisih'
        Width = 93
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxGrid2: TcxGrid
    AlignWithMargins = True
    Left = 573
    Top = 86
    Width = 563
    Height = 405
    Margins.Left = 5
    Margins.Right = 5
    TabOrder = 3
    object cxGridDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsqdata2
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGridDBTableView1tanggal: TcxGridDBColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'tanggal'
        Width = 80
      end
      object cxGridDBTableView1customer_code_sap: TcxGridDBColumn
        Caption = 'Customer Code SAP'
        DataBinding.FieldName = 'customer_code_sap'
        Width = 113
      end
      object cxGridDBTableView1nama: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'nama'
        Width = 101
      end
      object cxGridDBTableView1jmlknitto: TcxGridDBColumn
        Caption = 'Nominal Knitto'
        DataBinding.FieldName = 'jmlknitto'
        Width = 88
      end
      object cxGridDBTableView1jmlsap: TcxGridDBColumn
        Caption = 'Nominal SAP'
        DataBinding.FieldName = 'jmlsap'
        Width = 92
      end
      object cxGridDBTableView1selisih: TcxGridDBColumn
        Caption = 'Selisih'
        DataBinding.FieldName = 'selisih'
        Width = 87
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object Button1: TButton
    Left = 128
    Top = 464
    Width = 116
    Height = 32
    Caption = 'Cek Data'
    TabOrder = 4
  end
  object Button2: TButton
    Left = 6
    Top = 464
    Width = 116
    Height = 32
    Caption = 'Perbaiki'
    TabOrder = 5
    OnClick = Button2Click
  end
  object op: TOpenDialog
    Left = 688
    Top = 176
  end
  object qdata: TUniQuery
    Connection = tabel.server
    SQL.Strings = (
      
        ' SELECT nt.no as nokasir,nt.tanggal,customer_code_sap,nama,no_or' +
        'der,sd.`ref_no`,nt.`jumlah`,IFNULL(ks.nominal,0) AS nominalsap,n' +
        't.`jumlah`-IFNULL(ks.nominal,0) AS selisih'
      
        '      FROM n_temp_kasirdetail nt LEFT JOIN sinkronisasi_data sd ' +
        'ON nt.no=sd.no_transaksi '
      '      LEFT JOIN `a_sap_arinvoice` ks ON ks.`ref_no`=sd.`ref_no`'
      
        '      WHERE jenis_pembayaran='#39'CASH'#39' AND SUBSTR(nt.tanggal,1,7)='#39 +
        '2021-12'#39' AND jumlah !=0')
    Left = 504
    Top = 152
    object qdatatanggal: TDateTimeField
      FieldName = 'tanggal'
    end
    object qdatacustomer_code_sap: TStringField
      FieldName = 'customer_code_sap'
      ReadOnly = True
      Size = 250
    end
    object qdatanama: TStringField
      FieldName = 'nama'
      ReadOnly = True
      Size = 250
    end
    object qdatano_order: TStringField
      FieldName = 'no_order'
      Size = 255
    end
    object qdataref_no: TStringField
      FieldName = 'ref_no'
      ReadOnly = True
      Size = 100
    end
    object qdatajumlah: TFloatField
      FieldName = 'jumlah'
    end
    object qdatanominalsap: TFloatField
      FieldName = 'nominalsap'
      ReadOnly = True
      Required = True
    end
    object qdataselisih: TFloatField
      FieldName = 'selisih'
      ReadOnly = True
    end
    object qdatanokasir: TIntegerField
      FieldName = 'nokasir'
    end
  end
  object dsdata: TUniDataSource
    DataSet = qdata
    Left = 472
    Top = 136
  end
  object qdata2: TUniQuery
    Connection = tabel.server
    SQL.Strings = (
      
        'SELECT ds.tanggal,ds.customer_code_sap,ds.nama,IFNULL(dt.jml,0) ' +
        'AS jmlknitto,'
      
        'IFNULL(ds.jml,0) AS jmlsap,(IFNULL(dt.jml,0) - IFNULL(ds.jml,0))' +
        ' AS selisih '
      
        'FROM (SELECT tanggal,customer_code_sap,nama,SUM(nominal) AS jml ' +
        '      '
      
        'FROM `a_sap_arinvoice`                                          ' +
        '    '
      
        'WHERE sts='#39'INCOMING PAYMENT'#39' AND SUBSTR(customer_code_sap,1,1) =' +
        ' '#39'C'#39' '
      
        'AND YEAR(tanggal) = 2021 AND MONTH(tanggal) = 11                ' +
        ' '
      
        'GROUP BY tanggal,customer_code_sap) ds                          ' +
        ' '
      
        'LEFT JOIN                                                       ' +
        '  '
      
        '(SELECT DATE(dk.tanggal_transfer) AS tanggal,c.customer_code_sap' +
        ',c.`nama`,SUM(dk.jumlah_uang) AS jml'
      'FROM `detail_konfirmasipembayaran` dk                    '
      'JOIN `uang_customer` uc ON uc.`id_konfirmasi`=dk.`no`      '
      'JOIN customer c ON c.`id_customer`=uc.`id_customer`          '
      
        'WHERE YEAR(dk.tanggal_transfer) = 2021 AND MONTH(dk.tanggal_tran' +
        'sfer) = 11'
      
        'AND ((LCASE(TRIM(SUBSTRING_INDEX(dk.bank, '#39'#'#39', -1))) = '#39'bca'#39') OR' +
        ' '
      '(LCASE(TRIM(SUBSTRING_INDEX(dk.bank, '#39'#'#39', -1))) = '#39'mandiri'#39') OR '
      '(LCASE(TRIM(SUBSTRING_INDEX(dk.bank, '#39'#'#39', -1))) = '#39'bri'#39'))     '
      'GROUP BY DATE(dk.tanggal_transfer),c.customer_code_sap) dt    '
      
        'ON dt.tanggal=ds.tanggal AND dt.customer_code_sap=ds.customer_co' +
        'de_sap '
      'WHERE dt.customer_code_sap IS NULL')
    Left = 735
    Top = 144
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
    object qdata2jmlknitto: TFloatField
      FieldName = 'jmlknitto'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,#0.;(#,#0.);#,#0'
    end
    object qdata2jmlsap: TFloatField
      FieldName = 'jmlsap'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,#0.;(#,#0.);#,#0'
    end
    object qdata2selisih: TFloatField
      FieldName = 'selisih'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,#0.;(#,#0.);#,#0'
    end
  end
  object dsqdata2: TUniDataSource
    DataSet = qdata2
    Left = 735
    Top = 152
  end
end
