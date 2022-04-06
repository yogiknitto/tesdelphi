object flepassalahtransfer: Tflepassalahtransfer
  Left = 0
  Top = 0
  Caption = 'flepassalahtransfer'
  ClientHeight = 465
  ClientWidth = 1120
  Color = clWhite
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
    Width = 1120
    Height = 41
    Align = alTop
    Caption = 'LEPAS PEMBAYARAN'
    Color = clHotLight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object Button1: TButton
      Left = 944
      Top = 3
      Width = 161
      Height = 36
      Caption = 'Refresh'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 1120
    Height = 424
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object cxGrid2: TcxGrid
      Left = 1
      Top = 1
      Width = 1118
      Height = 376
      Align = alTop
      TabOrder = 0
      object cxGridDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsdata
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGridDBColumn1: TcxGridDBColumn
          Caption = 'No Order'
          DataBinding.FieldName = 'no_order'
          Width = 100
        end
        object cxGridDBColumn2: TcxGridDBColumn
          Caption = 'Atas Nama'
          DataBinding.FieldName = 'atas_nama'
          Width = 212
        end
        object cxGridDBColumn3: TcxGridDBColumn
          Caption = 'Tanggal Transfer'
          DataBinding.FieldName = 'tanggal_transfer'
          Width = 204
        end
        object cxGridDBColumn4: TcxGridDBColumn
          Caption = 'Bank'
          DataBinding.FieldName = 'bank'
          Width = 236
        end
        object cxGridDBColumn5: TcxGridDBColumn
          Caption = 'Jumlah Uang'
          DataBinding.FieldName = 'jumlah_uang'
          Width = 158
        end
        object cxGridDBColumn6: TcxGridDBColumn
          DataBinding.FieldName = 'menit'
          Visible = False
        end
        object cxGridDBColumn7: TcxGridDBColumn
          Caption = 'Admin Input'
          DataBinding.FieldName = 'username'
          Width = 206
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
    object Button2: TButton
      Left = 1
      Top = 377
      Width = 1118
      Height = 46
      Align = alClient
      Caption = 'LEPAS PEMBAYARAN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
    object palasan: TPanel
      Left = 336
      Top = 58
      Width = 473
      Height = 217
      TabOrder = 2
      object Label2: TLabel
        Left = 24
        Top = 16
        Width = 91
        Height = 13
        Caption = 'Alasan Pembatalan'
      end
      object malasan: TMemo
        Left = 24
        Top = 35
        Width = 425
        Height = 119
        Lines.Strings = (
          'malasan')
        TabOrder = 0
      end
      object Button3: TButton
        Left = 231
        Top = 160
        Width = 218
        Height = 41
        Caption = 'Selesai'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 24
        Top = 160
        Width = 201
        Height = 41
        Caption = 'Tutup'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = Button4Click
      end
    end
  end
  object qdata: TUniQuery
    Connection = tabel.server
    SQL.Strings = (
      
        'SELECT atk.*,TIME_TO_SEC(TIMEDIFF(NOW(),atk.tanggal_transfer))/6' +
        '0 AS menit, u.username '
      
        'FROM `a_tempdetail_konfirmasipembayaran` atk join user u on atk.' +
        'id_karyawan=u.id_user WHERE status_verifikasi='#39'BELUM DI VERIFIKA' +
        'SI'#39)
    Left = 264
    Top = 160
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
    object qdatausername: TStringField
      FieldName = 'username'
      ReadOnly = True
      Required = True
      Size = 50
    end
  end
  object dsdata: TUniDataSource
    DataSet = qdata
    Left = 352
    Top = 120
  end
  object qcekkonfirmasi: TUniQuery
    Connection = tabel.server
    Left = 340
    Top = 181
  end
end
