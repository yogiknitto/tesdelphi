object fbiayaadmin: Tfbiayaadmin
  Left = 0
  Top = 0
  Caption = 'fbiayaadmin'
  ClientHeight = 558
  ClientWidth = 860
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
    Width = 860
    Height = 41
    Align = alTop
    Caption = 'BIAYA ADMIN'
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
  object Panel2: TPanel
    Left = 0
    Top = 196
    Width = 860
    Height = 362
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 858
      Height = 360
      Align = alClient
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = cxGrid1DBTableView1CellDblClick
        DataController.DataSource = dsdata
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1jenis: TcxGridDBColumn
          Caption = 'Jenis'
          DataBinding.FieldName = 'jenis'
          Width = 175
        end
        object cxGrid1DBTableView1biaya: TcxGridDBColumn
          Caption = 'Biaya'
          DataBinding.FieldName = 'biaya'
          Width = 147
        end
        object cxGrid1DBTableView1tipe: TcxGridDBColumn
          Caption = 'Tipe'
          DataBinding.FieldName = 'tipe'
          Width = 173
        end
        object cxGrid1DBTableView1tgl_efektif: TcxGridDBColumn
          Caption = 'Tanggal Efektif'
          DataBinding.FieldName = 'tgl_efektif'
          Width = 191
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 860
    Height = 155
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 31
      Top = 26
      Width = 35
      Height = 19
      Caption = 'Jenis'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 31
      Top = 67
      Width = 37
      Height = 19
      Caption = 'Biaya'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 328
      Top = 67
      Width = 16
      Height = 19
      Caption = '%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 391
      Top = 26
      Width = 31
      Height = 19
      Caption = 'Tipe'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 391
      Top = 68
      Width = 106
      Height = 19
      Caption = 'Tanggal Efektif'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 31
      Top = 100
      Width = 360
      Height = 41
      Caption = 'Simpan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object cbtipe: TcxComboBox
      Left = 513
      Top = 23
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'CC'
        'CASH'
        'DEBIT')
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      OnKeyPress = cbtipeKeyPress
      Width = 257
    end
    object dt1: TDateTimePicker
      Left = 513
      Top = 64
      Width = 159
      Height = 27
      Date = 43098.557621018520000000
      Format = 'dd-MMM-yyyy'
      Time = 43098.557621018520000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Edit1: TEdit
      Left = 678
      Top = 64
      Width = 43
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 2
      NumbersOnly = True
      ParentFont = False
      TabOrder = 3
      Text = '00'
    end
    object Edit2: TEdit
      Left = 727
      Top = 64
      Width = 43
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 2
      NumbersOnly = True
      ParentFont = False
      TabOrder = 4
      Text = '00'
    end
    object tbiaya: TEdit
      Left = 87
      Top = 64
      Width = 235
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnKeyDown = tbiayaKeyDown
    end
    object tjenis: TEdit
      Left = 87
      Top = 23
      Width = 257
      Height = 27
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnKeyPress = tjenisKeyPress
    end
    object Button2: TButton
      Left = 411
      Top = 99
      Width = 360
      Height = 41
      Caption = 'Batal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = Button2Click
    end
  end
  object qdata: TUniQuery
    Connection = tabel.server
    SQL.Strings = (
      'SELECT * FROM `biaya_admin` ORDER BY tgl_efektif DESC')
    Left = 619
    Top = 57
    object qdataid: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
    end
    object qdatajenis: TStringField
      FieldName = 'jenis'
      Size = 100
    end
    object qdatabiaya: TFloatField
      FieldName = 'biaya'
    end
    object qdatatipe: TStringField
      FieldName = 'tipe'
      Size = 100
    end
    object qdatatgl_efektif: TDateTimeField
      FieldName = 'tgl_efektif'
      DisplayFormat = 'dd-MMM-yyyy hh:mm:ss'
    end
  end
  object dsdata: TUniDataSource
    DataSet = qdata
    Left = 696
    Top = 74
  end
end
