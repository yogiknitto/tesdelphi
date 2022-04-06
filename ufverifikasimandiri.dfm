object fverifikasimandiri: Tfverifikasimandiri
  Left = 0
  Top = 0
  ClientHeight = 503
  ClientWidth = 1100
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1097
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
      Left = 440
      Top = 8
      Width = 178
      Height = 23
      Caption = 'PROSES VERIFIKASI '
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 42
    Width = 1097
    Height = 399
    TabOrder = 1
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
      OptionsData.Inserting = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      object cxGrid1DBTableView1id_transaksi: TcxGridDBColumn
        DataBinding.FieldName = 'id_transaksi'
        Options.Editing = False
      end
      object cxGrid1DBTableView1tanggal: TcxGridDBColumn
        DataBinding.FieldName = 'tanggal'
        Options.Editing = False
      end
      object cxGrid1DBTableView1keterangan: TcxGridDBColumn
        DataBinding.FieldName = 'keterangan'
        Options.Editing = False
        Width = 400
      end
      object cxGrid1DBTableView1mutasi: TcxGridDBColumn
        DataBinding.FieldName = 'mutasi'
        Options.Editing = False
        Width = 60
      end
      object cxGrid1DBTableView1jumlah: TcxGridDBColumn
        DataBinding.FieldName = 'jumlah'
        Options.Editing = False
      end
      object cxGrid1DBTableView1no_rekening: TcxGridDBColumn
        DataBinding.FieldName = 'no_rekening'
        Options.Editing = False
        Width = 100
      end
      object cxGrid1DBTableView1bank: TcxGridDBColumn
        DataBinding.FieldName = 'bank'
        Options.Editing = False
        Width = 100
      end
      object cxGrid1DBTableView1sts: TcxGridDBColumn
        DataBinding.FieldName = 'sts'
        Options.Editing = False
        Width = 100
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        DataBinding.FieldName = 'stssama'
        Options.Editing = False
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        DataBinding.FieldName = 'pilihan'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taRightJustify
        Properties.DisplayUnchecked = 'false'
        Properties.ImmediatePost = True
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        VisibleForEditForm = bFalse
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 442
    Width = 1097
    Height = 59
    Color = clHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    object Label2: TLabel
      Left = 154
      Top = 14
      Width = 182
      Height = 23
      Caption = 'Inputkan Saldo Akhir '
    end
    object Label3: TLabel
      Left = 498
      Top = 14
      Width = 6
      Height = 23
      Caption = ','
    end
    object Button1: TButton
      Left = 8
      Top = 8
      Width = 145
      Height = 33
      Caption = 'Hapus transaksi'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 339
      Top = 11
      Width = 158
      Height = 31
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyPress = Edit1KeyPress
      OnKeyUp = Edit1KeyUp
    end
    object Button2: TButton
      Left = 570
      Top = 10
      Width = 145
      Height = 33
      Caption = 'Verifikasi'
      TabOrder = 2
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 992
      Top = 10
      Width = 99
      Height = 33
      Caption = 'Keluar'
      TabOrder = 3
      OnClick = Button3Click
    end
    object Edit2: TEdit
      Left = 506
      Top = 11
      Width = 56
      Height = 31
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnKeyPress = Edit2KeyPress
    end
  end
  object qdata: TUniQuery
    Connection = tabel.server
    SQL.Strings = (
      
        'SELECT id_transaksi,tanggal,sesi,kb.keterangan,cabang,mutasi,kb.' +
        'jumlah,saldo_akhir,no_rekening,bank,atas_nama,'#39'BATCH'#39' AS sts,'
      'IFNULL(kn.jumlah,0) AS stssama,0 as pilihan'
      'FROM kas_bank_batch kb JOIN kas_bank USING(kode_kas)'
      'LEFT JOIN (SELECT jumlah'
      
        'FROM kas_bank_import kb JOIN kas_bank USING(kode_kas) WHERE kode' +
        '_kas='#39'7'#39' '
      
        'AND tanggal=(SELECT MIN(tanggal) FROM kas_bank_batch WHERE kode_' +
        'kas=7)) AS kn ON kn.jumlah=kb.jumlah'
      ' WHERE kode_kas='#39'7'#39
      'UNION'
      
        'SELECT id_transaksi,tanggal,sesi,kb.keterangan,cabang,mutasi,jum' +
        'lah,saldo_akhir,no_rekening,bank,atas_nama,'#39'FIX'#39' AS sts,'
      '0 AS stssama,0 as pilihan'
      
        'FROM kas_bank_import kb JOIN kas_bank USING(kode_kas) WHERE kode' +
        '_kas='#39'7'#39' '
      
        'AND tanggal=(SELECT MIN(tanggal) FROM kas_bank_batch WHERE kode_' +
        'kas=7)')
    Left = 464
    Top = 168
    object qdataid_transaksi: TIntegerField
      FieldName = 'id_transaksi'
      ReadOnly = True
      Required = True
    end
    object qdatasesi: TIntegerField
      FieldName = 'sesi'
      ReadOnly = True
      Required = True
    end
    object qdataketerangan: TStringField
      FieldName = 'keterangan'
      ReadOnly = True
      Required = True
      Size = 250
    end
    object qdatacabang: TStringField
      FieldName = 'cabang'
      ReadOnly = True
      Required = True
      Size = 250
    end
    object qdatamutasi: TStringField
      FieldName = 'mutasi'
      ReadOnly = True
      Required = True
      Size = 250
    end
    object qdatajumlah: TFloatField
      FieldName = 'jumlah'
      ReadOnly = True
      Required = True
      DisplayFormat = ',0.00'
    end
    object qdatasaldo_akhir: TFloatField
      FieldName = 'saldo_akhir'
      ReadOnly = True
      Required = True
      DisplayFormat = ',0.00'
    end
    object qdatano_rekening: TStringField
      FieldName = 'no_rekening'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object qdatabank: TStringField
      FieldName = 'bank'
      ReadOnly = True
      Required = True
      Size = 25
    end
    object qdataatas_nama: TStringField
      FieldName = 'atas_nama'
      ReadOnly = True
      Size = 100
    end
    object qdatasts: TStringField
      FieldName = 'sts'
      ReadOnly = True
      Required = True
      Size = 5
    end
    object qdatastssama: TFloatField
      FieldName = 'stssama'
      ReadOnly = True
      Required = True
    end
    object qdatapilihan: TLargeintField
      FieldName = 'pilihan'
      Required = True
    end
    object qdatatanggal: TDateTimeField
      FieldName = 'tanggal'
      ReadOnly = True
      Required = True
    end
  end
  object dsqdata: TUniDataSource
    DataSet = qdata
    Left = 584
    Top = 168
  end
end
