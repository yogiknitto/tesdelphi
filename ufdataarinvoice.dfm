object fdataarinvoice: Tfdataarinvoice
  Left = 0
  Top = 0
  Caption = 'fdataarinvoice'
  ClientHeight = 418
  ClientWidth = 790
  Color = clWhite
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
    Width = 790
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Caption = 'A/R Invoices'
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
    Width = 790
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 574
      Top = 11
      Width = 37
      Height = 22
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
      Left = 472
      Top = 11
      Width = 96
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
      Left = 617
      Top = 11
      Width = 81
      Height = 22
      Caption = 'Import'
      TabOrder = 1
      OnClick = cxButton2Click
    end
    object cxButton1: TcxButton
      Left = 704
      Top = 11
      Width = 81
      Height = 22
      Caption = 'Refresh'
      TabOrder = 2
      OnClick = cxButton1Click
    end
    object ComboBox6: TComboBox
      Left = 50
      Top = 11
      Width = 120
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
      Left = 176
      Top = 11
      Width = 120
      Height = 22
      Style = csOwnerDrawFixed
      TabOrder = 4
      OnDropDown = ComboBox5DropDown
    end
    object Button1: TButton
      Left = 302
      Top = 11
      Width = 75
      Height = 22
      Caption = 'Cek Data'
      TabOrder = 5
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 383
      Top = 11
      Width = 75
      Height = 22
      Caption = 'Perbaiki Data'
      TabOrder = 6
      OnClick = Button2Click
    end
  end
  object cxGrid1: TcxGrid
    AlignWithMargins = True
    Left = 5
    Top = 84
    Width = 780
    Height = 331
    Margins.Left = 5
    Margins.Right = 5
    Align = alClient
    TabOrder = 2
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsdata
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,#0.;(#,#0.);#,#0'
          Kind = skSum
          Column = cxGrid1DBTableView1nominalsap
        end
        item
          Format = '#,#0.;(#,#0.);#,#0'
          Kind = skSum
          Column = cxGrid1DBTableView1nominalknitto
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
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1no_pengeluaran: TcxGridDBColumn
        Caption = 'No Penjualan'
        DataBinding.FieldName = 'no_pengeluaran'
        Width = 91
      end
      object cxGrid1DBTableView1no_order: TcxGridDBColumn
        Caption = 'No Order'
        DataBinding.FieldName = 'no_order'
        Width = 89
      end
      object cxGrid1DBTableView1ref_no: TcxGridDBColumn
        Caption = 'Ref No'
        DataBinding.FieldName = 'ref_no'
        Width = 234
      end
      object cxGrid1DBTableView1nominalknitto: TcxGridDBColumn
        Caption = 'Nominal Knitto'
        DataBinding.FieldName = 'nominalknitto'
        Width = 112
      end
      object cxGrid1DBTableView1nominalsap: TcxGridDBColumn
        Caption = 'Nominal SAP'
        DataBinding.FieldName = 'nominalsap'
        Width = 120
      end
      object cxGrid1DBTableView1selisih: TcxGridDBColumn
        Caption = 'Selisih'
        DataBinding.FieldName = 'selisih'
        Width = 115
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object op: TOpenDialog
    Left = 688
    Top = 176
  end
  object qdata: TUniQuery
    Connection = tabel.server
    SQL.Strings = (
      
        'select pk.`no_pengeluaran`,ro.`no_order`,ifnull(sd.`ref_no`,'#39'-'#39')' +
        ' as ref_no,'
      
        '((ntk.`tagihan_kain` / (apk.ppn + 1)) + (ntk.`katalog` / (apk.pp' +
        'n + 1))) as nominalknitto,'
      
        'ifnull(asa.`nominal`,0) as nominalsap,((ntk.`tagihan_kain` / (ap' +
        'k.ppn + 1)) + (ntk.`katalog` / (apk.ppn + 1))) - ifnull(asa.`nom' +
        'inal`,0) as selisih'
      'from `penjualan_kainstok` pk'
      
        'join `relasi_orderdanpenjualan` ro on ro.`no_penjualan`=pk.`no_p' +
        'engeluaran`'
      'join `n_temp_kasir` ntk on ntk.`no_order`=ro.`no_order`'
      'join `a_ppn_kasir` apk on ntk.`no_order`=apk.`no_order`'
      
        'left join `sinkronisasi_data` sd on sd.`no_transaksi`=pk.`no_pen' +
        'geluaran`'
      'left join `a_sap_arinvoice` asa on asa.`ref_no`=sd.`ref_no`'
      'where year(pk.`tanggal`) = 2021 and month(pk.`tanggal`) = 12'
      'group by pk.`no_pengeluaran`'
      'union'
      
        'SELECT spk.`no_penjualan` AS `no_pengeluaran`,spk.`no_penjualan`' +
        ' AS `no_order`,IFNULL(sd.`ref_no`,'#39'-'#39') AS ref_no,'
      '(ntk.`tagihan_kain` / (apk.ppn + 1)) AS nominalknitto,'
      
        'ifnull(asa.`nominal`,0) AS nominalsap,(ntk.`tagihan_kain` / (apk' +
        '.ppn + 1)) - ifnull(asa.`nominal`,0) AS selisih'
      'FROM `s_penjualan_katalog` spk'
      'JOIN `n_temp_kasir` ntk ON ntk.`no_order`=spk.`no_penjualan`'
      'JOIN `a_ppn_kasir` apk ON apk.`no_order`=ntk.`no_order`'
      
        'LEFT JOIN `sinkronisasi_data` sd ON sd.`no_transaksi`=spk.`no_pe' +
        'njualan`'
      'LEFT JOIN `a_sap_arinvoice` asa ON asa.`ref_no`=sd.`ref_no`'
      'WHERE YEAR(spk.`tanggal`) = 2021 AND MONTH(spk.`tanggal`) = 12'
      'GROUP BY spk.`no_penjualan`'
      'union'
      
        'SELECT pk.`no_pengeluaran` AS `no_pengeluaran`,pk.`no_pengeluara' +
        'n` AS `no_order`,IFNULL(sd.`ref_no`,'#39'-'#39') AS ref_no,'
      'dp.nominal AS nominalknitto,'
      
        'ifnull(asa.`nominal`,0) AS nominalsap,dp.nominal - ifnull(asa.`n' +
        'ominal`,0) AS selisih'
      'FROM `pengeluaran_kain` pk'
      
        'JOIN (SELECT dp.`no_pengeluaran`,SUM(dpp.`dpptotal_jual`) AS nom' +
        'inal FROM detail_pengeluarankain dp'
      'JOIN `dpp_pengeluarankain` dpp ON dpp.`id`=dp.`no_detail`'
      
        'GROUP BY dp.`no_pengeluaran`) dp ON pk.no_pengeluaran=dp.no_peng' +
        'eluaran'
      
        'LEFT JOIN `sinkronisasi_data` sd ON sd.`no_transaksi`=pk.`no_pen' +
        'geluaran`'
      'LEFT JOIN `a_sap_arinvoice` asa ON asa.`ref_no`=sd.`ref_no`'
      
        'WHERE YEAR(pk.tanggal_kirim) = 2021 AND MONTH(pk.tanggal_kirim) ' +
        '= 12'
      'GROUP BY pk.`no_pengeluaran`'
      'union'
      
        'SELECT pk.`no_pengeluaran` AS `no_pengeluaran`,pk.`no_pengeluara' +
        'n` AS `no_order`,IFNULL(sd.`ref_no`,'#39'-'#39') AS ref_no,'
      'dp.nominal AS nominalknitto,'
      
        'ifnull(asa.`nominal`,0) AS nominalsap,dp.nominal - ifnull(asa.`n' +
        'ominal`,0) AS selisih'
      'FROM `penjualan_kainstok` pk'
      
        'JOIN (SELECT dp.`no_pengeluaran`,SUM(dpp.`dpptotal_jual`) AS nom' +
        'inal FROM detail_pengeluaranstok dp'
      'JOIN `dpp_pengeluaranstok` dpp ON dpp.`id`=dp.`no_detail`'
      
        'GROUP BY dp.`no_pengeluaran`) dp ON pk.no_pengeluaran=dp.no_peng' +
        'eluaran'
      
        'LEFT JOIN `sinkronisasi_data` sd ON sd.`no_transaksi`=pk.`no_pen' +
        'geluaran`'
      'LEFT JOIN `a_sap_arinvoice` asa ON asa.`ref_no`=sd.`ref_no`'
      
        'WHERE YEAR(pk.tanggal) = 2021 AND MONTH(pk.tanggal) = 12 and pk.' +
        'penjualan_melalui='#39'PENJUALAN BS SEGEL'#39
      'GROUP BY pk.`no_pengeluaran`')
    Left = 248
    Top = 200
    object qdatano_pengeluaran: TStringField
      FieldName = 'no_pengeluaran'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object qdatano_order: TStringField
      FieldName = 'no_order'
      ReadOnly = True
      Size = 100
    end
    object qdataref_no: TStringField
      FieldName = 'ref_no'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object qdatanominalknitto: TFloatField
      FieldName = 'nominalknitto'
      ReadOnly = True
      DisplayFormat = '#,#0.;(#,#0.);#,#0'
    end
    object qdatanominalsap: TFloatField
      FieldName = 'nominalsap'
      ReadOnly = True
      DisplayFormat = '#,#0.;(#,#0.);#,#0'
    end
    object qdataselisih: TFloatField
      FieldName = 'selisih'
      ReadOnly = True
      DisplayFormat = '#,#0.;(#,#0.);#,#0'
    end
  end
  object dsdata: TUniDataSource
    DataSet = qdata
    Left = 376
    Top = 200
  end
end
