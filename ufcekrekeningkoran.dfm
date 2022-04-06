object fcekrekeningkoran: Tfcekrekeningkoran
  Left = 0
  Top = 0
  ClientHeight = 548
  ClientWidth = 950
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 950
    Height = 41
    Align = alTop
    Caption = 'DATA BELUM TERPASANGKAN > 1 HARI'
    Color = clHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitLeft = -584
    ExplicitWidth = 1184
  end
  object cxGrid6: TcxGrid
    Left = 0
    Top = 41
    Width = 950
    Height = 455
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 173
    ExplicitTop = 147
    ExplicitWidth = 512
    ExplicitHeight = 182
    object cxGridDBTableView4: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = fmenuutama.dsqcekrekkoranbefore
      DataController.Filter.Active = True
      DataController.Filter.AutoDataSetFilter = True
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
      object cxGridDBTableView4id_transaksi: TcxGridDBColumn
        Caption = 'ID Transaksi'
        DataBinding.FieldName = 'id_transaksi'
        Width = 73
      end
      object cxGridDBTableView4tanggal: TcxGridDBColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'tanggal'
        Width = 99
      end
      object cxGridDBTableView4sisa: TcxGridDBColumn
        Caption = 'Jumlah Uang'
        DataBinding.FieldName = 'sisa'
        Width = 110
      end
      object cxGridDBTableView4bank: TcxGridDBColumn
        Caption = 'Bank'
        DataBinding.FieldName = 'bank'
        Width = 54
      end
      object cxGridDBTableView4no_rekening: TcxGridDBColumn
        Caption = 'Rekening'
        DataBinding.FieldName = 'no_rekening'
        Width = 105
      end
      object cxGridDBTableView4keterangan2: TcxGridDBColumn
        Caption = 'Mutasi'
        DataBinding.FieldName = 'keterangan2'
        Width = 133
      end
      object cxGridDBTableView4keterangan: TcxGridDBColumn
        Caption = 'Keterangan'
        DataBinding.FieldName = 'keterangan'
        Width = 374
      end
    end
    object cxGridLevel4: TcxGridLevel
      GridView = cxGridDBTableView4
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 496
    Width = 950
    Height = 52
    Align = alBottom
    TabOrder = 2
    object BitBtn15: TBitBtn
      Left = 378
      Top = 7
      Width = 188
      Height = 35
      Caption = 'Pasangkan manual'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000C0E0A1500000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000031362652909F70F32D32234C000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000003136265293A373F997A776FF93A373F92B3022490000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000003136265293A373F997A776FF97A776FF97A776FF93A273F82B2F
        2148000000000000000000000000000000000000000000000000000000000000
        00003136265393A373F997A776FF91A071F54951397B93A273F897A776FF93A2
        73F82B2F21480000000000000000000000000000000000000000000000000506
        0409839166DD97A776FF91A071F5262A1E40000000002B2F214893A273F897A7
        76FF93A273F82B30224900000000000000000000000000000000000000000000
        000015171023808D64D8262A1E400000000000000000000000002B2F214893A2
        73F897A776FF93A273F82B302249000000000000000000000000000000000000
        0000000000000202010300000000000000000000000000000000000000002B2F
        214893A273F897A776FF93A273F82B3022490000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00002B2F214893A273F897A776FF93A273F82B30224900000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000002B2F214893A273F897A776FF76825CC701010001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002B2F214875825CC60B0C081200000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000010100010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 0
      OnClick = BitBtn15Click
    end
  end
end
