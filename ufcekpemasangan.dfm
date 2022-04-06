object fcekpemasangan: Tfcekpemasangan
  Left = 0
  Top = 0
  ClientHeight = 661
  ClientWidth = 1184
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1184
    Height = 41
    Align = alTop
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
      Left = 1
      Top = 1
      Width = 1182
      Height = 39
      Align = alClient
      Alignment = taCenter
      Caption = 'CEK VERIFIKASI PEMBAYARAN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      ExplicitWidth = 259
      ExplicitHeight = 23
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 620
    Width = 1184
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
      Left = 406
      Top = 5
      Width = 121
      Height = 30
      Caption = 'Verifikasi'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 109
    Width = 684
    Height = 511
    Align = alClient
    TabOrder = 2
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'MoneyTwins'
    ExplicitWidth = 1184
    ExplicitHeight = 307
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
      DataController.DataSource = dsqdata
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
      OptionsView.HeaderAutoHeight = True
      object cxGrid1DBTableView1STATUS: TcxGridDBColumn
        DataBinding.FieldName = 'STATUS'
        Visible = False
      end
      object cxGrid1DBTableView1tanggal: TcxGridDBColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'tanggal'
        Width = 110
      end
      object cxGrid1DBTableView1keterangan: TcxGridDBColumn
        Caption = 'Keterangan'
        DataBinding.FieldName = 'keterangan'
        Width = 308
      end
      object cxGrid1DBTableView1nama: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'nama'
        Width = 161
      end
      object cxGrid1DBTableView1jumlah: TcxGridDBColumn
        Caption = 'Jumlah'
        DataBinding.FieldName = 'jumlah'
        Width = 103
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Panel3: TPanel
    Left = 684
    Top = 109
    Width = 500
    Height = 511
    Align = alRight
    TabOrder = 3
    object rImageZoom1: TrImageZoom
      Left = 1
      Top = 1
      Width = 498
      Height = 509
      Align = alClient
      DragCursor = crSizeAll
      PopupMenu = rImageZoom1._ImagePopup
      DoubleBuffered = True
      ParentDoubleBuffered = False
      UseFocus = True
      SaveInJPG = False
      ExplicitLeft = 862
      ExplicitWidth = 321
      ExplicitHeight = 202
    end
  end
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 44
    Width = 1178
    Height = 62
    Align = alTop
    Caption = 'Filter'
    TabOrder = 4
    object Label68: TLabel
      Left = 1013
      Top = 11
      Width = 23
      Height = 13
      Caption = 'Ket :'
    end
    object Label69: TLabel
      Left = 1073
      Top = 12
      Width = 28
      Height = 13
      Caption = 'Tepat'
    end
    object Label4: TLabel
      Left = 1073
      Top = 31
      Width = 70
      Height = 13
      Caption = 'Mungkin Tepat'
    end
    object tgl1: TDateTimePicker
      Left = 9
      Top = 23
      Width = 129
      Height = 21
      Date = 43711.412770729170000000
      Format = 'dd MMM yyyy'
      Time = 43711.412770729170000000
      TabOrder = 0
    end
    object Button4: TButton
      Left = 144
      Top = 16
      Width = 86
      Height = 35
      Caption = 'Tampilkan'
      TabOrder = 1
      OnClick = Button4Click
    end
    object Panel14: TPanel
      Left = 1042
      Top = 11
      Width = 25
      Height = 17
      Color = clLime
      ParentBackground = False
      TabOrder = 2
    end
    object Panel8: TPanel
      Left = 1042
      Top = 30
      Width = 25
      Height = 17
      Color = clYellow
      ParentBackground = False
      TabOrder = 3
    end
  end
  object qdata: TUniQuery
    Connection = tabel.server
    SQL.Strings = (
      
        'SELECT ks.id_transaksi,yr.no,ks.tanggal,ks.keterangan,ks.cabang,' +
        'ks.jumlah,IFNULL(c.nama,IFNULL(c2.nama,IFNULL(yp.keterangan,'#39'-'#39')' +
        ')) AS nama,ks.saldo_akhir,mutasi,'
      
        'IF(mutasi='#39'CR'#39',ks.jumlah,0) AS kredit,IF(mutasi='#39'DB'#39',ks.jumlah,0' +
        ') AS debet,d.no AS nodetailkonfirmasi,ks.id_transaksi AS noreken' +
        'ing ,'
      'IFNULL(nt.status, '#39#39') AS STATUS'
      
        '    FROM kas_bank_import ks LEFT JOIN y_relasi_konfirmasidanmuta' +
        'si yr ON id_transaksi=id_mutasi                      '
      
        '    LEFT JOIN detail_konfirmasipembayaran d ON id_konfirmasi=d.n' +
        'o LEFT JOIN order_pembelian op USING(no_order)     '
      '    LEFT JOIN customer c USING(id_customer)  '
      
        '    LEFT JOIN s_penjualan_katalog sp ON sp.no_penjualan=d.`no_or' +
        'der`'
      '    LEFT JOIN customer c2 ON c2.id_customer=sp.id_customer'
      
        '    LEFT JOIN y_pemasanganmanual yp ON yp.id_rekeningkoran=ks.id' +
        '_transaksi'
      
        'LEFT JOIN n_status_pemasangan nt ON nt.no_kasbank=yr.id_mutasi A' +
        'ND nt.id_konfirmasi=yr.`id_konfirmasi`'
      'GROUP BY yr.id_mutasi,yr.`id_konfirmasi`'
      'limit 2')
    AfterScroll = qdataAfterScroll
    Left = 472
    Top = 264
    object qdataid_transaksi: TIntegerField
      FieldName = 'id_transaksi'
    end
    object qdatano: TIntegerField
      FieldName = 'no'
      ReadOnly = True
    end
    object qdatatanggal: TDateField
      FieldName = 'tanggal'
      Required = True
      DisplayFormat = 'dd-mm-yyyy'
    end
    object qdataketerangan: TStringField
      FieldName = 'keterangan'
      Required = True
      Size = 250
    end
    object qdatacabang: TStringField
      FieldName = 'cabang'
      Required = True
      Size = 250
    end
    object qdatajumlah: TFloatField
      FieldName = 'jumlah'
      Required = True
      DisplayFormat = '0,0.00'
    end
    object qdatanama: TStringField
      FieldName = 'nama'
      ReadOnly = True
      Required = True
      Size = 200
    end
    object qdatasaldo_akhir: TFloatField
      FieldName = 'saldo_akhir'
      Required = True
    end
    object qdatamutasi: TStringField
      FieldName = 'mutasi'
      Required = True
      Size = 250
    end
    object qdatakredit: TFloatField
      FieldName = 'kredit'
      ReadOnly = True
      Required = True
    end
    object qdatadebet: TFloatField
      FieldName = 'debet'
      ReadOnly = True
      Required = True
    end
    object qdatanodetailkonfirmasi: TIntegerField
      FieldName = 'nodetailkonfirmasi'
      ReadOnly = True
    end
    object qdatanorekening: TIntegerField
      FieldName = 'norekening'
    end
    object qdataSTATUS: TStringField
      FieldName = 'STATUS'
      ReadOnly = True
      Required = True
      Size = 255
    end
  end
  object dsqdata: TUniDataSource
    DataSet = qdata
    Left = 536
    Top = 240
  end
end
