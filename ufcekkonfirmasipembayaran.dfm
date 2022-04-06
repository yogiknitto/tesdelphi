object fcekkonfirmasipembayaran: Tfcekkonfirmasipembayaran
  Left = 0
  Top = 0
  ClientHeight = 423
  ClientWidth = 942
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 942
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
    ExplicitLeft = -62
    ExplicitTop = -1
    ExplicitWidth = 534
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 940
      Height = 39
      Align = alClient
      Alignment = taCenter
      Caption = 'EDIT TANGGAL KONFIRMASI PEMBAYARAN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      ExplicitWidth = 367
      ExplicitHeight = 23
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 382
    Width = 942
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
    ExplicitLeft = -62
    ExplicitTop = 201
    ExplicitWidth = 534
    object Button1: TButton
      Left = 406
      Top = 5
      Width = 121
      Height = 30
      Caption = 'Hapus'
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
    Width = 942
    Height = 341
    Align = alClient
    TabOrder = 2
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'MoneyTwins'
    ExplicitLeft = 48
    ExplicitTop = 57
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
      DataController.DataSource = tabel.dsqcekkonfirmasi
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
      object cxGrid1DBTableView1sts: TcxGridDBColumn
        DataBinding.FieldName = 'sts'
        Visible = False
      end
      object cxGrid1DBTableView1tanggal_transfer: TcxGridDBColumn
        DataBinding.FieldName = 'tanggal_transfer'
        Width = 92
      end
      object cxGrid1DBTableView1no_order: TcxGridDBColumn
        DataBinding.FieldName = 'no_order'
        Width = 131
      end
      object cxGrid1DBTableView1atas_nama: TcxGridDBColumn
        DataBinding.FieldName = 'atas_nama'
        Width = 295
      end
      object cxGrid1DBTableView1bank: TcxGridDBColumn
        DataBinding.FieldName = 'bank'
        Width = 256
      end
      object cxGrid1DBTableView1jumlah_uang: TcxGridDBColumn
        DataBinding.FieldName = 'jumlah_uang'
        Width = 149
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
end
