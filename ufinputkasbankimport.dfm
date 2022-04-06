object finputkasbankimport: Tfinputkasbankimport
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'finputkasbankimport'
  ClientHeight = 575
  ClientWidth = 1064
  Color = clGradientInactiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 58
    Width = 37
    Height = 13
    Caption = 'Cabang'
  end
  object Label3: TLabel
    Left = 8
    Top = 122
    Width = 72
    Height = 13
    Caption = 'Kode Transaksi'
  end
  object Label4: TLabel
    Left = 8
    Top = 149
    Width = 33
    Height = 13
    Caption = 'Jumlah'
  end
  object Label5: TLabel
    Left = 8
    Top = 91
    Width = 31
    Height = 13
    Caption = 'Mutasi'
  end
  object Label6: TLabel
    Left = 8
    Top = 176
    Width = 53
    Height = 13
    Caption = 'Saldo Akhir'
  end
  object Label7: TLabel
    Left = 432
    Top = 55
    Width = 65
    Height = 13
    Caption = 'Keterangan 1'
  end
  object Label8: TLabel
    Left = 432
    Top = 142
    Width = 65
    Height = 13
    Caption = 'Keterangan 2'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1064
    Height = 49
    Align = alTop
    Caption = 'INPUT KAS BANK IMPORT'
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object tcabang: TEdit
    Left = 96
    Top = 55
    Width = 113
    Height = 21
    TabOrder = 1
    OnKeyPress = tcabangKeyPress
  end
  object tkodetran: TEdit
    Left = 96
    Top = 119
    Width = 185
    Height = 21
    TabOrder = 2
    OnKeyPress = tkodetranKeyPress
  end
  object tjumlah: TEdit
    Left = 96
    Top = 146
    Width = 185
    Height = 21
    TabOrder = 3
    OnKeyPress = tjumlahKeyPress
  end
  object tmutasi: TcxComboBox
    Left = 96
    Top = 88
    ParentShowHint = False
    Properties.Items.Strings = (
      'CR'
      'DB')
    ShowHint = False
    TabOrder = 4
    OnKeyPress = tmutasiKeyPress
    Width = 113
  end
  object cxGrid1: TcxGrid
    Left = 8
    Top = 240
    Width = 1041
    Height = 289
    TabOrder = 5
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      OnCellDblClick = cxGrid1DBTableView1CellDblClick
      DataController.DataSource = qdsdata
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
        Width = 90
      end
      object cxGrid1DBTableView1sesi: TcxGridDBColumn
        DataBinding.FieldName = 'sesi'
        Width = 40
      end
      object cxGrid1DBTableView1keterangan: TcxGridDBColumn
        DataBinding.FieldName = 'keterangan'
        Width = 250
      end
      object cxGrid1DBTableView1cabang: TcxGridDBColumn
        DataBinding.FieldName = 'cabang'
        Width = 50
      end
      object cxGrid1DBTableView1mutasi: TcxGridDBColumn
        DataBinding.FieldName = 'mutasi'
        Width = 50
      end
      object cxGrid1DBTableView1jumlah: TcxGridDBColumn
        DataBinding.FieldName = 'jumlah'
        Width = 100
      end
      object cxGrid1DBTableView1saldo_akhir: TcxGridDBColumn
        DataBinding.FieldName = 'saldo_akhir'
        Width = 100
      end
      object cxGrid1DBTableView1status_pakai: TcxGridDBColumn
        DataBinding.FieldName = 'status_pakai'
        Width = 150
      end
      object cxGrid1DBTableView1status_tanggal: TcxGridDBColumn
        DataBinding.FieldName = 'status_tanggal'
        Width = 100
      end
      object cxGrid1DBTableView1kode_transaction: TcxGridDBColumn
        DataBinding.FieldName = 'kode_transaction'
        Width = 100
      end
      object cxGrid1DBTableView1keterangan2: TcxGridDBColumn
        DataBinding.FieldName = 'keterangan2'
        Width = 250
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 535
    Width = 1064
    Height = 41
    TabOrder = 6
    object bsimpan: TButton
      Left = 96
      Top = 9
      Width = 81
      Height = 27
      Caption = 'Simpan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Bsimpan'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = bsimpanClick
    end
    object bhapus: TButton
      Left = 200
      Top = 9
      Width = 81
      Height = 27
      Caption = 'Hapus'
      TabOrder = 1
      OnClick = bhapusClick
    end
    object bbatal: TButton
      Left = 307
      Top = 9
      Width = 81
      Height = 27
      Caption = 'Batal'
      TabOrder = 2
      OnClick = bbatalClick
    end
    object Button4: TButton
      Left = 952
      Top = 8
      Width = 81
      Height = 27
      Caption = 'Keluar'
      TabOrder = 3
      OnClick = Button4Click
    end
  end
  object tsaldo: TEdit
    Left = 96
    Top = 173
    Width = 185
    Height = 21
    TabOrder = 7
    OnKeyPress = tsaldoKeyPress
  end
  object tket1: TcxMemo
    Left = 536
    Top = 55
    Lines.Strings = (
      'tket1')
    TabOrder = 8
    OnKeyPress = tket1KeyPress
    Height = 81
    Width = 289
  end
  object tket2: TcxMemo
    Left = 536
    Top = 142
    Lines.Strings = (
      'cxMemo1')
    TabOrder = 9
    OnKeyPress = tket2KeyPress
    Height = 81
    Width = 289
  end
  object qdata: TUniQuery
    Connection = tabel.server
    SQL.Strings = (
      'select * from kas_bank_import')
    Left = 300
    Top = 24
    object qdataid_transaksi: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id_transaksi'
    end
    object qdatatanggal: TDateField
      FieldName = 'tanggal'
      Required = True
      DisplayFormat = 'dd-MMM-yyyy'
    end
    object qdatasesi: TIntegerField
      FieldName = 'sesi'
      Required = True
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
    object qdatamutasi: TStringField
      FieldName = 'mutasi'
      Required = True
      Size = 250
    end
    object qdatajumlah: TFloatField
      FieldName = 'jumlah'
      Required = True
    end
    object qdatasaldo_akhir: TFloatField
      FieldName = 'saldo_akhir'
      Required = True
    end
    object qdatastatus_pakai: TStringField
      FieldName = 'status_pakai'
      Required = True
      Size = 100
    end
    object qdatastatus_tanggal: TStringField
      FieldName = 'status_tanggal'
      Size = 100
    end
    object qdatano_urut: TIntegerField
      FieldName = 'no_urut'
    end
    object qdatakode_kas: TIntegerField
      FieldName = 'kode_kas'
    end
    object qdatakode_transaction: TStringField
      FieldName = 'kode_transaction'
      Size = 100
    end
    object qdataketerangan2: TStringField
      FieldName = 'keterangan2'
      Size = 250
    end
  end
  object qdsdata: TUniDataSource
    DataSet = qdata
    Left = 356
    Top = 24
  end
end
