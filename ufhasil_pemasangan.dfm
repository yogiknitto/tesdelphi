object fhasil_pemasangan: Tfhasil_pemasangan
  Left = 0
  Top = 0
  Caption = 'fhasil_pemasangan'
  ClientHeight = 410
  ClientWidth = 443
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 443
    Height = 410
    Align = alClient
    Color = clHighlightText
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 248
    ExplicitTop = 80
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 183
      Height = 24
      Caption = 'HASIL PEMASANGAN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cxGrid1: TcxGrid
      Left = 16
      Top = 53
      Width = 409
      Height = 292
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = cxGrid1DBTableView1CellClick
        DataController.DataSource = Uhasilpasang
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        object cxGrid1DBTableView1id: TcxGridDBColumn
          DataBinding.FieldName = 'id'
          Visible = False
        end
        object cxGrid1DBTableView1no_transaksi: TcxGridDBColumn
          Caption = 'No Transaksi'
          DataBinding.FieldName = 'no_transaksi'
          Width = 150
        end
        object cxGrid1DBTableView1nama: TcxGridDBColumn
          Caption = 'Nama '
          DataBinding.FieldName = 'nama'
          Width = 250
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object Button1: TButton
      Left = 312
      Top = 360
      Width = 97
      Height = 33
      Caption = 'HAPUS'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 251
      Top = 16
      Width = 169
      Height = 24
      TabOrder = 2
      OnChange = Edit1Change
    end
  end
  object qhasilpasang: TUniQuery
    Connection = tabel.server
    SQL.Strings = (
      'select * from relasi_buku_besar')
    Active = True
    Left = 352
    Top = 192
    object qhasilpasangid: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
    end
    object qhasilpasangno_transaksi: TStringField
      FieldName = 'no_transaksi'
      Size = 100
    end
    object qhasilpasangnama: TStringField
      FieldName = 'nama'
      Size = 255
    end
  end
  object Uhasilpasang: TUniDataSource
    DataSet = qhasilpasang
    Left = 272
    Top = 192
  end
end
