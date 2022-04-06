object fdatapemasangan: Tfdatapemasangan
  Left = 0
  Top = 0
  Caption = 'fdatapemasangan'
  ClientHeight = 445
  ClientWidth = 790
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
    Width = 790
    Height = 445
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 788
      Height = 48
      Align = alTop
      Caption = 'Data Konfirmasi Belum Terpasangkan'
      Color = clHotLight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 49
      Width = 788
      Height = 395
      Align = alClient
      TabOrder = 1
      ExplicitHeight = 337
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
        DataController.DataSource = dsdata
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1no_order: TcxGridDBColumn
          Caption = 'No Order'
          DataBinding.FieldName = 'no_order'
          Width = 94
        end
        object cxGrid1DBTableView1atas_nama: TcxGridDBColumn
          Caption = 'Atas Nama'
          DataBinding.FieldName = 'atas_nama'
          Width = 114
        end
        object cxGrid1DBTableView1tanggal_transfer: TcxGridDBColumn
          Caption = 'Tanggal Transfer'
          DataBinding.FieldName = 'tanggal_transfer'
          Width = 135
        end
        object cxGrid1DBTableView1bank: TcxGridDBColumn
          Caption = 'Bank'
          DataBinding.FieldName = 'bank'
          Width = 287
        end
        object cxGrid1DBTableView1jumlah_uang: TcxGridDBColumn
          Caption = 'Jumlah Uang'
          DataBinding.FieldName = 'jumlah_uang'
          Width = 144
        end
        object cxGrid1DBTableView1menit: TcxGridDBColumn
          DataBinding.FieldName = 'menit'
          Visible = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object qdata: TUniQuery
    Connection = tabel.server
    SQL.Strings = (
      
        'SELECT atk.*,TIME_TO_SEC(TIMEDIFF(NOW(),atk.tanggal_transfer))/6' +
        '0 AS menit '
      
        'FROM `a_tempdetail_konfirmasipembayaran` atk WHERE status_verifi' +
        'kasi='#39'BELUM DI VERIFIKASI'#39)
    Left = 288
    Top = 32
    object qdatano: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'no'
    end
    object qdatano_order: TStringField
      FieldName = 'no_order'
      Size = 150
    end
    object qdataatas_nama: TStringField
      FieldName = 'atas_nama'
      Size = 200
    end
    object qdatabank: TStringField
      FieldName = 'bank'
      Size = 150
    end
    object qdatajumlah_uang: TFloatField
      FieldName = 'jumlah_uang'
      DisplayFormat = '#,#0.;(#,#0.);#,#0'
    end
    object qdatatanggal_transfer: TDateTimeField
      FieldName = 'tanggal_transfer'
    end
    object qdatastatus: TIntegerField
      FieldName = 'status'
    end
    object qdatakode_kas: TIntegerField
      FieldName = 'kode_kas'
    end
    object qdataid_karyawan: TIntegerField
      FieldName = 'id_karyawan'
    end
    object qdatano_konfirmasi: TIntegerField
      FieldName = 'no_konfirmasi'
    end
    object qdatastatus_verifikasi: TStringField
      FieldName = 'status_verifikasi'
      Size = 150
    end
    object qdatanominal: TFloatField
      FieldName = 'nominal'
    end
    object qdataketerangan: TStringField
      FieldName = 'keterangan'
      Size = 100
    end
    object qdatamenit: TFloatField
      FieldName = 'menit'
      ReadOnly = True
    end
  end
  object dsdata: TUniDataSource
    DataSet = qdata
    Left = 360
    Top = 32
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = Timer1Timer
    Left = 176
    Top = 32
  end
end
