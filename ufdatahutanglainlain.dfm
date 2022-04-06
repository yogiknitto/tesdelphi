object fdatahutanglainlain: Tfdatahutanglainlain
  Left = 503
  Top = 159
  ClientHeight = 466
  ClientWidth = 765
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 765
    Height = 41
    Align = alTop
    Caption = 'DATA HUTANG LAIN-LAIN'
    TabOrder = 0
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 41
    Width = 765
    Height = 384
    Align = alClient
    TabOrder = 1
    object cxGrid1DBTableView2: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
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
      object cxGrid1DBTableView2no_transaksi: TcxGridDBColumn
        DataBinding.FieldName = 'no_transaksi'
        Width = 100
      end
      object cxGrid1DBTableView2tanggal: TcxGridDBColumn
        DataBinding.FieldName = 'tanggal'
        Width = 80
      end
      object cxGrid1DBTableView2dari: TcxGridDBColumn
        DataBinding.FieldName = 'dari'
        Width = 100
      end
      object cxGrid1DBTableView2jumlah: TcxGridDBColumn
        DataBinding.FieldName = 'jumlah'
        Width = 100
      end
      object cxGrid1DBTableView2keterangan: TcxGridDBColumn
        DataBinding.FieldName = 'keterangan'
        Width = 300
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 425
    Width = 765
    Height = 41
    Align = alBottom
    TabOrder = 2
    object Button1: TButton
      Left = 334
      Top = 5
      Width = 122
      Height = 29
      Caption = 'Gunakan'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 14
      Top = 4
      Width = 122
      Height = 29
      Caption = 'Buka Kas Bank'
      TabOrder = 1
      Visible = False
      OnClick = Button2Click
    end
  end
  object qdata: TUniQuery
    Connection = tabel.server
    SQL.Strings = (
      
        'SELECT * FROM buku_besar  JOIN fix_reportongkir USING(no_transak' +
        'si)')
    Left = 248
    Top = 136
    object qdatano_transaksi: TStringField
      FieldName = 'no_transaksi'
      Required = True
      Size = 25
    end
    object qdatatanggal: TDateField
      FieldName = 'tanggal'
      Required = True
      DisplayFormat = 'dd MMM yyyy'
    end
    object qdatajenis: TStringField
      FieldName = 'jenis'
      Required = True
      Size = 25
    end
    object qdatadari: TStringField
      FieldName = 'dari'
      Required = True
      Size = 100
    end
    object qdatanocg: TStringField
      FieldName = 'nocg'
      Required = True
      Size = 50
    end
    object qdatabankcg: TStringField
      FieldName = 'bankcg'
      Required = True
      Size = 50
    end
    object qdatakode_kas: TIntegerField
      FieldName = 'kode_kas'
      Required = True
    end
    object qdatajumlah: TFloatField
      FieldName = 'jumlah'
      Required = True
    end
    object qdatakode_perkiraan: TIntegerField
      FieldName = 'kode_perkiraan'
      Required = True
    end
    object qdataketerangan: TStringField
      FieldName = 'keterangan'
      Required = True
      Size = 250
    end
    object qdatastatus: TIntegerField
      FieldName = 'status'
      Required = True
    end
    object qdatatanggal_cair: TDateField
      FieldName = 'tanggal_cair'
      Required = True
    end
    object qdatano_urut: TIntegerField
      FieldName = 'no_urut'
      Required = True
    end
    object qdataid: TIntegerField
      FieldName = 'id'
      ReadOnly = True
    end
    object qdatanama: TStringField
      FieldName = 'nama'
      ReadOnly = True
      Size = 200
    end
    object qdataid_customer: TIntegerField
      FieldName = 'id_customer'
      ReadOnly = True
    end
  end
  object dsqdata: TUniDataSource
    DataSet = qdata
    Left = 396
    Top = 119
  end
end
