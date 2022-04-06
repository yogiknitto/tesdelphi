object fdatahapuskonfirmasi: Tfdatahapuskonfirmasi
  Left = 0
  Top = 0
  ClientHeight = 488
  ClientWidth = 941
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClick = FormClick
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 941
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
    ExplicitLeft = -2
    ExplicitWidth = 942
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 939
      Height = 39
      Align = alClient
      Alignment = taCenter
      Caption = 'DATA HAPUS KONFIRMASI PEMBAYARAN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      ExplicitWidth = 347
      ExplicitHeight = 23
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 447
    Width = 941
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
    ExplicitLeft = -2
    ExplicitTop = 382
    ExplicitWidth = 942
    object Button1: TButton
      Left = 352
      Top = 6
      Width = 249
      Height = 30
      Caption = 'Batalkan Penghapusan'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 808
      Top = 5
      Width = 121
      Height = 30
      Caption = 'Keluar'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 41
    Width = 941
    Height = 406
    Align = alClient
    TabOrder = 2
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'MoneyTwins'
    ExplicitLeft = -2
    ExplicitWidth = 942
    ExplicitHeight = 341
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = tabel.qdshapuskonfirmasi
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
      object cxGrid1DBTableView1tanggal: TcxGridDBColumn
        DataBinding.FieldName = 'tanggal'
        Width = 91
      end
      object cxGrid1DBTableView1no_order: TcxGridDBColumn
        DataBinding.FieldName = 'no_order'
        Width = 97
      end
      object cxGrid1DBTableView1nama: TcxGridDBColumn
        DataBinding.FieldName = 'nama'
        Width = 152
      end
      object cxGrid1DBTableView1atas_nama: TcxGridDBColumn
        DataBinding.FieldName = 'atas_nama'
        Width = 210
      end
      object cxGrid1DBTableView1jumlah_uang: TcxGridDBColumn
        DataBinding.FieldName = 'jumlah_uang'
        Width = 83
      end
      object cxGrid1DBTableView1bank: TcxGridDBColumn
        DataBinding.FieldName = 'bank'
        Width = 219
      end
      object cxGrid1DBTableView1admin: TcxGridDBColumn
        DataBinding.FieldName = 'admin'
        Width = 87
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
end
