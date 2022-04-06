object fsaldocustomer: Tfsaldocustomer
  Left = 0
  Top = 0
  ClientHeight = 333
  ClientWidth = 671
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
    Width = 670
    Height = 38
    Caption = 'DATA UANG CUSTOMER'
    Color = clHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 40
    Width = 669
    Height = 252
    TabOrder = 1
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'DevExpressStyle'
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsqdata
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          Column = cxGrid1DBTableView1jml_uang
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      object cxGrid1DBTableView1no: TcxGridDBColumn
        DataBinding.FieldName = 'no'
      end
      object cxGrid1DBTableView1nama: TcxGridDBColumn
        DataBinding.FieldName = 'nama'
        Width = 200
      end
      object cxGrid1DBTableView1bank: TcxGridDBColumn
        DataBinding.FieldName = 'bank'
        Width = 200
      end
      object cxGrid1DBTableView1jml_uang: TcxGridDBColumn
        DataBinding.FieldName = 'jml_uang'
        Width = 100
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 294
    Width = 670
    Height = 38
    Color = clHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 206
      Top = 5
      Width = 243
      Height = 29
      Caption = 'Ambil Saldo Customer'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000100000003000000080000000C0000
        000E0000000D0000000800000003000000010000000000000000000000020000
        000A00000010000000110000001300000018050E0A3F16412DAC216043EC256A
        48FF216141ED163F2BAC050E09390000000900000001000000000000000A7B50
        43C2AB705CFFAB6F5AFFC29A8CFFA2A191FF307554FF2D9D71FF24BA82FF23CB
        8EFF23BA82FF25986BFF2C7050FD0A1E145C00000006000000000000000EAD73
        5FFFFDFBF9FFFAF4F2FFDCE4DEFF388260FF40C397FF28CD92FF40956DFF487E
        5DFF3F946CFF26CD91FF27BA84FF297150F5050F0A2F000000030000000EB077
        62FFFDFBFAFFF6EFEBFF80AD96FF54B593FF36D29CFF2ECE95FF4A8362FFFFFF
        FFFF4A8161FF2CD096FF2CCF95FF31A87AFF1B4833A1000000060000000CB079
        66FFFDFBFBFFF7F2EFFF499371FF6CDBBBFF469D76FF4D8865FF4D8765FFF6F1
        EBFF4D8665FF4D8664FF459B73FF33C892FF2B7453E7000000080000000BB37C
        69FFFEFCFBFFF8F4F1FF3C926DFF81E9CCFF508C6AFFEADBD3FFF8F3EFFFF9F3
        EFFFF8F3EFFFFFFFFFFF4E8968FF3FD5A3FF348662FA000000080000000AB67F
        6CFFFEFDFCFFF8F3F1FF4FA07DFFB1E9D8FF6CA98CFF528F6EFF528F6DFFFAF5
        F3FF528F6CFF518E6BFF5EA583FF76DCBBFF338260E70000000700000009B983
        71FFFEFDFCFFFAF5F2FF8CC2AAFF94CBB5FFE2FAF5FFC5F5E9FF539371FFECDE
        D8FF539270FFABF0DDFFB0F1DEFF84C6ADFF2358419A0000000400000007BC88
        77FFFEFEFDFFFBF4F0FFE4ECE6FF4EAA84FFC8E7DBFFEEFDFAFF7AB095FF5696
        74FF74AF94FFD9F9F2FFBEE5D8FF3E9873F208130E250000000100000006BF8C
        7AFFFEFEFDFFFBF6F1FFFBF6F4FFC9E2D5FF4FAD85FF93CEB7FFD2ECE3FFF3FC
        FBFFD2ECE3FF92CDB6FF4DA881FF122D2251000000020000000000000005C18F
        7FFFFEFEFEFFFAF6F3FFFAF5F3FFFAF7F4FFE5EEE7FF90CAB1FF5BB48FFF46AB
        82FF5BB48EFF8EC9B1FFC9BDB1FF00000008000000000000000000000004C493
        82FFFFFEFEFFFBF7F4FFFBF6F4FFFBF6F4FFFBF6F3FFFCF8F6FFFCF7F6FFFCF9
        F7FFFBF8F5FFFCFBFAFFC49587FF00000005000000000000000000000003C799
        85FFFFFEFEFFFCF8F7FFFCF8F6FFFCF7F5FFFCF7F5FFFBF6F4FFFBF6F4FFFCF6
        F3FFFCF6F2FFFDFCFAFFC28F7FFF00000004000000000000000000000002C99A
        89FFFFFFFEFFFFFFFEFFFFFEFEFFFFFEFEFFFEFEFEFFFEFEFEFFFEFEFDFFFEFE
        FDFFFEFDFDFFFEFDFDFFC49382FF000000030000000000000000000000019774
        67BECA9C8BFFCA9C8BFFC99C8AFFC99B89FFC99B8AFFCA9A88FFC89A88FFC999
        87FFC79887FFC89886FF927063BF000000020000000000000000}
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
  object qdata: TUniQuery
    Connection = tabel.server
    SQL.Strings = (
      'select * from v_saldocustomer')
    Left = 464
    Top = 112
    object qdatano: TIntegerField
      FieldName = 'no'
    end
    object qdataid_customer: TIntegerField
      FieldName = 'id_customer'
    end
    object qdatabank: TStringField
      FieldName = 'bank'
      Size = 25
    end
    object qdatanama: TStringField
      FieldName = 'nama'
      Required = True
      Size = 100
    end
    object qdatajml_uang: TFloatField
      FieldName = 'jml_uang'
    end
  end
  object dsqdata: TUniDataSource
    DataSet = qdata
    Left = 536
    Top = 120
  end
end
