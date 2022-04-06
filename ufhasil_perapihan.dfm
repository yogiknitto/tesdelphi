object fhasil_perapihan: Tfhasil_perapihan
  Left = 0
  Top = 0
  Caption = 'fhasil_perapihan'
  ClientHeight = 707
  ClientWidth = 1200
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
    Width = 1200
    Height = 707
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 23
      Top = 20
      Width = 139
      Height = 24
      Caption = 'Hasil Perapihan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 909
      Top = 27
      Width = 23
      Height = 16
      Caption = 'Cari'
    end
    object cxGrid1: TcxGrid
      Left = 23
      Top = 56
      Width = 1154
      Height = 585
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = Uhasil_perapihan
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsSelection.CheckBoxVisibility = [cbvDataRow, cbvColumnHeader]
        OptionsSelection.MultiSelectMode = msmPersistent
        OptionsSelection.UnselectFocusedRecordOnExit = False
        object cxGrid1DBTableView1no_transaksi: TcxGridDBColumn
          Caption = 'No Transaksi'
          DataBinding.FieldName = 'no_transaksi'
          Width = 105
        end
        object cxGrid1DBTableView1tanggal: TcxGridDBColumn
          Caption = 'Tanggal'
          DataBinding.FieldName = 'tanggal'
          Width = 90
        end
        object cxGrid1DBTableView1jenis: TcxGridDBColumn
          Caption = 'Jenis'
          DataBinding.FieldName = 'jenis'
          Width = 114
        end
        object cxGrid1DBTableView1dari: TcxGridDBColumn
          Caption = 'Dari'
          DataBinding.FieldName = 'dari'
          Width = 125
        end
        object cxGrid1DBTableView1nocg: TcxGridDBColumn
          DataBinding.FieldName = 'nocg'
          Width = 57
        end
        object cxGrid1DBTableView1bankcg: TcxGridDBColumn
          DataBinding.FieldName = 'bankcg'
          Width = 59
        end
        object cxGrid1DBTableView1kode_kas: TcxGridDBColumn
          Caption = 'Kode Kas'
          DataBinding.FieldName = 'kode_kas'
          Width = 69
        end
        object cxGrid1DBTableView1jumlah: TcxGridDBColumn
          Caption = 'Jumlah'
          DataBinding.FieldName = 'jumlah'
        end
        object cxGrid1DBTableView1kode_perkiraan: TcxGridDBColumn
          Caption = 'Kode Perkiraan'
          DataBinding.FieldName = 'kode_perkiraan'
          Width = 97
        end
        object cxGrid1DBTableView1keterangan: TcxGridDBColumn
          Caption = 'Keterangan'
          DataBinding.FieldName = 'keterangan'
          Width = 279
        end
        object cxGrid1DBTableView1status: TcxGridDBColumn
          Caption = 'Status'
          DataBinding.FieldName = 'status'
          Width = 51
        end
        object cxGrid1DBTableView1tanggal_cair: TcxGridDBColumn
          Caption = 'Tanggal Cair'
          DataBinding.FieldName = 'tanggal_cair'
          Width = 90
        end
        object cxGrid1DBTableView1no_urut: TcxGridDBColumn
          Caption = 'No Urut'
          DataBinding.FieldName = 'no_urut'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object Button1: TButton
      Left = 480
      Top = 652
      Width = 151
      Height = 38
      Caption = 'PASANG'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 952
      Top = 24
      Width = 201
      Height = 24
      TabOrder = 2
      OnChange = Edit1Change
    end
    object ProgressBar1: TProgressBar
      Left = 656
      Top = 657
      Width = 249
      Height = 26
      TabOrder = 3
      Visible = False
    end
  end
  object Button2: TButton
    Left = 984
    Top = 652
    Width = 151
    Height = 38
    Caption = 'HASIL PEMASANGAN'
    TabOrder = 1
    OnClick = Button2Click
  end
  object qhasil_perapihan: TUniQuery
    Connection = tabel.server
    SQL.Strings = (
      
        'SELECT * FROM buku_besar LEFT JOIN relasi_buku_besar USING(no_tr' +
        'ansaksi) WHERE dari='#39'HUTANG LAIN-LAIN'#39' AND keterangan LIKE '#39'%#%'#39 +
        ' AND id IS NULL')
    Active = True
    Left = 968
    Top = 544
    object qhasil_perapihanno_transaksi: TStringField
      FieldName = 'no_transaksi'
      Required = True
      Size = 25
    end
    object qhasil_perapihantanggal: TDateField
      FieldName = 'tanggal'
      Required = True
      DisplayFormat = 'dd-mmm-yyyy'
    end
    object qhasil_perapihanjenis: TStringField
      FieldName = 'jenis'
      Required = True
      Size = 25
    end
    object qhasil_perapihandari: TStringField
      FieldName = 'dari'
      Required = True
      Size = 100
    end
    object qhasil_perapihannocg: TStringField
      FieldName = 'nocg'
      Required = True
      Size = 50
    end
    object qhasil_perapihanbankcg: TStringField
      FieldName = 'bankcg'
      Required = True
      Size = 50
    end
    object qhasil_perapihankode_kas: TIntegerField
      FieldName = 'kode_kas'
      Required = True
    end
    object qhasil_perapihanjumlah: TFloatField
      FieldName = 'jumlah'
      Required = True
      DisplayFormat = '0,'
    end
    object qhasil_perapihankode_perkiraan: TIntegerField
      FieldName = 'kode_perkiraan'
      Required = True
    end
    object qhasil_perapihanketerangan: TStringField
      FieldName = 'keterangan'
      Required = True
      Size = 250
    end
    object qhasil_perapihanstatus: TIntegerField
      FieldName = 'status'
      Required = True
    end
    object qhasil_perapihantanggal_cair: TDateField
      FieldName = 'tanggal_cair'
      Required = True
      DisplayFormat = 'dd-mmm-yyyy'
    end
    object qhasil_perapihanno_urut: TIntegerField
      FieldName = 'no_urut'
      Required = True
      DisplayFormat = '0,'
    end
  end
  object Uhasil_perapihan: TUniDataSource
    DataSet = qhasil_perapihan
    Left = 1056
    Top = 552
  end
  object ResizeKit1: TResizeKit
    FormPos = rpDefault
    FormWidth = 0
    FormHeight = 0
    FormMaxWidth = 0
    FormMaxHeight = 0
    FormMinWidth = 0
    FormMinHeight = 0
    ResizeFont = True
    Enabled = True
    ValidTaskbar = True
    Left = 432
    Top = 8
    DesignFrmW = 1200
    DesignFrmH = 707
    DesignDpiW = 96
    DesignDpiH = 96
  end
end
