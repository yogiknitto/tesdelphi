object flaporanperpriode: Tflaporanperpriode
  Left = 139
  Top = 118
  ClientHeight = 684
  ClientWidth = 1314
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1314
    Height = 42
    Align = alTop
    Caption = 'DATA STOK PER PRIODE'
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 643
    Width = 1314
    Height = 41
    Align = alBottom
    TabOrder = 1
    object Label1: TLabel
      Left = 217
      Top = 12
      Width = 72
      Height = 13
      Caption = 'Tanggal Efektif'
    end
    object Button1: TButton
      Left = 17
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Exsport'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button3: TButton
      Left = 975
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Keluar'
      TabOrder = 1
      OnClick = Button3Click
    end
    object tchar: TcxTextEdit
      Left = 666
      Top = 7
      TabOrder = 2
      Text = #39
      Visible = False
      Width = 121
    end
    object dtanggal: TDateTimePicker
      Left = 297
      Top = 9
      Width = 94
      Height = 21
      Date = 41771.412748101850000000
      Format = 'dd-MMM-yyyy'
      Time = 41771.412748101850000000
      Color = clWhite
      TabOrder = 3
    end
    object btneksportrusak: TButton
      Left = 398
      Top = 7
      Width = 151
      Height = 25
      Caption = 'Eksport Koreksi Kain Rusak'
      TabOrder = 4
      OnClick = btneksportrusakClick
    end
  end
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 42
    Width = 1314
    Height = 601
    Align = alClient
    TabOrder = 2
    Properties.ActivePage = cxTabSheet2
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 597
    ClientRectLeft = 4
    ClientRectRight = 1310
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = 'Per No Roll'
      Enabled = False
      ImageIndex = 0
      object cxGrid1: TcxGrid
        Left = 0
        Top = 41
        Width = 1306
        Height = 532
        Align = alClient
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsqdata2
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.Active = True
          DataController.Filter.AutoDataSetFilter = True
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0.00'
              Kind = skSum
              Column = cxGrid1DBTableView1stokakhir
            end
            item
              Format = '0,0.00'
              Kind = skSum
              Column = cxGrid1DBTableView1nominal
            end
            item
              Kind = skCount
              Column = cxGrid1DBTableView1no_roll
            end
            item
              Format = '0.00'
              Kind = skSum
              Column = cxGrid1DBTableView1Stokawal
            end
            item
              Format = '0.00'
              Kind = skSum
              Column = cxGrid1DBTableView1Pembelian
            end
            item
              Format = '0.00'
              Kind = skSum
              Column = cxGrid1DBTableView1terimaretur
            end
            item
              Format = '0.00'
              Kind = skSum
              Column = cxGrid1DBTableView1Penjualan
            end
            item
              Format = '0.00'
              Kind = skSum
              Column = cxGrid1DBTableView1Retur
            end
            item
              Format = '0.00'
              Kind = skSum
              Column = cxGrid1DBTableView1Koreksi
            end
            item
              Format = '0.00'
              Kind = skSum
              Column = cxGrid1DBTableView1KoreksiKainrusak
            end
            item
              Format = '0,0.00'
              Kind = skSum
              Column = cxGrid1DBTableView1nominalstokawal
            end
            item
              Format = '0,0.00'
              Kind = skSum
              Column = cxGrid1DBTableView1Nominalpembelian
            end
            item
              Format = '0,0.00'
              Kind = skSum
              Column = cxGrid1DBTableView1nominalterimaretur
            end
            item
              Format = '0,0.00'
              Kind = skSum
              Column = cxGrid1DBTableView1nominalpenjualan
            end
            item
              Format = '0,0.00'
              Kind = skSum
              Column = cxGrid1DBTableView1NominalRetur
            end
            item
              Format = '0,0.00'
              Kind = skSum
              Column = cxGrid1DBTableView1Nominalkoreksi
            end
            item
              Format = '0,0.00'
              Kind = skSum
              Column = cxGrid1DBTableView1Nominalkainrusak
            end
            item
              Format = '0.00'
              Kind = skSum
              Column = cxGrid1DBTableView1terimatransfer
            end
            item
              Format = '0,0.00'
              Kind = skSum
              Column = cxGrid1DBTableView1totalterimatransfer
            end
            item
              Format = '0.00'
              Kind = skSum
              Column = cxGrid1DBTableView1penjualantransfer
            end
            item
              Format = '0,0.00'
              Kind = skSum
              Column = cxGrid1DBTableView1totalpenjualantransfer
            end
            item
              Format = '0.00'
              Kind = skSum
              Column = cxGrid1DBTableView1sapenjualanbssegel
            end
            item
              Format = '0,0.00'
              Kind = skSum
              Column = cxGrid1DBTableView1satotalpenjualanbssegel
            end
            item
              Format = '0,0.00'
              Kind = skSum
              Column = cxGrid1DBTableView1totalpenjualanbssegel
            end
            item
              Format = '0.00'
              Kind = skSum
              Column = cxGrid1DBTableView1penjualanbssegel
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.HeaderAutoHeight = True
          object cxGrid1DBTableView1tanggal_terima: TcxGridDBColumn
            Caption = 'Tanggal Terima'
            DataBinding.FieldName = 'tanggal_terima'
            Width = 88
          end
          object cxGrid1DBTableView1rollinduk: TcxGridDBColumn
            Caption = 'Roll Induk'
            DataBinding.FieldName = 'roll_induk'
            Width = 94
          end
          object cxGrid1DBTableView1no_roll: TcxGridDBColumn
            Caption = 'No Roll'
            DataBinding.FieldName = 'no_roll'
            Width = 94
          end
          object cxGrid1DBTableView1stskain: TcxGridDBColumn
            Caption = 'Status kain'
            DataBinding.FieldName = 'stskain'
            Width = 70
          end
          object cxGrid1DBTableView1no_lokasi: TcxGridDBColumn
            Caption = 'Lokasi'
            DataBinding.FieldName = 'no_lokasi'
            Width = 94
          end
          object cxGrid1DBTableView1nama_kain: TcxGridDBColumn
            Caption = 'Jenis Kain'
            DataBinding.FieldName = 'nama_kain'
            Width = 219
          end
          object cxGrid1DBTableView1jenis_warna: TcxGridDBColumn
            Caption = 'Warna'
            DataBinding.FieldName = 'jenis_warna'
            Width = 158
          end
          object cxGrid1DBTableView1kode_spk: TcxGridDBColumn
            Caption = 'Kode Spk'
            DataBinding.FieldName = 'kode_spk'
            Width = 72
          end
          object cxGrid1DBTableView1harga: TcxGridDBColumn
            Caption = 'Harga'
            DataBinding.FieldName = 'harga'
            Width = 113
          end
          object cxGrid1DBTableView1Stokawal: TcxGridDBColumn
            Caption = 'Stok Awal'
            DataBinding.FieldName = 'stokawal'
          end
          object cxGrid1DBTableView1nominalstokawal: TcxGridDBColumn
            Caption = 'Nominal Stok Awal'
            DataBinding.FieldName = 'totalstokawal'
            Width = 98
          end
          object cxGrid1DBTableView1sapenjualanbssegel: TcxGridDBColumn
            Caption = 'Stok Awal BS SEGEL'
            DataBinding.FieldName = 'sapenjualanbssegel'
            Width = 64
          end
          object cxGrid1DBTableView1satotalpenjualanbssegel: TcxGridDBColumn
            Caption = 'Nominal Stok Awal BS SEGEL'
            DataBinding.FieldName = 'satotalpenjualanbssegel'
            Width = 108
          end
          object cxGrid1DBTableView1Pembelian: TcxGridDBColumn
            Caption = 'Pembelian'
            DataBinding.FieldName = 'terima'
          end
          object cxGrid1DBTableView1Nominalpembelian: TcxGridDBColumn
            Caption = 'Nominal Pembelian'
            DataBinding.FieldName = 'totalterima'
            Width = 102
          end
          object cxGrid1DBTableView1terimatransfer: TcxGridDBColumn
            Caption = 'Penerimaan Transfer Stok'
            DataBinding.FieldName = 'terimatransfer'
            Width = 111
          end
          object cxGrid1DBTableView1totalterimatransfer: TcxGridDBColumn
            Caption = 'Nominal Penerimaan Transfer Stok'
            DataBinding.FieldName = 'totalterimatransfer'
            Width = 112
          end
          object cxGrid1DBTableView1terimaretur: TcxGridDBColumn
            Caption = 'Penerimaan Retur'
            DataBinding.FieldName = 'terimaretur'
            Width = 98
          end
          object cxGrid1DBTableView1nominalterimaretur: TcxGridDBColumn
            Caption = 'Nominal Terima Retur'
            DataBinding.FieldName = 'totalterimaretur'
            Width = 111
          end
          object cxGrid1DBTableView1Penjualan: TcxGridDBColumn
            Caption = 'Penjualan'
            DataBinding.FieldName = 'penjualan'
          end
          object cxGrid1DBTableView1nominalpenjualan: TcxGridDBColumn
            Caption = 'Nominal Penjualan'
            DataBinding.FieldName = 'totalpenjualan'
            Width = 99
          end
          object cxGrid1DBTableView1penjualantransfer: TcxGridDBColumn
            Caption = 'Pengeluaran Transfer Stok'
            DataBinding.FieldName = 'penjualantransfer'
            Width = 114
          end
          object cxGrid1DBTableView1totalpenjualantransfer: TcxGridDBColumn
            Caption = 'Nominal Pengeluaran Transfer Stok'
            DataBinding.FieldName = 'totalpenjualantransfer'
            Width = 121
          end
          object cxGrid1DBTableView1penjualanbssegel: TcxGridDBColumn
            Caption = 'Penjualan BS SEGEL'
            DataBinding.FieldName = 'penjualanbssegel'
            Width = 65
          end
          object cxGrid1DBTableView1totalpenjualanbssegel: TcxGridDBColumn
            Caption = 'Nominal Penjualan BS SEGEL'
            DataBinding.FieldName = 'totalpenjualanbssegel'
            Width = 104
          end
          object cxGrid1DBTableView1Retur: TcxGridDBColumn
            Caption = 'Retur'
            DataBinding.FieldName = 'retur'
          end
          object cxGrid1DBTableView1NominalRetur: TcxGridDBColumn
            Caption = 'Nominal Retur'
            DataBinding.FieldName = 'totalretur'
            Width = 78
          end
          object cxGrid1DBTableView1Koreksi: TcxGridDBColumn
            Caption = 'Koreksi'
            DataBinding.FieldName = 'beratkoreksi'
          end
          object cxGrid1DBTableView1Nominalkoreksi: TcxGridDBColumn
            Caption = 'Nominal Koreksi'
            DataBinding.FieldName = 'totalberatkoreksi'
            Width = 86
          end
          object cxGrid1DBTableView1KoreksiKainrusak: TcxGridDBColumn
            Caption = 'Koreksi kain Rusak'
            DataBinding.FieldName = 'koreksi_kainrusak'
          end
          object cxGrid1DBTableView1Nominalkainrusak: TcxGridDBColumn
            Caption = 'Nominal Koreksi kain Rusak'
            DataBinding.FieldName = 'totalkoreksi_kainrusak'
            Width = 146
          end
          object cxGrid1DBTableView1stokakhir: TcxGridDBColumn
            Caption = 'Stok Akhir'
            DataBinding.FieldName = 'stokakhir'
            Width = 101
          end
          object cxGrid1DBTableView1nominal: TcxGridDBColumn
            Caption = 'Total Stok Akhir'
            DataBinding.FieldName = 'totalstokakhir'
            Width = 90
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1306
        Height = 41
        Align = alTop
        TabOrder = 1
        object Label8: TLabel
          Left = 6
          Top = 12
          Width = 36
          Height = 13
          Caption = 'Periode'
        end
        object cbtahun: TComboBox
          Left = 202
          Top = 10
          Width = 145
          Height = 22
          Style = csOwnerDrawFixed
          TabOrder = 0
          OnDropDown = cbtahunDropDown
        end
        object cbbulan: TComboBox
          Left = 50
          Top = 10
          Width = 145
          Height = 22
          Style = csOwnerDrawFixed
          TabOrder = 1
          Items.Strings = (
            'Januari'
            'Februari'
            'Maret'
            'April'
            'Mei'
            'Juni'
            'Juli'
            'Agustus'
            'September'
            'Oktober'
            'November'
            'Desember')
        end
        object Button2: TButton
          Left = 365
          Top = 9
          Width = 75
          Height = 25
          Caption = 'Tampilkan'
          TabOrder = 2
          OnClick = Button2Click
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Per jenis dan warna kain'
      ImageIndex = 1
      object cxGrid2: TcxGrid
        Left = 0
        Top = 41
        Width = 1306
        Height = 532
        Align = alClient
        TabOrder = 0
        object cxGridDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = UniDataSource1
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.Active = True
          DataController.Filter.AutoDataSetFilter = True
          DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Format = ',0.00'
              Kind = skSum
              Column = cxGridDBTableView1stok
            end
            item
              Format = ',0.00'
              Kind = skSum
              Column = cxGridDBTableView1total
            end
            item
              Kind = skCount
              Column = cxGridDBTableView1nama_kain
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          object cxGridDBTableView1nama_kain: TcxGridDBColumn
            DataBinding.FieldName = 'nama_kain'
            Width = 331
          end
          object cxGridDBTableView1jenis_warna: TcxGridDBColumn
            DataBinding.FieldName = 'jenis_warna'
            Width = 257
          end
          object cxGridDBTableView1stok: TcxGridDBColumn
            DataBinding.FieldName = 'stok'
            Width = 83
          end
          object cxGridDBTableView1total: TcxGridDBColumn
            DataBinding.FieldName = 'total'
            Width = 154
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1306
        Height = 41
        Align = alTop
        TabOrder = 1
        object ComboBox2: TComboBox
          Left = 50
          Top = 10
          Width = 145
          Height = 22
          Style = csOwnerDrawFixed
          TabOrder = 0
          Items.Strings = (
            'Januari'
            'Februari'
            'Maret'
            'April'
            'Mei'
            'Juni'
            'Juli'
            'Agustus'
            'September'
            'Oktober'
            'November'
            'Desember')
        end
        object ComboBox1: TComboBox
          Left = 202
          Top = 10
          Width = 145
          Height = 22
          Style = csOwnerDrawFixed
          TabOrder = 1
          OnDropDown = ComboBox1DropDown
        end
        object Button4: TButton
          Left = 365
          Top = 9
          Width = 75
          Height = 25
          Caption = 'Tampilkan'
          TabOrder = 2
          OnClick = Button4Click
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'Per Roll Induk'
      Enabled = False
      ImageIndex = 2
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1306
        Height = 81
        Align = alTop
        TabOrder = 0
        object GroupBox1: TGroupBox
          Left = 5
          Top = 7
          Width = 164
          Height = 66
          Caption = 'Filter Berdasarkan'
          TabOrder = 0
          object cdasar: TComboBox
            Left = 11
            Top = 26
            Width = 145
            Height = 22
            Style = csOwnerDrawFixed
            ItemIndex = 0
            TabOrder = 0
            Text = 'Per Bulan'
            OnChange = cdasarChange
            Items.Strings = (
              'Per Bulan'
              'Per Tahun')
          end
        end
        object GroupBox2: TGroupBox
          Left = 184
          Top = 8
          Width = 409
          Height = 65
          Caption = 'Periode'
          TabOrder = 1
          object ComboBox4: TComboBox
            Left = 8
            Top = 26
            Width = 145
            Height = 22
            Style = csOwnerDrawFixed
            TabOrder = 0
            Items.Strings = (
              'Januari'
              'Februari'
              'Maret'
              'April'
              'Mei'
              'Juni'
              'Juli'
              'Agustus'
              'September'
              'Oktober'
              'November'
              'Desember')
          end
          object Button5: TButton
            Left = 320
            Top = 25
            Width = 73
            Height = 25
            Caption = 'Tampilkan'
            TabOrder = 1
            OnClick = Button5Click
          end
          object ComboBox3: TComboBox
            Left = 160
            Top = 26
            Width = 145
            Height = 22
            Style = csOwnerDrawFixed
            TabOrder = 2
            OnDropDown = cbtahunDropDown
          end
        end
      end
      object cxGrid3: TcxGrid
        Left = 0
        Top = 81
        Width = 1306
        Height = 492
        Align = alClient
        TabOrder = 1
        object cxGridDBTableView2: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsqdatainduk
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.Active = True
          DataController.Filter.AutoDataSetFilter = True
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0.00'
              Kind = skSum
            end
            item
              Format = '0,0.00'
              Kind = skSum
            end
            item
              Kind = skCount
            end
            item
              Format = '0.00'
              Kind = skSum
            end
            item
              Format = '0.00'
              Kind = skSum
            end
            item
              Format = '0.00'
              Kind = skSum
            end
            item
              Format = '0.00'
              Kind = skSum
            end
            item
              Format = '0.00'
              Kind = skSum
            end
            item
              Format = '0.00'
              Kind = skSum
            end
            item
              Format = '0.00'
              Kind = skSum
            end
            item
              Format = '0,0.00'
              Kind = skSum
            end
            item
              Format = '0,0.00'
              Kind = skSum
            end
            item
              Format = '0,0.00'
              Kind = skSum
            end
            item
              Format = '0,0.00'
              Kind = skSum
            end
            item
              Format = '0,0.00'
              Kind = skSum
            end
            item
              Format = '0,0.00'
              Kind = skSum
            end
            item
              Format = '0,0.00'
              Kind = skSum
            end
            item
              Format = '0,0.00'
              Kind = skSum
              Column = cxGridDBTableView2totalstokakhir
            end
            item
              Format = '0,0.00'
              Kind = skSum
              Column = cxGridDBTableView2totalkoreksi_kainrusak
            end
            item
              Format = '0,0.00'
              Kind = skSum
              Column = cxGridDBTableView2totalberatkoreksi
            end
            item
              Format = '0,0.00'
              Kind = skSum
              Column = cxGridDBTableView2totalretur
            end
            item
              Format = '0,0.00'
              Kind = skSum
              Column = cxGridDBTableView2totalpenjualan
            end
            item
              Format = '0,0.00'
              Kind = skSum
              Column = cxGridDBTableView2totalterimaretur
            end
            item
              Format = '0,0.00'
              Kind = skSum
              Column = cxGridDBTableView2totalterima
            end
            item
              Format = '0,0.00'
              Kind = skSum
              Column = cxGridDBTableView2totalstokawal
            end
            item
              Format = '0,0.00'
              Kind = skSum
              Column = cxGridDBTableView2harga
            end
            item
              Format = '0.00'
              Kind = skSum
              Column = cxGridDBTableView2stokawal
            end
            item
              Format = '0.00'
              Kind = skSum
              Column = cxGridDBTableView2terima
            end
            item
              Format = '0.00'
              Kind = skSum
              Column = cxGridDBTableView2terimaretur
            end
            item
              Format = '0.00'
              Kind = skSum
              Column = cxGridDBTableView2penjualan
            end
            item
              Format = '0.00'
              Kind = skSum
              Column = cxGridDBTableView2retur
            end
            item
              Format = '0.00'
              Kind = skSum
              Column = cxGridDBTableView2beratkoreksi
            end
            item
              Format = '0.00'
              Kind = skSum
              Column = cxGridDBTableView2koreksi_kainrusak
            end
            item
              Format = '0.00'
              Kind = skSum
              Column = cxGridDBTableView2stokakhir
            end
            item
              Kind = skCount
              Column = cxGridDBTableView2roll_induk
            end
            item
              Format = '0.00'
              Kind = skSum
              Column = cxGridDBTableView2terimatransfer
            end
            item
              Format = '0,0.00'
              Kind = skSum
              Column = cxGridDBTableView2totalterimatransfer
            end
            item
              Format = '0.00'
              Kind = skSum
              Column = cxGridDBTableView2penjualantransfer
            end
            item
              Format = '0,0.00'
              Kind = skSum
              Column = cxGridDBTableView2totalpenjualantransfer
            end
            item
              Format = '0,0.00'
              Kind = skSum
              Column = cxGridDBTableView2satotalpenjualanbssegel
            end
            item
              Format = '0.00'
              Kind = skSum
              Column = cxGridDBTableView2sapenjualanbssegel
            end
            item
              Format = '0.00'
              Kind = skSum
              Column = cxGridDBTableView2penjualanbssegel
            end
            item
              Format = '0,0.00'
              Kind = skSum
              Column = cxGridDBTableView2totalpenjualanbssegel
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.HeaderAutoHeight = True
          object cxGridDBTableView2tanggal_terima: TcxGridDBColumn
            Caption = 'Tanggal Terima'
            DataBinding.FieldName = 'tanggal_terima'
            Width = 99
          end
          object cxGridDBTableView2roll_induk: TcxGridDBColumn
            Caption = 'Roll Induk'
            DataBinding.FieldName = 'roll_induk'
            Width = 123
          end
          object cxGridDBTableView2stskain: TcxGridDBColumn
            Caption = 'Status Kain'
            DataBinding.FieldName = 'stskain'
            Width = 69
          end
          object cxGridDBTableView2nama_kain: TcxGridDBColumn
            Caption = 'Jenis Kain'
            DataBinding.FieldName = 'nama_kain'
            Width = 291
          end
          object cxGridDBTableView2jenis_warna: TcxGridDBColumn
            Caption = 'Warna'
            DataBinding.FieldName = 'jenis_warna'
            Width = 228
          end
          object cxGridDBTableView2kode_spk: TcxGridDBColumn
            Caption = 'Kode Spk'
            DataBinding.FieldName = 'kode_spk'
            Width = 93
          end
          object cxGridDBTableView2harga: TcxGridDBColumn
            Caption = 'Harga'
            DataBinding.FieldName = 'harga'
          end
          object cxGridDBTableView2stokawal: TcxGridDBColumn
            Caption = 'Stok Awal'
            DataBinding.FieldName = 'stokawal'
            Width = 100
          end
          object cxGridDBTableView2totalstokawal: TcxGridDBColumn
            Caption = 'Nominal Stok Awal'
            DataBinding.FieldName = 'totalstokawal'
            Width = 145
          end
          object cxGridDBTableView2sapenjualanbssegel: TcxGridDBColumn
            Caption = 'Stok Awal BS SEGEL'
            DataBinding.FieldName = 'sapenjualanbssegel'
          end
          object cxGridDBTableView2satotalpenjualanbssegel: TcxGridDBColumn
            Caption = 'Nominal Stok Awal BS SEGEL'
            DataBinding.FieldName = 'satotalpenjualanbssegel'
            Width = 103
          end
          object cxGridDBTableView2terima: TcxGridDBColumn
            Caption = 'Pembelian'
            DataBinding.FieldName = 'terima'
            Width = 103
          end
          object cxGridDBTableView2totalterima: TcxGridDBColumn
            Caption = 'Nominal Pembelian'
            DataBinding.FieldName = 'totalterima'
            Width = 132
          end
          object cxGridDBTableView2terimatransfer: TcxGridDBColumn
            Caption = 'Penerimaan Transfer Stok'
            DataBinding.FieldName = 'terimatransfer'
            Width = 105
          end
          object cxGridDBTableView2totalterimatransfer: TcxGridDBColumn
            Caption = 'Nominal Penerimaan Transfer Stok'
            DataBinding.FieldName = 'totalterimatransfer'
            Width = 131
          end
          object cxGridDBTableView2terimaretur: TcxGridDBColumn
            Caption = 'Penerimaan Retur'
            DataBinding.FieldName = 'terimaretur'
            Width = 94
          end
          object cxGridDBTableView2totalterimaretur: TcxGridDBColumn
            Caption = 'Nominal Terima Retur'
            DataBinding.FieldName = 'totalterimaretur'
            Width = 116
          end
          object cxGridDBTableView2penjualan: TcxGridDBColumn
            Caption = 'Penjualan'
            DataBinding.FieldName = 'penjualan'
          end
          object cxGridDBTableView2totalpenjualan: TcxGridDBColumn
            Caption = 'Nominal Penjualan'
            DataBinding.FieldName = 'totalpenjualan'
            Width = 122
          end
          object cxGridDBTableView2penjualantransfer: TcxGridDBColumn
            Caption = 'Pengeluaran Transfer Stok'
            DataBinding.FieldName = 'penjualantransfer'
            Width = 117
          end
          object cxGridDBTableView2totalpenjualantransfer: TcxGridDBColumn
            Caption = 'Nominal Pengeluaran Transfer Stok'
            DataBinding.FieldName = 'totalpenjualantransfer'
            Width = 123
          end
          object cxGridDBTableView2penjualanbssegel: TcxGridDBColumn
            Caption = 'Penjualan BS SEGEL'
            DataBinding.FieldName = 'penjualanbssegel'
            Width = 64
          end
          object cxGridDBTableView2totalpenjualanbssegel: TcxGridDBColumn
            Caption = 'Nominal Penjualan BS SEGEL'
            DataBinding.FieldName = 'totalpenjualanbssegel'
            Width = 105
          end
          object cxGridDBTableView2retur: TcxGridDBColumn
            Caption = 'Retur'
            DataBinding.FieldName = 'retur'
          end
          object cxGridDBTableView2totalretur: TcxGridDBColumn
            Caption = 'Nominal Retur'
            DataBinding.FieldName = 'totalretur'
            Width = 103
          end
          object cxGridDBTableView2beratkoreksi: TcxGridDBColumn
            Caption = 'Koreksi'
            DataBinding.FieldName = 'beratkoreksi'
          end
          object cxGridDBTableView2totalberatkoreksi: TcxGridDBColumn
            Caption = 'Nominal Koreksi'
            DataBinding.FieldName = 'totalberatkoreksi'
            Width = 110
          end
          object cxGridDBTableView2koreksi_kainrusak: TcxGridDBColumn
            Caption = 'Koreksi Kain'
            DataBinding.FieldName = 'koreksi_kainrusak'
            Width = 80
          end
          object cxGridDBTableView2totalkoreksi_kainrusak: TcxGridDBColumn
            Caption = 'Nominal Koreksi Kain Rusak'
            DataBinding.FieldName = 'totalkoreksi_kainrusak'
            Width = 144
          end
          object cxGridDBTableView2stokakhir: TcxGridDBColumn
            Caption = 'Stok Akhir'
            DataBinding.FieldName = 'stokakhir'
          end
          object cxGridDBTableView2totalstokakhir: TcxGridDBColumn
            Caption = 'Nominal Stok Akhir'
            DataBinding.FieldName = 'totalstokakhir'
            Width = 150
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
    end
    object cxTabSheet4: TcxTabSheet
      Caption = 'Per No Roll (mutasi)'
      ImageIndex = 3
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 1306
        Height = 41
        Align = alTop
        TabOrder = 0
        object Label2: TLabel
          Left = 6
          Top = 12
          Width = 36
          Height = 13
          Caption = 'Periode'
        end
        object ComboBox5: TComboBox
          Left = 202
          Top = 10
          Width = 145
          Height = 22
          Style = csOwnerDrawFixed
          TabOrder = 0
          OnDropDown = cbtahunDropDown
        end
        object ComboBox6: TComboBox
          Left = 50
          Top = 10
          Width = 145
          Height = 22
          Style = csOwnerDrawFixed
          TabOrder = 1
          Items.Strings = (
            'Januari'
            'Februari'
            'Maret'
            'April'
            'Mei'
            'Juni'
            'Juli'
            'Agustus'
            'September'
            'Oktober'
            'November'
            'Desember')
        end
        object Button6: TButton
          Left = 365
          Top = 9
          Width = 75
          Height = 25
          Caption = 'Tampilkan'
          TabOrder = 2
          OnClick = Button6Click
        end
      end
      object cxGrid4: TcxGrid
        Left = 0
        Top = 41
        Width = 1306
        Height = 532
        Align = alClient
        TabOrder = 1
        object cxGridDBTableView3: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsqdata
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.Active = True
          DataController.Filter.AutoDataSetFilter = True
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0.00'
              Kind = skSum
              Column = cxGridDBColumn23
            end
            item
              Format = ',0.00'
              Kind = skSum
              Column = cxGridDBColumn24
            end
            item
              Kind = skCount
              Column = cxGridDBColumn2
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.HeaderAutoHeight = True
          object cxGridDBColumn1: TcxGridDBColumn
            Caption = 'Tanggal Terima'
            DataBinding.FieldName = 'tanggal_terima'
            Width = 88
          end
          object cxGrid1DBTableView1tanggal_h: TcxGridDBColumn
            Caption = 'Tanggal H_'
            DataBinding.FieldName = 'tanggal_h'
            Width = 95
          end
          object cxGrid1DBTableView1tanggal_hilang: TcxGridDBColumn
            Caption = 'Tanggal Hilang'
            DataBinding.FieldName = 'tanggal_hilang'
            Width = 90
          end
          object cxGrid1DBTableView1tanggal_so: TcxGridDBColumn
            Caption = 'Tanggal Stokopname'
            DataBinding.FieldName = 'tanggal_so'
          end
          object cxGridDBColumn4: TcxGridDBColumn
            Caption = 'Roll Induk'
            DataBinding.FieldName = 'roll_induk'
            Width = 94
          end
          object cxGridDBColumn2: TcxGridDBColumn
            Caption = 'No Roll'
            DataBinding.FieldName = 'no_roll'
            Width = 95
          end
          object cxGrid1DBTableView1lokasi_asal: TcxGridDBColumn
            Caption = 'Lokasi Asal'
            DataBinding.FieldName = 'lokasi_asal'
            Width = 88
          end
          object cxGridDBColumn3: TcxGridDBColumn
            Caption = 'Lokasi'
            DataBinding.FieldName = 'no_lokasi'
            Width = 94
          end
          object cxGridDBColumn5: TcxGridDBColumn
            Caption = 'Jenis Kain'
            DataBinding.FieldName = 'nama_kain'
            Width = 219
          end
          object cxGridDBColumn6: TcxGridDBColumn
            Caption = 'Warna'
            DataBinding.FieldName = 'jenis_warna'
            Width = 158
          end
          object cxGridDBColumn7: TcxGridDBColumn
            Caption = 'Kode Spk'
            DataBinding.FieldName = 'kode_spk'
            Width = 72
          end
          object cxGridDBColumn8: TcxGridDBColumn
            Caption = 'Harga'
            DataBinding.FieldName = 'harga'
            Width = 113
          end
          object cxGridDBColumn9: TcxGridDBColumn
            Caption = 'Stok Awal'
            DataBinding.FieldName = 'stokawal'
          end
          object cxGridDBColumn10: TcxGridDBColumn
            Caption = 'Nominal Stok Awal'
            DataBinding.FieldName = 'totalstokawal'
            Width = 98
          end
          object cxGridDBTableView3sapenjualanbssegel: TcxGridDBColumn
            Caption = 'Stok Awal BS SEGEL'
            DataBinding.FieldName = 'sapenjualanbssegel'
            Width = 67
          end
          object cxGridDBTableView3satotalpenjualanbssegel: TcxGridDBColumn
            Caption = 'Nominal Stok Awal BS SEGEL'
            DataBinding.FieldName = 'satotalpenjualanbssegel'
            Width = 104
          end
          object cxGridDBColumn11: TcxGridDBColumn
            Caption = 'Pembelian'
            DataBinding.FieldName = 'terima'
          end
          object cxGridDBColumn12: TcxGridDBColumn
            Caption = 'Nominal Pembelian'
            DataBinding.FieldName = 'totalterima'
            Width = 102
          end
          object cxGridDBTableView3terimatransfer: TcxGridDBColumn
            Caption = 'Penerimaan Transfer Stok'
            DataBinding.FieldName = 'terimatransfer'
            Width = 113
          end
          object cxGridDBTableView3totalterimatransfer: TcxGridDBColumn
            Caption = 'Nominal Penerimaan Transfer Stok'
            DataBinding.FieldName = 'totalterimatransfer'
            Width = 123
          end
          object cxGridDBColumn13: TcxGridDBColumn
            Caption = 'Penerimaan Retur'
            DataBinding.FieldName = 'terimaretur'
            Width = 98
          end
          object cxGridDBColumn14: TcxGridDBColumn
            Caption = 'Nominal Terima Retur'
            DataBinding.FieldName = 'totalterimaretur'
            Width = 111
          end
          object cxGridDBColumn15: TcxGridDBColumn
            Caption = 'Penjualan'
            DataBinding.FieldName = 'penjualan'
          end
          object cxGridDBColumn16: TcxGridDBColumn
            Caption = 'Nominal Penjualan'
            DataBinding.FieldName = 'totalpenjualan'
            Width = 99
          end
          object cxGridDBTableView3penjualantransfer: TcxGridDBColumn
            Caption = 'Pengeluaran Transfer Stok'
            DataBinding.FieldName = 'penjualantransfer'
            Width = 114
          end
          object cxGridDBTableView3totalpenjualantransfer: TcxGridDBColumn
            Caption = 'Nominal Pengeluaran Transfer Stok'
            DataBinding.FieldName = 'totalpenjualantransfer'
            Width = 116
          end
          object cxGridDBTableView3penjualanbssegel: TcxGridDBColumn
            Caption = 'Penjualan BS SEGEL'
            DataBinding.FieldName = 'penjualanbssegel'
          end
          object cxGridDBTableView3totalpenjualanbssegel: TcxGridDBColumn
            Caption = 'Nominal Penjualan BS SEGEL'
            DataBinding.FieldName = 'totalpenjualanbssegel'
            Width = 103
          end
          object cxGridDBColumn17: TcxGridDBColumn
            Caption = 'Retur'
            DataBinding.FieldName = 'retur'
          end
          object cxGridDBColumn18: TcxGridDBColumn
            Caption = 'Nominal Retur'
            DataBinding.FieldName = 'totalretur'
            Width = 78
          end
          object cxGridDBColumn19: TcxGridDBColumn
            Caption = 'Koreksi'
            DataBinding.FieldName = 'beratkoreksi'
          end
          object cxGridDBColumn20: TcxGridDBColumn
            Caption = 'Nominal Koreksi'
            DataBinding.FieldName = 'totalberatkoreksi'
            Width = 86
          end
          object cxGridDBColumn21: TcxGridDBColumn
            Caption = 'Koreksi kain Rusak'
            DataBinding.FieldName = 'koreksi_kainrusak'
          end
          object cxGridDBColumn22: TcxGridDBColumn
            Caption = 'Nominal Koreksi kain Rusak'
            DataBinding.FieldName = 'totalkoreksi_kainrusak'
            Width = 146
          end
          object cxGridDBColumn23: TcxGridDBColumn
            Caption = 'Stok Akhir'
            DataBinding.FieldName = 'stokakhir'
            Width = 101
          end
          object cxGridDBColumn24: TcxGridDBColumn
            Caption = 'Nominal Stok Akhir'
            DataBinding.FieldName = 'totalstokakhir'
            Width = 112
          end
          object cxGrid1DBTableView1Column2: TcxGridDBColumn
            Caption = 'Berat Sekarang'
            DataBinding.FieldName = 'berat_sekarang'
            Width = 87
          end
          object cxGrid1DBTableView1Column3: TcxGridDBColumn
            Caption = 'Nominal Berat Sekarang'
            DataBinding.FieldName = 'tot'
            Width = 127
          end
          object cxGrid1DBTableView1Column4: TcxGridDBColumn
            Caption = 'Mutasi'
            DataBinding.FieldName = 'berat_mutasi'
            Width = 83
          end
          object cxGrid1DBTableView1Column5: TcxGridDBColumn
            Caption = 'Nominal Mutasi'
            DataBinding.FieldName = 'totalmutasi'
            Width = 134
          end
          object cxGrid1DBTableView1Column6: TcxGridDBColumn
            Caption = 'Mutasi Fix'
            DataBinding.FieldName = 'mutasifix'
            Width = 72
          end
          object cxGrid1DBTableView1Column7: TcxGridDBColumn
            Caption = 'Nominal Mutasi Fix'
            DataBinding.FieldName = 'totalmutasifix'
            Width = 103
          end
          object cxGrid1DBTableView1Column1: TcxGridDBColumn
            Caption = 'Keterangan Mutasi'
            DataBinding.FieldName = 'dt'
            Width = 2000
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = cxGridDBTableView3
        end
      end
    end
    object cxTabSheet5: TcxTabSheet
      Caption = 'Stok Per Priode'
      ImageIndex = 4
      object GroupBox3: TGroupBox
        Left = 176
        Top = 6
        Width = 409
        Height = 65
        Caption = 'Periode'
        TabOrder = 0
        object ComboBox7: TComboBox
          Left = 8
          Top = 26
          Width = 145
          Height = 22
          Style = csOwnerDrawFixed
          TabOrder = 0
          Items.Strings = (
            'Januari'
            'Februari'
            'Maret'
            'April'
            'Mei'
            'Juni'
            'Juli'
            'Agustus'
            'September'
            'Oktober'
            'November'
            'Desember')
        end
        object Button7: TButton
          Left = 320
          Top = 24
          Width = 73
          Height = 25
          Caption = 'Tampilkan'
          TabOrder = 1
          OnClick = Button7Click
        end
        object ComboBox8: TComboBox
          Left = 160
          Top = 26
          Width = 145
          Height = 22
          Style = csOwnerDrawFixed
          TabOrder = 2
          OnDropDown = ComboBox8DropDown
        end
      end
      object cxGrid5: TcxGrid
        Left = 3
        Top = 76
        Width = 1300
        Height = 494
        TabOrder = 1
        object cxGridDBTableView4: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsqstokperiode
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.Active = True
          DataController.Filter.AutoDataSetFilter = True
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0.00'
              Kind = skSum
            end
            item
              Format = '0,0.00'
              Kind = skSum
            end
            item
              Kind = skCount
            end
            item
              Format = '0.00'
              Kind = skSum
            end
            item
              Format = '0.00'
              Kind = skSum
            end
            item
              Format = '0.00'
              Kind = skSum
            end
            item
              Format = '0.00'
              Kind = skSum
            end
            item
              Format = '0.00'
              Kind = skSum
            end
            item
              Format = '0.00'
              Kind = skSum
            end
            item
              Format = '0.00'
              Kind = skSum
            end
            item
              Format = '0,0.00'
              Kind = skSum
            end
            item
              Format = '0,0.00'
              Kind = skSum
            end
            item
              Format = '0,0.00'
              Kind = skSum
            end
            item
              Format = '0,0.00'
              Kind = skSum
            end
            item
              Format = '0,0.00'
              Kind = skSum
            end
            item
              Format = '0,0.00'
              Kind = skSum
            end
            item
              Format = '0,0.00'
              Kind = skSum
            end
            item
              Format = '0,0.00'
              Kind = skSum
            end
            item
              Format = '0,0.00'
              Kind = skSum
            end
            item
              Format = '0,0.00'
              Kind = skSum
            end
            item
              Format = '0,0.00'
              Kind = skSum
            end
            item
              Format = '0,0.00'
              Kind = skSum
            end
            item
              Format = '0,0.00'
              Kind = skSum
            end
            item
              Format = '0,0.00'
              Kind = skSum
            end
            item
              Format = '0,0.00'
              Kind = skSum
            end
            item
              Format = '0,0.00'
              Kind = skSum
            end
            item
              Format = '0.00'
              Kind = skSum
            end
            item
              Format = '0.00'
              Kind = skSum
            end
            item
              Format = '0.00'
              Kind = skSum
            end
            item
              Format = '0.00'
              Kind = skSum
            end
            item
              Format = '0.00'
              Kind = skSum
            end
            item
              Format = '0.00'
              Kind = skSum
            end
            item
              Format = '0.00'
              Kind = skSum
            end
            item
              Format = '0.00'
              Kind = skSum
            end
            item
              Kind = skCount
            end
            item
              Format = '0.00'
              Kind = skSum
            end
            item
              Format = '0,0.00'
              Kind = skSum
            end
            item
              Format = '0.00'
              Kind = skSum
            end
            item
              Format = '0,0.00'
              Kind = skSum
            end
            item
              Format = '0,0.00'
              Kind = skSum
            end
            item
              Format = '0.00'
              Kind = skSum
            end
            item
              Format = '0.00'
              Kind = skSum
            end
            item
              Format = '0,0.00'
              Kind = skSum
            end
            item
              Kind = skSum
              Column = cxGridDBTableView4stokawal
            end
            item
              Kind = skSum
              Column = cxGridDBTableView4nominalstokawal
            end
            item
              Kind = skSum
              Column = cxGridDBTableView4pembelian
            end
            item
              Kind = skSum
              Column = cxGridDBTableView4nominalpembelian
            end
            item
              Kind = skSum
              Column = cxGridDBTableView4terimatransfer
            end
            item
              Kind = skSum
              Column = cxGridDBTableView4totalterimatransfer
            end
            item
              Kind = skSum
              Column = cxGridDBTableView4terimaretur
            end
            item
              Kind = skSum
              Column = cxGridDBTableView4nominalterimaretur
            end
            item
              Kind = skSum
              Column = cxGridDBTableView4penjualan
            end
            item
              Kind = skSum
              Column = cxGridDBTableView4nominalpenjualan
            end
            item
              Kind = skSum
              Column = cxGridDBTableView4penjualantransfer
            end
            item
              Kind = skSum
              Column = cxGridDBTableView4totalpenjualantransfer
            end
            item
              Kind = skSum
              Column = cxGridDBTableView4penjualanbssegel
            end
            item
              Kind = skSum
              Column = cxGridDBTableView4totalpenjualanbssegel
            end
            item
              Kind = skSum
              Column = cxGridDBTableView4retur
            end
            item
              Kind = skSum
              Column = cxGridDBTableView4nominalretur
            end
            item
              Kind = skSum
              Column = cxGridDBTableView4koreksi
            end
            item
              Kind = skSum
              Column = cxGridDBTableView4nominalkoreksi
            end
            item
              Kind = skSum
              Column = cxGridDBTableView4koreksikainrusak
            end
            item
              Kind = skSum
              Column = cxGridDBTableView4nominalkainrusak
            end
            item
              Kind = skSum
              Column = cxGridDBTableView4stokakhir
            end
            item
              Kind = skSum
              Column = cxGridDBTableView4nominal
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.FooterMultiSummaries = True
          OptionsView.HeaderAutoHeight = True
          object cxGridDBTableView4tanggal_terima: TcxGridDBColumn
            Caption = 'Tanggal Terima'
            DataBinding.FieldName = 'tanggal_terima'
            Width = 96
          end
          object cxGridDBTableView4no_roll: TcxGridDBColumn
            Caption = 'No Roll Induk'
            DataBinding.FieldName = 'no_roll'
            Width = 88
          end
          object cxGridDBTableView4status_kain: TcxGridDBColumn
            Caption = 'Status Kain'
            DataBinding.FieldName = 'status_kain'
            Width = 110
          end
          object cxGridDBTableView4nama_kain: TcxGridDBColumn
            Caption = 'Jenis kain'
            DataBinding.FieldName = 'nama_kain'
            Width = 176
          end
          object cxGridDBTableView4jenis_warna: TcxGridDBColumn
            Caption = 'Warna'
            DataBinding.FieldName = 'jenis_warna'
            Width = 151
          end
          object cxGridDBTableView4kode_spk: TcxGridDBColumn
            Caption = 'Kode spk'
            DataBinding.FieldName = 'kode_spk'
            Width = 79
          end
          object cxGridDBTableView4harga: TcxGridDBColumn
            Caption = 'Harga'
            DataBinding.FieldName = 'harga'
            Width = 77
          end
          object cxGridDBTableView4stokawal: TcxGridDBColumn
            Caption = 'Stok Awall'
            DataBinding.FieldName = 'stokawal'
            Width = 66
          end
          object cxGridDBTableView4nominalstokawal: TcxGridDBColumn
            Caption = 'Nominal Stok Awall'
            DataBinding.FieldName = 'nominalstokawal'
            Width = 111
          end
          object cxGridDBTableView4pembelian: TcxGridDBColumn
            Caption = 'Pembelian'
            DataBinding.FieldName = 'pembelian'
          end
          object cxGridDBTableView4nominalpembelian: TcxGridDBColumn
            Caption = 'Nominal Pembelian'
            DataBinding.FieldName = 'nominalpembelian'
            Width = 114
          end
          object cxGridDBTableView4terimatransfer: TcxGridDBColumn
            Caption = 'Penerimaan Transfer Stok'
            DataBinding.FieldName = 'terimatransfer'
            Width = 133
          end
          object cxGridDBTableView4totalterimatransfer: TcxGridDBColumn
            Caption = 'Nominal Penerimaan Transfer Stok'
            DataBinding.FieldName = 'totalterimatransfer'
            Width = 137
          end
          object cxGridDBTableView4terimaretur: TcxGridDBColumn
            Caption = 'Penerimaan Retur'
            DataBinding.FieldName = 'terimaretur'
            Width = 95
          end
          object cxGridDBTableView4nominalterimaretur: TcxGridDBColumn
            Caption = 'Nominal Terima Retur'
            DataBinding.FieldName = 'nominalterimaretur'
            Width = 124
          end
          object cxGridDBTableView4penjualan: TcxGridDBColumn
            Caption = 'Penjualan'
            DataBinding.FieldName = 'penjualan'
            Width = 70
          end
          object cxGridDBTableView4nominalpenjualan: TcxGridDBColumn
            Caption = 'Nominal Penjualan'
            DataBinding.FieldName = 'nominalpenjualan'
            Width = 111
          end
          object cxGridDBTableView4penjualantransfer: TcxGridDBColumn
            Caption = 'Pengeluaran Transfer Stok'
            DataBinding.FieldName = 'penjualantransfer'
            Width = 144
          end
          object cxGridDBTableView4totalpenjualantransfer: TcxGridDBColumn
            Caption = 'Nominal Pengeluaran Transfer Stok'
            DataBinding.FieldName = 'totalpenjualantransfer'
            Width = 181
          end
          object cxGridDBTableView4penjualanbssegel: TcxGridDBColumn
            Caption = 'Penjualan BS SEGEL'
            DataBinding.FieldName = 'penjualanbssegel'
            Width = 119
          end
          object cxGridDBTableView4totalpenjualanbssegel: TcxGridDBColumn
            Caption = 'Nominal Penjualan BS SEGEL'
            DataBinding.FieldName = 'totalpenjualanbssegel'
            Width = 123
          end
          object cxGridDBTableView4retur: TcxGridDBColumn
            Caption = 'Retur'
            DataBinding.FieldName = 'retur'
          end
          object cxGridDBTableView4nominalretur: TcxGridDBColumn
            Caption = 'Nominal Retur'
            DataBinding.FieldName = 'nominalretur'
            Width = 99
          end
          object cxGridDBTableView4koreksi: TcxGridDBColumn
            Caption = 'Koreksi'
            DataBinding.FieldName = 'koreksi'
            Width = 64
          end
          object cxGridDBTableView4nominalkoreksi: TcxGridDBColumn
            Caption = 'Nominal Koreksi'
            DataBinding.FieldName = 'nominalkoreksi'
            Width = 95
          end
          object cxGridDBTableView4koreksikainrusak: TcxGridDBColumn
            Caption = 'Koreksi Kain'
            DataBinding.FieldName = 'koreksikainrusak'
            Width = 99
          end
          object cxGridDBTableView4nominalkainrusak: TcxGridDBColumn
            Caption = 'Nominal Koreksi Kain Rusak'
            DataBinding.FieldName = 'nominalkainrusak'
            Width = 149
          end
          object cxGridDBTableView4stokakhir: TcxGridDBColumn
            Caption = 'Stok Akhir'
            DataBinding.FieldName = 'stokakhir'
          end
          object cxGridDBTableView4nominal: TcxGridDBColumn
            Caption = 'Nominal Stok Akhir'
            DataBinding.FieldName = 'nominal'
            Width = 141
          end
        end
        object cxGridLevel4: TcxGridLevel
          GridView = cxGridDBTableView4
        end
      end
      object GroupBox4: TGroupBox
        Left = 5
        Top = 5
        Width = 164
        Height = 66
        Caption = 'Filter Berdasarkan'
        TabOrder = 2
        object ComboBox9: TComboBox
          Left = 11
          Top = 26
          Width = 145
          Height = 22
          Style = csOwnerDrawFixed
          ItemIndex = 0
          TabOrder = 0
          Text = 'Per Bulan'
          OnChange = ComboBox9Change
          Items.Strings = (
            'Per Bulan'
            'Per Tahun')
        end
      end
    end
  end
  object qdata2: TUniQuery
    LocalUpdate = True
    Connection = tabel.server
    SQL.Strings = (
      
        'SELECT IF(stokakhir = ppn.berat_terima AND ppn.terima_dari='#39'PEMB' +
        'ELIAN'#39' AND pnj.no_roll IS NULL AND LEFT(vs.no_roll,1)='#39'R'#39','#39'ROLLA' +
        'N'#39','#39'KGAN'#39') AS stskain,vs.no_lokasi,harga,tanggal_terima,tipe_kai' +
        'n,nama_kain,jenis_warna,kode_spk,vs.no_roll,vs.roll_induk , stok' +
        'awal-IFNULL(sakr.berat,0) AS stokawal, '
      
        'totalstokawal- IFNULL(sakr.nominal,0) AS totalstokawal,terima ,t' +
        'otalterima,terimatransfer,totalterimatransfer, terimaretur ,  to' +
        'talterimaretur ,  penjualan, '
      
        'sapenjualanbssegel,satotalpenjualanbssegel,penjualanbssegel,tota' +
        'lpenjualanbssegel, '
      
        'totalpenjualan ,penjualantransfer,totalpenjualantransfer,  retur' +
        ',totalretur,beratkoreksi ,totalberatkoreksi ,IFNULL(kr.berat,0) ' +
        'AS koreksi_kainrusak,IFNULL(kr.nominal,0) AS totalkoreksi_kainru' +
        'sak, '
      
        'vs.stokakhir - IFNULL(sakr.berat,0) - IFNULL(kr.berat,0) AS stok' +
        'akhir,  vs.totalstokakhir - IFNULL(sakr.nominal,0) -IFNULL(kr.no' +
        'minal,0) AS totalstokakhir '
      
        'FROM n_stokperioderoll_bulan vs JOIN perincian_penerimaanstok pp' +
        'n USING(no_roll)'
      
        'LEFT JOIN (SELECT no_roll,SUM(p.berat) AS berat FROM penjualan_k' +
        'ainstok JOIN detail_pengeluaranstok USING(no_pengeluaran) JOIN p' +
        'erincian_pengeluaranstok p USING(no_detail)'
      
        'WHERE DATE_FORMAT(tanggal, '#39'%Y-%m'#39') <= '#39'2020-12'#39' GROUP BY no_rol' +
        'l) AS pnj ON vs.no_roll=pnj.no_roll'
      'LEFT JOIN '
      
        '(SELECT SUM(berat) AS berat,SUM(nominal) AS nominal,no_roll FROM' +
        ' koreksi_kainrusak WHERE DATE_FORMAT(tanggal_efektif, '#39'%Y-%m'#39') <' +
        ' '#39'2020-12'#39'  '
      'GROUP BY no_roll) AS sakr ON sakr.no_roll=vs.no_roll '
      'LEFT JOIN '
      
        '(SELECT SUM(berat) AS berat,SUM(nominal) AS nominal,no_roll FROM' +
        ' koreksi_kainrusak WHERE DATE_FORMAT(tanggal_efektif, '#39'%Y-%m'#39') =' +
        ' '#39'2020-12'#39' '
      
        'GROUP BY no_roll) AS kr ON kr.no_roll=vs.no_roll  WHERE CONCAT(v' +
        's.tahun,'#39'-'#39',vs.bulan) = '#39'2020-12'#39' GROUP BY vs.no_roll '
      
        'HAVING (stokawal <> 0 OR sapenjualanbssegel <> 0 OR terima <> 0 ' +
        'OR terimatransfer <> 0 OR terimaretur <> 0 OR penjualan <> 0 OR ' +
        'penjualantransfer <> 0 '
      
        ' OR penjualanbssegel <> 0 OR retur <> 0 OR beratkoreksi <> 0 OR ' +
        'koreksi_kainrusak <> 0 OR  stokakhir <> 0)'
      '--  and stskain='#39'ROLLAN'#39)
    FilterOptions = [foCaseInsensitive]
    Left = 546
    Top = 70
    object qdata2no_lokasi: TStringField
      FieldName = 'no_lokasi'
      Required = True
      Size = 15
    end
    object qdata2harga: TFloatField
      FieldName = 'harga'
      Required = True
    end
    object qdata2tanggal_terima: TDateField
      FieldName = 'tanggal_terima'
      Required = True
      DisplayFormat = 'dd MM yyyy'
    end
    object qdata2tipe_kain: TStringField
      FieldName = 'tipe_kain'
      Required = True
      Size = 100
    end
    object qdata2nama_kain: TStringField
      FieldName = 'nama_kain'
      Required = True
      Size = 100
    end
    object qdata2jenis_warna: TStringField
      FieldName = 'jenis_warna'
      Required = True
      Size = 75
    end
    object qdata2kode_spk: TStringField
      FieldName = 'kode_spk'
      Required = True
      Size = 25
    end
    object qdata2no_roll: TStringField
      FieldName = 'no_roll'
      Required = True
      Size = 18
    end
    object qdata2roll_induk: TStringField
      FieldName = 'roll_induk'
      Required = True
      Size = 100
    end
    object qdata2stokawal: TFloatField
      FieldName = 'stokawal'
      ReadOnly = True
      Required = True
      DisplayFormat = '0.00'
    end
    object qdata2totalstokawal: TFloatField
      FieldName = 'totalstokawal'
      ReadOnly = True
      Required = True
    end
    object qdata2terima: TFloatField
      FieldName = 'terima'
      Required = True
      DisplayFormat = '0.00'
    end
    object qdata2totalterima: TFloatField
      FieldName = 'totalterima'
      Required = True
      DisplayFormat = '0,0.00'
    end
    object qdata2terimaretur: TFloatField
      FieldName = 'terimaretur'
      Required = True
      DisplayFormat = '0.00'
    end
    object qdata2totalterimaretur: TFloatField
      FieldName = 'totalterimaretur'
      ReadOnly = True
      Required = True
      DisplayFormat = '0,0.00'
    end
    object qdata2penjualan: TFloatField
      FieldName = 'penjualan'
      Required = True
      DisplayFormat = '0.00'
    end
    object qdata2totalpenjualan: TFloatField
      FieldName = 'totalpenjualan'
      ReadOnly = True
      Required = True
      DisplayFormat = '0,0.00'
    end
    object qdata2retur: TFloatField
      FieldName = 'retur'
      Required = True
      DisplayFormat = '0.00'
    end
    object qdata2totalretur: TFloatField
      FieldName = 'totalretur'
      Required = True
      DisplayFormat = '0,0.00'
    end
    object qdata2beratkoreksi: TFloatField
      FieldName = 'beratkoreksi'
      Required = True
      DisplayFormat = '0.00'
    end
    object qdata2totalberatkoreksi: TFloatField
      FieldName = 'totalberatkoreksi'
      Required = True
      DisplayFormat = '0,0.00'
    end
    object qdata2koreksi_kainrusak: TFloatField
      FieldName = 'koreksi_kainrusak'
      ReadOnly = True
      Required = True
      DisplayFormat = '0.00'
    end
    object qdata2totalkoreksi_kainrusak: TFloatField
      FieldName = 'totalkoreksi_kainrusak'
      ReadOnly = True
      Required = True
      DisplayFormat = '0,0.00'
    end
    object qdata2stokakhir: TFloatField
      FieldName = 'stokakhir'
      ReadOnly = True
      Required = True
      DisplayFormat = '0.00'
    end
    object qdata2totalstokakhir: TFloatField
      FieldName = 'totalstokakhir'
      ReadOnly = True
      Required = True
      DisplayFormat = '0,0.00'
    end
    object qdata2terimatransfer: TFloatField
      FieldName = 'terimatransfer'
      Required = True
      DisplayFormat = '0.00'
    end
    object qdata2totalterimatransfer: TFloatField
      FieldName = 'totalterimatransfer'
      Required = True
      DisplayFormat = '0,0.00'
    end
    object qdata2penjualantransfer: TFloatField
      FieldName = 'penjualantransfer'
      Required = True
      DisplayFormat = '0.00'
    end
    object qdata2totalpenjualantransfer: TFloatField
      FieldName = 'totalpenjualantransfer'
      Required = True
      DisplayFormat = '0,0.00'
    end
    object qdata2sapenjualanbssegel: TFloatField
      FieldName = 'sapenjualanbssegel'
      Required = True
      DisplayFormat = '0.00'
    end
    object qdata2satotalpenjualanbssegel: TFloatField
      FieldName = 'satotalpenjualanbssegel'
      Required = True
      DisplayFormat = '0,0.00'
    end
    object qdata2penjualanbssegel: TFloatField
      FieldName = 'penjualanbssegel'
      Required = True
      DisplayFormat = '0.00'
    end
    object qdata2totalpenjualanbssegel: TFloatField
      FieldName = 'totalpenjualanbssegel'
      Required = True
      DisplayFormat = '0,0.00'
    end
    object qdata2stskain: TStringField
      FieldName = 'stskain'
      ReadOnly = True
      Required = True
      Size = 6
    end
  end
  object dsqdata2: TUniDataSource
    DataSet = qdata2
    Left = 621
    Top = 77
  end
  object UniQuery1: TUniQuery
    Connection = tabel.server
    SQL.Strings = (
      
        'SELECT nama_kain,jenis_warna,SUM(stokakhir) AS stok, SUM(totalst' +
        'okakhir) AS total FROM v_stokperioderoll GROUP BY nama_kain,jeni' +
        's_warna'
      'ORDER BY nama_kain,jenis_warna')
    FilterOptions = [foCaseInsensitive]
    Left = 594
    Top = 46
    object UniQuery1nama_kain: TStringField
      FieldName = 'nama_kain'
      Required = True
      Size = 100
    end
    object UniQuery1jenis_warna: TStringField
      FieldName = 'jenis_warna'
      Required = True
      Size = 75
    end
    object UniQuery1stok: TFloatField
      FieldName = 'stok'
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object UniQuery1total: TFloatField
      FieldName = 'total'
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
  end
  object UniDataSource1: TUniDataSource
    DataSet = UniQuery1
    Left = 669
    Top = 37
  end
  object vt: TVirtualTable
    Left = 760
    Top = 48
    Data = {04000000000000000000}
    object vtnama_kain: TStringField
      FieldName = 'nama_kain'
    end
    object vtjenis_warna: TStringField
      FieldName = 'jenis_warna'
    end
    object vtstok: TStringField
      FieldName = 'stok'
    end
    object vttotal: TStringField
      FieldName = 'total'
    end
  end
  object vtroll: TVirtualTable
    Left = 872
    Top = 24
    Data = {04000000000000000000}
    object vtrollno_roll: TStringField
      FieldName = 'no_roll'
    end
    object vtrollno_lokasi: TStringField
      FieldName = 'no_lokasi'
    end
    object vtrollroll_induk: TStringField
      FieldName = 'roll_induk'
    end
    object vtrollnama_kain: TStringField
      FieldName = 'nama_kain'
    end
    object vtrolljenis_warna: TStringField
      FieldName = 'jenis_warna'
    end
    object vtrollkode_spk: TStringField
      FieldName = 'kode_spk'
    end
    object vtrollstokakhir: TStringField
      FieldName = 'stokakhir'
    end
    object vtrolltotalstokakhir: TStringField
      FieldName = 'totalstokakhir'
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 536
    Top = 288
  end
  object qdatainduk: TUniQuery
    LocalUpdate = True
    Connection = tabel.server
    SQL.Strings = (
      ''
      
        'SELECT IF(stokawal = 0 ,'#39'ROLLAN'#39','#39'KGAN'#39') AS stskain,no_lokasi,ha' +
        'rga,tanggal_terima,tipe_kain,nama_kain,jenis_warna,kode_spk,vs.n' +
        'o_roll,vs.roll_induk , SUM(stokawal-IFNULL(sakr.berat,0)) AS sto' +
        'kawal,'
      
        'SUM(totalstokawal- IFNULL(sakr.nominal,0)) AS totalstokawal,SUM(' +
        'terima) AS terima ,SUM(totalterima) AS totalterima, '
      
        'SUM(terimatransfer) AS terimatransfer,SUM(totalterimatransfer) A' +
        'S totalterimatransfer,'
      'SUM(terimaretur) AS terimaretur ,'
      
        'SUM(sapenjualanbssegel) AS sapenjualanbssegel,SUM(satotalpenjual' +
        'anbssegel) AS satotalpenjualanbssegel,'
      
        'SUM(penjualanbssegel) AS penjualanbssegel,SUM(totalpenjualanbsse' +
        'gel) AS totalpenjualanbssegel,'
      
        'SUM(totalterimaretur) AS totalterimaretur,  SUM(penjualan) AS pe' +
        'njualan,  SUM(totalpenjualan) AS totalpenjualan,   '
      
        'SUM(penjualantransfer) AS penjualantransfer, SUM(totalpenjualant' +
        'ransfer) AS totalpenjualantransfer, '
      'SUM(retur) retur,'
      
        'SUM(totalretur) AS totalretur,SUM(beratkoreksi) AS beratkoreksi ' +
        ',SUM(totalberatkoreksi) AS totalberatkoreksi ,   '
      
        'SUM(IFNULL(kr.berat,0)) AS koreksi_kainrusak,SUM(IFNULL(kr.nomin' +
        'al,0)) AS totalkoreksi_kainrusak,  '
      
        'SUM(vs.stokakhir - IFNULL(sakr.berat,0) - IFNULL(kr.berat,0)) AS' +
        ' stokakhir,   '
      
        'SUM(vs.totalstokakhir - IFNULL(sakr.nominal,0) -IFNULL(kr.nomina' +
        'l,0)) AS totalstokakhir   '
      'FROM v_stokperioderoll vs  '
      
        'LEFT JOIN  (SELECT SUM(berat) AS berat,SUM(nominal) AS nominal,n' +
        'o_roll FROM koreksi_kainrusak'
      
        ' WHERE DATE_FORMAT(tanggal_efektif, '#39'%Y'#39') < '#39'2020'#39'    GROUP BY n' +
        'o_roll) AS sakr ON sakr.no_roll=vs.no_roll  '
      
        ' LEFT JOIN  (SELECT SUM(berat) AS berat,SUM(nominal) AS nominal,' +
        'no_roll FROM koreksi_kainrusak WHERE DATE_FORMAT(tanggal_efektif' +
        ', '#39'%Y'#39') = '#39'2020'#39'   '
      ' GROUP BY no_roll) AS kr ON kr.no_roll=vs.no_roll  '
      ' GROUP BY vs.roll_induk  '
      
        ' HAVING stokawal <> 0 OR terima <> 0 OR terimatransfer <> 0 OR t' +
        'erimaretur <> 0 OR penjualan <> 0 OR retur <> 0 OR beratkoreksi ' +
        '<> 0 OR koreksi_kainrusak <> 0 '
      ' OR  stokakhir <> 0 '
      'limit 1')
    FilterOptions = [foCaseInsensitive]
    Left = 634
    Top = 94
    object StringField1: TStringField
      FieldName = 'no_lokasi'
      Required = True
      Size = 15
    end
    object FloatField1: TFloatField
      FieldName = 'harga'
      Required = True
    end
    object StringField2: TStringField
      FieldName = 'tipe_kain'
      Required = True
      Size = 100
    end
    object StringField3: TStringField
      FieldName = 'nama_kain'
      Required = True
      Size = 100
    end
    object StringField4: TStringField
      FieldName = 'jenis_warna'
      Required = True
      Size = 75
    end
    object StringField5: TStringField
      FieldName = 'kode_spk'
      Required = True
      Size = 25
    end
    object StringField6: TStringField
      FieldName = 'no_roll'
      Required = True
      Size = 18
    end
    object StringField7: TStringField
      FieldName = 'roll_induk'
      Required = True
      Size = 100
    end
    object FloatField2: TFloatField
      FieldName = 'stokawal'
      ReadOnly = True
      Required = True
      DisplayFormat = '0.00'
    end
    object FloatField3: TFloatField
      FieldName = 'totalstokawal'
      ReadOnly = True
      Required = True
    end
    object FloatField4: TFloatField
      FieldName = 'terima'
      Required = True
      DisplayFormat = '0.00'
    end
    object FloatField5: TFloatField
      FieldName = 'totalterima'
      Required = True
      DisplayFormat = '0,0.00'
    end
    object FloatField6: TFloatField
      FieldName = 'terimaretur'
      Required = True
      DisplayFormat = '0.00'
    end
    object FloatField7: TFloatField
      FieldName = 'totalterimaretur'
      ReadOnly = True
      Required = True
      DisplayFormat = '0,0.00'
    end
    object FloatField8: TFloatField
      FieldName = 'penjualan'
      Required = True
      DisplayFormat = '0.00'
    end
    object FloatField9: TFloatField
      FieldName = 'totalpenjualan'
      ReadOnly = True
      Required = True
      DisplayFormat = '0,0.00'
    end
    object FloatField10: TFloatField
      FieldName = 'retur'
      Required = True
      DisplayFormat = '0.00'
    end
    object FloatField11: TFloatField
      FieldName = 'totalretur'
      Required = True
      DisplayFormat = '0,0.00'
    end
    object FloatField12: TFloatField
      FieldName = 'beratkoreksi'
      Required = True
      DisplayFormat = '0.00'
    end
    object FloatField13: TFloatField
      FieldName = 'totalberatkoreksi'
      Required = True
      DisplayFormat = '0,0.00'
    end
    object FloatField14: TFloatField
      FieldName = 'koreksi_kainrusak'
      ReadOnly = True
      Required = True
      DisplayFormat = '0.00'
    end
    object FloatField15: TFloatField
      FieldName = 'totalkoreksi_kainrusak'
      ReadOnly = True
      Required = True
      DisplayFormat = '0,0.00'
    end
    object FloatField16: TFloatField
      FieldName = 'stokakhir'
      ReadOnly = True
      Required = True
      DisplayFormat = '0.00'
    end
    object FloatField17: TFloatField
      FieldName = 'totalstokakhir'
      ReadOnly = True
      Required = True
      DisplayFormat = '0,0.00'
    end
    object qdatainduktanggal_terima: TDateField
      FieldName = 'tanggal_terima'
      Required = True
      DisplayFormat = 'dd MM yyyy'
    end
    object qdataindukterimatransfer: TFloatField
      FieldName = 'terimatransfer'
      ReadOnly = True
      DisplayFormat = '0.00'
    end
    object qdatainduktotalterimatransfer: TFloatField
      FieldName = 'totalterimatransfer'
      ReadOnly = True
      DisplayFormat = '0,0.00'
    end
    object qdataindukpenjualantransfer: TFloatField
      FieldName = 'penjualantransfer'
      ReadOnly = True
      DisplayFormat = '0.00'
    end
    object qdatainduktotalpenjualantransfer: TFloatField
      FieldName = 'totalpenjualantransfer'
      ReadOnly = True
      DisplayFormat = '0,0.00'
    end
    object qdatainduksapenjualanbssegel: TFloatField
      FieldName = 'sapenjualanbssegel'
      ReadOnly = True
      DisplayFormat = '0.00'
    end
    object qdatainduksatotalpenjualanbssegel: TFloatField
      FieldName = 'satotalpenjualanbssegel'
      ReadOnly = True
      DisplayFormat = '0,0.00'
    end
    object qdataindukpenjualanbssegel: TFloatField
      FieldName = 'penjualanbssegel'
      ReadOnly = True
      DisplayFormat = '0.00'
    end
    object qdatainduktotalpenjualanbssegel: TFloatField
      FieldName = 'totalpenjualanbssegel'
      ReadOnly = True
      DisplayFormat = '0,0.00'
    end
    object qdataindukstskain: TStringField
      FieldName = 'stskain'
      ReadOnly = True
      Required = True
      Size = 6
    end
  end
  object dsqdatainduk: TUniDataSource
    DataSet = qdatainduk
    Left = 709
    Top = 53
  end
  object dsqdata: TUniDataSource
    DataSet = qdata
    Left = 797
    Top = 125
  end
  object qdata: TUniQuery
    Connection = tabel.server
    SQL.Strings = (
      
        'SELECT IF(vs.no_lokasi='#39'HILANG'#39' OR LEFT(vs.no_lokasi,2)='#39'H_'#39',DAT' +
        'E(vso.tanggal),'#39'-'#39') AS tanggal_h, '
      
        ' IF(vs.no_lokasi='#39'HILANG'#39',(SELECT CAST(MAX(tanggal) AS DATE) FRO' +
        'M histori_pemindahandarih_kehilang WHERE no_roll=vs.no_roll),'#39'-'#39 +
        ') AS tanggal_hilang,  '
      ' vso.tanggal AS tanggal_so, vso.lokasi_asal, '
      ' vs.no_lokasi,vs.harga,'
      
        'vs.tanggal_terima,vs.tipe_kain,vs.nama_kain,vs.jenis_warna,vs.ko' +
        'de_spk,vs.no_roll,vs.roll_induk ,'
      ' (stokawal-IFNULL(sakr.berat,0))'
      ' AS stokawal,'
      ' (totalstokawal- IFNULL(sakr.nominal,0))'
      
        ' AS totalstokawal,vs.terima ,vs.totalterima,vs.terimatransfer,vs' +
        '.totalterimatransfer,'
      
        'sapenjualanbssegel,satotalpenjualanbssegel,penjualanbssegel,tota' +
        'lpenjualanbssegel,'
      ' vs.terimaretur ,'
      '   totalterimaretur,'
      '  vs.penjualan,'
      '   totalpenjualan,'
      'vs.penjualantransfer,'
      '   totalpenjualantransfer,'
      '  vs.retur,vs.totalretur,vs.beratkoreksi ,vs.totalberatkoreksi ,'
      
        '(IFNULL(kr.berat,0)) AS koreksi_kainrusak,(IFNULL(kr.nominal,0))' +
        ' AS totalkoreksi_kainrusak,'
      
        '  (vs.stokakhir - IFNULL(sakr.berat,0) - IFNULL(kr.berat,0)) AS ' +
        'stokakhir,'
      
        '  (vs.totalstokakhir - IFNULL(sakr.nominal,0) -IFNULL(kr.nominal' +
        ',0)) AS totalstokakhir ,'
      
        '  IFNULL(vm.berat_mutasi,0) AS berat_mutasi, IFNULL(vm.berat_mut' +
        'asi,0) * vs.harga AS totalmutasi, vm.dt,IF (vs.stokakhir <= IFNU' +
        'LL(v.berat_asal,0),vs.stokakhir, IFNULL(v.berat_asal,0)) AS muta' +
        'sifix,  '
      
        ' IF (vs.stokakhir <= IFNULL(v.berat_asal,0),vs.stokakhir, IFNULL' +
        '(v.berat_asal,0)) * vs.harga AS totalmutasifix,IFNULL(v.berat_as' +
        'al,0) AS berat_sekarang,IFNULL(v.berat_asal,0) * vs.harga AS tot'
      
        '  FROM v_stokperioderoll vs LEFT JOIN  (SELECT  `v_pecahanroll`.' +
        '`roll_induk` AS `roll_induk`,   SUM(berat_terima) AS berat_mutas' +
        'i ,    '
      
        '    GROUP_CONCAT(CONCAT(CONVERT(SUBSTR(`v_pecahanroll`.`tanggal_' +
        'pecah`,1,10) USING latin1),'#39'-'#39',  '
      
        '   `v_pecahanroll`.`status_pecah`,'#39'-'#39',`v_pecahanroll`.`nama`,'#39'-'#39 +
        ',`v_pecahanroll`.`berat_terima`) ORDER BY `v_pecahanroll`.`tangg' +
        'al_pecah` ASC SEPARATOR '#39'#'#39') AS `dt`  '
      
        ' FROM `v_pecahanroll` WHERE DATE_FORMAT(tanggal_pecah, '#39'%Y-%m'#39') ' +
        '> '#39'2018-12'#39'  GROUP BY `v_pecahanroll`.`roll_induk`) vm ON no_rol' +
        'l=vm.roll_induk LEFT JOIN v_ystokall v USING(no_roll) '
      
        '    LEFT JOIN (SELECT tanggal,lokasi_akhir AS lokasi_asal,no_rol' +
        'l FROM data_stokofnamefisik JOIN `detail_stokofnamefisik` ON NO=' +
        'no_stokofname  '
      
        '   JOIN (SELECT CONCAT(MAX(NO),no_roll) AS DATA FROM data_stokof' +
        'namefisik JOIN `detail_stokofnamefisik` ON NO=no_stokofname GROU' +
        'P BY no_roll) AS v ON CONCAT(NO,no_roll)=v.data) AS vso ON vs.no' +
        '_roll=vso.no_roll  '
      '   LEFT JOIN '
      
        '(SELECT SUM(berat) AS berat,SUM(nominal) AS nominal,no_roll FROM' +
        ' koreksi_kainrusak WHERE DATE_FORMAT(tanggal_efektif, '#39'%Y-%m'#39') <' +
        ' '#39'2020-04'#39' '
      'GROUP BY no_roll) AS sakr ON sakr.no_roll=vs.no_roll'
      'LEFT JOIN '
      
        '(SELECT SUM(berat) AS berat,SUM(nominal) AS nominal,no_roll FROM' +
        ' koreksi_kainrusak WHERE DATE_FORMAT(tanggal_efektif, '#39'%Y-%m'#39') =' +
        ' '#39'2020-04'#39' '
      'GROUP BY no_roll) AS kr ON kr.no_roll=vs.no_roll'
      '   GROUP BY vs.no_roll'
      
        ' HAVING stokawal <> 0 OR terima <> 0 OR terimaretur <> 0 OR penj' +
        'ualan <> 0 OR retur <> 0 OR beratkoreksi <> 0 OR koreksi_kainrus' +
        'ak <> 0 '
      'OR  stokakhir <> 0  '
      'limit 1')
    FilterOptions = [foCaseInsensitive]
    Left = 970
    Top = 6
    object qdatatanggal_h: TStringField
      FieldName = 'tanggal_h'
      ReadOnly = True
      Size = 10
    end
    object qdatatanggal_hilang: TStringField
      FieldName = 'tanggal_hilang'
      ReadOnly = True
      Size = 10
    end
    object qdatatanggal_so: TDateTimeField
      FieldName = 'tanggal_so'
      DisplayFormat = 'dd/MM/yyyy'
    end
    object qdatalokasi_asal: TStringField
      FieldName = 'lokasi_asal'
      Size = 100
    end
    object qdatano_lokasi: TStringField
      FieldName = 'no_lokasi'
      ReadOnly = True
      Required = True
      Size = 15
    end
    object qdataharga: TFloatField
      FieldName = 'harga'
      ReadOnly = True
      Required = True
      DisplayFormat = '0,0.00'
    end
    object qdatatanggal_terima: TDateField
      FieldName = 'tanggal_terima'
      ReadOnly = True
      Required = True
      DisplayFormat = 'dd/MM/yyyy'
    end
    object qdatatipe_kain: TStringField
      FieldName = 'tipe_kain'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object qdatanama_kain: TStringField
      FieldName = 'nama_kain'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object qdatajenis_warna: TStringField
      FieldName = 'jenis_warna'
      ReadOnly = True
      Required = True
      Size = 75
    end
    object qdatakode_spk: TStringField
      FieldName = 'kode_spk'
      ReadOnly = True
      Required = True
      Size = 25
    end
    object qdatano_roll: TStringField
      FieldName = 'no_roll'
      ReadOnly = True
      Required = True
      Size = 18
    end
    object qdataroll_induk: TStringField
      FieldName = 'roll_induk'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object qdatastokawal: TFloatField
      FieldName = 'stokawal'
      ReadOnly = True
      Required = True
      DisplayFormat = '0.00'
    end
    object qdatatotalstokawal: TFloatField
      FieldName = 'totalstokawal'
      ReadOnly = True
      Required = True
      DisplayFormat = '0,0.00'
    end
    object qdataterima: TFloatField
      FieldName = 'terima'
      ReadOnly = True
      Required = True
      DisplayFormat = '0.00'
    end
    object qdatatotalterima: TFloatField
      FieldName = 'totalterima'
      ReadOnly = True
      Required = True
      DisplayFormat = '0,0.00'
    end
    object qdataterimaretur: TFloatField
      FieldName = 'terimaretur'
      ReadOnly = True
      Required = True
      DisplayFormat = '0.00'
    end
    object qdatatotalterimaretur: TFloatField
      FieldName = 'totalterimaretur'
      ReadOnly = True
      Required = True
      DisplayFormat = '0,0.00'
    end
    object qdatapenjualan: TFloatField
      FieldName = 'penjualan'
      ReadOnly = True
      Required = True
      DisplayFormat = '0.00'
    end
    object qdatatotalpenjualan: TFloatField
      FieldName = 'totalpenjualan'
      ReadOnly = True
      Required = True
      DisplayFormat = '0,0.00'
    end
    object qdataretur: TFloatField
      FieldName = 'retur'
      ReadOnly = True
      Required = True
      DisplayFormat = '0.00'
    end
    object qdatatotalretur: TFloatField
      FieldName = 'totalretur'
      ReadOnly = True
      Required = True
      DisplayFormat = '0,0.00'
    end
    object qdataberatkoreksi: TFloatField
      FieldName = 'beratkoreksi'
      ReadOnly = True
      Required = True
      DisplayFormat = '0.00'
    end
    object qdatatotalberatkoreksi: TFloatField
      FieldName = 'totalberatkoreksi'
      ReadOnly = True
      Required = True
      DisplayFormat = '0,0.00'
    end
    object qdatakoreksi_kainrusak: TFloatField
      FieldName = 'koreksi_kainrusak'
      ReadOnly = True
      Required = True
      DisplayFormat = '0.00'
    end
    object qdatatotalkoreksi_kainrusak: TFloatField
      FieldName = 'totalkoreksi_kainrusak'
      ReadOnly = True
      Required = True
      DisplayFormat = '0,0.00'
    end
    object qdatastokakhir: TFloatField
      FieldName = 'stokakhir'
      ReadOnly = True
      Required = True
      DisplayFormat = '0.00'
    end
    object qdatatotalstokakhir: TFloatField
      FieldName = 'totalstokakhir'
      ReadOnly = True
      Required = True
      DisplayFormat = '0,0.00'
    end
    object qdataberat_mutasi: TFloatField
      FieldName = 'berat_mutasi'
      ReadOnly = True
      Required = True
      DisplayFormat = '0.00'
    end
    object qdatatotalmutasi: TFloatField
      FieldName = 'totalmutasi'
      ReadOnly = True
      Required = True
      DisplayFormat = '0,0.00'
    end
    object qdatadt: TMemoField
      FieldName = 'dt'
      ReadOnly = True
      BlobType = ftMemo
    end
    object qdatamutasifix: TFloatField
      FieldName = 'mutasifix'
      ReadOnly = True
      Required = True
      DisplayFormat = '0.00'
    end
    object qdatatotalmutasifix: TFloatField
      FieldName = 'totalmutasifix'
      ReadOnly = True
      Required = True
      DisplayFormat = '0,0.00'
    end
    object qdataberat_sekarang: TFloatField
      FieldName = 'berat_sekarang'
      ReadOnly = True
      Required = True
      DisplayFormat = '0.00'
    end
    object qdatatot: TFloatField
      FieldName = 'tot'
      ReadOnly = True
      Required = True
      DisplayFormat = '0,0.00'
    end
    object qdataterimatransfer: TFloatField
      FieldName = 'terimatransfer'
      ReadOnly = True
      Required = True
      DisplayFormat = '0.00'
    end
    object qdatatotalterimatransfer: TFloatField
      FieldName = 'totalterimatransfer'
      ReadOnly = True
      Required = True
      DisplayFormat = '0,0.00'
    end
    object qdatapenjualantransfer: TFloatField
      FieldName = 'penjualantransfer'
      ReadOnly = True
      Required = True
      DisplayFormat = '0.00'
    end
    object qdatatotalpenjualantransfer: TFloatField
      FieldName = 'totalpenjualantransfer'
      ReadOnly = True
      Required = True
      DisplayFormat = '0,0.00'
    end
    object qdatasapenjualanbssegel: TFloatField
      FieldName = 'sapenjualanbssegel'
      ReadOnly = True
      Required = True
      DisplayFormat = '0.00'
    end
    object qdatasatotalpenjualanbssegel: TFloatField
      FieldName = 'satotalpenjualanbssegel'
      ReadOnly = True
      Required = True
      DisplayFormat = '0,0.00'
    end
    object qdatapenjualanbssegel: TFloatField
      FieldName = 'penjualanbssegel'
      ReadOnly = True
      Required = True
      DisplayFormat = '0.00'
    end
    object qdatatotalpenjualanbssegel: TFloatField
      FieldName = 'totalpenjualanbssegel'
      ReadOnly = True
      Required = True
      DisplayFormat = '0,0.00'
    end
  end
  object qstokperiode: TUniQuery
    Connection = tabel.server
    SQL.Strings = (
      
        'CALL stokperiode_baru('#39'2021-03-01'#39',CONCAT('#39'2021-03-'#39',DATE_FORMAT' +
        '(LAST_DAY('#39'2021-03-01'#39'),'#39'%d'#39')))')
    Left = 884
    Top = 314
    object qstokperiodetanggal_terima: TDateField
      FieldName = 'tanggal_terima'
      Required = True
    end
    object qstokperiodeno_roll: TStringField
      FieldName = 'no_roll'
      ReadOnly = True
      Required = True
      Size = 18
    end
    object qstokperiodenama_kain: TStringField
      FieldName = 'nama_kain'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object qstokperiodejenis_warna: TStringField
      FieldName = 'jenis_warna'
      ReadOnly = True
      Required = True
      Size = 75
    end
    object qstokperiodekode_spk: TStringField
      FieldName = 'kode_spk'
      ReadOnly = True
      Required = True
      Size = 25
    end
    object qstokperiodeharga: TFloatField
      FieldName = 'harga'
      ReadOnly = True
      Required = True
    end
    object qstokperiodestokawal: TFloatField
      FieldName = 'stokawal'
      ReadOnly = True
      Required = True
    end
    object qstokperiodenominalstokawal: TFloatField
      FieldName = 'nominalstokawal'
      ReadOnly = True
      Required = True
    end
    object qstokperiodepembelian: TFloatField
      FieldName = 'pembelian'
      ReadOnly = True
    end
    object qstokperiodenominalpembelian: TFloatField
      FieldName = 'nominalpembelian'
      ReadOnly = True
    end
    object qstokperiodeterimatransfer: TFloatField
      FieldName = 'terimatransfer'
      ReadOnly = True
    end
    object qstokperiodetotalterimatransfer: TFloatField
      FieldName = 'totalterimatransfer'
      ReadOnly = True
    end
    object qstokperiodeterimaretur: TFloatField
      FieldName = 'terimaretur'
      ReadOnly = True
    end
    object qstokperiodenominalterimaretur: TFloatField
      FieldName = 'nominalterimaretur'
      ReadOnly = True
    end
    object qstokperiodepenjualan: TFloatField
      FieldName = 'penjualan'
      ReadOnly = True
      Required = True
    end
    object qstokperiodenominalpenjualan: TFloatField
      FieldName = 'nominalpenjualan'
      ReadOnly = True
      Required = True
    end
    object qstokperiodepenjualantransfer: TFloatField
      FieldName = 'penjualantransfer'
      ReadOnly = True
      Required = True
    end
    object qstokperiodetotalpenjualantransfer: TFloatField
      FieldName = 'totalpenjualantransfer'
      ReadOnly = True
      Required = True
    end
    object qstokperiodepenjualanbssegel: TFloatField
      FieldName = 'penjualanbssegel'
      ReadOnly = True
      Required = True
    end
    object qstokperiodetotalpenjualanbssegel: TFloatField
      FieldName = 'totalpenjualanbssegel'
      ReadOnly = True
      Required = True
    end
    object qstokperioderetur: TFloatField
      FieldName = 'retur'
      ReadOnly = True
      Required = True
    end
    object qstokperiodenominalretur: TFloatField
      FieldName = 'nominalretur'
      ReadOnly = True
      Required = True
    end
    object qstokperiodekoreksi: TFloatField
      FieldName = 'koreksi'
      ReadOnly = True
      Required = True
    end
    object qstokperiodenominalkoreksi: TFloatField
      FieldName = 'nominalkoreksi'
      ReadOnly = True
      Required = True
    end
    object qstokperiodekoreksikainrusak: TFloatField
      FieldName = 'koreksikainrusak'
      ReadOnly = True
      Required = True
    end
    object qstokperiodenominalkainrusak: TFloatField
      FieldName = 'nominalkainrusak'
      ReadOnly = True
      Required = True
    end
    object qstokperiodestokakhir: TFloatField
      FieldName = 'stokakhir'
      ReadOnly = True
    end
    object qstokperiodenominal: TFloatField
      FieldName = 'nominal'
      ReadOnly = True
    end
    object qstokperiodestatus_kain: TStringField
      FieldName = 'status_kain'
      Size = 50
    end
  end
  object dsqstokperiode: TUniDataSource
    DataSet = qstokperiode
    Left = 948
    Top = 274
  end
end
