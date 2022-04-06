unit ufmenuutama;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxRibbonSkins, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinsdxRibbonPainter, dxRibbonCustomizationForm,
  dxSkinsdxBarPainter, dxBar, cxClasses, dxRibbon, dxSkinsdxStatusBarPainter,
  dxStatusBar, Vcl.ExtCtrls, dxGDIPlusClasses, Data.DB, MemDS, DBAccess, Uni,
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ComCtrls, sEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  acProgressBar, sGroupBox,StrUtils, System.ImageList, Vcl.ImgList, VirtualTable,
  sButton, sPanel, Vcl.DBCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids, SMDBGrid,
  frxClass, frxDBSet, Data.Win.ADODB, cxContainer, Vcl.Menus, cxButtons,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, uframe1, cxListBox, IdCustomTCPServer,
  IdTCPServer, IdBaseComponent, IdComponent, IdIPWatch, IdContext, Vcl.ExtDlgs,shellapi,
  cxCheckBox, dxCore, cxDateUtils, cxCalendar, dxSkinTheBezier,               math,
  cxDataControllerConditionalFormattingRulesManagerDialog,ComObj, cxImageList,
  cxCustomListBox,system.JSON,Winapi.ShlObj,Winapi.ActiveX, cxMemo;

type
  Tfmenuutama = class(TForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbon1Tab3: TdxRibbonTab;
    dxRibbon1Tab5: TdxRibbonTab;
    dxRibbon1Tab6: TdxRibbonTab;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar3: TdxBar;
    dxBarManager1Bar4: TdxBar;
    dxBarManager1Bar5: TdxBar;
    dxBarManager1Bar9: TdxBar;
    dxBarSubItem1: TdxBarSubItem;
    dxBarEdit1: TdxBarEdit;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarLargeButton10: TdxBarLargeButton;
    dxBarLargeButton11: TdxBarLargeButton;
    dxBarLargeButton12: TdxBarLargeButton;
    dxBarLargeButton13: TdxBarLargeButton;
    dxBarLargeButton14: TdxBarLargeButton;
    dxBarLargeButton15: TdxBarLargeButton;
    dxBarLargeButton16: TdxBarLargeButton;
    dxBarLargeButton17: TdxBarLargeButton;
    dxBarLargeButton18: TdxBarLargeButton;
    dxBarLargeButton19: TdxBarLargeButton;
    dxBarLargeButton20: TdxBarLargeButton;
    dxBarLargeButton21: TdxBarLargeButton;
    dxBarLargeButton22: TdxBarLargeButton;
    dxBarLargeButton23: TdxBarLargeButton;
    dxBarLargeButton24: TdxBarLargeButton;
    dxBarLargeButton25: TdxBarLargeButton;
    dxBarLargeButton26: TdxBarLargeButton;
    dxBarLargeButton27: TdxBarLargeButton;
    dxBarLargeButton28: TdxBarLargeButton;
    dxBarLargeButton29: TdxBarLargeButton;
    dxBarLargeButton30: TdxBarLargeButton;
    dxBarLargeButton31: TdxBarLargeButton;
    dxBarLargeButton32: TdxBarLargeButton;
    dxBarLargeButton33: TdxBarLargeButton;
    dxBarLargeButton34: TdxBarLargeButton;
    dxBarLargeButton35: TdxBarLargeButton;
    dxBarLargeButton36: TdxBarLargeButton;
    dxBarLargeButton37: TdxBarLargeButton;
    dxBarLargeButton38: TdxBarLargeButton;
    dxStatusBar1: TdxStatusBar;
    Timer1: TTimer;
    qt1: TUniQuery;
    dxBarLargeButton39: TdxBarLargeButton;
    dxBarLargeButton40: TdxBarLargeButton;
    dxBarLargeButton41: TdxBarLargeButton;
    dxBarLargeButton42: TdxBarLargeButton;
    dxBarLargeButton43: TdxBarLargeButton;
    cxPageControl1: TcxPageControl;
    cximportkasbank: TcxTabSheet;
    cxkasir: TcxTabSheet;
    cxkonfirmasipembayaran: TcxTabSheet;
    cxclosing: TcxTabSheet;
    sGroupBox1: TsGroupBox;
    SpeedButton1: TSpeedButton;
    sEdit1: TsEdit;
    BitBtn1: TBitBtn;
    pg1: TsProgressBar;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    op: TOpenDialog;
    qimportkasbank: TUniQuery;
    dsqimportkasbank: TUniDataSource;
    qimportkasbankid_transaksi: TIntegerField;
    qimportkasbanktanggal: TDateField;
    qimportkasbanksesi: TIntegerField;
    qimportkasbankketerangan: TStringField;
    qimportkasbankcabang: TStringField;
    qimportkasbankmutasi: TStringField;
    qimportkasbankjumlah: TFloatField;
    qimportkasbanksaldo_akhir: TFloatField;
    qimportkasbankstatus_pakai: TStringField;
    cxGrid1DBTableView1id_transaksi: TcxGridDBColumn;
    cxGrid1DBTableView1tanggal: TcxGridDBColumn;
    cxGrid1DBTableView1keterangan: TcxGridDBColumn;
    cxGrid1DBTableView1cabang: TcxGridDBColumn;
    cxGrid1DBTableView1mutasi: TcxGridDBColumn;
    cxGrid1DBTableView1jumlah: TcxGridDBColumn;
    cxGrid1DBTableView1saldo_akhir: TcxGridDBColumn;
    vt1: TVirtualTable;
    cxImageList1: TcxImageList;
    vt1id_transaksibatch: TIntegerField;
    vt1id_transaksikas: TIntegerField;
    dxBarLargeButton44: TdxBarLargeButton;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1no_order: TcxGridDBColumn;
    cxGridDBTableView1customer: TcxGridDBColumn;
    cxGridDBTableView1admin: TcxGridDBColumn;
    cxGridDBTableView1tanggal: TcxGridDBColumn;
    cxGridDBTableView1jenis: TcxGridDBColumn;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView1nama_kain: TcxGridDBColumn;
    cxGrid1DBTableView1jenis_warna: TcxGridDBColumn;
    cxGrid1DBTableView1roll: TcxGridDBColumn;
    cxGrid1DBTableView1berat: TcxGridDBColumn;
    cxGrid1DBTableView1hargaasli: TcxGridDBColumn;
    cxGrid1DBTableView1total: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    sGradientPanel2: TsGradientPanel;
    GroupBox10: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    cbjenis: TComboBox;
    tkartu: TEdit;
    tuang: TEdit;
    cxGrid4: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1jenis_pembayaran: TcxGridDBColumn;
    cxGrid2DBTableView1id_jenispembayar: TcxGridDBColumn;
    cxGrid2DBTableView1jumlah_uang: TcxGridDBColumn;
    cxGrid2DBTableView1adm: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    Button2: TButton;
    Button3: TButton;
    Panel1: TPanel;
    sButton1: TsButton;
    Panel2: TPanel;
    tkorder: TEdit;
    tkcustomer: TEdit;
    Panel3: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    Label9: TLabel;
    tktotaltagihan: TEdit;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    tkdiskon: TEdit;
    Label4: TLabel;
    tkongkir: TEdit;
    Label8: TLabel;
    tkkatalog: TEdit;
    GroupBox2: TGroupBox;
    tktagihan: TEdit;
    q1: TUniQuery;
    vpembayaran: TVirtualTable;
    vpembayaranjenis_pembayaran: TStringField;
    vpembayaranid_jenispembayar: TStringField;
    vpembayaranjumlah_uang: TFloatField;
    vpembayaranadm: TFloatField;
    dsvpembayaran: TUniDataSource;
    Label10: TLabel;
    cbpotongan: TComboBox;
    Label11: TLabel;
    tpotongan: TEdit;
    GroupBox3: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    tkpembayaran: TEdit;
    tkkembalian: TEdit;
    vpembayarannama_bank: TStringField;
    Label14: TLabel;
    cbbank: TComboBox;
    SpeedButton2: TSpeedButton;
    vpembayarantotal: TFloatField;
    cxGrid2DBTableView1nama_bank: TcxGridDBColumn;
    cxGrid2DBTableView1total: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxNotProcessed: TcxStyle;
    cxNotProcessedFocused: TcxStyle;
    cxDefault: TcxStyle;
    cxProcessedFocused: TcxStyle;
    qimportkasbankstatus_tanggal: TStringField;
    qimportkasbankno_urut: TIntegerField;
    qimportkasbanktanggal_sts: TStringField;
    vtpilihan: TVirtualTable;
    vtpilihanid_transaksi: TStringField;
    vtpilihanjumlah_uang: TFloatField;
    dsvtpilihan: TDataSource;
    cxdipilih: TcxStyle;
    BitBtn5: TBitBtn;
    cbprint: TCheckBox;
    Label29: TLabel;
    tktotaldiskon: TEdit;
    BitBtn6: TBitBtn;
    frxReport1: TfrxReport;
    frxDBDataset3: TfrxDBDataset;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    frxroll: TfrxDBDataset;
    qimportkasbankkode_kas: TIntegerField;
    qimportkasbankkode_kas_1: TIntegerField;
    qimportkasbanknama_kas: TStringField;
    qimportkasbankalamat: TStringField;
    qimportkasbankr_d: TStringField;
    qimportkasbankno_rekening: TStringField;
    qimportkasbankbank: TStringField;
    qimportkasbankatas_nama: TStringField;
    cxGrid1DBTableView1no_rekening: TcxGridDBColumn;
    cxGrid1DBTableView1bank1: TcxGridDBColumn;
    cxGrid1DBTableView1atas_nama1: TcxGridDBColumn;
    vttes: TVirtualTable;
    vttesacountno: TStringField;
    vttesdate: TStringField;
    vttesvaldate: TStringField;
    vttestransaction: TStringField;
    vttesdescription: TStringField;
    vttesdescription2: TStringField;
    vttesreference: TStringField;
    vttesdebit: TFloatField;
    vttescredit: TFloatField;
    dsvttes: TDataSource;
    frxsj: TfrxReport;
    frxsj2: TfrxReport;
    vtimport: TVirtualTable;
    vtimporttanggal: TDateField;
    vtimportkode_transaction: TStringField;
    vtimportmutasi: TStringField;
    vtimportjumlah: TFloatField;
    vtimportket: TStringField;
    vtimportket2: TStringField;
    vtimportstatus: TIntegerField;
    Vtbatch: TVirtualTable;
    Vtbatchtanggal: TDateField;
    Vtbatchkode_transaction: TStringField;
    Vtbatchmutasi: TStringField;
    Vtbatchjumlah: TFloatField;
    Vtbatchket: TStringField;
    Vtbatchket2: TStringField;
    Vtbatchstatus: TIntegerField;
    UniQuery1: TUniQuery;
    UniQuery2: TUniQuery;
    UniQuery1no: TIntegerField;
    UniQuery1tanggal: TDateField;
    UniQuery1kode_transaction: TStringField;
    UniQuery1mutasi: TStringField;
    UniQuery1jumlah: TFloatField;
    UniQuery1ket: TStringField;
    UniQuery1ket2: TStringField;
    UniQuery1status: TIntegerField;
    UniQuery2no: TIntegerField;
    UniQuery2tanggal: TDateField;
    UniQuery2jumlah: TFloatField;
    UniQuery2keterangan2: TStringField;
    UniQuery2status: TIntegerField;
    UniDataSource1: TUniDataSource;
    UniDataSource2: TUniDataSource;
    UniQuery2kode_transaction: TStringField;
    UniQuery2mutasi: TStringField;
    UniQuery2keterangan: TStringField;
    sGradientPanel3: TsGradientPanel;
    Button1: TButton;
    BitBtn8: TBitBtn;
    sGradientPanel4: TsGradientPanel;
    tuser: TEdit;
    tpass: TEdit;
    Image1: TImage;
    Image2: TImage;
    SpeedButton3: TSpeedButton;
    Panel4: TPanel;
    Button5: TButton;
    vpembayaranno_transaksi: TStringField;
    cxGrid7DBTableView1: TcxGridDBTableView;
    cxGrid7Level1: TcxGridLevel;
    cxGrid7: TcxGrid;
    GroupBox6: TGroupBox;
    Edit2: TEdit;
    Edit4: TEdit;
    Edit6: TEdit;
    Edit8: TEdit;
    Edit10: TEdit;
    cbbiaya: TComboBox;
    cxGrid7DBTableView1nama: TcxGridDBColumn;
    cxGrid7DBTableView1no_pengeluaran: TcxGridDBColumn;
    cxGrid7DBTableView1jumlah_uang: TcxGridDBColumn;
    cxGrid7DBTableView1sumber: TcxGridDBColumn;
    cxGrid7DBTableView1ket: TcxGridDBColumn;
    Button6: TButton;
    GroupBox8: TGroupBox;
    tkkurangbayar: TEdit;
    Label31: TLabel;
    tksaldo: TEdit;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Panel5: TPanel;
    ladm: TLabel;
    Label32: TLabel;
    Button7: TButton;
    Panel6: TPanel;
    Label34: TLabel;
    Button8: TButton;
    tverify: TEdit;
    cxdatapenjualan: TcxTabSheet;
    dxBarLargeButton45: TdxBarLargeButton;
    GroupBox9: TGroupBox;
    cxGrid8DBTableView1: TcxGridDBTableView;
    cxGrid8Level1: TcxGridLevel;
    cxGrid8: TcxGrid;
    GroupBox11: TGroupBox;
    cxGrid9DBTableView1: TcxGridDBTableView;
    cxGrid9Level1: TcxGridLevel;
    cxGrid9: TcxGrid;
    cxGrid8DBTableView1tanggal: TcxGridDBColumn;
    cxGrid8DBTableView1id_transaksi: TcxGridDBColumn;
    cxGrid8DBTableView1nama: TcxGridDBColumn;
    cxGrid9DBTableView1jenis: TcxGridDBColumn;
    cxGrid9DBTableView1nominal: TcxGridDBColumn;
    cxGrid9DBTableView1no_penjualan: TcxGridDBColumn;
    cxGrid9DBTableView1ket: TcxGridDBColumn;
    Panel7: TPanel;
    BitBtn11: TBitBtn;
    ekodeunik: TEdit;
    Label33: TLabel;
    Label35: TLabel;
    ecatatan: TEdit;
    dlainnya: TEdit;
    dcc: TEdit;
    dmandiri: TEdit;
    dbca: TEdit;
    dcash: TEdit;
    cxdataclosing: TcxTabSheet;
    sGradientPanel5: TsGradientPanel;
    sGradientPanel6: TsGradientPanel;
    sGradientPanel7: TsGradientPanel;
    BitBtn12: TBitBtn;
    dxBarLargeButton46: TdxBarLargeButton;
    frxReport2: TfrxReport;
    dxBarSubItem2: TdxBarSubItem;
    dxBarLargeButton47: TdxBarLargeButton;
    cxtransaksikas: TcxTabSheet;
    Panel9: TPanel;
    Button10: TButton;
    BitBtn13: TBitBtn;
    Button11: TButton;
    GroupBox12: TGroupBox;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    tterima: TEdit;
    mcatatan: TMemo;
    dtanggal: TDateTimePicker;
    ComboBox1: TComboBox;
    tperkiraan: TEdit;
    tjumlah: TEdit;
    cxListBox2: TcxListBox;
    tkas: TcxComboBox;
    Panel10: TPanel;
    Button12: TButton;
    cxGrid12: TcxGrid;
    cxGridDBTableView6: TcxGridDBTableView;
    cxGrid1DBTableView1no_transaksi: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGrid1DBTableView1jenis: TcxGridDBColumn;
    cxGrid1DBTableView1dari: TcxGridDBColumn;
    cxGrid1DBTableView1nama_kas: TcxGridDBColumn;
    cxGrid1DBTableView1nama_perkiraan: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridLevel6: TcxGridLevel;
    qkassementara: TUniQuery;
    qdskassementara: TUniDataSource;
    qkassementarakode_perkiraan: TIntegerField;
    qkassementarakode_kas: TIntegerField;
    qkassementarano_transaksi: TStringField;
    qkassementaratanggal: TDateField;
    qkassementarajenis: TStringField;
    qkassementaradari: TStringField;
    qkassementarajumlah: TFloatField;
    qkassementaraketerangan: TStringField;
    qkassementarastatus: TIntegerField;
    qkassementaranama_kas: TStringField;
    qkassementaraalamat: TStringField;
    qkassementarar_d: TStringField;
    qkassementarano_rekening: TStringField;
    qkassementarabank: TStringField;
    qkassementaraatas_nama: TStringField;
    qkassementarastatus_rekening: TStringField;
    qkassementarajenis_perkiraan: TStringField;
    qkassementaranama_perkiraan: TStringField;
    qkassementaradk: TStringField;
    qkassementarano_perkiraan: TStringField;
    dxBarLargeButton48: TdxBarLargeButton;
    qpindahkas: TUniQuery;
    qdspindahkas: TUniDataSource;
    qpindahkaskode_perkiraan: TIntegerField;
    qpindahkaskode_kas: TIntegerField;
    qpindahkasno_transaksi: TStringField;
    qpindahkastanggal: TDateField;
    qpindahkasjenis: TStringField;
    qpindahkasdari: TStringField;
    qpindahkasjumlah: TFloatField;
    qpindahkasketerangan: TStringField;
    qpindahkasstatus: TIntegerField;
    qpindahkasnama_kas: TStringField;
    qpindahkasalamat: TStringField;
    qpindahkasr_d: TStringField;
    qpindahkasno_rekening: TStringField;
    qpindahkasbank: TStringField;
    qpindahkasatas_nama: TStringField;
    qpindahkasstatus_rekening: TStringField;
    qpindahkasjenis_perkiraan: TStringField;
    qpindahkasnama_perkiraan: TStringField;
    qpindahkasdk: TStringField;
    qpindahkasno_perkiraan: TStringField;
    Panel8: TPanel;
    IdIPWatch1: TIdIPWatch;
    IdTCPServer1: TIdTCPServer;
    Image3: TImage;
    OpenPictureDialog1: TOpenPictureDialog;
    sf: TSavePictureDialog;
    GroupBox7: TGroupBox;
    cbcc: TComboBox;
    cbmandiri: TComboBox;
    cbbca: TComboBox;
    cblainnya: TComboBox;
    BitBtn10: TBitBtn;
    cxGrid15: TcxGrid;
    cxGrid15DBTableView1: TcxGridDBTableView;
    cxGrid15DBTableView1bank: TcxGridDBColumn;
    cxGrid15DBTableView1nominal: TcxGridDBColumn;
    cxGrid15Level1: TcxGridLevel;
    Panel11: TPanel;
    Label43: TLabel;
    Label44: TLabel;
    tnominal: TEdit;
    Button9: TButton;
    cbcash: TComboBox;
    frxDBDatasetclosing: TfrxDBDataset;
    frxReportclosing: TfrxReport;
    vtclosing: TVirtualTable;
    vtclosingbank: TStringField;
    vtclosingnominal: TFloatField;
    dsvtclosing: TDataSource;
    cxsaldopiutang: TcxTabSheet;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    cxGrid13: TcxGrid;
    cxGrid12DBTableView1: TcxGridDBTableView;
    cxGrid12DBTableView1nama: TcxGridDBColumn;
    cxGrid12DBTableView1total: TcxGridDBColumn;
    cxGrid12Level1: TcxGridLevel;
    sGradientPanel8: TsGradientPanel;
    CheckBox1: TCheckBox;
    sGradientPanel9: TsGradientPanel;
    cxGrid14: TcxGrid;
    cxGridDBTableView7: TcxGridDBTableView;
    cxGridDBTableView6tanggal: TcxGridDBColumn;
    cxGridDBTableView6jenis: TcxGridDBColumn;
    cxGridDBTableView6keterangan: TcxGridDBColumn;
    cxGridDBTableView6debet: TcxGridDBColumn;
    cxGridDBTableView6kredit: TcxGridDBColumn;
    cxGridDBTableView6saldo: TcxGridDBColumn;
    cxGridLevel7: TcxGridLevel;
    Button13: TButton;
    TabSheet2: TTabSheet;
    cxGrid16: TcxGrid;
    cxGrid14DBTableView1: TcxGridDBTableView;
    cxGrid14DBTableView1tanggal: TcxGridDBColumn;
    cxGrid14DBTableView1nama: TcxGridDBColumn;
    cxGrid14DBTableView1rekening_tujuan: TcxGridDBColumn;
    cxGrid14DBTableView1bank_tujuan: TcxGridDBColumn;
    cxGrid14DBTableView1catatan: TcxGridDBColumn;
    cxGrid14DBTableView1nama_kas: TcxGridDBColumn;
    cxGrid14DBTableView1nominal: TcxGridDBColumn;
    cxGrid14Level1: TcxGridLevel;
    Button14: TButton;
    dxBarLargeButton49: TdxBarLargeButton;
    cxGrid10: TcxGrid;
    cxGrid10DBTableView1: TcxGridDBTableView;
    cxGrid10DBTableView1tanggal: TcxGridDBColumn;
    cxGrid10DBTableView1jenis: TcxGridDBColumn;
    cxGrid10DBTableView1nominal: TcxGridDBColumn;
    cxGrid10Level1: TcxGridLevel;
    cxGrid11: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridDBTableView5nama: TcxGridDBColumn;
    cxGridDBTableView5no_transaksi: TcxGridDBColumn;
    cxGridDBTableView5sumber: TcxGridDBColumn;
    cxGridDBTableView5keterangan: TcxGridDBColumn;
    cxGridDBTableView5jumlah: TcxGridDBColumn;
    cxGridLevel5: TcxGridLevel;
    Button15: TButton;
    Label45: TLabel;
    sGradientPanel10: TsGradientPanel;
    Label46: TLabel;
    cbpilihanbank: TComboBox;
    Label47: TLabel;
    GroupBox13: TGroupBox;
    Label48: TLabel;
    Label49: TLabel;
    dxBarLargeButton50: TdxBarLargeButton;
    cxlappemasangan: TcxTabSheet;
    cxGrid17DBTableView1: TcxGridDBTableView;
    cxGrid17Level1: TcxGridLevel;
    cxGrid17: TcxGrid;
    BitBtn14: TBitBtn;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    cxGrid5: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    Panel12: TPanel;
    Label50: TLabel;
    ComboBox2: TComboBox;
    Button16: TButton;
    Button17: TButton;
    cxGrid6: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBTableView4id_transaksi: TcxGridDBColumn;
    cxGridDBTableView4tanggal: TcxGridDBColumn;
    cxGridDBTableView4mutasi: TcxGridDBColumn;
    cxGridDBTableView4sisa: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    DBMemo1: TDBMemo;
    BitBtn2: TBitBtn;
    BitBtn9: TBitBtn;
    sGradientPanel1: TsGradientPanel;
    GroupBox4: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    GroupBox5: TGroupBox;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    SMDBGrid1: TSMDBGrid;
    DBEdit1: TDBEdit;
    tknbayar: TEdit;
    tknsisa: TEdit;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn7: TBitBtn;
    cxGrid18DBTableView1: TcxGridDBTableView;
    cxGrid18Level1: TcxGridLevel;
    cxGrid18: TcxGrid;
    Button18: TButton;
    sGradientPanel11: TsGradientPanel;
    GroupBox14: TGroupBox;
    Label15: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    DBText10: TDBText;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    GroupBox15: TGroupBox;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    DBText11: TDBText;
    DBText12: TDBText;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    DBMemo2: TDBMemo;
    cxGrid18DBTableView1bank_transferan: TcxGridDBColumn;
    cxGrid18DBTableView1tanggal: TcxGridDBColumn;
    cxGrid18DBTableView1keterangan: TcxGridDBColumn;
    cxGrid18DBTableView1atas_nama: TcxGridDBColumn;
    cxGrid18DBTableView1customer: TcxGridDBColumn;
    cxGrid18DBTableView1jumlah_uang: TcxGridDBColumn;
    cxGrid18DBTableView1admin: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    E1: TMenuItem;
    cxGrid18DBTableView1pilih: TcxGridDBColumn;
    cxGridDBTableView4no_rekening: TcxGridDBColumn;
    cxGridDBTableView4bank: TcxGridDBColumn;
    BitBtn15: TBitBtn;
    cxlappemasanganmanual: TcxTabSheet;
    dxBarLargeButton51: TdxBarLargeButton;
    cxGrid19: TcxGrid;
    cxGridDBTableView8: TcxGridDBTableView;
    cxGridLevel8: TcxGridLevel;
    BitBtn16: TBitBtn;
    cxGridDBTableView8no_rekening: TcxGridDBColumn;
    cxGridDBTableView8bank: TcxGridDBColumn;
    cxGridDBTableView8nominal: TcxGridDBColumn;
    cxGridDBTableView8tanggal_pemasangan: TcxGridDBColumn;
    cxGridDBTableView8kategori: TcxGridDBColumn;
    cxGridDBTableView8keterangan: TcxGridDBColumn;
    cxGridDBTableView8admin: TcxGridDBColumn;
    cximportolshop: TcxTabSheet;
    Label30: TLabel;
    cxDateEdit1: TcxDateEdit;
    Button4: TButton;
    cxDateEdit2: TcxDateEdit;
    Button19: TButton;
    Button20: TButton;
    dxBarLargeButton52: TdxBarLargeButton;
    cxDateEdit3: TcxDateEdit;
    Button22: TButton;
    Button23: TButton;
    cxGrid20: TcxGrid;
    cxGridDBTableView9: TcxGridDBTableView;
    cxGridLevel9: TcxGridLevel;
    cxGridDBTableView9tanggal: TcxGridDBColumn;
    cxGridDBTableView9keterangan: TcxGridDBColumn;
    cxGridDBTableView9jumlah: TcxGridDBColumn;
    cxGridDBTableView9keterangan2: TcxGridDBColumn;
    BitBtn17: TBitBtn;
    Edit1: TEdit;
    E2: TMenuItem;
    Label63: TLabel;
    DBRichEdit1: TDBRichEdit;
    BitBtn18: TBitBtn;
    BitBtn19: TBitBtn;
    BitBtn20: TBitBtn;
    BitBtn21: TBitBtn;
    cxGrid17DBTableView1tanggal: TcxGridDBColumn;
    cxGrid17DBTableView1keterangan: TcxGridDBColumn;
    cxGrid17DBTableView1jumlah: TcxGridDBColumn;
    cxGrid17DBTableView1nama: TcxGridDBColumn;
    ComboBox3: TComboBox;
    Label64: TLabel;
    cxGrid17DBTableView1saldo_akhir: TcxGridDBColumn;
    tchar: TEdit;
    cxGridDBTableView4Column1: TcxGridDBColumn;
    BitBtn22: TBitBtn;
    frxrekkoran: TfrxReport;
    frxDBrekkoran: TfrxDBDataset;
    BitBtn23: TBitBtn;
    E3: TMenuItem;
    cxDateEdit4: TcxDateEdit;
    BitBtn24: TBitBtn;
    PopupMenu2: TPopupMenu;
    H1: TMenuItem;
    cxGridDBTableView4keterangan: TcxGridDBColumn;
    Panel13: TPanel;
    Panel14: TPanel;
    Label68: TLabel;
    Label69: TLabel;
    Panel16: TPanel;
    Label71: TLabel;
    cxGridDBTableView3no_order: TcxGridDBColumn;
    cxGridDBTableView3nama: TcxGridDBColumn;
    cxGridDBTableView3atas_nama: TcxGridDBColumn;
    cxGridDBTableView3jumlah_uang: TcxGridDBColumn;
    cxGridDBTableView3tanggal: TcxGridDBColumn;
    cxGridDBTableView3bank: TcxGridDBColumn;
    cxGridDBTableView3admin: TcxGridDBColumn;
    cxGridDBTableView3no_pesanan: TcxGridDBColumn;
    Panel15: TPanel;
    dxBarLargeButton53: TdxBarLargeButton;
    cxPerapihan_kas: TcxTabSheet;
    cxGrid21DBTableView1: TcxGridDBTableView;
    cxGrid21Level1: TcxGridLevel;
    cxGrid21: TcxGrid;
    Label72: TLabel;
    cxGrid21DBTableView1no_transaksi: TcxGridDBColumn;
    cxGrid21DBTableView1tanggal: TcxGridDBColumn;
    cxGrid21DBTableView1jenis: TcxGridDBColumn;
    cxGrid21DBTableView1dari: TcxGridDBColumn;
    cxGrid21DBTableView1nocg: TcxGridDBColumn;
    cxGrid21DBTableView1bankcg: TcxGridDBColumn;
    cxGrid21DBTableView1kode_kas: TcxGridDBColumn;
    cxGrid21DBTableView1jumlah: TcxGridDBColumn;
    cxGrid21DBTableView1kode_perkiraan: TcxGridDBColumn;
    cxGrid21DBTableView1keterangan: TcxGridDBColumn;
    cxGrid21DBTableView1status: TcxGridDBColumn;
    cxGrid21DBTableView1tanggal_cair: TcxGridDBColumn;
    cxGrid21DBTableView1no_urut: TcxGridDBColumn;
    Edit3: TEdit;
    Label73: TLabel;
    Button21: TButton;
    tkutip: TEdit;
    Edit7: TEdit;
    Label75: TLabel;
    Button24: TButton;
    dxBarLargeButton54: TdxBarLargeButton;
    cxlaporan_hutanglainlain: TcxTabSheet;
    cxGrid22DBTableView1: TcxGridDBTableView;
    cxGrid22Level1: TcxGridLevel;
    cxGrid22: TcxGrid;
    Label74: TLabel;
    cxGrid22DBTableView1nama: TcxGridDBColumn;
    cxGrid22DBTableView1saldo: TcxGridDBColumn;
    Edit5: TEdit;
    cxGrid23DBTableView1: TcxGridDBTableView;
    cxGrid23Level1: TcxGridLevel;
    cxGrid23: TcxGrid;
    Label76: TLabel;
    cxGrid23DBTableView1nama: TcxGridDBColumn;
    cxGrid23DBTableView1tanggal: TcxGridDBColumn;
    cxGrid23DBTableView1penerimaan: TcxGridDBColumn;
    cxGrid23DBTableView1pengeluaran: TcxGridDBColumn;
    cxGrid23DBTableView1no_transaksi: TcxGridDBColumn;
    cxGrid23DBTableView1jenis: TcxGridDBColumn;
    cxGrid23DBTableView1saldo: TcxGridDBColumn;
    Button25: TButton;
    ProgressBar1: TProgressBar;
    cxpemasanganpendapatan: TcxTabSheet;
    cxGrid24: TcxGrid;
    cxGridDBTableView10: TcxGridDBTableView;
    cxGridLevel10: TcxGridLevel;
    Panel17: TPanel;
    Label77: TLabel;
    ComboBox4: TComboBox;
    Button26: TButton;
    Panel18: TPanel;
    Button29: TButton;
    cxGridDBTableView10tanggal: TcxGridDBColumn;
    cxGridDBTableView10bank: TcxGridDBColumn;
    cxGridDBTableView10keterangan: TcxGridDBColumn;
    cxGridDBTableView10nominal: TcxGridDBColumn;
    dxBarLargeButton55: TdxBarLargeButton;
    Panel19: TPanel;
    Label78: TLabel;
    DateTimePicker1: TDateTimePicker;
    Edit9: TEdit;
    Label79: TLabel;
    SMDBGrid2: TSMDBGrid;
    cxGridDBTableView10kategori: TcxGridDBColumn;
    Label80: TLabel;
    Edit11: TEdit;
    cxGrid17DBTableView1STATUS: TcxGridDBColumn;
    cxjurnalpengeluaranongkir: TcxTabSheet;
    cxGrid25: TcxGrid;
    cxGridDBTableView11: TcxGridDBTableView;
    cxGridLevel11: TcxGridLevel;
    cxGrid26: TcxGrid;
    cxGridDBTableView12: TcxGridDBTableView;
    cxGridLevel12: TcxGridLevel;
    Panel21: TPanel;
    Button30: TButton;
    dxBarLargeButton56: TdxBarLargeButton;
    cxGridDBTableView12tanggal: TcxGridDBColumn;
    cxGridDBTableView12no_penjualan: TcxGridDBColumn;
    cxGridDBTableView12nama: TcxGridDBColumn;
    cxGridDBTableView12exspedisi: TcxGridDBColumn;
    cxGridDBTableView12ongkir: TcxGridDBColumn;
    cxGridDBTableView12tipe_pembayaran: TcxGridDBColumn;
    cxGridDBTableView11nama_perkiraan: TcxGridDBColumn;
    cxGridDBTableView11keterangan: TcxGridDBColumn;
    cxGridDBTableView11jumlah: TcxGridDBColumn;
    cxGridDBTableView11tanggal: TcxGridDBColumn;
    Panel22: TPanel;
    Button31: TButton;
    Panel20: TPanel;
    Panel23: TPanel;
    Panel24: TPanel;
    dxBarLargeButton57: TdxBarLargeButton;
    cxPemasangancustomer: TcxTabSheet;
    cxGrid27DBTableView1: TcxGridDBTableView;
    cxGrid27Level1: TcxGridLevel;
    cxGrid27: TcxGrid;
    cxGrid27DBTableView1no_transaksi: TcxGridDBColumn;
    cxGrid27DBTableView1tanggal: TcxGridDBColumn;
    cxGrid27DBTableView1jenis: TcxGridDBColumn;
    cxGrid27DBTableView1dari: TcxGridDBColumn;
    cxGrid27DBTableView1nocg: TcxGridDBColumn;
    cxGrid27DBTableView1bankcg: TcxGridDBColumn;
    cxGrid27DBTableView1kode_kas: TcxGridDBColumn;
    cxGrid27DBTableView1jumlah: TcxGridDBColumn;
    cxGrid27DBTableView1kode_perkiraan: TcxGridDBColumn;
    cxGrid27DBTableView1keterangan: TcxGridDBColumn;
    cxGrid27DBTableView1status: TcxGridDBColumn;
    cxGrid27DBTableView1tanggal_cair: TcxGridDBColumn;
    cxGrid27DBTableView1no_urut: TcxGridDBColumn;
    cxGrid27DBTableView1id: TcxGridDBColumn;
    cxGrid27DBTableView1no_transaksi_1: TcxGridDBColumn;
    cxGrid27DBTableView1nama: TcxGridDBColumn;
    cxGrid27DBTableView1id_customer: TcxGridDBColumn;
    cxGrid28DBTableView1: TcxGridDBTableView;
    cxGrid28Level1: TcxGridLevel;
    cxGrid28: TcxGrid;
    Edit12: TEdit;
    cxGrid28DBTableView1id_customer: TcxGridDBColumn;
    cxGrid28DBTableView1nama: TcxGridDBColumn;
    cxGrid28DBTableView1telepon: TcxGridDBColumn;
    cxGrid28DBTableView1faximile: TcxGridDBColumn;
    cxGrid28DBTableView1email: TcxGridDBColumn;
    cxGrid28DBTableView1contact_person: TcxGridDBColumn;
    cxGrid28DBTableView1alamat: TcxGridDBColumn;
    cxGrid28DBTableView1status: TcxGridDBColumn;
    cxGrid28DBTableView1npwp: TcxGridDBColumn;
    cxGrid28DBTableView1termin: TcxGridDBColumn;
    cxGrid28DBTableView1kredit_limit: TcxGridDBColumn;
    cxGrid28DBTableView1id_salesman: TcxGridDBColumn;
    cxGrid28DBTableView1id_kategoricustomer: TcxGridDBColumn;
    cxGrid28DBTableView1aktif: TcxGridDBColumn;
    cxGrid28DBTableView1kota: TcxGridDBColumn;
    Edit13: TEdit;
    Edit14: TEdit;
    Label81: TLabel;
    Label83: TLabel;
    Button27: TButton;
    Button28: TButton;
    Label82: TLabel;
    DateTimePicker3: TDateTimePicker;
    Label84: TLabel;
    DateTimePicker2: TDateTimePicker;
    Button32: TButton;
    Button33: TButton;
    timercekpemasangan: TTimer;
    qcekpemasangan: TUniQuery;
    qcekpemasanganjml: TLargeintField;
    qcekpemasanganjumlah: TFloatField;
    qcekpemasangantanggal: TDateField;
    cxPembayarankontrabon: TcxTabSheet;
    cxDateEdit5: TcxDateEdit;
    Label85: TLabel;
    Label86: TLabel;
    cbekspedisi: TComboBox;
    cxDateEdit6: TcxDateEdit;
    Label87: TLabel;
    Button34: TButton;
    cxGrid29DBTableView1: TcxGridDBTableView;
    cxGrid29Level1: TcxGridLevel;
    cxGrid29: TcxGrid;
    GroupBox16: TGroupBox;
    Edit15: TEdit;
    Label88: TLabel;
    Edit17: TEdit;
    Label90: TLabel;
    Label92: TLabel;
    Edit19: TEdit;
    Button35: TButton;
    cxGrid29DBTableView1tanggal: TcxGridDBColumn;
    cxGrid29DBTableView1no_penjualan: TcxGridDBColumn;
    cxGrid29DBTableView1nama: TcxGridDBColumn;
    cxGrid29DBTableView1exspedisi: TcxGridDBColumn;
    cxGrid29DBTableView1ongkir: TcxGridDBColumn;
    cxGrid29DBTableView1pilihan: TcxGridDBColumn;
    CheckBox2: TCheckBox;
    Label93: TLabel;
    cxDateEdit7: TcxDateEdit;
    dxBarLargeButton58: TdxBarLargeButton;
    cxlappembayarankontrabon: TcxTabSheet;
    cxGrid30DBTableView1: TcxGridDBTableView;
    cxGrid30Level1: TcxGridLevel;
    cxGrid30: TcxGrid;
    cxGrid31: TcxGrid;
    cxGridDBTableView13: TcxGridDBTableView;
    cxGridLevel13: TcxGridLevel;
    cxGrid30DBTableView1no_transaksi: TcxGridDBColumn;
    cxGrid30DBTableView1tanggal: TcxGridDBColumn;
    cxGrid30DBTableView1keterangan: TcxGridDBColumn;
    cxGrid30DBTableView1exspedisi: TcxGridDBColumn;
    cxGridDBTableView13no_penjualan: TcxGridDBColumn;
    cxGridDBTableView13nama: TcxGridDBColumn;
    cxGridDBTableView13exspedisi: TcxGridDBColumn;
    cxGridDBTableView13ongkir: TcxGridDBColumn;
    Label94: TLabel;
    cxDateEdit8: TcxDateEdit;
    Label95: TLabel;
    cxDateEdit9: TcxDateEdit;
    Button36: TButton;
    cxGrid30DBTableView1jumlah: TcxGridDBColumn;
    BitBtn25: TBitBtn;
    Button37: TButton;
    dxBarLargeButton59: TdxBarLargeButton;
    dxBarLargeButton60: TdxBarLargeButton;
    Timer2: TTimer;
    qcekdata: TUniQuery;
    dxBarLargeButton61: TdxBarLargeButton;
    E4: TMenuItem;
    timercekkonfirmasidp: TTimer;
    qcekkonfirmasidp: TUniQuery;
    qcekrekkoranbefore: TUniQuery;
    timercekrekkoranbefore: TTimer;
    qcekrekkoranbeforeid_transaksi: TIntegerField;
    qcekrekkoranbeforetanggal: TDateField;
    qcekrekkoranbeforeketerangan: TStringField;
    qcekrekkoranbeforeketerangan2: TStringField;
    qcekrekkoranbeforejumlah: TFloatField;
    qcekrekkoranbeforeno_rekening: TStringField;
    qcekrekkoranbeforebank: TStringField;
    qcekrekkoranbeforesisa: TFloatField;
    qcekrekkoranbeforetanggal_sts: TStringField;
    dsqcekrekkoranbefore: TUniDataSource;
    cxGrid17DBTableView1Column1: TcxGridDBColumn;
    btntukar: TBitBtn;
    dxBarLargeButton62: TdxBarLargeButton;
    Timer4: TTimer;
    qcekrefund: TUniQuery;
    qcekrefundno_refund: TStringField;
    dxBarLargeButton63: TdxBarLargeButton;
    dxBarLargeButton64: TdxBarLargeButton;
    cxTabSupplier: TcxTabSheet;
    cxGrid32DBTableView1: TcxGridDBTableView;
    cxGrid32Level1: TcxGridLevel;
    cxGrid32: TcxGrid;
    vtsupplier: TVirtualTable;
    dsvtsupplier: TUniDataSource;
    vtsupplierid_supplier: TWideStringField;
    vtsuppliernama: TWideStringField;
    vtsupplieralamat: TWideStringField;
    vtsupplierlink_web: TWideStringField;
    vtsupplierno_tlp: TWideStringField;
    vtsupplierstatus_supplier: TWideStringField;
    vtsuppliercatatan: TWideStringField;
    vtsuppliercontact_person: TWideStringField;
    vtsupplierrekening: TWideStringField;
    vtsuppliernama_bank: TWideStringField;
    vtsupplieratasnama: TWideStringField;
    vtsupplierspkp: TWideStringField;
    vtsuppliernpwp: TWideStringField;
    vtsupplierfilenpwp: TWideStringField;
    vtsupplierfilespkp: TWideStringField;
    cxGrid32DBTableView1nama: TcxGridDBColumn;
    cxGrid32DBTableView1alamat: TcxGridDBColumn;
    cxGrid32DBTableView1link_web: TcxGridDBColumn;
    cxGrid32DBTableView1no_tlp: TcxGridDBColumn;
    cxGrid32DBTableView1status_supplier: TcxGridDBColumn;
    cxGrid32DBTableView1contact_person: TcxGridDBColumn;
    cxGrid32DBTableView1rekening: TcxGridDBColumn;
    cxGrid32DBTableView1nama_bank: TcxGridDBColumn;
    cxGrid32DBTableView1atasnama: TcxGridDBColumn;
    popmenusupplier: TPopupMenu;
    L1: TMenuItem;
    LihatDokumenSPKP1: TMenuItem;
    dxBarLargeButton65: TdxBarLargeButton;
    dxBarLargeButton66: TdxBarLargeButton;
    cxPembayaranKontrabon2: TcxTabSheet;
    cxGrid33: TcxGrid;
    cxGridDBTableView14: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridLevel14: TcxGridLevel;
    Label96: TLabel;
    cxcbekspedisi: TcxComboBox;
    Panel25: TPanel;
    SpeedButton7: TSpeedButton;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    ttagihaneks: TcxTextEdit;
    ttagihancentang: TcxTextEdit;
    tselisih: TcxTextEdit;
    pcopy: TPanel;
    SpeedButton6: TSpeedButton;
    psudahpost: TPanel;
    SpeedButton8: TSpeedButton;
    ppost: TPanel;
    SpeedButton9: TSpeedButton;
    cxGridDBTableView14Column1: TcxGridDBColumn;
    cxGridDBTableView14Column2: TcxGridDBColumn;
    vtsapkontrabon: TVirtualTable;
    dsvtsapkontrabon: TUniDataSource;
    cxGrid34DBTableView1: TcxGridDBTableView;
    cxGrid34Level1: TcxGridLevel;
    cxGrid34: TcxGrid;
    vtsapkontrabondescription: TStringField;
    vtsapkontrabonglakun: TStringField;
    vtsapkontrabontax: TStringField;
    vtsapkontrabonwtax: TStringField;
    vtsapkontrabontotal: TStringField;
    vtsapkontrabonblanket: TStringField;
    vtsapkontrabonqty: TStringField;
    vtsapkontrabonprice: TStringField;
    vtsapkontrabonlongdescription: TStringField;
    cxGrid34DBTableView1description: TcxGridDBColumn;
    cxGrid34DBTableView1glakun: TcxGridDBColumn;
    cxGrid34DBTableView1tax: TcxGridDBColumn;
    cxGrid34DBTableView1wtax: TcxGridDBColumn;
    cxGrid34DBTableView1total: TcxGridDBColumn;
    Label100: TLabel;
    ttimerstatusbar: TTimer;
    cxGridDBTableView14Column3: TcxGridDBColumn;
    Label101: TLabel;
    lcentangkontrabon: TLabel;
    linfopph: TLabel;
    Label102: TLabel;
    pmPembayaranKontrabon: TPopupMenu;
    P1: TMenuItem;
    cxPerbaikanNonKontrabon: TcxTabSheet;
    cxGrid35: TcxGrid;
    cxGridDBTableView15: TcxGridDBTableView;
    cxGridLevel15: TcxGridLevel;
    Label103: TLabel;
    cxcbekspedisinon: TcxComboBox;
    Label104: TLabel;
    Panel26: TPanel;
    SpeedButton10: TSpeedButton;
    cxTanggal2Non: TcxDateEdit;
    Label105: TLabel;
    cxTanggal1Non: TcxDateEdit;
    Label106: TLabel;
    dxBarLargeButton67: TdxBarLargeButton;
    cxGridDBTableView15tanggal: TcxGridDBColumn;
    cxGridDBTableView15no_penjualan: TcxGridDBColumn;
    cxGridDBTableView15no_resi: TcxGridDBColumn;
    cxGridDBTableView15nama: TcxGridDBColumn;
    cxGridDBTableView15exspedisi: TcxGridDBColumn;
    cxGridDBTableView15ongkir: TcxGridDBColumn;
    cxGridDBTableView15asuransi: TcxGridDBColumn;
    cxGridDBTableView15total: TcxGridDBColumn;
    pmPerbaikanNonKontrabon: TPopupMenu;
    MenuItem1: TMenuItem;
    cxHoliday: TcxTabSheet;
    cxGridLibur: TcxGrid;
    cxGridDBTableView16: TcxGridDBTableView;
    cxGrid1DBTableView1tanggal_input: TcxGridDBColumn;
    cxGrid1DBTableView1tanggal_libur: TcxGridDBColumn;
    cxGrid1DBTableView1nama: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGrid1DBTableView1tipe: TcxGridDBColumn;
    cxGrid1DBTableView1user: TcxGridDBColumn;
    cxGridLevel16: TcxGridLevel;
    Panel27: TPanel;
    cxTanggalLibur: TcxDateEdit;
    Label108: TLabel;
    Panel28: TPanel;
    btnBaruLibur: TSpeedButton;
    cxNamaLibur: TcxTextEdit;
    Label109: TLabel;
    cxTipeLibur: TcxTextEdit;
    Label111: TLabel;
    Panel29: TPanel;
    Label107: TLabel;
    Panel30: TPanel;
    btnSimpanLibur: TSpeedButton;
    Panel31: TPanel;
    btnHapusLibur: TSpeedButton;
    Label112: TLabel;
    cxKeteranganLibur: TcxMemo;
    dxBarLargeButton68: TdxBarLargeButton;
    dxBarLargeButton69: TdxBarLargeButton;
    cxPerbaikanARInvoiceDouble: TcxTabSheet;
    Label113: TLabel;
    tOrderPerbaikanARDouble: TcxTextEdit;
    Panel32: TPanel;
    SpeedButton11: TSpeedButton;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxGrid36: TcxGrid;
    cxGridDBTableView17: TcxGridDBTableView;
    cxGridLevel17: TcxGridLevel;
    cxGridDBTableView17no_order: TcxGridDBColumn;
    cxGridDBTableView17no_pengeluaran: TcxGridDBColumn;
    cxGridDBTableView17tanggal: TcxGridDBColumn;
    cxGridDBTableView17no_sj: TcxGridDBColumn;
    cxGridDBTableView17nama: TcxGridDBColumn;
    cxGridDBTableView17total_tagihan: TcxGridDBColumn;
    Panel33: TPanel;
    SpeedButton12: TSpeedButton;
    Panel34: TPanel;
    Panel35: TPanel;
    vtsapkontrabonglakunname: TStringField;
    vtsapkontrabonbranch: TStringField;
    cxGrid34DBTableView1branch: TcxGridDBColumn;
    cxGridDBTableView14Column4: TcxGridDBColumn;
    cxGridDBTableView15no_order: TcxGridDBColumn;
    cxGridDBTableView15edit: TcxGridDBColumn;
    C1: TMenuItem;
    Panel36: TPanel;
    pkonfirmasidp: TPanel;
    ppemasangan: TPanel;
    pperbaikanpembayaran: TPanel;
    ppettycash: TPanel;
    cxcbbankkontrabon: TcxComboBox;
    Label70: TLabel;
    cxtanggalsapkontrabon: TcxDateEdit;
    Label89: TLabel;
    dxBarLargeButton70: TdxBarLargeButton;
    dxBarLargeButton71: TdxBarLargeButton;
    dxBarLargeButton72: TdxBarLargeButton;
    dxBarLargeButton73: TdxBarLargeButton;
    dxBarLargeButton74: TdxBarLargeButton;
    dxBarLargeButton75: TdxBarLargeButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure dxBarLargeButton40Click(Sender: TObject);
    procedure dxBarLargeButton41Click(Sender: TObject);
    procedure dxBarLargeButton42Click(Sender: TObject);
    procedure dxBarLargeButton43Click(Sender: TObject);
    procedure dxBarLargeButton5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure cxPageControl1TcxPageControlPropertiesTcxPCCustomButtonsButtons0Click(
      Sender: TObject);
    procedure dxBarLargeButton44Click(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure cbjenisChange(Sender: TObject);
    procedure cbjenisKeyPress(Sender: TObject; var Key: Char);
    procedure tkartuKeyPress(Sender: TObject; var Key: Char);
    procedure tuangKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tuangKeyPress(Sender: TObject; var Key: Char);
    procedure cbbankDropDown(Sender: TObject);
    procedure cbbankKeyPress(Sender: TObject; var Key: Char);
    procedure Button3Click(Sender: TObject);
    procedure cbpotonganDropDown(Sender: TObject);
    procedure cbpotonganKeyPress(Sender: TObject; var Key: Char);
    procedure tpotonganKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tpotonganChange(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure cxGridDBTableView4StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure cxGridDBTableView3CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure tkdiskonKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tkongkirKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tkkatalogKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tkdiskonChange(Sender: TObject);
    procedure tkongkirChange(Sender: TObject);
    procedure tkkatalogChange(Sender: TObject);
    procedure tkdiskonKeyPress(Sender: TObject; var Key: Char);
    procedure tkongkirKeyPress(Sender: TObject; var Key: Char);
    procedure tkkatalogKeyPress(Sender: TObject; var Key: Char);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
    procedure frxsjGetValue(const VarName: string; var Value: Variant);
    procedure frxsj2GetValue(const VarName: string; var Value: Variant);
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn8Click(Sender: TObject);
    procedure tuserKeyPress(Sender: TObject; var Key: Char);
    procedure tpassKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton3Click(Sender: TObject);
    procedure dxBarLargeButton29Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure cbbiayaDropDown(Sender: TObject);
    procedure cbbiayaChange(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure cbcashDropDown(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure tverifyKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button8Click(Sender: TObject);
    procedure tverifyKeyPress(Sender: TObject; var Key: Char);
    procedure dxBarLargeButton45Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure dxBarLargeButton46Click(Sender: TObject);
    procedure tperkiraanChange(Sender: TObject);
    procedure cxListBox2DblClick(Sender: TObject);
    procedure cxListBox2KeyPress(Sender: TObject; var Key: Char);
    procedure tperkiraanKeyPress(Sender: TObject; var Key: Char);
    procedure tperkiraanKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tjumlahChange(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure dxBarLargeButton47Click(Sender: TObject);
    procedure dxBarLargeButton48Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure tterimaKeyPress(Sender: TObject; var Key: Char);
    procedure tkasKeyPress(Sender: TObject; var Key: Char);
    procedure tjumlahKeyPress(Sender: TObject; var Key: Char);
    procedure mcatatanKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure IdTCPServer1Execute(AContext: TIdContext);
    procedure tnominalKeyPress(Sender: TObject; var Key: Char);
    procedure tnominalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbcashKeyPress(Sender: TObject; var Key: Char);
    procedure dxBarLargeButton49Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure cbpilihanbankDropDown(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure dxBarLargeButton50Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure ComboBox2DropDown(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure E1Click(Sender: TObject);
    procedure cxGridDBTableView3CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cbpilihanbankChange(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure dxBarLargeButton51Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure dxBarLargeButton52Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure E2Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure BitBtn21Click(Sender: TObject);
    procedure ComboBox3DropDown(Sender: TObject);
    procedure cxGridDBTableView4CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDBTableView3StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure cxGridDBTableView3CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxGridDBTableView4CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure BitBtn22Click(Sender: TObject);
    procedure frxrekkoranGetValue(const VarName: string; var Value: Variant);
    procedure BitBtn23Click(Sender: TObject);
    procedure E3Click(Sender: TObject);
    procedure BitBtn24Click(Sender: TObject);
    procedure H1Click(Sender: TObject);
    procedure dxBarLargeButton53Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Edit7Change(Sender: TObject);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Button24Click(Sender: TObject);
    procedure dxBarLargeButton54Click(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure ComboBox4DropDown(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure dxBarLargeButton55Click(Sender: TObject);
    procedure Button29Click(Sender: TObject);
    procedure cxGridDBTableView11EditValueChanged(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem);
    procedure SMDBGrid2ChangeSelection(Sender: TObject);
    procedure cxGridDBTableView10CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure dxBarLargeButton56Click(Sender: TObject);
    procedure Button30Click(Sender: TObject);
    procedure Button31Click(Sender: TObject);
    procedure cxGrid27DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure dxBarLargeButton57Click(Sender: TObject);
    procedure Edit12Change(Sender: TObject);
    procedure cxGrid28DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Button27Click(Sender: TObject);
    procedure Button28Click(Sender: TObject);
    procedure Button32Click(Sender: TObject);
    procedure Button33Click(Sender: TObject);
    procedure timercekpemasanganTimer(Sender: TObject);
    procedure cbekspedisiDropDown(Sender: TObject);
    procedure Button34Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure cxGrid29DBTableView1pilihanPropertiesEditValueChanged(
      Sender: TObject);
    procedure Edit15KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit15Change(Sender: TObject);
    procedure Button35Click(Sender: TObject);
    procedure dxBarLargeButton58Click(Sender: TObject);
    procedure Button36Click(Sender: TObject);
    procedure BitBtn25Click(Sender: TObject);
    procedure Button37Click(Sender: TObject);
    procedure cxGrid30DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure dxBarLargeButton59Click(Sender: TObject);
    procedure dxBarLargeButton60Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure ppemasanganClick(Sender: TObject);
    procedure dxBarLargeButton61Click(Sender: TObject);
    procedure E4Click(Sender: TObject);
    procedure timercekkonfirmasidpTimer(Sender: TObject);
    procedure timercekrekkoranbeforeTimer(Sender: TObject);
    procedure cxGrid17DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxGrid17DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btntukarClick(Sender: TObject);
    procedure dxBarLargeButton62Click(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure dxBarLargeButton63Click(Sender: TObject);
    procedure pperbaikanpembayaranClick(Sender: TObject);
    procedure dxBarLargeButton64Click(Sender: TObject);
    procedure L1Click(Sender: TObject);
    procedure LihatDokumenSPKP1Click(Sender: TObject);
    procedure dxBarLargeButton65Click(Sender: TObject);
    procedure dxBarLargeButton66Click(Sender: TObject);
    procedure ttagihaneksPropertiesChange(Sender: TObject);
    procedure ttagihaneksKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton7Click(Sender: TObject);
    procedure ttagihaneksKeyPress(Sender: TObject; var Key: Char);
    procedure cxGridDBColumn9PropertiesEditValueChanged(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure cxcbekspedisiPropertiesChange(Sender: TObject);
    procedure ttimerstatusbarTimer(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure P1Click(Sender: TObject);
    procedure dxBarLargeButton67Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure dxBarLargeButton68Click(Sender: TObject);
    procedure btnBaruLiburClick(Sender: TObject);
    procedure cxGridDBTableView16CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnSimpanLiburClick(Sender: TObject);
    procedure btnHapusLiburClick(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure dxBarLargeButton69Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure cxGridDBTableView15CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure C1Click(Sender: TObject);
    procedure ppettycashClick(Sender: TObject);
    procedure dxBarLargeButton70Click(Sender: TObject);
    procedure dxBarLargeButton71Click(Sender: TObject);
    procedure dxBarLargeButton72Click(Sender: TObject);
    procedure dxBarLargeButton73Click(Sender: TObject);
    procedure dxBarLargeButton74Click(Sender: TObject);
    procedure dxBarLargeButton75Click(Sender: TObject);
  private
    { Private declarations }
    var idcuscus :string;
  public
    { Public declarations }
    procedure inputkasbank();
    procedure generate();
    procedure inputpiutang;
    procedure hitung();
    procedure biayaadmin();
    procedure hitungkonfirmasi();
    procedure cetakfaktur();
    procedure kodebukubesar();
    procedure inputkasbankmandiri();
    procedure cetaksj1();
    procedure generatekassementara();
    procedure bersihkassementara;
    procedure formatuang(ts:TEdit);
    procedure generatebukubesar();
    procedure hitungselisih();
    procedure cekdokumen(jenis,dw: string);

    procedure importmandiri();
    procedure importbri();
    procedure changeStatusBar(text1,text2:string;textColor1,textColor2:TColor);

    function SendRequest(method,link:string;dt:TDataSet;ls:TstringList;showMsg:boolean):Boolean;
    function funchitungselisih(value1,value2:string):string;
    function generateNoBayarKontrabonSAP():string;

    class function AutoSizeColumns(DBGrid: TDBGrid; const MaxRows: Integer = 25): Integer;

    var
      vtotalkontrabon:real;
   end;

var
  fmenuutama: Tfmenuutama;
   ghj:Integer;
  v_saldoawal,v_saldoakhir,v_nopenjualan,v_cekpesanan,v_cekpesanan2:string;
  v_noorder,v_idcustomer:string;
  v_totaltagihan,v_totalbayar,v_cc,v_bca,v_mandiri,v_lainnya,v_tagihankain,v_totkg,v_totalkg:real;
  v_jmlkonfirmasi,v_jmlrekening:real;
  v_idkonfirmasi:string;
  v_statustombol,v_statusfaktur,v_stswarna,v_kodekas,v_kodetransaksi,v_noorderpenjualan,v_kdkas:string;
  v_view,v_verifyadm:string;
  nokassementara:string;
  jmledit,ceklisjumlah:Real;
  vkdbukubesar,vpilihTanggalLibur:string;
  vt_idmutasi1,vt_idmutasi2,vt_nokonfirmasi1,vt_nokonfirmasi2:integer;
  vt_jumlah:Real;
  vtotalCentangKontrabon,vlastPositionKontrabon:Integer;
  vdataKontrabonTercentang:TStringList;

implementation

{$R *.dfm}

uses uftabel, ufperbedaanorder, ufinputkasbankimport, ufsaldocustomer,
  ufeditkas, ftransferuang, ufpengeluaranuang2, ufverifikasimandiri,
  ufpemasanganmanual, ufimportolshop, ufedittanggal, ufcekkonfirmasipembayaran, ufdatahapuskonfirmasi, ufcekpenjualan, uftambahkonfirmasi, ufhasil_perapihan, ufcekpemasangan,
  uflepassalahtransfer, ufdatapemasangan, ufbiayaadmin, ufcekrekeningkoran, ufdatarefund,
  ufaccperbaikanpembayaran, uflaporanperpriode, ufpettycash, ufeditPembayaranKontrabon,
  ufInfoEditPembayaranKontrabon, ufdataarinvoice, ufdataarincomingpayment,
  ufuangkasir, ufuangedc, ufuangolshop, ufgrpo;


  function LocalIp: string;
var IPW: TIdIPWatch;
begin
  Result := '127.0.0.1';
  IpW := TIdIPWatch.Create(nil);
  try
    if IpW.LocalIP <> '' then
      Result := IpW.LocalIP;
  finally
    IpW.Free;
  end;
end;

procedure Tfmenuutama.hitungselisih();
var jumlahbayar,jumlahyangdipilih:string; selisih:real;
begin


   if edit15.Text='' then begin
       jumlahbayar:='0';
   end else begin
       jumlahbayar := edit15.text;
       jumlahbayar := stringreplace(jumlahbayar,',','',[rfreplaceall,rfignorecase]);
       jumlahbayar := stringreplace(jumlahbayar,'.','',[rfreplaceall,rfignorecase]);
   end;

  if Edit17.Text='' then begin
      jumlahyangdipilih:='0';
  end else begin
     jumlahyangdipilih := edit17.text;
     jumlahyangdipilih := stringreplace(jumlahyangdipilih,',','',[rfreplaceall,rfignorecase]);
     jumlahyangdipilih := stringreplace(jumlahyangdipilih,'.','',[rfreplaceall,rfignorecase]);
  end;
  selisih:=strtofloat(jumlahbayar)-strtofloat(jumlahyangdipilih);
 // ShowMessage(FloatToStr(selisih));
  edit19.Text:=formatcurr('#,###',selisih);

end;

 procedure Split2(const Delimiter: Char; // delimiter charachter
 Input: string;         // input string
 const Strings: TStrings) ; // list of string result
begin
Assert(Assigned(Strings)) ;
Strings.Clear;
Strings.Delimiter := Delimiter;
Strings.DelimitedText := Input;
end;


procedure Split(aValue : string; aDelimiter : Char; Result : TStrings);
    var
      X : Integer;
      S : string;
    begin
      if Result = nil then Result := TStringList.Create;
      Result.Clear;
      S := '';
      for X:=1 to Length(aValue) do begin
        if aValue[X] <> aDelimiter then
          S:=S + aValue[X]
        else begin
          Result.Add(S);
          S := '';
        end;
      end;
      if S <> '' then Result.Add(S);
    end;


procedure Tfmenuutama.cetaksj1();
var ongkir,adm,cc,katalog,diskon,total:real;
srupiah,noorder1:string;
begin
tabel.udata.Active:=false;
tabel.udata.Active:=True;
 v_noorderpenjualan:=tkorder.Text;
       tabel.q1.SQL.Clear;
       tabel.q1.SQL.Add('select da.provinsi,da.kota as kt,kecamatan,kelurahan,rt_rw,kode_pos,alamat from alamat_pengiriman da join alamat_kirimorder ak on ak.no_dialamatpengiriman=da.no where no_order='''+v_noorderpenjualan+''' ');
       tabel.q1.Active:=true;
      if tabel.q1.RecordCount > 0 then begin
//      ShowMessage('tes');
         frxsj2.PrepareReport();
         frxsj2.LoadFromFile(ExtractFilePath(Application.ExeName)+'cetaksj2.Fr3');
         frxsj2.ShowReport();
      end else begin
//      ShowMessage('tes2');
         frxsj.PrepareReport();
         frxsj.LoadFromFile(ExtractFilePath(Application.ExeName)+'cetaksj1.Fr3');
         frxsj.ShowReport();
      end;



end;


procedure Tfmenuutama.changeStatusBar(text1, text2: string; textColor1,
  textColor2: TColor);
begin
  dxStatusBar1.Panels.Items[0].Text := text1;
  dxStatusBar1.Panels.Items[0].PanelStyle.Font.Color := textColor1;

  dxStatusBar1.Panels.Items[1].Text := text2;
  dxStatusBar1.Panels.Items[1].PanelStyle.Font.Color := textColor2;

  ttimerstatusbar.Enabled := true;
end;

procedure Tfmenuutama.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked=true then begin
 tabel.qsaldopiutang.SQL.Clear;
 tabel.qsaldopiutang.SQL.Add('select * from v_saldopiutang where total < 0 order by nama asc');
 tabel.qsaldopiutang.Active:=True;
end else begin
  tabel.qsaldopiutang.SQL.Clear;
 tabel.qsaldopiutang.SQL.Add('select * from v_saldopiutang order by nama asc');
 tabel.qsaldopiutang.Active:=True;
end;
end;

procedure Tfmenuutama.CheckBox2Click(Sender: TObject);

begin
vtotalkontrabon:=0;

  if CheckBox2.Checked= False  then begin
       tabel.qjurnalkotrabon.First;
       while not tabel.qjurnalkotrabon.Eof do begin

             tabel.qjurnalkotrabon.Edit;
             tabel.qjurnalkotrabonpilihan.Value:='False';
             tabel.qjurnalkotrabon.Post;

         tabel.qjurnalkotrabon.Next;
       end;
       edit17.Text:='0';

  end else begin
        tabel.qjurnalkotrabon.First;
       while not tabel.qjurnalkotrabon.Eof do begin
             tabel.qjurnalkotrabon.Edit;
             tabel.qjurnalkotrabonpilihan.Value:='True';
             tabel.qjurnalkotrabon.Post;
            vtotalkontrabon:=vtotalkontrabon+tabel.qjurnalkotrabonongkir.Value;
         tabel.qjurnalkotrabon.Next;
       end;
      edit17.Text:=formatcurr('#,##',vtotalkontrabon);

  end;
 hitungselisih();



end;

procedure Tfmenuutama.ComboBox1Change(Sender: TObject);
begin
if ComboBox1.Text='PENERIMAAN' then begin
  label37.Caption:='Terima Dari';
end else begin
   label37.Caption:='Keluar Ke';
end;
end;

procedure Tfmenuutama.ComboBox2DropDown(Sender: TObject);
begin
tabel.q1.SQL.Clear;
tabel.q1.SQL.Add('select concat(no_rekening,'' # '',atas_nama,'' # '',bank) as id from kas_bank where (keterangan=''PEMBAYARAN CUSTOMER'' or keterangan=''DITUTUP'' or keterangan=''ONLINE SHOP'') OR kode_kas=6 ');
tabel.q1.Active:=true;
if not(tabel.q1.Eof) and (tabel.q1.Bof) then begin
  combobox2.Items.Clear;
tabel.q1.First;
while not tabel.q1.Eof do
begin
  combobox2.Items.Append(tabel.q1.FieldValues['id']);
  tabel.q1.Next;
end;
end;

end;

procedure Tfmenuutama.ComboBox3DropDown(Sender: TObject);
begin
tabel.q1.SQL.Clear;
tabel.q1.SQL.Add('select concat(no_rekening,'' # '',atas_nama,'' # '',bank) as id from kas_bank where (keterangan=''PEMBAYARAN CUSTOMER'' or keterangan=''DITUTUP'' or keterangan=''ONLINE SHOP'') OR kode_kas=6 ');
tabel.q1.Active:=true;
if not(tabel.q1.Eof) and (tabel.q1.Bof) then begin
  combobox3.Items.Clear;
tabel.q1.First;
while not tabel.q1.Eof do
begin
  combobox3.Items.Append(tabel.q1.FieldValues['id']);
  tabel.q1.Next;
end;
end;
end;

procedure Tfmenuutama.ComboBox4DropDown(Sender: TObject);
begin
tabel.q1.SQL.Clear;
tabel.q1.SQL.Add('select concat(no_rekening,'' # '',atas_nama,'' # '',bank) as id from kas_bank where keterangan=''PEMBAYARAN CUSTOMER'' OR kode_kas=6 ');
tabel.q1.Active:=true;
if not(tabel.q1.Eof) and (tabel.q1.Bof) then begin
  combobox4.Items.Clear;
tabel.q1.First;
while not tabel.q1.Eof do
begin
  combobox4.Items.Append(tabel.q1.FieldValues['id']);
  tabel.q1.Next;
end;
end;
end;

procedure Tfmenuutama.cbekspedisiDropDown(Sender: TObject);
begin
tabel.q1.SQL.Clear;
tabel.q1.SQL.Add('select nama from ekspedisi where tipe_pembayaran=''KONTRA BON'' ');
tabel.q1.Active:=true;
if not(tabel.q1.Eof) and (tabel.q1.Bof) then begin
cbekspedisi.Items.Clear;
tabel.q1.First;
while not tabel.q1.Eof do
begin
cbekspedisi.Items.Append(tabel.q1.FieldValues['nama']);
tabel.q1.Next;

 end;

end;


end;

procedure Tfmenuutama.cbpilihanbankChange(Sender: TObject);
var kata:TstringList; kode_kas,bank:string;
begin
kata := TstringList.Create;
if cbpilihanbank.Text='' then begin
    ShowMessage('Silahkan Pilih Rekening yang akan di import!');
    Exit;
end;
     split(cbpilihanbank.Text,'#',kata);
     tabel.q1.SQL.Clear;
     tabel.q1.SQL.Add('select * from kas_bank where no_rekening='''+kata[0]+''' ');
     tabel.q1.Active:=True;
     kode_kas:=tabel.q1.FieldValues['kode_kas'];
     bank:=tabel.q1.FieldValues['bank'];
     v_kodekas:=kode_kas;
     v_kodekasmandiri:=v_kodekas;

        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('select tanggal from kas_bank_import where tanggal!=''2010-01-01'' and kode_kas='''+v_kodekas+''' and keterangan2!=''TOKOPEDIA'' and keterangan2!=''SHOPEE''  order by tanggal desc limit 1 ');
        tabel.q1.Active:=True;
        if tabel.q1.RecordCount > 0 then begin
           Label49.Caption:=formatdatetime('yyyy-mm-dd',tabel.q1.FieldValues['tanggal']);
        end else begin
           Label49.Caption:='-';
        end;
end;

procedure Tfmenuutama.cbpilihanbankDropDown(Sender: TObject);
begin
tabel.q1.SQL.Clear;
tabel.q1.SQL.Add('select concat(no_rekening,'' # '',atas_nama,'' # '',bank) as id from kas_bank where (keterangan=''PEMBAYARAN CUSTOMER'' or keterangan=''DITUTUP'' or keterangan=''ONLINE SHOP'') OR kode_kas=6 ');
tabel.q1.Active:=true;
if not(tabel.q1.Eof) and (tabel.q1.Bof) then begin
  cbpilihanbank.Items.Clear;
tabel.q1.First;
while not tabel.q1.Eof do
begin
  cbpilihanbank.Items.Append(tabel.q1.FieldValues['id']);
  tabel.q1.Next;
end;
end;
end;

procedure Tfmenuutama.cbcashDropDown(Sender: TObject);
begin
tabel.q1.SQL.Clear;
tabel.q1.SQL.Add('select * from kas_bank where bank!='''' and bank!=''BCA2'' order by bank asc ');
tabel.q1.Active:=true;
if not(tabel.q1.Eof) and (tabel.q1.Bof) then begin
cbcash.Items.Clear;
tabel.q1.First;
while not tabel.q1.Eof do
begin
cbcash.Items.Append(tabel.q1.FieldValues['bank']);
tabel.q1.Next;
end;

end;
end;

procedure Tfmenuutama.cbcashKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then begin
Button11.SetFocus;
end;
end;

procedure Tfmenuutama.cbbiayaChange(Sender: TObject);
begin
if cbbiaya.Text='BCA' then begin
tabel.qdetailclosing.SQL.Clear;
tabel.qdetailclosing.SQL.Add('SELECT cast(uc.tanggal_pemasangan as date) as tgl,nama,no_pengeluaran, '+
' jumlah_uang,sumber,IFNULL(uc.keterangan,'''') AS ket FROM uang_customer uc JOIN n_junctpenjualan nj ON nj.no_uangcustomer=uc.no  '+
' JOIN penjualan_kainstok pks ON pks.no_pengeluaran=nj.id_nopembelian JOIN customer c ON c.id_customer=pks.id_customer left join y_detailclosing yd on yd.no_uangcustomer=uc.no   '+
' WHERE (sumber=''DEBIT'' and uc.keterangan=''BCA'') and yd.no_uangcustomer is null ORDER BY no_pengeluaran,sumber');
tabel.qdetailclosing.Active:=True;

end else if cbbiaya.Text='MANDIRI' then begin
tabel.qdetailclosing.SQL.Clear;
tabel.qdetailclosing.SQL.Add('SELECT cast(uc.tanggal_pemasangan as date) as tgl,nama,no_pengeluaran, '+
' jumlah_uang,sumber,IFNULL(uc.keterangan,'''') AS ket FROM uang_customer uc JOIN n_junctpenjualan nj ON nj.no_uangcustomer=uc.no  '+
' JOIN penjualan_kainstok pks ON pks.no_pengeluaran=nj.id_nopembelian JOIN customer c ON c.id_customer=pks.id_customer left join y_detailclosing yd on yd.no_uangcustomer=uc.no  '+
' WHERE (sumber=''DEBIT'' and uc.keterangan=''MANDIRI'')  and yd.no_uangcustomer is null ORDER BY no_pengeluaran,sumber');
tabel.qdetailclosing.Active:=True;

end else if cbbiaya.Text='LAINNYA' then  begin
 tabel.qdetailclosing.SQL.Clear;
tabel.qdetailclosing.SQL.Add('SELECT cast(uc.tanggal_pemasangan as date) as tgl,nama,no_pengeluaran, '+
' jumlah_uang,sumber,IFNULL(uc.keterangan,'''') AS ket FROM uang_customer uc JOIN n_junctpenjualan nj ON nj.no_uangcustomer=uc.no  '+
' JOIN penjualan_kainstok pks ON pks.no_pengeluaran=nj.id_nopembelian JOIN customer c ON c.id_customer=pks.id_customer left join y_detailclosing yd on yd.no_uangcustomer=uc.no  '+
' WHERE (sumber=''DEBIT'' and uc.keterangan=''LAINNYA'')  and yd.no_uangcustomer is null ORDER BY no_pengeluaran,sumber');
tabel.qdetailclosing.Active:=True;
end else if cbbiaya.Text='CC' then  begin
 tabel.qdetailclosing.SQL.Clear;
tabel.qdetailclosing.SQL.Add('SELECT cast(uc.tanggal_pemasangan as date) as tgl,nama,no_pengeluaran, '+
' jumlah_uang,sumber,IFNULL(uc.keterangan,'''') AS ket FROM uang_customer uc JOIN n_junctpenjualan nj ON nj.no_uangcustomer=uc.no  '+
' JOIN penjualan_kainstok pks ON pks.no_pengeluaran=nj.id_nopembelian JOIN customer c ON c.id_customer=pks.id_customer left join y_detailclosing yd on yd.no_uangcustomer=uc.no  '+
' WHERE (sumber=''CC'')  and yd.no_uangcustomer is null ORDER BY no_pengeluaran,sumber');
tabel.qdetailclosing.Active:=True;
end else if cbbiaya.Text='CASH' then  begin
 tabel.qdetailclosing.SQL.Clear;
tabel.qdetailclosing.SQL.Add('SELECT cast(uc.tanggal_pemasangan as date) as tgl,nama,no_pengeluaran, '+
' jumlah_uang,sumber,IFNULL(uc.keterangan,'''') AS ket FROM uang_customer uc JOIN n_junctpenjualan nj ON nj.no_uangcustomer=uc.no  '+
' JOIN penjualan_kainstok pks ON pks.no_pengeluaran=nj.id_nopembelian JOIN customer c ON c.id_customer=pks.id_customer left join y_detailclosing yd on yd.no_uangcustomer=uc.no  '+
' WHERE (sumber=''CASH'')  and yd.no_uangcustomer is null ORDER BY no_pengeluaran,sumber');
tabel.qdetailclosing.Active:=True;
end;


end;

procedure Tfmenuutama.cbbiayaDropDown(Sender: TObject);
begin
tabel.q1.SQL.Clear;
tabel.q1.SQL.Add('select * from biaya_admin');
tabel.q1.Active:=true;
if not(tabel.q1.Eof) and (tabel.q1.Bof) then begin
cbbiaya.Items.Clear;
tabel.q1.First;
while not tabel.q1.Eof do
begin
cbbiaya.Items.Append(tabel.q1.FieldValues['jenis']);
tabel.q1.Next;

 end;

end;
end;

procedure Tfmenuutama.kodebukubesar();
var
newkd,newkd2,kode,tgl,bln,thn,tglx,kd,potkd,st,tanggalawal,no,jatuhtempo:String;
 i,n,nourut:integer;
begin
    kode:='BB';
    tgl:=datetostr(date);
    tgl :='';
    bln :='';
    thn :='';
    tanggalawal:=formatdatetime('dd/MM/yy',now);
    tgl:=copy(tanggalawal,1,2);
    bln:=copy(tanggalawal,4,2);
    thn:=copy(tanggalawal,7,2);
    tglx := tgl + bln + thn;
    tabel.q1.SQL.Clear;
    tabel.q1.SQL.Add('select no_transaksi from buku_besar where substr(no_transaksi,3,6)= ''' + FormatDateTime('dd',now) + FormatDateTime('mm',now) + formatDatetime('yy',now)+ ''' order by no_transaksi DESC limit 1');
    tabel.q1.Active:=true;
    if  tabel.q1.RecordCount > 0 then begin
        kd:=tabel.q1.FieldValues['no_transaksi'];
        potKd:=copy(kd,3,8);

        for i:=9 to 11 do
        st:=st+kd[i];
        n:=strtoint(st)+1;
        case length(inttostr(n)) of
        1 : newkd2:=kode+tglx + '00'+inttostr(n);
        2 : newkd2:=kode+tglx + '0'+inttostr(n);
        3 : newkd2:=kode+tglx + ''+inttostr(n);
        end;

     end else begin
        v_kodetransaksi:=kode+tglx + '001';
        newkd2:=kode+tglx + '001';
    end;
    v_kodetransaksi:=newkd2;
end;


procedure Tfmenuutama.L1Click(Sender: TObject);
begin
  if MessageDlg('Apakah anda akan menyimpan File SPKP ?',mtConfirmation,mbYesNo,0) = mrYes then
  begin
    cekdokumen('spkp','DOWNLOAD');
  end else
  begin
    cekdokumen('spkp','');
  end;
end;

procedure Tfmenuutama.LihatDokumenSPKP1Click(Sender: TObject);
begin
  if MessageDlg('Apakah anda akan menyimpan File NPWP ?',mtConfirmation,mbYesNo,0) = mrYes then
  begin
    cekdokumen('npwp','DOWNLOAD');
  end else
  begin
    cekdokumen('npwp','');
  end;
end;

procedure Tfmenuutama.mcatatanKeyPress(Sender: TObject; var Key: Char);
begin
 if Key=#13 then begin
Button12Click(nil);
end;
end;

procedure Tfmenuutama.MenuItem1Click(Sender: TObject);
begin
  tabel.q1.SQL.Clear;
  tabel.q1.SQL.Add('select no_penjualan from n_pembayaran_ekspedisi_edit where jenis=''NON KONTRABON'' and no_penjualan='''+tabel.qjurnalnonkontrabonno_penjualan.Text+''' ');
  tabel.q1.Open;
  if tabel.q1.RecordCount > 0 then
    ShowMessage('Transaksi tidak bisa di edit, silahkan lakukan edit manual dari SAP')
  else
  begin
    with feditPembayaranKontrabon do
    begin
      jenisEdit := 'NON KONTRABON';
      jenisAsuransi := tabel.qjurnalnonkontrabonasuransi_jenis.Text;
      if tabel.qjurnalnonkontrabonjenis_pembayaran_asuransi.Text = 'MEMAKAI KONTRABON' then
        kontrabon := true
      else
        kontrabon := false;

      idcustomer := tabel.qjurnalnonkontrabonid_customer.text;
      noorder := tabel.qjurnalnonkontrabonno_order.Text;
      nomuat := tabel.qjurnalnonkontrabonno_muat.Text;
      ongkirSebelum := tabel.qjurnalnonkontrabonongkir.Value;
      asuransiSebelum := tabel.qjurnalnonkontrabonasuransi.Value;

      lbNoPenjualan.Caption := tabel.qjurnalnonkontrabonno_penjualan.Text;
      lbCustomer.Caption := tabel.qjurnalnonkontrabonnama.Text;
      lbEkspedisi.Caption := tabel.qjurnalnonkontrabonexspedisi.Text;
      lbResi.Caption := tabel.qjurnalnonkontrabonno_resi.Text;
      tongkir.Text := FloatToStr(ongkirSebelum);
      tasuransi.Text := FloatToStr(asuransiSebelum);

      ShowModal;
    end;
  end;
end;

procedure Tfmenuutama.P1Click(Sender: TObject);
begin
  vlastPositionKontrabon := tabel.qjurnalkotrabon.RecNo;

  with tabel.qjurnalkotrabon do
  begin
    Filtered := false;
    Filter := 'pilihan=True';
    Filtered := True;

    if RecordCount > 0 then
    begin
      vdataKontrabonTercentang.Clear;
      First;
      while not Eof do
      begin
        vdataKontrabonTercentang.Add(tabel.qjurnalkotrabonno_penjualan.Text);

        Next;
      end;
    end
    else
      vdataKontrabonTercentang.Clear;

    Filtered := false;
    RecNo := vlastPositionKontrabon;
  end;

  with feditPembayaranKontrabon do
  begin
    jenisEdit := 'KONTRABON';
    jenisAsuransi := tabel.qjurnalkotrabonasuransi_jenis.Text;
    if tabel.qjurnalkotrabonjenis_pembayaran_asuransi.Text = 'MEMAKAI KONTRABON' then
      kontrabon := true
    else
      kontrabon := false;

    idcustomer := tabel.qjurnalkotrabonid_customer.text;
    noorder := tabel.qjurnalkotrabonno_order.Text;
    nomuat := tabel.qjurnalkotrabonno_muat.Text;
    ongkirSebelum := tabel.qjurnalkotrabonongkir.Value;
    asuransiSebelum := tabel.qjurnalkotrabonasuransi.Value;

    lbNoPenjualan.Caption := tabel.qjurnalkotrabonno_penjualan.Text;
    lbCustomer.Caption := tabel.qjurnalkotrabonnama.Text;
    lbEkspedisi.Caption := tabel.qjurnalkotrabonexspedisi.Text;
    lbResi.Caption := tabel.qjurnalkotrabonno_resi.Text;
    tongkir.Text := FloatToStr(ongkirSebelum);
    tasuransi.Text := FloatToStr(asuransiSebelum);

    ShowModal;
  end;
end;

procedure Tfmenuutama.pperbaikanpembayaranClick(Sender: TObject);
begin
  faccperbaikanpembayaran.showmodal;
end;

procedure Tfmenuutama.ppettycashClick(Sender: TObject);
begin
  fpettycash.Show;
end;

procedure Tfmenuutama.ppemasanganClick(Sender: TObject);
begin
  fdatapemasangan.show;
end;

procedure Tfmenuutama.hitungkonfirmasi();
 var total,sisa,tagihan:real;  srupiah:string;
begin
vtpilihan.Open;
if vtpilihan.RecordCount > 0 then begin
 total:=0;
 vtpilihan.First;
 while not vtpilihan.Eof do begin
   total:=total+vtpilihanjumlah_uang.Value;
  vtpilihan.Next;
 end;

end else begin
  total:=0;
end;

     if tabel.qkonfirmasi.RecordCount > 0 then  begin
        srupiah := DBEdit1.Text;
    srupiah := stringreplace(sRupiah,',','',[rfreplaceall,rfignorecase]);
    srupiah := stringreplace(srupiah,'.','',[rfreplaceall,rfignorecase]);
    tagihan:=StrToFloat(srupiah);

     end else begin
       tagihan:=0;
     end;


   tknbayar.Text:=formatcurr('#,##',total);
   sisa:=tagihan-total;
   if sisa=0 then begin
    tknsisa.Text:='0';
   end else begin
    tknsisa.Text:=formatcurr('#,##',sisa);
   end;

end;

function Tfmenuutama.funchitungselisih(value1, value2: string): string;
var jumlahbayar,jumlahyangdipilih:string; selisih:real;
begin
   if value1='' then begin
       jumlahbayar:='0';
   end else begin
       jumlahbayar := value1;
       jumlahbayar := stringreplace(jumlahbayar,',','',[rfreplaceall,rfignorecase]);
//       jumlahbayar := stringreplace(jumlahbayar,'.','',[rfreplaceall,rfignorecase]);
   end;

  if value2='' then begin
      jumlahyangdipilih:='0';
  end else begin
     jumlahyangdipilih := value2;
     jumlahyangdipilih := stringreplace(jumlahyangdipilih,',','',[rfreplaceall,rfignorecase]);
//     jumlahyangdipilih := stringreplace(jumlahyangdipilih,'.','',[rfreplaceall,rfignorecase]);
  end;
  selisih:=strtofloat(jumlahbayar)-strtofloat(jumlahyangdipilih);
  Result:=formatcurr(',0',selisih);
end;

procedure Tfmenuutama.IdTCPServer1Execute(AContext: TIdContext);
var tmpMSG,vDirfile,vNamaFile,vDirfile2: string;
ms: TMemoryStream; intStreamSize:integer;
  gambar : TMemorystream;
  List: TStrings;
  n : byte;
  alamat,lokasi,tempatsimpan,direktori,namepath:string;
begin
q1.SQL.Clear;
q1.SQL.Add('select nama from alamat_fhoto where kategori=''BON SEMENTARA'' ');
q1.Active:=True;
vDirfile:= q1.FieldValues['nama'];

  tmpMSG := AContext.Connection.IOHandler.ReadLn;

 if tmpMSG='FOTO_BON' then begin

    vNamaFile:= AContext.Connection.IOHandler.ReadLn;
    vNamaFile:=vNamaFile+'.bmp';
    ms := TMemoryStream.Create;
    try
      intStreamSize:= StrToInt(AContext.Connection.IOHandler.ReadLn);
      AContext.Connection.IOHandler.ReadStream(ms, intStreamSize, False);//-1, False);
      ms.Position := 0;
      ms.SaveToFile(vDirFile+vNamaFile);


    finally
      ms.Free;
    end;

     tabel.q1.SQL.Clear;
     tabel.q1.SQL.Add('select * from alamat_fhoto where kategori=''BON SEMENTARA''  ');
     tabel.q1.Active:=true;

      if tabel.q1.RecordCount > 0 then begin

        alamat:=tabel.q1.FieldValues['nama'];
        lokasi:=alamat+v_idkaryawan+'BONSEMENTARA.bmp';
        try
             direktori:=System.SysUtils.GetCurrentDir;
             namepath:=direktori+'\kasir.exe';

            tempatsimpan := namepath+'BONSEMENTARA.png';
            CopyFile(PChar(lokasi), PChar(tempatsimpan),true);

            Image3.Picture.LoadFromFile(tempatsimpan);
         //   Edit1.text:=tempatsimpan;
        except
            Image1.Picture:=nil;
           panel2.Caption:='Gambar tidak ditemukan!';
        end;


      end else begin

        Image1.Picture:=nil;
      end;


  {  tabel.q1.SQL.Clear;
    tabel.q1.SQL.Add('select * from alamat_fhoto where kategori=''BON SEMENTARA''  ');
    tabel.q1.Active:=true;
    alamat:=tabel.q1.FieldValues['nama'];
    lokasi:=alamat+v_idkaryawan+'BONSEMENTARA.bmp';
    ShowMessage(lokasi);
    Image3.Picture.LoadFromFile(lokasi);   }



 end;

end;

procedure Tfmenuutama.bersihkassementara;
begin
dtanggal.DateTime:=Now;
  tterima.Text := '';
  tperkiraan.Text := '';
  tjumlah.Text:='0';
  mcatatan.Text:='';

  tabel.q1.sql.Clear;
  tabel.q1.SQL.Add('select nama_kas from kas_bank where status_rekening=''KAS'' ');
  tabel.q1.Open;

  tkas.Properties.Items.Clear;
  while not tabel.q1.Eof do
  begin
    tkas.Properties.Items.Add(tabel.q1.Fields[0].asstring);

    tabel.q1.Next;
  end;

  qkassementara.Active:=false;
  qkassementara.Active:=True;

   button12.Caption:='Simpan Data';
   cxGrid12.Enabled:=True;
end;

procedure Tfmenuutama.biayaadmin();
begin
   tabel.q1.SQL.Clear;
   tabel.q1.SQL.Add('select * from biaya_admin where jenis=''CC'' ');
   tabel.q1.Active:=True;
   v_cc:=tabel.q1.FieldValues['biaya'];
   tabel.q1.SQL.Clear;
   tabel.q1.SQL.Add('select * from biaya_admin where jenis=''BCA'' ');
   tabel.q1.Active:=True;
   v_bca:=tabel.q1.FieldValues['biaya'];
   tabel.q1.SQL.Clear;
   tabel.q1.SQL.Add('select * from biaya_admin where jenis=''MANDIRI'' ');
   tabel.q1.Active:=True;
   v_mandiri:=tabel.q1.FieldValues['biaya'];
   tabel.q1.SQL.Clear;
   tabel.q1.SQL.Add('select * from biaya_admin where jenis=''LAINNYA'' ');
   tabel.q1.Active:=True;
   v_lainnya:=tabel.q1.FieldValues['biaya'];

end;


procedure Tfmenuutama.hitung();
var kembalian,pembayaran,potongan:Real; srupiah:string;
begin
if tpotongan.Text<>'' then begin

  if copy(tpotongan.Text,1,1)='-'  then begin
   if Length(tpotongan.Text) > 1 then begin
    srupiah := Copy(tpotongan.text,2,length(tpotongan.Text)-1);
    srupiah := stringreplace(sRupiah,',','',[rfreplaceall,rfignorecase]);
    srupiah := stringreplace(srupiah,'.','',[rfreplaceall,rfignorecase]);
    potongan:=StrToFloat(srupiah);
    potongan:=potongan;

   end;

  end else begin
    srupiah := tpotongan.text;
    srupiah := stringreplace(sRupiah,',','',[rfreplaceall,rfignorecase]);
    srupiah := stringreplace(srupiah,'.','',[rfreplaceall,rfignorecase]);
    potongan:=StrToFloat(srupiah)*-1;
  end;

end else begin
  potongan:=0;
end;
  tktotaltagihan.Text:=formatcurr('#,###',v_totaltagihan);
 pembayaran:=v_totalbayar;
 tkpembayaran.Text:=formatcurr('#,###',pembayaran);
 kembalian:=v_totalbayar-(v_totaltagihan+potongan);
 if kembalian = 0 then begin
   tkkembalian.text:='0';
 end else begin
  tkkembalian.text:=formatcurr('#,###',kembalian);
 end;


end;

procedure Tfmenuutama.generate();
var
newkd,kode,tgl,bln,thn,tglx,kd,potkd,st,tanggalawal,newkd2,kodeverifikasi:String;
 i,n:integer;
begin
 kode:='KS';
tgl:=datetostr(date);
tgl :='';
bln :='';
thn :='';

tanggalawal:=formatdatetime('dd/MM/yy',now);
tgl:=copy(tanggalawal,1,2);
bln:=copy(tanggalawal,4,2);
thn:=copy(tanggalawal,7,2);
tglx := tgl + bln + thn;
tabel.q1.SQL.Clear;
tabel.q1.SQL.Add('select no_pengeluaran from penjualan_kainstok where substr(no_pengeluaran,1,2)=''KS'' and substr(no_pengeluaran,3,6)= ''' + FormatDateTime('dd',now) + FormatDateTime('mm',now) + formatDatetime('yy',now)+ ''' order by no_pengeluaran DESC limit 1');
tabel.q1.Active:=true;
if  tabel.q1.RecordCount > 0 then begin
kd:=tabel.q1.FieldValues['no_pengeluaran'];
potKd:=copy(kd,3,8);

for i:=9 to 11 do
st:=st+kd[i];
n:=strtoint(st)+1;
case length(inttostr(n)) of
1 : newkd:=kode+tglx + '00'+inttostr(n);
2 : newkd:=kode+tglx + '0'+inttostr(n);
3 : newkd:=kode+tglx + ''+inttostr(n);
end;

 end else begin
newkd:=kode+tglx + '001';
end;
v_nopenjualan:=newkd;



////////////buat no sj

kode:='SJ';
tgl:=datetostr(date);
tgl :='';
bln :='';
thn :='';

tanggalawal:=formatdatetime('dd/MM/yy',now);
tgl:=copy(tanggalawal,1,2);
bln:=copy(tanggalawal,4,2);
thn:=copy(tanggalawal,7,2);
tglx := tgl + bln + thn;
tabel.q1.SQL.Clear;
tabel.q1.SQL.Add('select no_sj from penjualan_kainstok where substr(no_sj,3,6)= ''' + FormatDateTime('dd',now) + FormatDateTime('mm',now) + formatDatetime('yy',now)+ ''' order by no_sj DESC limit 1');
tabel.q1.Active:=true;
if  tabel.q1.RecordCount > 0 then begin
kd:=tabel.q1.FieldValues['no_sj'];
potKd:=copy(kd,3,8);
i:=0;
n:=0;
st:='';
for i:=9 to 11 do
st:=st+kd[i];
n:=strtoint(st)+1;
case length(inttostr(n)) of
1 : newkd2:=kode+tglx + '00'+inttostr(n);
2 : newkd2:=kode+tglx + '0'+inttostr(n);
3 : newkd2:=kode+tglx + ''+inttostr(n);
end;

 end else begin
newkd2:=kode+tglx + '001';
end;


        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('select no_pengeluaran from penjualan_kainstok where no_pengeluaran='''+v_nopenjualan+'''  ');
        tabel.q1.Active:=true;

        if tabel.q1.RecordCount = 0 then begin

        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('insert into penjualan_kainstok values('''+v_nopenjualan+''','''+newkd2+''','''+v_idcustomer+''',now(),'''','''','''','''+v_idkaryawan+''',''WARNA'',1,''PEMBELIAN'',''TRANSAKSI'') ');
        tabel.q1.ExecSQL;
         kodeverifikasi:=IntToStr(Random(9))+IntToStr(Random(9))+IntToStr(Random(9));

         tabel.q1.SQL.Clear;
         tabel.q1.SQL.Add('select * from kode_verifikasipenjualan where no_penjualan='''+v_nopenjualan+''' ');
         tabel.q1.Active:=True;
         if tabel.q1.RecordCount = 0 then begin
            tabel.q1.SQL.Clear;
            tabel.q1.SQL.Add('insert into kode_verifikasipenjualan values('''+v_nopenjualan+''','''+kodeverifikasi+''',0) ');
            tabel.q1.ExecSQL;

         end;
              try

              tabel.q1.SQL.Clear;
              tabel.q1.SQL.Add('update order_pembelian  set no_penjualan='''+v_nopenjualan+''' where no_order='''+v_noorder+''' ');
              tabel.q1.ExecSQL;

               tabel.q1.SQL.Clear;
               tabel.q1.SQL.Add('insert into relasi_orderdanpenjualan values(0,'''+v_noorder+''','''+v_nopenjualan+''')');
               tabel.q1.ExecSQL;



               except
              end;

        end;


end;

procedure Tfmenuutama.generatebukubesar;
var
newkd,kode,tgl,bln,thn,tglx,kd,potkd,st,tanggalawal:String;
i,n:integer;
begin
kode:='BB';
tgl:=datetostr(date);
tgl :='';
bln :='';
thn :='';

tanggalawal:=formatdatetime('dd/MM/yy',now);
tgl:=copy(tanggalawal,1,2);
bln:=copy(tanggalawal,4,2);
thn:=copy(tanggalawal,7,2);
tglx := tgl + bln + thn;
tabel.q1.SQL.Clear;
tabel.q1.SQL.Add('select no_transaksi from buku_besar where substr(no_transaksi,3,6)= ''' + FormatDateTime('dd',now) + FormatDateTime('mm',now) + formatDatetime('yy',now)+ ''' order by no_transaksi DESC limit 1');
tabel.q1.Active:=true;
if  tabel.q1.RecordCount > 0 then begin
kd:=tabel.q1.FieldValues['no_transaksi'];
potKd:=copy(kd,3,8);

for i:=9 to 11 do
st:=st+kd[i];
n:=strtoint(st)+1;
case length(inttostr(n)) of
1 : newkd:=kode+tglx + '00'+inttostr(n);
2 : newkd:=kode+tglx + '0'+inttostr(n);
3 : newkd:=kode+tglx + ''+inttostr(n);
end;

 end else begin
newkd:=kode+tglx + '001';
end;
vkdbukubesar:=newkd;
end;

procedure Tfmenuutama.generatekassementara;
var
newkd,kode,tgl,bln,thn,tglx,kd,potkd,st,tanggalawal:String;
i,n:integer;
begin
kode:='NK';
tgl:=datetostr(date);
tgl :='';
bln :='';
thn :='';

tanggalawal:=formatdatetime('dd/MM/yy',now);
tgl:=copy(tanggalawal,1,2);
bln:=copy(tanggalawal,4,2);
thn:=copy(tanggalawal,7,2);
tglx := tgl + bln + thn;
tabel.q1.SQL.Clear;
tabel.q1.SQL.Add('select no_transaksi from n_kassementara where substr(no_transaksi,3,6)= ''' + FormatDateTime('dd',now) + FormatDateTime('mm',now) + formatDatetime('yy',now)+ ''' order by no_transaksi DESC limit 1');
tabel.q1.Active:=true;
if  tabel.q1.RecordCount > 0 then begin
kd:=tabel.q1.FieldValues['no_transaksi'];
potKd:=copy(kd,3,8);

for i:=9 to 11 do
st:=st+kd[i];
n:=strtoint(st)+1;
case length(inttostr(n)) of
1 : newkd:=kode+tglx + '00'+inttostr(n);
2 : newkd:=kode+tglx + '0'+inttostr(n);
3 : newkd:=kode+tglx + ''+inttostr(n);
end;

 end else begin
newkd:=kode+tglx + '001';
end;
nokassementara:=newkd;
end;

function Tfmenuutama.generateNoBayarKontrabonSAP: string;
var
  newkd,kode,tglx,kd,potkd,st,tanggalawal,newkd2,kodeverifikasi:String;
  i,n:integer;
begin
  kode:='PK';

  tabel.q1.SQL.Clear;
  tabel.q1.SQL.Add('select DATE_FORMAT(CURDATE(),''%d%m%y'') ');
  tabel.q1.open;
  tglx := tabel.q1.fields[0].Text;

  tabel.q1.SQL.Clear;
  tabel.q1.SQL.Add('select right(no_bayar,3) + 1 nourut from n_pembayaran_ekspedisi where substr(no_bayar,1,2)=''PK'' and substr(no_bayar,3,6)=date_format(curdate(),''%d%m%y'') order by nourut desc limit 1');
  tabel.q1.open;
  if  tabel.q1.RecordCount > 0 then begin
    kd:=tabel.q1.Fields[0].Text;

    case length(kd) of
    1 : newkd:=kode+tglx + '00'+kd;
    2 : newkd:=kode+tglx + '0'+kd;
    3 : newkd:=kode+tglx + kd;
    end;
  end
  else
    newkd := kode+tglx+'001';

  Result:=newkd;
end;

procedure Tfmenuutama.H1Click(Sender: TObject);
begin
  if tabel.qrekeningkoran.RecordCount <> 0 then
  begin
    if tabel.qrekeningkoranbank.Value <> 'MANDIRI' then
      ShowMessage('Penghapusan bank hanya boleh bank MANDIRI')
    else
    begin


      if MessageDlg('Apakah anda yakin akan menghapus Bank ' + tabel.qrekeningkoranbank.Value + ' dengan Jumlah Uang ' + tabel.qrekeningkoranjumlah.Text + ' ?', mtConfirmation, [mbYes,mbNo],0)=mrYes then
      begin
        try

          tabel.q1.SQL.Clear;
          tabel.q1.Sql.Add('START TRANSACTION');
          tabel.q1.ExecSQL;

          tabel.q1.SQL.Clear;
          tabel.q1.SQL.Add('INSERT INTO n_histori_kas_bank_import (SELECT 0,k.*,'''+v_idkaryawan+''',NOW() FROM kas_bank_import k WHERE id_transaksi='''+tabel.qrekeningkoranid_transaksi.Text+''') ');
          tabel.q1.ExecSQL;

          tabel.q1.SQL.Clear;
          tabel.q1.SQL.Add('delete from kas_bank_import WHERE id_transaksi='''+tabel.qrekeningkoranid_transaksi.Text+''' ');
          tabel.q1.ExecSQL;

          tabel.q1.SQL.Clear;
          tabel.q1.Sql.Add('COMMIT');
          tabel.q1.ExecSQL;

          ShowMessage('Berhasil dihapus');
          tabel.qrekeningkoran.Refresh;


        except
          on e: Exception do
          begin
            tabel.q1.SQL.Clear;
            tabel.q1.Sql.Add('ROLLBACK');
            tabel.q1.ExecSQL;
            ShowMessage('Gagal Hapus Kas Bank. Error : ' + e.Message);
          end;

        end;
      end;
    end;


  end;

end;

procedure Tfmenuutama.inputkasbankmandiri();
var tanggal,keterangan,cabang,mutasi,jumlah,saldoakhir,idtransaksi,statuspending:string;
titikawal,titikawalkas,karangan,idtransaksikas,identitas1,identitas2:string;  nourut:string;   nourutsebelum,h:integer;
h_saldoakhir,fixsaldo,fixsaldoakhir:real;
ket,jml,stsvalid,valnourut,d,keterangan2,tgl,no_id,no_id2:string;
begin

//  tabel.q2.SQL.Clear;
//  tabel.q2.sql.Add('select * from kas_bank_import where kode_kas=''7'' and keterangan!=''SALDO AWAL''  ');
//  tabel.q2.Active:=True;
//  if tabel.q2.RecordCount = 0 then begin
//
//     tabel.q1.SQL.Clear;
//     tabel.q1.sql.Add('START TRANSACTION');
//     tabel.q1.ExecSQL;
//
//      tabel.q2.SQL.Clear;
//      tabel.q2.sql.Add('select * from kas_bank_batch where status_pakai=''BELUM TERPAKAI'' and kode_kas=''7''  ');
//      tabel.q2.Active:=True;
//      tabel.q2.First;
//      h:=0;
//      while not tabel.q2.Eof  do begin
//        tanggal:=formatdatetime('yyyy-mm-dd',tabel.q2.FieldValues['tanggal']);
//        keterangan:=tabel.q2.FieldValues['keterangan'];
//        cabang:=tabel.q2.FieldValues['cabang'];
//        mutasi:=tabel.q2.FieldValues['mutasi'];
//        jumlah:=tabel.q2.FieldValues['jumlah'];
//        saldoakhir:=tabel.q2.FieldValues['saldo_akhir'];
//        idtransaksi:=tabel.q2.FieldValues['id_transaksi'];
//        statuspending:=tabel.q2.FieldValues['status_tanggal'];
//        d:=tabel.q2.FieldValues['kode_transaction'];
//        keterangan2:=tabel.q2.FieldValues['keterangan2'];
//
//        tabel.q1.SQL.Clear;
//        tabel.q1.sql.Add('select ifnull(max(no_urut),0)+1 as no from  kas_bank_import ');
//        tabel.q1.Active:=True;
//        nourut:=tabel.q1.FieldValues['no'];
//
//        tabel.q1.SQL.Clear;
//        tabel.q1.sql.Add('insert into kas_bank_import values(0,'''+tanggal+''',''0'','''+keterangan+''','''+cabang+''','''+mutasi+''','''+jumlah+''','''+saldoakhir+''',''TUNGGU VERIFIKASI'',''ADA TANGGAL'','''+nourut+''',''7'','''+d+''','''+keterangan2+''')');
//        tabel.q1.ExecSQL;
//
//        tabel.q1.SQL.Clear;
//        tabel.q1.sql.Add('delete from kas_bank_batch where id_transaksi='''+idtransaksi+''' ');
//        tabel.q1.ExecSQL;
//
//        h:=h+1;
//       tabel.q2.Next;
//      end;
//
//     tabel.q1.SQL.Clear;
//     tabel.q1.sql.Add('COMMIT');
//     tabel.q1.ExecSQL;
//     ShowMessage('Data berhasil di import sebanyak '+inttostr(h)+'');
//
//     pg1.Position:=0;
//     qimportkasbank.Active:=false;
//     qimportkasbank.Active:=True;
//     sedit1.text:='';
//     Exit;
//
//  end else begin
//
//
//
//
//
//  end;
end;

procedure Tfmenuutama.importbri;
var f2 : TextFile;
 f1,strl,strl2:TStringList;
ch,tes,tes2,ch2,k1,k2,k3,k4a,k4,k5 : string;
lines,i,k,kj,pjg,km,sesi,x,y,z,gket,gcab,gjml,gsaldo,akhir,cekjam:integer;
kata: TstringList;
kata2:TStringList;
kata3:TStringList;
a,b,c,d,e,f,g,tahun,cekawal,cekbulan,temp,temp2,cekdebit,kd,bln,tgl,kode_kas,ststgl:string;
bnk,tempkata,kata3tes,yh,bank,str,nourut:string;
tanggal,keterangan,cabang,mutasi,jumlah,saldo_akhir,kodetransaction,keterangan2,statusdata,saldo:string;
ambil:Boolean;
begin
  try
  kata := TstringList.Create;
  if cbpilihanbank.Text='' then begin
      ShowMessage('Silahkan Pilih Rekening yang akan di import!');
      Exit;
  end;
       split(cbpilihanbank.Text,'#',kata);
       tabel.q1.SQL.Clear;
       tabel.q1.SQL.Add('select * from kas_bank where no_rekening='''+kata[0]+''' ');
       tabel.q1.Active:=True;
       kode_kas:=tabel.q1.FieldValues['kode_kas'];
       bank:=tabel.q1.FieldValues['bank'];
  //   ShowMessage(tabel.q1.SQL.text);
   v_kodekas:=kode_kas;
   v_kodekasmandiri:=v_kodekas;
  //  ShowMessage(v_kodekas);
   if sedit1.text = '' then begin
   ShowMessage('Silahkan filih file yang akan di import');
   Exit;
   end;
       tabel.q1.SQL.Clear;
       tabel.q1.sql.Add('START TRANSACTION');
       tabel.q1.ExecSQL;
       v_saldoawal:='0';
       v_saldoakhir:='0';
  try
  f1 := TStringList.Create;
  f1.LoadFromFile(sEdit1.text);
  except
   ShowMessage('File kas bank tidak bisa di akses karena sedang di buka oleh program lain silahkan tutup terlebih dahulu!');
   Exit;
  end;
   lines := f1.Count;
   //  kata := TstringList.Create;
  kata3:=TStringList.Create;
  pg1.Max:=lines;
  pg1.Position:=0;
  ghj:=0;
  kj:=0;


            tabel.q1.SQL.Clear;
            tabel.q1.sql.Add('select ifnull(max(sesi),0)+1 as sesi from kas_bank_import ');
            tabel.q1.Active:=True;
            sesi:=tabel.q1.FieldValues['sesi'];

            temp:='';
            temp2:='';
            ghj:=0;
            kj:=0;
           ch2 := f1[i];
           f1[i] := ch2;
           ch2:=stringreplace(ch2,'"','',[rfreplaceall,rfignorecase]) ;
           ch2:=stringreplace(ch2,'|','',[rfreplaceall,rfignorecase]) ;
  //         ShowMessage(Copy(ch2,1,3));

   vttes.Open;
   vttes.Clear;


  tabel.q1.SQL.Clear;
    tabel.q1.sql.Add('START TRANSACTION');
    tabel.q1.ExecSQL;
   kata2:=TStringList.Create;
   strl:=TStringList.Create;
   strl.LoadFromFile(op.FileName);
   strl2:=TStringList.Create;
   tanggal:='';
   pg1.Max:=strl.Count;
   pg1.Position:=0;
   ambil := False;
   for i := 0 to strl.Count - 1 do
   begin
     pg1.Position:= pg1.Position+1;
//     ShowMessage( strl[i]);
    str := strl[i];
     str := StringReplace(str,'"','',[rfReplaceAll]);
      str := StringReplace(str,tkutip.Text,'',[rfReplaceAll]);
//      ShowMessage(str);
     Split(str,',',kata);
//      ShowMessage(kata[0]);
    if pos('begining ba',trim(LowerCase(kata[0]))) > 0then
        ambil := false;

      if ambil then
      begin
        if trim(kata[0]) <> '-' then
        begin
//          ShowMessage(kata[0]);
//          Memo1.Lines.Add(kata[0] + ' === '+kata[4] + ' === '+kata[5]);
          tabel.q1.SQL.Clear;
          tabel.q1.SQL.Add('SELECT convert(STR_TO_DATE('''+kata[0]+''',''%d/%m/%Y %H:%i:%s''),char) ');
          tabel.q1.Open;
          tgl := tabel.q1.Fields[0].Text;

          keterangan := trim(kata[2]);
          cabang := '0';
          if (kata[4]<>'0.00') and (strtofloat(kata[4]) <> 0) then
          begin
            mutasi:='DB';
            jumlah:=kata[4];
            jumlah := stringreplace(jumlah,',','',[rfreplaceall,rfignorecase]);
          end
          else
          begin
            mutasi:='CR';
            jumlah:=kata[5];
            jumlah := stringreplace(jumlah,',','',[rfreplaceall,rfignorecase]);
          end;


          keterangan2:='';

          tabel.q1.SQL.Clear;
          tabel.q1.sql.Add('insert into kas_bank_batch values(0,'''+tgl+''',''0'','''+keterangan+''','''+cabang+''','''+mutasi+''','''+jumlah+''',0,''BELUM TERPAKAI'',''ADA TANGGAL'','''+v_kodekas+''',''0'','''+keterangan2+''',null) ');
          tabel.q1.ExecSQL;
        end;
      end;

      if trim(LowerCase(kata[0]))='trans date' then
        ambil := True;
   end;
   tabel.q1.SQL.Clear;
   tabel.q1.sql.Add('COMMIT');
   tabel.q1.ExecSQL;
    fverifikasimandiri.ShowModal;
//   ShowMessage('Data berhasil di import sebanyak '+inttostr(strl.Count - 1)+'');
   FreeAndNil(strl);
   sEdit1.Clear;
 pg1.Position:=0;
  except on e:Exception do
  begin
    tabel.q1.SQL.Clear;
    tabel.q1.sql.Add('ROLLBACK');
    tabel.q1.ExecSQL;

    ShowMessage('Error : '+e.Message);
  end;

  end;
end;

procedure Tfmenuutama.importmandiri;
var f2 : TextFile;
 f1,strl,strl2:TStringList;
ch,tes,tes2,ch2,k1,k2,k3,k4a,k4,k5 : string;
lines,i,k,kj,pjg,km,sesi,x,y,z,gket,gcab,gjml,gsaldo,akhir,cekjam:integer;
kata: TstringList;
kata2:TStringList;
kata3:TStringList;
a,b,c,d,e,f,g,tahun,cekawal,cekbulan,temp,temp2,cekdebit,kd,bln,tgl,kode_kas,ststgl:string;
bnk,tempkata,kata3tes,yh,bank,str,nourut:string;
tanggal,keterangan,cabang,mutasi,jumlah,saldo_akhir,kodetransaction,keterangan2,statusdata,saldo:string;
begin
try
  kata := TstringList.Create;
  if cbpilihanbank.Text='' then begin
      ShowMessage('Silahkan Pilih Rekening yang akan di import!');
      Exit;
  end;
       split(cbpilihanbank.Text,'#',kata);
       tabel.q1.SQL.Clear;
       tabel.q1.SQL.Add('select * from kas_bank where no_rekening='''+kata[0]+''' ');
       tabel.q1.Active:=True;
       kode_kas:=tabel.q1.FieldValues['kode_kas'];
       bank:=tabel.q1.FieldValues['bank'];
  //   ShowMessage(tabel.q1.SQL.text);
   v_kodekas:=kode_kas;
   v_kodekasmandiri:=v_kodekas;
  //  ShowMessage(v_kodekas);
   if sedit1.text = '' then begin
   ShowMessage('Silahkan filih file yang akan di import');
   Exit;
   end;
       tabel.q1.SQL.Clear;
       tabel.q1.sql.Add('START TRANSACTION');
       tabel.q1.ExecSQL;
       v_saldoawal:='0';
       v_saldoakhir:='0';
  try
  f1 := TStringList.Create;
  f1.LoadFromFile(sEdit1.text);
  except
   ShowMessage('File kas bank tidak bisa di akses karena sedang di buka oleh program lain silahkan tutup terlebih dahulu!');
   Exit;
  end;
   lines := f1.Count;
   //  kata := TstringList.Create;
  kata3:=TStringList.Create;
  pg1.Max:=lines;
  pg1.Position:=0;
  ghj:=0;
  kj:=0;


            tabel.q1.SQL.Clear;
            tabel.q1.sql.Add('select ifnull(max(sesi),0)+1 as sesi from kas_bank_import ');
            tabel.q1.Active:=True;
            sesi:=tabel.q1.FieldValues['sesi'];

            temp:='';
            temp2:='';
            ghj:=0;
            kj:=0;
           ch2 := f1[i];
           f1[i] := ch2;
           ch2:=stringreplace(ch2,'"','',[rfreplaceall,rfignorecase]) ;
           ch2:=stringreplace(ch2,'|','',[rfreplaceall,rfignorecase]) ;
  //         ShowMessage(Copy(ch2,1,3));

   vttes.Open;
   vttes.Clear;


  tabel.q1.SQL.Clear;
    tabel.q1.sql.Add('START TRANSACTION');
    tabel.q1.ExecSQL;
   kata2:=TStringList.Create;
   strl:=TStringList.Create;
   strl.LoadFromFile(op.FileName);
   strl2:=TStringList.Create;
   tanggal:='';
   pg1.Max:=strl.Count;
   pg1.Position:=0;
   cekjam := 23 ;

   for i := 0 to strl.Count - 1 do
   begin
     pg1.Position:= pg1.Position+1;
//     ShowMessage( strl[i]);
    str := strl[i];
     str := StringReplace(str,'"','',[rfReplaceAll]);
      str := StringReplace(str,tkutip.Text,'',[rfReplaceAll]);
     Split(str,';',kata);

      a := kata[2];
//      ShowMessage(a);
    if Length(a) > 10 then
    begin
      if (cekjam > 0) and (cekjam < 23) and (StrToInt(LeftStr(RightStr(a,8),2)) = 0) then
      begin
        a := Copy(a,0,Pos(':',a) - 3) + '12:'+RightStr(a,5);
      end;
       cekjam := StrToInt(LeftStr(RightStr(a,8),2));

     tabel.q1.SQL.Clear;
     tabel.q1.SQL.Add('SELECT convert(STR_TO_DATE('''+a+''',''%d %m %Y %H:%i:%s''),char) ');
     tabel.q1.Open;
      a := tabel.q1.Fields[0].AsString;
    end
    else
    begin
      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('SELECT convert(STR_TO_DATE('''+a+''',''%d/%m/%Y''),char) ');
      tabel.q1.Open;
      a := tabel.q1.Fields[0].AsString;

      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('select ifnull(convert(max(tanggal),char),'''') from kas_bank_batch where kode_kas='+kode_kas+' and date(tanggal)='''+a+''' ');
      tabel.q1.Open;
      if tabel.q1.Fields[0].AsString = ''  then
      begin
        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('select ifnull(convert(max(tanggal),char),'''') from kas_bank_import where kode_kas='+kode_kas+' and date(tanggal)='''+a+''' ');
        tabel.q1.Open;

        if tabel.q1.Fields[0].AsString = ''  then
        begin
          tabel.q1.SQL.Clear;
          tabel.q1.SQL.Add('SELECT concat('''+a+''','' 00:00:00'') ');
          tabel.q1.Open;
        end;
      end;
      b := tabel.q1.SQL.Text;
      a := tabel.q1.Fields[0].AsString;
    end;
//          ShowMessage(a);

     keterangan:=Trim(kata[3]);
      cabang := '0';


      if (kata[5]<>'0.00') then
      begin
        mutasi:='CR';
       jumlah:=kata[5];
        jumlah := stringreplace(jumlah,',','',[rfreplaceall,rfignorecase]);
      end
      else
      begin
         mutasi:='DB';
       jumlah:=kata[6];
        jumlah := stringreplace(jumlah,',','',[rfreplaceall,rfignorecase]);
      end;


     keterangan2:='';

      tabel.q1.SQL.Clear;
      tabel.q1.sql.Add('insert into kas_bank_batch values(0,'''+a+''',''0'','''+keterangan+''','''+cabang+''','''+mutasi+''','''+jumlah+''',0,''BELUM TERPAKAI'',''ADA TANGGAL'','''+v_kodekas+''',''0'','''+keterangan2+''',null) ');
      tabel.q1.ExecSQL;

   end;
   tabel.q1.SQL.Clear;
   tabel.q1.sql.Add('COMMIT');
   tabel.q1.ExecSQL;
    fverifikasimandiri.ShowModal;
//   ShowMessage('Data berhasil di import sebanyak '+inttostr(strl.Count - 1)+'');
   FreeAndNil(strl);
   sEdit1.Clear;
 pg1.Position:=0;
except on e:Exception do
begin
  tabel.q1.SQL.Clear;
  tabel.q1.SQL.Add('ROLLBACK');
  tabel.q1.ExecSQL;

  ShowMessage('Error : '+e.Message);
end;

end;
end;

procedure Tfmenuutama.inputkasbank();
var tanggal,keterangan,cabang,mutasi,jumlah,saldoakhir,idtransaksi,statuspending:string;
titikawal,titikawalkas,karangan,idtransaksikas:string;  nourut:string;   nourutsebelum,h:integer;
h_saldoakhir,fixsaldo,fixsaldoakhir:real;
kodetf:string;
begin
  tabel.q2.SQL.Clear;
  tabel.q2.sql.Add('select * from kas_bank_import where kode_kas='''+v_kodekas+''' ');
  tabel.q2.Active:=True;
//  ShowMessage(IntToStr(tabel.q2.RecordCount) + v_kodekas);
  if tabel.q2.RecordCount = 0 then begin

     tabel.q1.SQL.Clear;
     tabel.q1.sql.Add('START TRANSACTION');
     tabel.q1.ExecSQL;


      tabel.q2.SQL.Clear;
      tabel.q2.sql.Add('select * from kas_bank_batch where status_pakai=''BELUM TERPAKAI'' and  kode_kas='''+v_kodekas+''' ');
      tabel.q2.Active:=True;
      tabel.q2.First;
      h:=0;
      while not tabel.q2.Eof  do begin
        tanggal:=formatdatetime('yyyy-mm-dd',tabel.q2.FieldValues['tanggal']);
        keterangan:=tabel.q2.FieldValues['keterangan'];
        cabang:=tabel.q2.FieldValues['cabang'];
        mutasi:=tabel.q2.FieldValues['mutasi'];
        jumlah:=tabel.q2.FieldValues['jumlah'];
        saldoakhir:=tabel.q2.FieldValues['saldo_akhir'];
        idtransaksi:=tabel.q2.FieldValues['id_transaksi'];
        statuspending:=tabel.q2.FieldValues['status_tanggal'];

        tabel.q1.SQL.Clear;
        tabel.q1.sql.Add('select ifnull(max(no_urut),0)+1 as no from  kas_bank_import where kode_kas='''+v_kodekas+''' ');
        tabel.q1.Active:=True;
        nourut:=tabel.q1.FieldValues['no'];

        tabel.q1.SQL.Clear;
        tabel.q1.sql.Add('SELECT TRIM(regex_replace('''+keterangan+''',''[^0-9]'','' '')) AS kodetf ');
        tabel.q1.Active:=True;
        kodetf:=tabel.q1.FieldValues['kodetf'];


       tabel.q1.SQL.Clear;
       tabel.q1.sql.Add('insert into kas_bank_import values(0,'''+tanggal+''',''0'','''+keterangan+''','''+cabang+''','''+mutasi+''','''+jumlah+''','''+saldoakhir+''',''BELUM TERPAKAI'','''+statuspending+''','''+nourut+''','''+v_kodekas+''',''0'','''',''IMPORT'','''+kodetf+''') ');
       tabel.q1.ExecSQL;

       tabel.q1.SQL.Clear;
       tabel.q1.sql.Add('delete from kas_bank_batch where id_transaksi='''+idtransaksi+''' ');
       tabel.q1.ExecSQL;

        h:=h+1;
       tabel.q2.Next;
      end;
     tabel.q1.SQL.Clear;
     tabel.q1.sql.Add('COMMIT');
     tabel.q1.ExecSQL;
     ShowMessage('Data berhasil di import sebanyak '+inttostr(h)+'');

      pg1.Position:=0;
     qimportkasbank.Active:=false;
     qimportkasbank.Active:=True;
     sedit1.text:='';
     Exit;

  end else begin


     tabel.q1.SQL.Clear;
     tabel.q1.sql.Add('START TRANSACTION');
     tabel.q1.ExecSQL;
   //1
//   ShowMessage('1');
      tabel.q2.SQL.Clear;
      tabel.q2.sql.Add('select * from kas_bank_import where status_tanggal!=''PENDING'' and kode_kas='''+v_kodekas+''' and keterangan2!=''SHOPEE'' and keterangan2!=''TOKOPEDIA'' order by no_urut desc limit 1  ');
      tabel.q2.Active:=True;
//      ShowMessage(tabel.q2.SQL.Text);
      if tabel.q2.RecordCount > 0 then begin


        tanggal:=formatdatetime('yyyy-mm-dd',tabel.q2.FieldValues['tanggal']);
        keterangan:=tabel.q2.FieldValues['keterangan'];
        cabang:=tabel.q2.FieldValues['cabang'];
        mutasi:=tabel.q2.FieldValues['mutasi'];
        jumlah:=tabel.q2.FieldValues['jumlah'];
        saldoakhir:=tabel.q2.FieldValues['saldo_akhir'];
        idtransaksi:=tabel.q2.FieldValues['id_transaksi'];
        statuspending:=tabel.q2.FieldValues['status_tanggal'];
        titikawalkas:=tabel.q2.FieldValues['no_urut'];
        h:=0;
//          ShowMessage('2');
        //2
        tabel.q2.SQL.Clear;
        tabel.q2.sql.Add('select * from kas_bank_batch where tanggal='''+tanggal+''' and keterangan='''+keterangan+''' and cabang='''+cabang+''' and mutasi='''+mutasi+''' and jumlah='''+jumlah+''' and saldo_akhir='''+saldoakhir+''' and status_pakai=''BELUM TERPAKAI'' and kode_kas='''+v_kodekas+''' ');
        tabel.q2.Active:=True;
//              ShowMessage(tabel.q2.SQL.Text);

        if tabel.q2.RecordCount > 0 then  begin
           titikawal:=tabel.q2.FieldValues['id_transaksi'];

           tabel.q1.SQL.Clear;
           tabel.q1.sql.Add('update kas_bank_batch set status_pakai=''DIPAKAI'' where status_pakai=''BELUM TERPAKAI'' and id_transaksi<='+titikawal+' and kode_kas='''+v_kodekas+''' ');
           tabel.q1.ExecSQL;
//          ShowMessage('3a');
         //3 a
           tabel.q2.SQL.Clear;
           tabel.q2.sql.Add('select * from kas_bank_batch where id_transaksi > '+titikawal+' and status_pakai=''BELUM TERPAKAI'' and status_tanggal=''ADA TANGGAL'' and kode_kas='''+v_kodekas+''' order by id_transaksi asc ');
           tabel.q2.Active:=True;


          //3 b
           tabel.q2.First;
           while not tabel.q2.Eof do begin
                tanggal:=formatdatetime('yyyy-mm-dd',tabel.q2.FieldValues['tanggal']);
                keterangan:=tabel.q2.FieldValues['keterangan'];
                cabang:=tabel.q2.FieldValues['cabang'];
                mutasi:=tabel.q2.FieldValues['mutasi'];
                jumlah:=tabel.q2.FieldValues['jumlah'];
                saldoakhir:=tabel.q2.FieldValues['saldo_akhir'];
                fixsaldoakhir:=tabel.q2.FieldValues['saldo_akhir'];
                idtransaksi:=tabel.q2.FieldValues['id_transaksi'];
                statuspending:=tabel.q2.FieldValues['status_tanggal'];

              tabel.q1.SQL.Clear;
              tabel.q1.sql.Add('select * from kas_bank_import where keterangan='''+keterangan+''' and cabang='''+cabang+''' and keterangan2!=''SHOPEE'' and keterangan2!=''TOKOPEDIA'' and mutasi='''+mutasi+''' and jumlah='''+jumlah+''' and status_tanggal=''PENDING'' and no_urut > '+titikawalkas+' and kode_kas='''+v_kodekas+''' order by no_urut asc limit 1  ');
              tabel.q1.Active:=True;
              // 4
              if tabel.q1.RecordCount > 0 then begin
                 jumlah:=tabel.q1.FieldValues['jumlah'];
                idtransaksikas:=tabel.q1.FieldValues['id_transaksi'];

               nourut:=tabel.q1.FieldValues['no_urut'];
               nourutsebelum:=StrToInt(nourut)-1;
              //5
               tabel.q1.SQL.Clear;
               tabel.q1.sql.Add('select saldo_akhir from kas_bank_import where no_urut='''+inttostr(nourutsebelum)+''' and keterangan2!=''SHOPEE'' and keterangan2!=''TOKOPEDIA'' and kode_kas='''+v_kodekas+'''  ');
               tabel.q1.Active:=True;

              //5
               if tabel.q1.RecordCount>0 then begin
                 h_Saldoakhir:=tabel.q1.FieldValues['saldo_akhir'];
                 //6
                 if mutasi='DB' then begin
                   fixsaldo:=h_Saldoakhir-strtofloat(jumlah);
                 end else begin
                  fixsaldo:=h_Saldoakhir+strtofloat(jumlah);
                 end;


                 if FloatToStr(fixsaldoakhir)<>FloatToStr(fixsaldo) then begin
                     ShowMessage(FloatToStr(fixsaldoakhir));
                     ShowMessage(FloatToStr(fixsaldo));

                   ShowMessage('Ada kesalahan import silahkan hub bagian it!');
                   tabel.q1.SQL.Clear;
                   tabel.q1.sql.Add('ROLLBACK');
                   tabel.q1.ExecSQL;

                    tabel.q1.SQL.Clear;
                    tabel.q1.sql.Add('START TRANSACTION');
                    tabel.q1.ExecSQL;

                    tabel.q1.SQL.Clear;
                    tabel.q1.sql.Add('update kas_bank_batch set status_pakai=''DIPAKAI'' where status_pakai=''BELUM TERPAKAI'' and kode_kas='''+v_kodekas+''' ');
                    tabel.q1.ExecSQL;

                    tabel.q1.SQL.Clear;
                    tabel.q1.sql.Add('COMMIT');
                    tabel.q1.ExecSQL;
                    pg1.Position:=0;
                    qimportkasbank.Active:=false;
                    qimportkasbank.Active:=True;
                    sedit1.text:='';
                    Exit;
                 end;  // 7
               end;  //5

               tabel.q1.SQL.Clear;
               tabel.q1.sql.Add('update kas_bank_import set status_tanggal=''ADA TANGGAL'',tanggal='''+tanggal+''',no_urut='''+nourut+''',saldo_akhir='''+floattostr(fixsaldo)+''' where id_transaksi='''+idtransaksikas+'''   ');
               tabel.q1.ExecSQL;
                h:=h+1;
               tabel.q1.SQL.Clear;
               tabel.q1.sql.Add('update kas_bank_batch set status_pakai=''DIPAKAI'' where id_transaksi='''+idtransaksi+''' ');
               tabel.q1.ExecSQL;


              end else begin
               h:=h+1;
                tabel.q1.SQL.Clear;
                tabel.q1.sql.Add('select ifnull(max(no_urut),0)+1 as no from  kas_bank_import where status_tanggal=''ADA TANGGAL'' and kode_kas='''+v_kodekas+''' ');
                tabel.q1.Active:=True;
                nourut:=tabel.q1.FieldValues['no'];

                 tabel.q1.SQL.Clear;
                  tabel.q1.sql.Add('SELECT TRIM(regex_replace('''+keterangan+''',''[^0-9]'','' '')) AS kodetf ');
                  tabel.q1.Active:=True;
                  kodetf:=tabel.q1.FieldValues['kodetf'];


                 tabel.q1.SQL.Clear;
                 tabel.q1.sql.Add('insert into kas_bank_import values(0,'''+tanggal+''',''0'','''+keterangan+''','''+cabang+''','''+mutasi+''','''+jumlah+''','''+saldoakhir+''',''BELUM TERPAKAI'','''+statuspending+''','''+nourut+''','''+v_kodekas+''',''0'','''',''IMPORT'','''+kodetf+''') ');
                 tabel.q1.ExecSQL;

                tabel.q1.SQL.Clear;
                tabel.q1.sql.Add('update kas_bank_batch set status_pakai=''DIPAKAI'' where id_transaksi='''+idtransaksi+''' ');
                tabel.q1.ExecSQL;

              end;
              // 4

            tabel.q2.Next;
           end;


            // cur a
             tabel.q2.SQL.Clear;
             tabel.q2.sql.Add('select * from kas_bank_batch where id_transaksi > '+titikawal+' and status_pakai=''BELUM TERPAKAI'' and status_tanggal=''PENDING'' and kode_kas='''+v_kodekas+''' ');
             tabel.q2.Active:=True;

             tabel.q2.First;
             while not tabel.q2.Eof do begin

                  tanggal:=formatdatetime('yyyy-mm-dd',tabel.q2.FieldValues['tanggal']);
                  keterangan:=tabel.q2.FieldValues['keterangan'];
                  cabang:=tabel.q2.FieldValues['cabang'];
                  mutasi:=tabel.q2.FieldValues['mutasi'];
                  jumlah:=tabel.q2.FieldValues['jumlah'];
                  saldoakhir:=tabel.q2.FieldValues['saldo_akhir'];
                  idtransaksi:=tabel.q2.FieldValues['id_transaksi'];
                  statuspending:=tabel.q2.FieldValues['status_tanggal'];

                  tabel.q1.SQL.Clear;
                  tabel.q1.sql.Add('select * from kas_bank_import where keterangan='''+keterangan+''' and cabang='''+cabang+''' and mutasi='''+mutasi+''' and jumlah='''+jumlah+''' and status_tanggal=''PENDING'' and no_urut > '+titikawalkas+' and kode_kas='''+v_kodekas+''' and keterangan2!=''SHOPEE'' and keterangan2!=''TOKOPEDIA''  ');
                  tabel.q1.Active:=True;
                  // if cur a 1
                  if tabel.q1.RecordCount > 0 then begin
                    idtransaksikas:=tabel.q1.FieldValues['id_transaksi'];
                    titikawalkas:=tabel.q1.FieldValues['no_urut'];
                     tabel.q1.SQL.Clear;
                     tabel.q1.sql.Add('update kas_bank_batch set status_pakai=''DIPAKAI'' where id_transaksi='''+idtransaksi+''' ');
                     tabel.q1.ExecSQL;

                  end else begin
                    h:=h+1;

                    tabel.q1.SQL.Clear;
                    tabel.q1.sql.Add('select ifnull(max(no_urut),0)+1 as no from  kas_bank_import where kode_kas='''+v_kodekas+''' ');
                    tabel.q1.Active:=True;
                    nourut:=tabel.q1.FieldValues['no'];

                     tabel.q1.SQL.Clear;
                    tabel.q1.sql.Add('SELECT TRIM(regex_replace('''+keterangan+''',''[^0-9]'','' '')) AS kodetf ');
                    tabel.q1.Active:=True;
                    kodetf:=tabel.q1.FieldValues['kodetf'];


                   tabel.q1.SQL.Clear;
                   tabel.q1.sql.Add('insert into kas_bank_import values(0,'''+tanggal+''',''0'','''+keterangan+''','''+cabang+''','''+mutasi+''','''+jumlah+''','''+saldoakhir+''',''BELUM TERPAKAI'','''+statuspending+''','''+nourut+''','''+v_kodekas+''',''0'','''',''IMPORT'','''+kodetf+''') ');
                   tabel.q1.ExecSQL;

                    tabel.q1.SQL.Clear;
                    tabel.q1.sql.Add('update kas_bank_batch set status_pakai=''DIPAKAI'' where id_transaksi='''+idtransaksi+''' ');
                    tabel.q1.ExecSQL;

                  end;

              tabel.q2.Next;
             end;

             if h > 0 then begin
              ShowMessage('data berhasil di import sebanyak '+inttostr(h)+'');
                pg1.Position:=0;
               qimportkasbank.Active:=false;
               qimportkasbank.Active:=True;
               sedit1.text:='';
                    tabel.q1.SQL.Clear;
                 tabel.q1.sql.Add('COMMIT');
                 tabel.q1.ExecSQL;
               Exit;

             end else begin
              ShowMessage('Tidak ada data yang berhasil di import ');
                pg1.Position:=0;
               qimportkasbank.Active:=false;
               qimportkasbank.Active:=True;
               sedit1.text:='';
                    tabel.q1.SQL.Clear;
                   tabel.q1.sql.Add('COMMIT');
                   tabel.q1.ExecSQL;
               Exit;
             end;

        end else begin
//        ShowMessage('3else');
             tabel.q1.SQL.Clear;
             tabel.q1.sql.Add('update kas_bank_batch set status_pakai=''DIPAKAI'' where status_pakai=''BELUM TERPAKAI'' and kode_kas='''+v_kodekas+''' ');
             tabel.q1.ExecSQL;
           ShowMessage('Tidak ada data yang berhasil di import ');
           pg1.Position:=0;
           qimportkasbank.Active:=false;
           qimportkasbank.Active:=True;
           sedit1.text:='';
           tabel.q1.SQL.Clear;
           tabel.q1.sql.Add('COMMIT');
           tabel.q1.ExecSQL;
                    
           Exit;



        end;

        // end else if 1
      end else begin


          h:=0;

          tabel.q2.SQL.Clear;
          tabel.q2.sql.Add('select * from kas_bank_import where status_tanggal=''PENDING'' and kode_kas='''+v_kodekas+''' and keterangan2!=''SHOPEE'' and keterangan2!=''TOKOPEDIA'' order by no_urut asc limit 1  ');
          tabel.q2.Active:=True;
         // 1b
//            ShowMessage('1a');
          if tabel.q2.RecordCount > 0 then begin
      //    ShowMessage('3'+tabel.q2.SQL.Text);
            tanggal:=formatdatetime('yyyy-mm-dd',tabel.q2.FieldValues['tanggal']);
            keterangan:=tabel.q2.FieldValues['keterangan'];
            cabang:=tabel.q2.FieldValues['cabang'];
            mutasi:=tabel.q2.FieldValues['mutasi'];
            jumlah:=tabel.q2.FieldValues['jumlah'];
            saldoakhir:=tabel.q2.FieldValues['saldo_akhir'];
            idtransaksi:=tabel.q2.FieldValues['id_transaksi'];
            statuspending:=tabel.q2.FieldValues['status_tanggal'];
            titikawalkas:=tabel.q2.FieldValues['no_urut'];


            // cur b
                       tabel.q2.SQL.Clear;
                       tabel.q2.sql.Add('select * from kas_bank_batch where status_pakai=''BELUM TERPAKAI'' and status_tanggal=''ADA TANGGAL'' and kode_kas='''+v_kodekas+''' ');
                       tabel.q2.Active:=True;
//                       ShowMessage(tabel.q2.SQL.Text);
                       tabel.q2.First;
                       while not tabel.q2.Eof do begin
                            tanggal:=formatdatetime('yyyy-mm-dd',tabel.q2.FieldValues['tanggal']);
                            keterangan:=tabel.q2.FieldValues['keterangan'];
                            cabang:=tabel.q2.FieldValues['cabang'];
                            mutasi:=tabel.q2.FieldValues['mutasi'];
                            jumlah:=tabel.q2.FieldValues['jumlah'];
                            saldoakhir:=tabel.q2.FieldValues['saldo_akhir'];
                            fixsaldoakhir:=tabel.q2.FieldValues['saldo_akhir'];
                            idtransaksi:=tabel.q2.FieldValues['id_transaksi'];
                            statuspending:=tabel.q2.FieldValues['status_tanggal'];
                         // 2b
                          tabel.q1.SQL.Clear;
                          tabel.q1.sql.Add('select * from kas_bank_import where keterangan='''+keterangan+''' and cabang='''+cabang+''' and mutasi='''+mutasi+''' and jumlah='''+jumlah+''' and status_tanggal=''PENDING'' and no_urut >= '+titikawalkas+' and kode_kas='''+v_kodekas+''' and keterangan2!=''SHOPEE'' and keterangan2!=''TOKOPEDIA''  ');
                          tabel.q1.Active:=True;
                           // 2b
                          if tabel.q1.RecordCount > 0 then begin
                            idtransaksikas:=tabel.q1.FieldValues['id_transaksi'];
                           // ShowMessage(idtransaksikas);
                            nourut:=tabel.q1.FieldValues['no_urut'];
                            nourutsebelum:=StrToInt(nourut)-1;

                            // 3b
                           tabel.q1.SQL.Clear;
                           tabel.q1.sql.Add('select saldo_akhir from kas_bank_import where no_urut='''+inttostr(nourutsebelum)+''' and kode_kas='''+v_kodekas+''' and keterangan2!=''SHOPEE'' and keterangan2!=''TOKOPEDIA''  ');
                           tabel.q1.Active:=True;
//                           ShowMessage(tabel.q1.SQL.Text);
                             // 3b
                           if tabel.q1.RecordCount>0 then begin
                             h_Saldoakhir:=tabel.q1.FieldValues['saldo_akhir'];

                              if mutasi='DB' then begin
                               fixsaldo:=h_Saldoakhir-strtofloat(jumlah);
                             end else begin
                              fixsaldo:=h_Saldoakhir+strtofloat(jumlah);
                             end;


                             if FloatToStr(fixsaldoakhir)<>FloatToStr(fixsaldo) then begin

                               ShowMessage('Ada kesalahan import Karena Saldo akhir tidak sama silahkan hub bagian it!');
                               tabel.q1.SQL.Clear;
                               tabel.q1.sql.Add('ROLLBACK');
                               tabel.q1.ExecSQL;

                               tabel.q1.SQL.Clear;
                                tabel.q1.sql.Add('START TRANSACTION');
                                tabel.q1.ExecSQL;

                                tabel.q1.SQL.Clear;
                                tabel.q1.sql.Add('update kas_bank_batch set status_pakai=''DIPAKAI'' where status_pakai=''BELUM TERPAKAI'' and kode_kas='''+v_kodekas+''' ');
                                tabel.q1.ExecSQL;

                                tabel.q1.SQL.Clear;
                                tabel.q1.sql.Add('COMMIT');
                                tabel.q1.ExecSQL;

                                  pg1.Position:=0;
                                 qimportkasbank.Active:=false;
                                 qimportkasbank.Active:=True;
                                 sedit1.text:='';
                                 Exit;


                               Exit;
                             end;

                           end; // 3b

                            h:=h+1;
                           tabel.q1.SQL.Clear;
                           tabel.q1.sql.Add('update kas_bank_import set status_tanggal=''ADA TANGGAL'',tanggal='''+tanggal+''',no_urut='''+nourut+''',saldo_akhir='''+floattostr(fixsaldo)+''' where id_transaksi='''+idtransaksikas+'''  ');
                           tabel.q1.ExecSQL;
                          //  ShowMessage(tabel.q1.SQL.Text);
                           tabel.q1.SQL.Clear;
                           tabel.q1.sql.Add('update kas_bank_batch set status_pakai=''DIPAKAI'' where id_transaksi='''+idtransaksi+''' ');
                           tabel.q1.ExecSQL;

                             // 2b
                          end else begin
                            h:=h+1;
                            tabel.q1.SQL.Clear;
                            tabel.q1.sql.Add('select ifnull(max(no_urut),0)+1 as no from  kas_bank_import where status_tanggal=''ADA TANGGAL'' and kode_kas='''+v_kodekas+''' ');
                            tabel.q1.Active:=True;
                            nourut:=tabel.q1.FieldValues['no'];

                             tabel.q1.SQL.Clear;
                              tabel.q1.sql.Add('SELECT TRIM(regex_replace('''+keterangan+''',''[^0-9]'','' '')) AS kodetf ');
                              tabel.q1.Active:=True;
                              kodetf:=tabel.q1.FieldValues['kodetf'];


                             tabel.q1.SQL.Clear;
                             tabel.q1.sql.Add('insert into kas_bank_import values(0,'''+tanggal+''',''0'','''+keterangan+''','''+cabang+''','''+mutasi+''','''+jumlah+''','''+saldoakhir+''',''BELUM TERPAKAI'','''+statuspending+''','''+nourut+''','''+v_kodekas+''',''0'','''',''IMPORT'','''+kodetf+''') ');
                             tabel.q1.ExecSQL;
                            tabel.q1.SQL.Clear;
                            tabel.q1.sql.Add('update kas_bank_batch set status_pakai=''DIPAKAI'' where id_transaksi='''+idtransaksi+''' ');
                            tabel.q1.ExecSQL;

                          end;  // 2b


                        tabel.q2.Next;
                       end;  // cur b


                         // cur c

                         tabel.q2.SQL.Clear;
                         tabel.q2.sql.Add('select * from kas_bank_batch where status_pakai=''BELUM TERPAKAI'' and status_tanggal=''PENDING'' and kode_kas='''+v_kodekas+''' ');
                         tabel.q2.Active:=True;
//                         ShowMessage(tabel.q2.SQL.Text);
                         tabel.q2.First;
                         // cur c
                         while not tabel.q2.Eof do begin

                              tanggal:=formatdatetime('yyyy-mm-dd',tabel.q2.FieldValues['tanggal']);
                              keterangan:=tabel.q2.FieldValues['keterangan'];
                              cabang:=tabel.q2.FieldValues['cabang'];
                              mutasi:=tabel.q2.FieldValues['mutasi'];
                              jumlah:=tabel.q2.FieldValues['jumlah'];
                              saldoakhir:=tabel.q2.FieldValues['saldo_akhir'];
                              idtransaksi:=tabel.q2.FieldValues['id_transaksi'];
                              statuspending:=tabel.q2.FieldValues['status_tanggal'];

                              // c1
                              tabel.q1.SQL.Clear;
                              tabel.q1.sql.Add('select * from kas_bank_import where keterangan='''+keterangan+''' and cabang='''+cabang+''' and mutasi='''+mutasi+''' and jumlah='''+jumlah+''' and status_tanggal=''PENDING'' and no_urut > '+titikawalkas+' and kode_kas='''+v_kodekas+''' and keterangan2!=''SHOPEE'' and keterangan2!=''TOKOPEDIA''  ');
                              tabel.q1.Active:=True;
                              // c1
                              if tabel.q1.RecordCount > 0 then begin
                                idtransaksikas:=tabel.q1.FieldValues['id_transaksi'];
                                titikawalkas:=tabel.q1.FieldValues['no_urut'];
                                 tabel.q1.SQL.Clear;
                                 tabel.q1.sql.Add('update kas_bank_batch set status_pakai=''DIPAKAI'' where id_transaksi='''+idtransaksi+''' ');
                                 tabel.q1.ExecSQL;

                              end else begin

                                tabel.q1.SQL.Clear;
                                tabel.q1.sql.Add('select ifnull(max(no_urut),0)+1 as no from  kas_bank_import where kode_kas='''+v_kodekas+''' ');
                                tabel.q1.Active:=True;
                                nourut:=tabel.q1.FieldValues['no'];

                                 tabel.q1.SQL.Clear;
                                tabel.q1.sql.Add('SELECT TRIM(regex_replace('''+keterangan+''',''[^0-9]'','' '')) AS kodetf ');
                                tabel.q1.Active:=True;
                                kodetf:=tabel.q1.FieldValues['kodetf'];


                               tabel.q1.SQL.Clear;
                               tabel.q1.sql.Add('insert into kas_bank_import values(0,'''+tanggal+''',''0'','''+keterangan+''','''+cabang+''','''+mutasi+''','''+jumlah+''','''+saldoakhir+''',''BELUM TERPAKAI'','''+statuspending+''','''+nourut+''','''+v_kodekas+''',''0'','''',''IMPORT'','''+kodetf+''') ');
                               tabel.q1.ExecSQL;

                                tabel.q1.SQL.Clear;
                                tabel.q1.sql.Add('update kas_bank_batch set status_pakai=''DIPAKAI'' where id_transaksi='''+idtransaksi+''' ');
                                tabel.q1.ExecSQL;
                               h:=h+1;
                              end;   // c1

                          tabel.q2.Next;
                         end;   // cur c

                           if h > 0 then begin
                            ShowMessage('data berhasil di import sebanyak '+inttostr(h)+'');
                              pg1.Position:=0;
                               qimportkasbank.Active:=false;
                               qimportkasbank.Active:=True;
                               sedit1.text:='';
                        //       Exit;

                           end else begin
                            ShowMessage('Tidak ada data yang berhasil di import ');
                              pg1.Position:=0;
                             qimportkasbank.Active:=false;
                             qimportkasbank.Active:=True;
                             sedit1.text:='';
                          //   Exit;
                           end;

                     


                    tabel.q1.SQL.Clear;
                    tabel.q1.sql.Add('COMMIT');
                    tabel.q1.ExecSQL;

          end else begin  // 1b
//             ShowMessage('1b');
             tabel.q1.SQL.Clear;
             tabel.q1.sql.Add('update kas_bank_batch set status_pakai=''DIPAKAI'' where status_pakai=''BELUM TERPAKAI'' and kode_kas='''+v_kodekas+'''  ');
             tabel.q1.ExecSQL;
             ShowMessage('Tidak ada data yang berhasil di import ');
               pg1.Position:=0;
               qimportkasbank.Active:=false;
               qimportkasbank.Active:=True;
               sedit1.text:='';

                 tabel.q1.SQL.Clear;
                 tabel.q1.sql.Add('COMMIT');
                 tabel.q1.ExecSQL;
                    
               Exit;

          end;     // 1b







      end;



       tabel.q1.SQL.Clear;
       tabel.q1.sql.Add('COMMIT');
       tabel.q1.ExecSQL;


  end;

end;

procedure Tfmenuutama.cekdokumen(jenis, dw: string);
var p,awal,tipe,downloadfolder,nmdw : string;
  IDL: PItemIDList;
  Buffer: array[0..MAX_PATH] of Char;
  Handle: Hwnd;
  aa : TStringList;
begin
 try
   if pos('.pdf',vtsupplier.FieldByName(jenis).Value) > 0 then
    tipe := '.pdf' else
    tipe := '.jpg';

   awal := vtsupplier.FieldByName('file'+jenis).Value;

  if UpperCase(dw) <> 'DOWNLOAD' then
  begin
   p := ExtractFilePath(ParamStr(0)) +vtsupplier.FieldByName(jenis).Value;
   CopyFile(PChar(awal), PChar(p), false);

   if FileExists(p) then
    ShellExecute(Handle, nil, PChar(p), nil,  nil, SW_SHOWNORMAL) else
    ShowMessage('File '''+UpperCase(jenis)+''' tidak tersedia !');
  end else
  begin

     SHGetSpecialFolderLocation(WindowHandle, CSIDL_STARTUP, IDL);
    try
      ShGetPathFromIDList(IDL, Buffer);
      downloadfolder := trim(StrPas(Buffer));
    finally
      CoTaskMemFree(IDL);
    end;

    aa := TStringList.Create;
    Split(downloadfolder,'\',aa);

    downloadfolder := aa[0]+'\'+aa[1]+'\'+aa[2]+'\Downloads\INVENTORI\';

    if directoryexists(downloadfolder) then
      else
     CreateDir(downloadfolder);

    nmdw := downloadfolder+ vtsuppliernama.Value+jenis+'('+FormatDateTime('ddmmyy',Now())+')'+tipe;
    CopyFile(PChar(awal), PChar(nmdw), false);

   // merubah date modified
    FileSetDate(nmdw, DateTimeToFileDate(Now()));;
   // merubah date modified

   if FileExists(nmdw) then
   begin
      ShowMessage('File berhasil di unduh !');
      ShellExecute(Handle, nil, PChar(nmdw), nil,  nil, SW_SHOWNORMAL);
   end
   else
    ShowMessage('File '+UpperCase(jenis)+' tidak tersedia !');
  end;
 except
  on e:exception do
  begin
   if Pos('Could not convert variant of type (Null) into type (OleStr)',e.Message) > 0 then
    ShowMessage('File tidak tersedia !') else
    ShowMessage('Terjadi kesalahan '''+e.Message+''' !');
  end;

 end;
end;

procedure Tfmenuutama.cetakfaktur();
var
srupiah,noorder1:string;
tagihankain,ongkir,katalog,diskon:Real; sdiskon,songkir,skatalog,jnspembayaran,spotongan:string;
grandtotal,biayaadmin2,potongan:real;
begin

tabel.qpenjualan.SQL.Clear;
tabel.qpenjualan.SQL.Add('select catatan,pk.tanggal,no_pengeluaran, '+
'pk.jenis_kain,c.nama as customer,supir,no_mobil,no_sj '+
'from penjualan_kainstok pk join customer c using(id_customer) '+
'where jenis_penerimaan=''PEMBELIAN''  and penjualan_melalui=''TRANSAKSI'' and no_pengeluaran='''+v_nopenjualan+'''  '+
'order by pk.tanggal desc,no_pengeluaran desc ');
tabel.qpenjualan.Active:=True;

tabel.qdetailpenjualan2.SQL.Clear;
tabel.qdetailpenjualan2.SQL.Add('select concat(nama_kain,'' - '',jenis_Warna) as identitas,no_pengeluaran,concat(no_pengeluaran,kualitas,id_warna,id_kain,gramasi,lebar,mesin,harga) as relasi,sum(dpk.roll) as roll,sum(dpk.berat)  as berat , '+
'kualitas,id_warna,id_kain,dpk.no_detail,dpk.jenis_kain as body,mesin,gramasi, '+
' lebar,nama_kain,jenis_warna,pk.jenis_kain as jenis, kode_spk, '+
' harga as hargaasli,(dpk.berat*harga)/1.1 as subtotal,harga/1.1 as harga,sum(dpk.berat)*harga as total '+
' from detail_pengeluaranstok dpk join penjualan_kainstok pk using(no_pengeluaran) join kain k using(id_kain) '+
' join warna w using(id_warna)  where pk.no_pengeluaran='''+v_nopenjualan+''' group by kualitas,id_warna,id_kain,gramasi,lebar,mesin,harga ');
tabel.qdetailpenjualan2.Active:=true;

tabel.qcetak.SQL.Clear;
tabel.qcetak.SQL.Add('select sum(dpk.roll) as roll,sum(dpk.berat)  as berat , '+
'kualitas,id_warna,id_kain,dpk.no_detail,dpk.jenis_kain as body,mesin,gramasi, '+
' lebar,nama_kain,jenis_warna,pk.jenis_kain as jenis, kode_spk, '+
' harga as hargaasli,(dpk.berat*harga)/1.1 as subtotal,harga/1.1 as harga,sum(dpk.berat)*harga as total '+
' from detail_pengeluaranstok dpk join penjualan_kainstok pk using(no_pengeluaran) join kain k using(id_kain) '+
' join warna w using(id_warna)  where pk.no_pengeluaran='''+v_nopenjualan+''' group by no_detail ');
tabel.qcetak.Active:=true;


if tkdiskon.Text<>'' then begin
 sdiskon:=tkdiskon.Text;
end else begin
 sdiskon:='0';
end;

if tkkatalog.Text<>'' then begin
 skatalog:=tkkatalog.Text;
end else begin
 skatalog:='0';
end;

if tkongkir.Text<>'' then begin
 songkir:=tkongkir.Text;
end else begin
 songkir:='0';
end;
if tpotongan.Text<>'' then begin
  spotongan:=tpotongan.Text
end else begin
  spotongan:='0';
end;

 sdiskon := sdiskon;
 sdiskon := stringreplace(sdiskon,',','',[rfreplaceall,rfignorecase]);
 sdiskon := stringreplace(sdiskon,'.','',[rfreplaceall,rfignorecase]);
 diskon:=StrToFloat(sdiskon)*v_totkg;

 skatalog:= skatalog;
 skatalog := stringreplace(skatalog,',','',[rfreplaceall,rfignorecase]);
 skatalog := stringreplace(skatalog,'.','',[rfreplaceall,rfignorecase]);
 katalog:=StrToFloat(skatalog);

 songkir := songkir;
 songkir := stringreplace(songkir,',','',[rfreplaceall,rfignorecase]);
 songkir := stringreplace(songkir,'.','',[rfreplaceall,rfignorecase]);
 ongkir  :=StrToFloat(songkir);

 spotongan:=spotongan;
 spotongan := stringreplace(spotongan,',','',[rfreplaceall,rfignorecase]);
 spotongan := stringreplace(spotongan,'.','',[rfreplaceall,rfignorecase]);
 potongan  :=StrToFloat(spotongan);



   // total:=v_tagihankain;
    tabel.vt1.Open;
    tabel.vt1.Clear;

    tabel.vt1.Append;
    tabel.vt1data.Value:='*SUBTOTAL*';
    tabel.vt1isidata.Value:='Rp. '+formatcurr('#,###',v_tagihankain);
    tabel.vt1.Post;

     if ongkir <> 0 then begin
      tabel.vt1.Append;
      tabel.vt1data.Value:='Ongkir';
      tabel.vt1isidata.Value:='Rp. '+formatcurr('#,###',ongkir);
      tabel.vt1.Post;
   end;
   if katalog <> 0 then begin

      tabel.vt1.Append;
      tabel.vt1data.Value:='Katalog';
      tabel.vt1isidata.Value:='Rp. '+formatcurr('#,###',katalog);
      tabel.vt1.Post;

   end;

   if diskon <> 0 then begin
      tabel.vt1.Append;
      tabel.vt1data.Value:='Diskon';
      tabel.vt1isidata.Value:='Rp. '+formatcurr('#,###',diskon);
      tabel.vt1.Post;
   end;

    vpembayaran.Open;
    vpembayaran.First;
    biayaadmin2:=0;
    while not vpembayaran.eof do begin
         if vpembayaranadm.Value <>0 then begin
          tabel.vt1.Append;
          tabel.vt1data.Value:='Adm '+vpembayarannama_bank.Value;
          tabel.vt1isidata.Value:='Rp. '+formatcurr('#,###',vpembayaranadm.Value);
          tabel.vt1.Post;
         biayaadmin2:=biayaadmin2+vpembayaranadm.Value;

         end;

    vpembayaran.Next;
    end;


      tabel.vt1.Append;
      tabel.vt1data.Value:='-----------------------------------------------------------------';
      tabel.vt1isidata.Value:='-------------------------------------------------------------';
      tabel.vt1.Post;
      grandtotal:=(v_tagihankain+ongkir+biayaadmin2+katalog)-diskon;

      tabel.vt1.Append;
      tabel.vt1data.Value:='*GRAND TOTAL*';
      tabel.vt1isidata.Value:='Rp. '+formatcurr('#,###',grandtotal);
      tabel.vt1.Post;



    vpembayaran.First;
    while not vpembayaran.eof do begin
      if vpembayarannama_bank.Value='' then begin
        jnspembayaran:=vpembayaranjenis_pembayaran.Value;
      end else begin
       jnspembayaran:=vpembayaranjenis_pembayaran.Value+'-'+vpembayarannama_bank.Value;
      end;
       if vpembayarantotal.Value<>0 then begin
           tabel.vt1.Append;
        tabel.vt1data.Value:=jnspembayaran;
        tabel.vt1isidata.Value:='Rp. '+formatcurr('#,###',vpembayarantotal.Value);
        tabel.vt1.Post;

       end;



    vpembayaran.Next;
    end;



       {    tabel.q1.SQL.Clear;
           tabel.q1.SQL.Add('select no_order from relasi_orderdanpenjualan where no_penjualan='''+v_nopenjualan+''' ');
           tabel.q1.Active:=True;
           if tabel.q1.RecordCount > 0 then begin
             noorder1:=tabel.q1.FieldValues['no_order'];
             if noorder1 <> '' then begin
               tabel.q1.SQL.Clear;
               tabel.q1.SQL.Add('update order_pembelian set status_order=''SELESAI FAKTUR'' where no_order='''+noorder1+''' ');
               tabel.q1.ExecSQL;
             end;
           end;       }

             v_statusfaktur:='--TERIMA KASIH--';
       tabel.vt1.Active:=True;
       FrxReport1.PrepareReport();
       FrxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'cetakstruk.Fr3');
    //   FrxReport1.Print;
      FrxReport1.ShowReport();

end;

procedure Tfmenuutama.inputpiutang;
var
hasil,ongkir,katalog,cc,edc,diskon,lainlain:real; idcustomer:string;
begin

                 q1.SQL.Clear;
                 q1.SQL.Add('select * from order_pembelian where no_order='''+v_noorder+''' ');
                 q1.Active:=True;
                 idcustomer:=q1.FieldValues['id_customer'];

                q1.SQL.Clear;
                 q1.SQL.Add('select * from ongkir where no_transaksi='''+v_noorder+''' ');
                 q1.Active:=True;
                 if q1.RecordCount > 0 then begin
                    ongkir:=q1.FieldValues['ongkir'];
                    katalog:=q1.FieldValues['katalog'];
                    cc:=q1.FieldValues['cc'];
                    edc:=q1.FieldValues['edc'];
                    diskon:=q1.FieldValues['diskon'];
                    tabel.q1.SQL.Clear;
                    tabel.q1.SQL.Add('select * from ongkir where  no_transaksi='''+v_nopenjualan+''' ');
                    tabel.q1.Active:=True;
                    if tabel.q1.RecordCount > 0 then begin
                      tabel.q1.SQL.Clear;
                      tabel.q1.SQL.Add('update ongkir set ongkir='''+floattostr(ongkir)+''',katalog='''+floattostr(katalog)+''',diskon='''+floattostr(diskon)+''' where no_transaksi='''+v_nopenjualan+''' ');
                      tabel.q1.ExecSQL;

                    end else begin
                      tabel.q1.SQL.Clear;
                      tabel.q1.SQL.Add('insert into ongkir values('''+v_nopenjualan+''','''+floattostr(ongkir)+''','''+floattostr(katalog)+''','''+floattostr(cc)+''','''+floattostr(edc)+''','''+floattostr(diskon)+''')');
                      tabel.q1.ExecSQL;
                    end;
                 end else begin
                   diskon:=0;
                 end;

                tabel.q1.SQL.Clear;
                tabel.q1.SQL.Add('select * from  faktur_lainlain where no_order='''+v_noorder+''' ');
                tabel.q1.Active:=True;
                if tabel.q1.RecordCount > 0 then begin
                   lainlain:=tabel.q1.FieldValues['lainlain'];
                   tabel.q1.SQL.Clear;
                   tabel.q1.SQL.Add('select * from  faktur_lainlain where no_order='''+v_nopenjualan+''' ');
                   tabel.q1.Active:=True;
                      if tabel.q1.RecordCount = 0 then begin
                         tabel.q1.SQL.Clear;
                         tabel.q1.SQL.Add('insert into faktur_lainlain values('''+v_nopenjualan+''','''+floattostr(lainlain)+''')');
                         tabel.q1.ExecSQL;

                      end else begin
                         tabel.q1.SQL.Clear;
                         tabel.q1.SQL.Add('update faktur_lainlain set lainlain='''+floattostr(lainlain)+''' where no_order='''+v_nopenjualan+''' ');
                         tabel.q1.ExecSQL;
                      end;
                end else begin
                   lainlain:=0;
                end;


                       tabel.q1.SQL.Clear;
                       tabel.q1.SQL.Add('select * from piutang where no_piutang='''+v_nopenjualan+''' ');
                       tabel.q1.Active:=true;
                       if tabel.q1.RecordCount > 0 then begin
                          tabel.q1.SQL.Clear;
                          tabel.q1.SQL.Add('delete from piutang where no_piutang='''+v_nopenjualan+''' ');
                          tabel.q1.ExecSQL;

                          tabel.q1.SQL.Clear;
                          tabel.q1.SQL.Add('delete from perincian_piutang where no_jual='''+v_nopenjualan+''' ');
                          tabel.q1.ExecSQL;
                       end;

                       tabel.q1.SQL.Clear;
                       tabel.q1.SQL.Add('insert into piutang values('''+v_nopenjualan+''',now(),'''+idcustomer+''',0,'' '')');
                       tabel.q1.ExecSQL;

                       tabel.q1.SQL.Clear;
                       tabel.q1.SQL.Add('select id_customer,ifnull(sum(harga*(select sum(berat) from perincian_pengeluaranstok pp where pp.no_detail=dpk.no_detail)),0) as harga, '+
                      '(select sum(berat) from perincian_pengeluaranstok pp where pp.no_detail=dpk.no_detail) as berat '+
                      ' from detail_pengeluaranstok dpk join penjualan_kainstok pk using(no_pengeluaran) join kain k using(id_kain) '+
                      ' join warna w using(id_warna)  where pk.no_pengeluaran='''+v_nopenjualan+''' '+
                      ' group by pk.no_pengeluaran ');
                      tabel.q1.Active:=true;
                      if tabel.q1.RecordCount = 0 then begin
                       ShowMessage('GAGAL');
                       Exit;

                      end;
                      hasil:=tabel.q1.FieldValues['harga']-diskon;
                   //   idcustomer:=tabel.q1.FieldValues['id_customer'];

                      tabel.q1.SQL.Clear;
                      tabel.q1.SQL.Add('insert into perincian_piutang values(0,'''+v_nopenjualan+''',now(),'''+floattostr(hasil)+''',0,0,0,'''+floattostr(hasil)+''',0,0,'''+idcustomer+''',''PEMBELIAN'',''WARNA'',now(),0)');
                      tabel.q1.ExecSQL;

                      tabel.q1.SQL.Clear;
                      tabel.q1.SQL.Add('update edit_penjualan set status=''SELESAI'' where no_penjualan='''+v_nopenjualan+''' ');
                      tabel.q1.ExecSQL;

                      tabel.q1.SQL.Clear;
                      tabel.q1.SQL.Add('select * from relasi_orderdanpenjualan where no_order='''+v_noorder+''' ');
                      tabel.q1.Active:=True;
                      if tabel.q1.RecordCount > 0 then begin
                        try
                            tabel.q1.SQL.Clear;
                            tabel.q1.SQL.Add('delete from relasi_orderdanpenjualan  where no_order='''+v_noorder+''' ');
                            tabel.q1.ExecSQL;

                        except

                        end;
                      end;


                      tabel.q1.SQL.Clear;
                      tabel.q1.SQL.Add('insert into relasi_orderdanpenjualan values(0,'''+v_noorder+''','''+v_nopenjualan+''')');
                      tabel.q1.ExecSQL;

                      tabel.q1.SQL.Clear;
                      tabel.q1.SQL.Add('update order_pembelian set status_order=''SELESAI'' where no_order='''+v_noorder+''' ');
                      tabel.q1.ExecSQL;

                       q1.SQL.Clear;
                       q1.SQL.Add('insert into alur_order values(0,'''+v_noorder+''',''MERUBAH JADI SELESAI'','' '') ');
                       q1.ExecSQL;



end;


procedure Tfmenuutama.sButton1Click(Sender: TObject);
var noorder,customer,totalbayar,admin:string;
diskonkg,katalog,diskon,ongkir,totbayar,adm,totkg,totalasli,totaltemp,kurangbayar:real;
begin
noorder:=tabel.qfakturaslino_order.Value;
v_noorder:=noorder;
customer:=tabel.qfakturaslicustomer.Value;
v_idcustomer:=IntToStr(tabel.qfakturasliid_customer.Value);

tkorder.Clear;
tkcustomer.Clear;
tkdiskon.Clear;
tkongkir.Clear;
tktotaldiskon.Clear;
tkkatalog.Clear;
cbjenis.ItemIndex:=-1;
tkartu.Clear;
cbbank.ItemIndex:=-1;
tuang.Clear;
vpembayaran.Clear;
cbpotongan.ItemIndex:=-1;
tpotongan.Clear;
tkpembayaran.Clear;
tkkembalian.Clear;
cbprint.Checked:=false;
tktotaltagihan.Clear;
tktagihan.Clear;


    tabel.q1.SQL.Clear;
    tabel.q1.SQL.Add('select * from relasi_orderdanpenjualan where no_order='''+noorder+''' ');
    tabel.q1.Active:=True;
    if tabel.q1.RecordCount =0  then begin
                  q1.sql.clear;
                  q1.sql.add('START TRANSACTION');
                  q1.ExecSQL;

                  generate;

                  tabel.q1.SQL.Clear;
                  tabel.q1.SQL.Add('call cetakfakturasli('''+noorder+''','''+v_nopenjualan+''',@out_msg)');
                  tabel.q1.ExecSQL;

                 tabel.q1.SQL.Clear;
                 tabel.q1.SQL.Add('select @out_msg as pesan');
                 tabel.q1.Active:=True;
                  ShowMessage(tabel.q1.FieldValues['pesan']);
                 if tabel.q1.FieldValues['pesan']='sukses' then begin


                        tabel.q1.SQL.Clear;
                        tabel.q1.SQL.Add('insert into tgl_cetakorder values(0,'''+noorder+''',now(),'''+v_idkaryawan+''')');
                        tabel.q1.ExecSQL;

                      inputpiutang;

                      tkorder.Text:=noorder;
                       tkcustomer.Text:=customer;

                      tabel.q1.SQL.Clear;
                      tabel.q1.SQL.Add('select ifnull(sum(berat),0) as total from detail_pengeluaranstok where no_pengeluaran='''+v_nopenjualan+''' ');
                      tabel.q1.Active:=true;
                      totkg:=tabel.q1.FieldValues['total'];
                      v_totkg:=totkg;

                            tabel.q1.sql.Clear;
                            tabel.q1.SQL.Add('select * from ongkir where no_transaksi='''+noorder+''' ');
                            tabel.q1.Active:=True;
                          if tabel.q1.RecordCount=0 then begin
                            tkdiskon.Text:='0';
                            tkongkir.Text:='0';
                            tkkatalog.Text:='0';
                             katalog:=0;
                            diskon:=0;
                            ongkir:=0;

                          end else begin

                             katalog:=tabel.q1.FieldValues['katalog'];
                            diskon:=tabel.q1.FieldValues['diskon'];
                            ongkir:=tabel.q1.FieldValues['ongkir'];
                             if diskon<>0 then  begin
                              diskonkg:=diskon/totkg;
                            end else begin
                             diskonkg:=0;
                            end;
                            tktotaldiskon.Text:=formatcurr('#,###',tabel.q1.FieldValues['diskon']);
                            tkdiskon.Text:=formatcurr('#,###',diskonkg);
                            tkkatalog.Text:=formatcurr('#,###',tabel.q1.FieldValues['katalog']);
                            tkongkir.Text:=formatcurr('#,###',tabel.q1.FieldValues['ongkir']);


                          end;
                          tabel.q1.SQL.Clear;
                          tabel.q1.SQL.Add('select * from v_saldopiutang where id_customer='''+v_idcustomer+'''  ');
                          tabel.q1.Active:=True;


                          if tabel.q1.RecordCount > 0 then begin
                            kurangbayar:=tabel.q1.FieldValues['total'];
                           if kurangbayar < 0 then begin

                                tabel.q1.SQL.Clear;
                                tabel.q1.SQL.Add('select * from v_saldocustomer where id_customer='''+v_idcustomer+'''  ');
                                tabel.q1.Active:=True;
                                if tabel.q1.RecordCount > 0 then begin
                                   tabel.q1.First;
                                   while not tabel.q1.Eof do begin
                                      fmenuutama.vpembayaran.Open;
                                      fmenuutama.vpembayaran.Append;
                                      fmenuutama.vpembayaranjenis_pembayaran.Value:='TT';
                                      fmenuutama.vpembayaranid_jenispembayar.Value:='';
                                      fmenuutama.vpembayaranjumlah_uang.Value:=tabel.q1.FieldValues['jml_uang'];
                                      fmenuutama.vpembayaranadm.value:=0;
                                      fmenuutama.vpembayarannama_bank.Value:=tabel.q1.FieldValues['bank'];
                                      fmenuutama.vpembayarantotal.Value:=tabel.q1.FieldValues['jml_uang'];
                                      fmenuutama.vpembayaranno_transaksi.Value:=tabel.q1.FieldValues['no'];
                                      fmenuutama.vpembayaran.Post;

                                     tabel.q1.Next;
                                   end;

                                end;




                             tkkurangbayar.Text:='0';
                             kurangbayar:=0;
                           end else begin

                            tkkurangbayar.Text:=formatcurr('#,###',kurangbayar);
                            vpembayaran.Clear;
                           end;


                          end else begin
                            tkkurangbayar.Text:='0';
                            kurangbayar:=0;
                            vpembayaran.Clear;
                          end;

                          tabel.q1.SQL.Clear;
                          tabel.q1.SQL.Add('select sum(berat*harga) as total from detail_pengeluaranstok where no_pengeluaran='''+v_nopenjualan+''' ');
                          tabel.q1.Active:=True;
                          tktagihan.Text:=formatcurr('#,###',tabel.q1.FieldValues['total']);
                          v_tagihankain:=tabel.q1.FieldValues['total'];
                          tabel.qdetailpenjualan.Active:=False;
                          tabel.qdetailpenjualan.Active:=true;
                          v_totaltagihan:=(v_tagihankain+ongkir+katalog+kurangbayar)-diskon;
                          tktotaltagihan.Text:=formatcurr('#,###',v_totaltagihan);

                          tabel.q1.SQL.Clear;
                          tabel.q1.SQL.Add('insert into n_penjualan values(0,'''+v_nopenjualan+''',''PENJUALAN'','''+floattostr(v_tagihankain)+''',''PENJUALAN'',now(),'''+v_idkaryawan+''','''+v_idcustomer+''') ');
                          tabel.q1.ExecSQL;


                          if katalog <> 0 then begin

                            tabel.q1.SQL.Clear;
                            tabel.q1.SQL.Add('insert into n_penjualan values(0,'''+v_nopenjualan+''',''KATALOG'','''+floattostr(katalog)+''',''KATALOG'',now(),'''+v_idkaryawan+''','''+v_idcustomer+''') ');
                            tabel.q1.ExecSQL;

                          end;

                           if ongkir <> 0 then begin

                            tabel.q1.SQL.Clear;
                            tabel.q1.SQL.Add('insert into n_penjualan values(0,'''+v_nopenjualan+''',''ONGKIR'','''+floattostr(ongkir)+''',''ONGKIR'',now(),'''+v_idkaryawan+''','''+v_idcustomer+''') ');
                            tabel.q1.ExecSQL;

                          end;
                         q1.sql.clear;
                      q1.sql.add('COMMIT');
                      q1.ExecSQL;


                 end else begin

                      q1.sql.clear;
                      q1.sql.add('ROLLBACK');
                      q1.ExecSQL;

                      q1.sql.clear;
                      q1.sql.add('START TRANSACTION');
                      q1.ExecSQL;

                        tabel.q1.SQL.Clear;
                        tabel.q1.SQL.Add('delete from penjualan_kainstok where no_pengeluaran='''+v_nopenjualan+''' ');
                        tabel.q1.ExecSQL;

                        tabel.q1.SQL.Clear;
                        tabel.q1.SQL.Add('delete from kode_verifikasipenjualan where no_penjualan='''+v_nopenjualan+''' ');
                        tabel.q1.ExecSQL;

                        tabel.q1.SQL.Clear;
                        tabel.q1.SQL.Add('update order_pembelian  set no_penjualan='''' where no_order='''+v_noorder+''' ');
                        tabel.q1.ExecSQL;

                      q1.sql.clear;
                      q1.sql.add('COMMIT');
                      q1.ExecSQL;

                 end;

    end else begin
        v_nopenjualan:=tabel.q1.FieldValues['no_penjualan'];
        tkorder.Text:=noorder;
        tkcustomer.Text:=customer;



         tabel.q1.SQL.Clear;
         tabel.q1.SQL.Add('select ifnull(sum(berat),0) as total from detail_pengeluaranstok where no_pengeluaran='''+v_nopenjualan+''' ');
         tabel.q1.Active:=true;
         totkg:=tabel.q1.FieldValues['total'];
         v_totkg:=totkg;
         tabel.q1.sql.Clear;
         tabel.q1.SQL.Add('select * from ongkir where no_transaksi='''+noorder+''' ');
         tabel.q1.Active:=True;
      if tabel.q1.RecordCount=0 then begin
         tkdiskon.Text:='0';
         tkongkir.Text:='0';
         tkkatalog.Text:='0';
         katalog:=0;
         diskon:=0;
         ongkir:=0;

      end else begin

        katalog:=tabel.q1.FieldValues['katalog'];
        diskon:=tabel.q1.FieldValues['diskon'];
        ongkir:=tabel.q1.FieldValues['ongkir'];
        if diskon<>0 then  begin
          diskonkg:=diskon/totkg;
        end else begin
         diskonkg:=0;
        end;
        tktotaldiskon.Text:=formatcurr('#,###',tabel.q1.FieldValues['diskon']);
        tkdiskon.Text:=formatcurr('#,###',diskonkg);
        tkkatalog.Text:=formatcurr('#,###',tabel.q1.FieldValues['katalog']);
        tkongkir.Text:=formatcurr('#,###',tabel.q1.FieldValues['ongkir']);

      end;

       tabel.q1.SQL.Clear;
       tabel.q1.SQL.Add('select sum(berat*harga) as total from detail_pengeluaranstok where no_pengeluaran='''+v_nopenjualan+''' ');
       tabel.q1.Active:=True;
       tktagihan.Text:=formatcurr('#,###',tabel.q1.FieldValues['total']);
       v_tagihankain:=tabel.q1.FieldValues['total'];
       v_totaltagihan:=(v_tagihankain+ongkir+katalog);


        tabel.q1.SQL.Clear;
       tabel.q1.SQL.Add('select * from v_saldopiutang where id_customer='''+v_idcustomer+'''  ');
       tabel.q1.Active:=True;
//

                          if tabel.q1.RecordCount > 0 then begin
                          kurangbayar:=tabel.q1.FieldValues['total']-v_totaltagihan;
                        //  ShowMessage(FloatToStr(kurangbayar));
                            if kurangbayar < 0 then begin
                               tabel.q1.SQL.Clear;
                                tabel.q1.SQL.Add('select * from v_saldocustomer where id_customer='''+v_idcustomer+'''  ');
                                tabel.q1.Active:=True;
                                if tabel.q1.RecordCount > 0 then begin
                                   tabel.q1.First;
                                   while not tabel.q1.Eof do begin
                                      fmenuutama.vpembayaran.Open;
                                      fmenuutama.vpembayaran.Append;
                                      fmenuutama.vpembayaranjenis_pembayaran.Value:='TT';
                                      fmenuutama.vpembayaranid_jenispembayar.Value:='';
                                      fmenuutama.vpembayaranjumlah_uang.Value:=tabel.q1.FieldValues['jml_uang'];
                                      fmenuutama.vpembayaranadm.value:=0;
                                      fmenuutama.vpembayarannama_bank.Value:=tabel.q1.FieldValues['bank'];
                                      fmenuutama.vpembayarantotal.Value:=tabel.q1.FieldValues['jml_uang'];
                                      fmenuutama.vpembayaranno_transaksi.Value:=tabel.q1.FieldValues['no'];
                                      fmenuutama.vpembayaran.Post;

                                     tabel.q1.Next;
                                   end;

                                end;



                               tkkurangbayar.Text:='0';
                               kurangbayar:=0;
                           end else begin
                             //  kurangbayar:=tabel.q1.FieldValues['total']-v_totaltagihan;
                               tkkurangbayar.Text:=formatcurr('#,###',kurangbayar);
                               vpembayaran.Clear;
                           end;;


                          end else begin

                            tkkurangbayar.Text:='0';
                            kurangbayar:=0;
                            vpembayaran.Clear;

                          end;

     v_totaltagihan:=(v_tagihankain+ongkir+katalog+kurangbayar)-diskon;
     tktotaltagihan.Text:=formatcurr('#,###',v_totaltagihan);
       tabel.qdetailpenjualan.Active:=False;
       tabel.qdetailpenjualan.Active:=true;



    end;
  v_view:='INSERT';
  tkdiskon.Enabled:=True;
  tkkatalog.Enabled:=True;
  tkongkir.Enabled:=True;
        if vpembayaran.RecordCount=0 then begin
          totbayar:=0;
        adm:=0;
        v_totalbayar:=totbayar;
        hitung;

        end else begin
          totalbayar := fmenuutama.cxGrid2DBTableView1.DataController.Summary.FooterSummaryTexts[0];
          totalbayar := stringreplace(totalbayar,',','',[rfreplaceall,rfignorecase]);
          totalbayar := stringreplace(totalbayar,'.','',[rfreplaceall,rfignorecase]);
          totbayar:=StrToFloat(totalbayar);
          admin := fmenuutama.cxGrid2DBTableView1.DataController.Summary.FooterSummaryTexts[1];
          admin := stringreplace(admin,',','',[rfreplaceall,rfignorecase]);
          admin := stringreplace(admin,'.','',[rfreplaceall,rfignorecase]);
          adm:=StrToFloat(admin);
          v_totalbayar:=totbayar;
            hitung;
        end;



    Button2.enabled:=True;
    Button3.enabled:=True;
    cbpotongan.enabled:=True;
    tpotongan.Enabled:=True;







end;

procedure Tfmenuutama.BitBtn10Click(Sender: TObject);
var pesan,noclosing,sumber,ket,jmluang,nouang,kodekas,nokeluar,bca,mandiri,cc,cash,lainnya:string;
kodekasbca,kodekasmandiri,totalcash:string;  a,b:real;
begin
if cbcash.Text='' then begin
   ShowMessage('Silahkan Isi Kas bank untuk Cash!');
   Exit;
end;

 cash := stringreplace(dcash.Text,',','',[rfreplaceall,rfignorecase]);
 cash := stringreplace(cash,'.','',[rfreplaceall,rfignorecase]);
 a:=StrToFloat(cash);
totalcash := cxGrid15DBTableView1.DataController.Summary.FooterSummaryTexts[0];
b:=StrToFloat(totalcash);
if a<>b then begin

ShowMessage('Jumlah Cash harus sesuai dengan hasil kasir!');
Exit;
end;

   tabel.q1.SQL.Clear;
   tabel.q1.SQL.Add('START TRANSACTION');
   tabel.q1.ExecSQL;


         tabel.q1.SQL.Clear;
         tabel.q1.SQL.Add('select * from kas_bank where bank=''BCA'' ');
         tabel.q1.Active:=True;
         kodekasbca:=tabel.q1.FieldValues['kode_kas'];

             tabel.q1.SQL.Clear;
         tabel.q1.SQL.Add('select * from kas_bank where bank=''MANDIRI'' ');
         tabel.q1.Active:=True;
         kodekasmandiri:=tabel.q1.FieldValues['kode_kas'];

      pesan:='Apakah Anda yakin Data Pemasangan Kas Bank sudah benar dan sudah melakukan settle  ? ';
       if messagedlg(pesan,mtconfirmation,[mbyes,mbno],0)=mryes then
       begin
        if dbca.Text ='' then begin
         bca:='0';
        end else begin
          bca:=dbca.Text;
          bca := stringreplace(bca,',','',[rfreplaceall,rfignorecase]);
          bca := stringreplace(bca,'.','',[rfreplaceall,rfignorecase]);

         tabel.q1.SQL.Clear;
         tabel.q1.SQL.Add('insert into y_closingkasir values(null,now(),'''+v_idkaryawan+''',''EDC BCA'','''+kodekasbca+''','''+bca+''',0)');
         tabel.q1.ExecSQL;

        end;


         if dmandiri.Text ='' then begin
         mandiri:='0';
        end else begin
         mandiri:=dmandiri.Text;
         mandiri := stringreplace(mandiri,',','',[rfreplaceall,rfignorecase]);
         mandiri := stringreplace(mandiri,'.','',[rfreplaceall,rfignorecase]);
          tabel.q1.SQL.Clear;
         tabel.q1.SQL.Add('insert into y_closingkasir values(null,now(),'''+v_idkaryawan+''',''EDC MANDIRI'','''+kodekasmandiri+''','''+mandiri+''',0)');
         tabel.q1.ExecSQL;
        end;


         if dcc.Text ='' then begin
         cc:='0';
        end else begin
         cc:=dcc.Text;
         cc := stringreplace(cc,',','',[rfreplaceall,rfignorecase]);
         cc := stringreplace(cc,'.','',[rfreplaceall,rfignorecase]);
          tabel.q1.SQL.Clear;
         tabel.q1.SQL.Add('insert into y_closingkasir values(null,now(),'''+v_idkaryawan+''',''CC'','''+kodekasmandiri+''','''+cc+''',0)');
         tabel.q1.ExecSQL;

        end;

        if dlainnya.Text ='' then begin
         lainnya:='0';
        end else begin
          lainnya:=dlainnya.Text;
          lainnya := stringreplace(lainnya,',','',[rfreplaceall,rfignorecase]);
          lainnya := stringreplace(lainnya,'.','',[rfreplaceall,rfignorecase]);
          tabel.q1.SQL.Clear;
          tabel.q1.SQL.Add('insert into y_closingkasir values(null,now(),'''+v_idkaryawan+''',''lainnya'','''+kodekasmandiri+''','''+lainnya+''',0)');
          tabel.q1.ExecSQL;

        end;

        if vtclosing.RecordCount > 0 then begin

          vtclosing.First;
          while not vtclosing.eof do begin
           tabel.q1.SQL.Clear;
           tabel.q1.SQL.Add('select * from kas_bank where bank='''+vtclosingbank.Value+''' ');
           tabel.q1.Active:=True;
           kodekas:=tabel.q1.FieldValues['kode_kas'];
            cash := stringreplace(FloatToStr(vtclosingnominal.Value),',','',[rfreplaceall,rfignorecase]);
            cash := stringreplace(cash,'.','',[rfreplaceall,rfignorecase]);
            tabel.q1.SQL.Clear;
            tabel.q1.SQL.Add('insert into y_closingkasir values(null,now(),'''+v_idkaryawan+''',''CASH'','''+kodekas+''','''+cash+''',0)');
            tabel.q1.ExecSQL;


          vtclosing.Next;
          end;


        end;



          tabel.q2.SQL.Clear;
          tabel.q2.SQL.Add('SELECT uc.kode_kasbank as kode_kas,uc.no as nouang,cast(uc.tanggal_pemasangan as date) as tgl,nama,no_pengeluaran, '+
          ' jumlah_uang,sumber,IFNULL(uc.keterangan,'''') AS ket FROM uang_customer uc JOIN n_junctpenjualan nj ON nj.no_uangcustomer=uc.no  '+
          ' JOIN penjualan_kainstok pks ON pks.no_pengeluaran=nj.id_nopembelian JOIN customer c ON c.id_customer=pks.id_customer LEFT JOIN y_detailclosing yd ON yd.no_uangcustomer=uc.no '+
          ' WHERE (sumber=''CASH'' OR sumber=''DEBIT'' OR sumber=''CC'') AND yd.no IS NULL ORDER BY no_pengeluaran,sumber');
          tabel.q2.Active:=True;

          tabel.q2.First;
          while not tabel.q2.Eof do begin
            nouang:=tabel.q2.FieldValues['nouang'];
            sumber:=tabel.q2.FieldValues['sumber'];
            ket:=tabel.q2.FieldValues['ket'];
            jmluang:=tabel.q2.FieldValues['jumlah_uang'];
            kodekas:=tabel.q2.FieldValues['kode_kas'];
            nokeluar:=tabel.q2.FieldValues['no_pengeluaran'];

            tabel.q1.SQL.Clear;
            tabel.q1.SQL.Add('insert into y_detailclosing values(null,now(),'''+nouang+''','''+kodekas+''','''+jmluang+''','''+nokeluar+''',0) ');
            tabel.q1.ExecSQL;

            tabel.q2.Next;
          end;

        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('COMMIT');
        tabel.q1.ExecSQL;

           frxReportclosing.PrepareReport();
          frxReportclosing.LoadFromFile(ExtractFilePath(Application.ExeName)+'catakclosing.Fr3');
    //   FrxReport1.Print;
          frxReportclosing.ShowReport();


         ShowMessage('Closing berhasil');

         tabel.qdetailclosing.Active:=false;
         tabel.qdetailclosing.Active:=true;
         dcash.Text:='';
         dcc.Text:='';
         dmandiri.Text:='';
         dbca.Text:='';
         dlainnya.Text:='';
         vtclosing.Clear;


       end;
end;

procedure Tfmenuutama.BitBtn11Click(Sender: TObject);
var pesan,nama,noorder,nopenjualan,idc,notransaksi,hapus:string;
begin

if ecatatan.Text='' then begin
ShowMessage('Catatan harus diisi!');
Exit;
end;
nopenjualan:=tabel.qpenjualan5id_transaksi.Value;
hapus:='TIDAK BOLEH';
tabel.q1.SQL.Clear;
tabel.q1.SQL.Add('select * from n_junctpenjualan nj join uang_customer uc on uc.no=nj.no_uangcustomer '+
' where  id_nopembelian='''+nopenjualan+''' and nj.id_nopembelian!=uc.no_penjualan   ');
tabel.q1.Active:=True;
if tabel.q1.RecordCount > 0 then begin
 hapus:='BOLEH';
end else begin

  tabel.q1.SQL.Clear;
  tabel.q1.SQL.Add('select * from n_junctpenjualan nj join uang_customer uc on uc.no=nj.no_uangcustomer '+
  ' where  id_nopembelian!='''+nopenjualan+''' ');
  tabel.q1.Active:=True;
  if tabel.q1.RecordCount = 0 then begin
     hapus:='BOLEH';

  end;

end;

if hapus='TIDAK BOLEH' then begin
  ShowMessage('Data penjualan tidak bisa di hapus karena ada data pembayaran yang digunakan dari penjualan yang lain!');
  Exit;
end;


tabel.q1.SQL.Clear;
tabel.q1.SQL.Add('select * from y_detailclosing where no_transaksi='''+nopenjualan+''' ');
tabel.q1.Active:=True;
if tabel.q1.RecordCount > 0 then begin
  ShowMessage('Data tidak bisa di batalkan karena sudah ada di data closing kasir!');
  tabel.qpenjualan5.Active:=false;
  tabel.qpenjualan5.Active:=true;

  exit;
end;


tabel.q1.SQL.Clear;
tabel.q1.SQL.Add('select * from kode_verifikasipenjualan where kode_verifikasi='''+ekodeunik.Text+''' and no_penjualan='''+nopenjualan+''' ');
tabel.q1.Active:=True;
  if tabel.q1.RecordCount=0 then begin
     ShowMessage('Kode verifikasi salah!');
     Exit;
  end;

 nama:=tabel.qpenjualan5nama.Value;
  tabel.q1.SQL.Clear;
  tabel.q1.SQL.Add('select * from customer where nama='''+nama+''' ');
  tabel.q1.Active:=True;
  idc:=tabel.q1.FieldValues['id_customer'];

 tabel.q1.SQL.Clear;
 tabel.q1.SQL.Add('select * from relasi_orderdanpenjualan where no_penjualan='''+nopenjualan+''' order by no desc limit 1 ');
 tabel.q1.Active:=True;
 if tabel.q1.RecordCount >0 then begin
   noorder:=tabel.q1.FieldValues['no_order'];
   tabel.q1.SQL.Clear;
   tabel.q1.SQL.Add('select * from perincian_piutang where no_jual='''+nopenjualan+''' and status=2 ');
   tabel.q1.Active:=True;

   if tabel.q1.RecordCount > 0 then begin
        ShowMessage('Penjualan tersebut tidak bisa di hapus karena sudah ada pembayaran');
        Exit;
   end else begin
    pesan:='Apakah anda yakin Akan Membatalkan transaksi pembayaran atas nama '+nama+' ? ';
             if messagedlg(pesan,mtconfirmation,[mbyes,mbno],0)=mryes then
             begin
           try


                tabel.q1.SQL.Clear;
                tabel.q1.SQL.Add('START TRANSACTION');
                tabel.q1.ExecSQL;


                tabel.q1.SQL.Clear;
                tabel.q1.SQL.Add('select * from penjualan_kainstok where no_pengeluaran='''+nopenjualan+'''  ');
                tabel.q1.Active:=True;
                if tabel.q1.RecordCount >0 then begin
                   tabel.q1.SQL.Clear;
                   tabel.q1.SQL.Add('delete from penjualan_kainstok where no_pengeluaran='''+nopenjualan+'''  ');
                   tabel.q1.ExecSQL;

                   tabel.q1.SQL.Clear;
                   tabel.q1.SQL.Add('delete from perincian_piutang where no_jual='''+nopenjualan+'''  ');
                   tabel.q1.ExecSQL;

                   tabel.q1.SQL.Clear;
                   tabel.q1.SQL.Add('update uang_customer set no_penjualan='''' where no_penjualan='''+nopenjualan+''' AND sumber=''TRANSFER'' ');
                   tabel.q1.ExecSQL;

                end;




                tabel.q1.SQL.Clear;
                tabel.q1.SQL.Add('select * from kode_verifikasipenjualan where no_penjualan='''+nopenjualan+'''  ');
                tabel.q1.Active:=True;
                if tabel.q1.RecordCount >0 then begin
                   tabel.q1.SQL.Clear;
                   tabel.q1.SQL.Add('delete from kode_verifikasipenjualan where no_penjualan='''+nopenjualan+''' ');
                   tabel.q1.ExecSQL;

                end;



                tabel.q1.SQL.Clear;
                tabel.q1.SQL.Add('select * from tgl_cetakorder where no_order='''+noorder+'''  ');
                tabel.q1.Active:=True;
                if tabel.q1.RecordCount >0 then begin
                   tabel.q1.SQL.Clear;
                   tabel.q1.SQL.Add('delete from tgl_cetakorder where no_order='''+noorder+''' ');
                   tabel.q1.ExecSQL;
                end;



                tabel.q1.SQL.Clear;
                tabel.q1.SQL.Add('select * from n_penjualan where id_transaksi='''+nopenjualan+'''  ');
                tabel.q1.Active:=True;
                if tabel.q1.RecordCount >0 then begin
                  tabel.q1.SQL.Clear;
                  tabel.q1.SQL.Add('delete from n_penjualan where id_transaksi='''+nopenjualan+''' ');
                  tabel.q1.ExecSQL;

                end;



                tabel.q1.SQL.Clear;
                tabel.q1.SQL.Add('select * from konfirmasi_satpam where no_penjualan='''+nopenjualan+'''  ');
                tabel.q1.Active:=True;
                if tabel.q1.RecordCount >0 then begin
                  tabel.q1.SQL.Clear;
                  tabel.q1.SQL.Add('delete from konfirmasi_satpam where no_penjualan='''+nopenjualan+''' ');
                  tabel.q1.ExecSQL;

                end;


                tabel.q1.SQL.Clear;
                tabel.q1.SQL.Add('select * from  order_pembelian  where no_order='''+noorder+''' ');
                tabel.q1.Active:=True;
                if tabel.q1.RecordCount > 0 then begin
                   tabel.q1.SQL.Clear;
                   tabel.q1.SQL.Add('update order_pembelian set status_order=''SIAP KIRIM''  where no_order='''+noorder+''' ');
                    tabel.q1.ExecSQL;

                end;

                tabel.q1.SQL.Clear;
                tabel.q1.SQL.Add('select * from  transaksi_bukubesar  where no_kas='''+nopenjualan+''' ');
                tabel.q1.Active:=True;
//                ShowMessage(tabel.q1.SQL.Text);
                if tabel.q1.RecordCount > 0 then begin
                  tabel.q1.First;
                  while not tabel.q1.Eof do begin
                    notransaksi:=tabel.q1.FieldValues['no_transaksi'];
//                    ShowMessage(notransaksi);
                     tabel.q2.SQL.Clear;
                     tabel.q2.SQL.Add('delete from transaksi_bukubesar where no_transaksi='''+notransaksi+''' ');
                     tabel.q2.ExecSQL;

                     tabel.q2.SQL.Clear;
                     tabel.q2.SQL.Add('delete from buku_besar where no_transaksi='''+notransaksi+''' ');
                     tabel.q2.ExecSQL;

                    tabel.q1.Next;
                  end;

                end;




              tabel.q1.SQL.Clear;
              tabel.q1.SQL.Add('insert into sj_dibatalkan values(0,'''+noorder+''',now(),'''+ecatatan.Text+''','''+v_idkaryawan+''','''+idc+''') ');
              tabel.q1.ExecSQL;

            tabel.q1.SQL.Clear;
            tabel.q1.SQL.Add('COMMIT');
            tabel.q1.ExecSQL;

            showmessage('Data berhasil di hapus');


            tabel.qfakturasli.SQL.Clear;
            tabel.qfakturasli.SQL.Add('SELECT op.no_order,id_customer,c.nama AS customer,u.nama AS admin,id_user,gh.jm AS jml,op.tanggal, '+
            'jenis,jenis_pengiriman,exspedisi,penanggung                                                                              '+
            'FROM order_pembelian op LEFT JOIN order_siappacking os ON os.no_order=op.no_order                                         '+
            'JOIN customer c USING(id_customer) JOIN user u ON u.id_user=op.id_karyawan                                                '+
            'LEFT JOIN (SELECT opb.no_order,IFNULL(jml,0) AS jm FROM order_pembelian opb LEFT JOIN                                      '+
            '(SELECT no_order,IFNULL(COUNT(no_detail),0) AS jml FROM detail_order WHERE dikerjakan!=''SIAP KIRIM'' GROUP BY no_order )  '+
            'AS gb ON gb.no_order=opb.no_order) AS gh ON gh.no_order=op.no_order                                                      '+
            'WHERE (IFNULL(os.status,4)!=0) AND  ((status_order = ''SIAP KIRIM'' OR status_order=''SELESAI'') AND                     '+
            ' ( status_bayar = ''SUDAH DIBAYAR'' OR status_bayar = ''SKIP''  OR status_bayar = ''BAYAR DI TOKO'' ))                  '+
            ' OR (status_order = ''SIAP CETAK FAKTUR SEMENTARA'' AND jm = 0 AND (status_bayar = ''SUDAH DIBAYAR''                    '+
            ' OR status_bayar = ''SKIP'' OR status_bayar = ''BAYAR DI TOKO'')) ');
            tabel.qfakturasli.Active:=True;

            tabel.qdetailpenjualan.Active:=false;
            tabel.qdetailpenjualan.Active:=True;

            tabel.qpenjualan5.Active:=false;
            tabel.qpenjualan5.Active:=True;
            ekodeunik.Clear;
            ecatatan.Clear;
            except
                tabel.q1.SQL.Clear;
                tabel.q1.SQL.Add('ROLLBACK');
                tabel.q1.ExecSQL;

            showmessage('Data Gagal di di Hapus silahkan hub bag it');
              end;
          end;

   end;

 end else begin
   ShowMessage('Data tidak bisa di batalkan karena belum pernah cetak faktur!');

 end;


end;

procedure Tfmenuutama.BitBtn12Click(Sender: TObject);
var pesan,noclosing:string;
begin
pesan:='Apakah anda yakin Akan Membatalkan Closing tanggal '+formatdatetime('yyyy-mm-dd',tabel.qdataclosingtanggal.value)+' ? ';
             if messagedlg(pesan,mtconfirmation,[mbyes,mbno],0)=mryes then
             begin
              noclosing:=IntToStr(tabel.qdataclosingno.Value);

              tabel.q1.SQL.Clear;
              tabel.q1.SQL.Add('select * from y_accacounting where id_closing='''+noclosing+'''  ');
              tabel.q1.Active:=True;
              if tabel.q1.RecordCount > 0 then begin
               ShowMessage('Data closing tidak bisa di batalkan karena sudah di periksa oleh bag akunting!');
               Exit;
              end;

              tabel.q1.SQL.Clear;
              tabel.q1.SQL.Add('delete from y_closingkasir where status=0 ');
              tabel.q1.ExecSQL;
              tabel.q1.SQL.Clear;
              tabel.q1.SQL.Add('delete from y_detailclosing where status=0 ');
              tabel.q1.ExecSQL;
              ShowMessage('Data berhasil di hapus!');
              tabel.qdataclosing.Active:=false;
              tabel.qdataclosing.Active:=True;

             end;
end;

procedure Tfmenuutama.BitBtn13Click(Sender: TObject);
begin
bersihkassementara;
end;

procedure Tfmenuutama.BitBtn14Click(Sender: TObject);
var pesan,no,nokonfirmasi,norekening,noorder:string;
begin
  if tabel.qlappemasangan.RecordCount > 0 then begin

       pesan:='Apakah anda yakin akan membatalkan Pemasangan kas bank ? ';
       if messagedlg(pesan,mtconfirmation,[mbyes,mbno],0)=mryes then
       begin
          no:=IntToStr(tabel.qlappemasanganno.Value);
          nokonfirmasi:=IntToStr(tabel.qlappemasangannodetailkonfirmasi.Value);
          norekening:=IntToStr(tabel.qlappemasangannorekening.Value);

          tabel.q1.SQL.Clear;
          tabel.q1.SQL.Add('select no_order from detail_konfirmasipembayaran d left join relasi_orderdanpenjualan ro using(no_order) where ro.no_order is not null and d.no='+nokonfirmasi+' ');
          tabel.q1.Open;
          if tabel.q1.RecordCount >0 then
          begin
            ShowMessage('Pemasangan tidak bisa dibatalkan karena sudah di cetak faktur');
            exit;
          end;

          try
            tabel.q1.SQL.Clear;
            tabel.q1.SQL.Add('START TRANSACTION');
            tabel.q1.ExecSQL;

//            tabel.q1.SQL.Clear;
//            tabel.q1.SQL.Add('select no_order from detail_konfirmasipembayaran where no='+nokonfirmasi+' ');
//            tabel.q1.Open;
//            if tabel.q1.RecordCount > 0 then
//            begin
//              noorder := tabel.q1.Fields[0].Text;
//              tabel.q1.SQL.Clear;
//              tabel.q1.SQL.Add('delete from konfirmasi_pembayaran where no_order='''+noorder+''' ');
//              tabel.q1.ExecSQL;
//
//              tabel.q1.SQL.Clear;
//              tabel.q1.SQL.Add('delete from detail_konfirmasipembayaran where no='+nokonfirmasi+' ');
//              tabel.q1.ExecSQL;
//            end;

            tabel.q1.SQL.Clear;
            tabel.q1.sql.Add('delete from y_relasi_konfirmasidanmutasi where id_mutasi='''+norekening+''' and id_konfirmasi='''+nokonfirmasi+''' ');
            tabel.q1.ExecSQL;

            tabel.q1.SQL.Clear;
            tabel.q1.sql.Add('delete from uang_customer where no_kasbank='''+norekening+''' and id_konfirmasi='''+nokonfirmasi+'''  ');
            tabel.q1.ExecSQL;

            tabel.q1.SQL.Clear;
            tabel.q1.SQL.Add('delete from n_status_pemasangan where no_kasbank='''+norekening+''' ');
            tabel.q1.ExecSQL;

            tabel.q1.SQL.Clear;
            tabel.q1.SQL.Add('delete from a_kasbank_temp where no_kasbank='''+norekening+''' ');
            tabel.q1.ExecSQL;

            tabel.q1.SQL.Clear;
            tabel.q1.SQL.Add('COMMIT');
            tabel.q1.ExecSQL;

            ShowMessage('Data berhasil di hapus');
            tabel.qlappemasangan.Active:=false;
            tabel.qlappemasangan.Active:=true;
          except on e:exception do
          begin
            tabel.q1.SQL.Clear;
            tabel.q1.SQL.Add('ROLLBACK');
            tabel.q1.ExecSQL;

            ShowMessage('Gagal dibatalkan. Error : '+e.Message);
          end;

          end;
       end;
  end else begin
   ShowMessage('tidak ada data yang bisa di hapus!');
   Exit;
  end;

end;

procedure Tfmenuutama.BitBtn15Click(Sender: TObject);
begin
fpemasanganmanual.trekening.Text:=tabel.qrekeningkoranno_rekening.Value;
fpemasanganmanual.tbank.Text:=tabel.qrekeningkoranbank.Value;
fpemasanganmanual.tnominal.Text:=formatcurr(',0.00',tabel.qrekeningkoranjumlah.Value);
fpemasanganmanual.mket.Lines.Clear;
fpemasanganmanual.mket.Lines.Add(tabel.qrekeningkoranketerangan.Value);
v_idrekening:=IntToStr(tabel.qrekeningkoranid_transaksi.Value);
fpemasanganmanual.Show;
end;

procedure Tfmenuutama.BitBtn16Click(Sender: TObject);
var pesan,no:string;
begin
  if tabel.qpemasanganmanual.RecordCount > 0 then begin

       pesan:='Apakah anda yakin akan membatalkan Pemasangan kas bank ? ';
       if messagedlg(pesan,mtconfirmation,[mbyes,mbno],0)=mryes then
       begin
          no:=IntToStr(tabel.qpemasanganmanualidxno.Value);

          tabel.q1.SQL.Clear;
          tabel.q1.sql.Add('delete from y_pemasanganmanual where no='''+no+''' ');
          tabel.q1.ExecSQL;

          ShowMessage('Data berhasil di hapus');
          tabel.qpemasanganmanual.Active:=false;
          tabel.qpemasanganmanual.Active:=true;
       end;
  end else begin
   ShowMessage('tidak ada data yang bisa di hapus!');
   Exit;
  end;
end;

procedure Tfmenuutama.BitBtn17Click(Sender: TObject);
var pesan,no:string;
begin
  if tabel.qlapolshop.RecordCount > 0 then begin

       pesan:='Apakah anda yakin akan membatalkan Pemasangan ol shop ? ';
       if messagedlg(pesan,mtconfirmation,[mbyes,mbno],0)=mryes then
       begin
          no:=IntToStr(tabel.qlapolshopid_transaksi.Value);

           tabel.q1.SQL.Clear;
          tabel.q1.sql.Add('select * from y_relasi_konfirmasidanmutasi where id_mutasi='''+no+''' ');
          tabel.q1.Active:=True;
          if tabel.q1.RecordCount > 0 then begin
           ShowMessage('Data tidak bisa di batalkan karena sudah di pasangkan dengan konfirmasi pembayaran');
           Exit;
          end;


          tabel.q1.SQL.Clear;
          tabel.q1.sql.Add('delete from kas_bank_import where id_transaksi='''+no+''' ');
          tabel.q1.ExecSQL;

          ShowMessage('Data berhasil di hapus');
          tabel.qlapolshop.Active:=false;
          tabel.qlapolshop.Active:=true;
       end;
  end else begin
   ShowMessage('tidak ada data yang bisa di hapus!');
   Exit;
  end;
end;

procedure Tfmenuutama.BitBtn18Click(Sender: TObject);
begin
  if tabel.qkonfirmasi.RecordCount <> 0 then
  begin
    tabel.qcekkonfirmasi.Active:=True;
    fcekkonfirmasipembayaran.ShowModal;
  end;
end;

procedure Tfmenuutama.BitBtn19Click(Sender: TObject);
var nokonfirmasi:string;
begin
  if (tabel.qkonfirmasiid_user_konfirmasi.Text <> v_idkaryawan) and ((Pos('TOKOPEDIA',UpperCase(tabel.qkonfirmasibank.Text)) <= 0) or (Pos('SHOPEE',UpperCase(tabel.qkonfirmasibank.Text)) <= 0)) then
    ShowMessage('Konfirmasi hanya bisa dihapus oleh user yang buat! ')
  else
  begin
    if MessageDlg('Apakah anda yakin akan menghapus ' + UpperCase(tabel.qkonfirmasino_order.Value)+' atas nama ' + UpperCase(tabel.qkonfirmasiatas_nama.Value) +' ?', mtWarning,[mbYes,mbNo],0)=mrYes then
    begin
      try
  //      tabel.q1.SQL.Clear;
  //      tabel.q1.SQL.Add('insert into n_hapus_konfirmasi values(0,'''+tabel.qkonfirmasinokonfirmasi.Text+''',now(),'''+v_idkaryawan+''') ');
  //      tabel.q1.ExecSQL;
        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('select no_konfirmasi from detail_konfirmasipembayaran where no='+tabel.qkonfirmasinokonfirmasi.Text+' and no_order='''+tabel.qkonfirmasino_order.Text+''' ');
        tabel.q1.Open;
        if tabel.q1.RecordCount = 0 then
          ShowMessage('Ada kesalahan data,silahkan refresh dan coba kembali')
        else
        begin
          nokonfirmasi := tabel.q1.Fields[0].Text;

          tabel.q1.SQL.Clear;
          tabel.q1.SQL.Add('delete from detail_konfirmasipembayaran where no='+tabel.qkonfirmasinokonfirmasi.Text+' and no_order='''+tabel.qkonfirmasino_order.Text+''' ');
          tabel.q1.ExecSQL;

          tabel.q1.SQL.Clear;
          tabel.q1.SQL.add('select no from konfirmasi_pembayaran where no='+nokonfirmasi+' ');
          tabel.q1.Open;
          if tabel.q1.RecordCount > 0 then
          begin
            tabel.q1.SQL.Clear;
            tabel.q1.SQL.Add('delete from konfirmasi_pembayaran where no='+nokonfirmasi+' ');
            tabel.q1.ExecSQL;
          end;

          ShowMessage('Berhasil dihapus');
          tabel.qkonfirmasi.Refresh;
        end;

      except on e:Exception do
        begin
          ShowMessage('Data gagal dihapus. Error: '+ e.Message);
        end;

      end;
    end;
  end;

end;

procedure Tfmenuutama.BitBtn1Click(Sender: TObject);
var  f2 : TextFile;
 f1,strl,strl2:TStringList;
ch,tes,tes2,ch2,k1,k2,k3,k4a,k4,k5 : string;
lines,i,k,kj,pjg,km,sesi,x,y,z,gket,gcab,gjml,gsaldo,akhir:integer;
kata: TstringList;
kata2:TStringList;
kata3:TStringList;
a,b,c,d,e,f,g,tahun,cekawal,cekbulan,temp,temp2,cekdebit,kd,bln,tgl,kode_kas,ststgl:string;
bnk,tempkata,kata3tes,yh,bank,str,nourut:string;
tanggal,keterangan,cabang,mutasi,jumlah,saldo_akhir,kodetransaction,keterangan2,statusdata,saldo:string;
Begin
kata := TstringList.Create;
if cbpilihanbank.Text='' then begin
    ShowMessage('Silahkan Pilih Rekening yang akan di import!');
    Exit;
end;
     split(cbpilihanbank.Text,'#',kata);
     tabel.q1.SQL.Clear;
     tabel.q1.SQL.Add('select * from kas_bank where no_rekening='''+kata[0]+''' ');
     tabel.q1.Active:=True;
     kode_kas:=tabel.q1.FieldValues['kode_kas'];
     bank:=tabel.q1.FieldValues['bank'];
//   ShowMessage(tabel.q1.SQL.text);
 v_kodekas:=kode_kas;
 v_kodekasmandiri:=v_kodekas;
//  ShowMessage(v_kodekas);
 if sedit1.text = '' then begin
 ShowMessage('Silahkan filih file yang akan di import');
 Exit;
 end;
     tabel.q1.SQL.Clear;
     tabel.q1.sql.Add('START TRANSACTION');
     tabel.q1.ExecSQL;
     v_saldoawal:='0';
     v_saldoakhir:='0';
try
f1 := TStringList.Create;
f1.LoadFromFile(sEdit1.text);
except
 ShowMessage('File kas bank tidak bisa di akses karena sedang di buka oleh program lain silahkan tutup terlebih dahulu!');
 Exit;
end;
 lines := f1.Count;
 //  kata := TstringList.Create;
kata3:=TStringList.Create;
pg1.Max:=lines;
pg1.Position:=0;
ghj:=0;
kj:=0;


          tabel.q1.SQL.Clear;
          tabel.q1.sql.Add('select ifnull(max(sesi),0)+1 as sesi from kas_bank_import ');
          tabel.q1.Active:=True;
          sesi:=tabel.q1.FieldValues['sesi'];

          temp:='';
          temp2:='';
          ghj:=0;
          kj:=0;
         ch2 := f1[i];
         f1[i] := ch2;
         ch2:=stringreplace(ch2,'"','',[rfreplaceall,rfignorecase]) ;
         ch2:=stringreplace(ch2,'|','',[rfreplaceall,rfignorecase]) ;
         ShowMessage(Copy(ch2,1,3));

 vttes.Open;
 vttes.Clear;
    //// mandiri
 if (bank='MANDIRI') and (Copy(ch2,1,3)='Acc')  then begin

            tabel.q1.SQL.Clear;
            tabel.q1.sql.Add('START TRANSACTION');
            tabel.q1.ExecSQL;
           kata2:=TStringList.Create;
           strl:=TStringList.Create;
           strl.LoadFromFile(op.FileName);
           strl2:=TStringList.Create;
           tanggal:='';
           pg1.Max:=strl.Count;
           pg1.Position:=0;

           for i := 0 to strl.Count - 1 do
           begin
             pg1.Position:= pg1.Position+1;
             strl2.CommaText := strl[i];
             strl2.Delimiter := '#';
             str := strl2.DelimitedText;
             str := StringReplace(str,'"','',[rfReplaceAll]);
             Split(str,'#',kata);

            if i<>0 then begin
              tanggal:=kata[2];
              Split(tanggal,'/',kata2);

               if Length(kata2[2])=2 then begin
                tahun:='20'+kata2[2];
               end else begin
               tahun:=kata2[2];
               end;

               if Length(kata2[1])=1 then begin
                bln:='0'+kata2[1];
               end else begin
                bln:=kata2[1];
               end;

                if Length(kata2[0])=1 then begin
                 tgl:='0'+kata2[0];
               end else begin
                 tgl:=kata2[0];
               end;

             a:=tahun+'-'+bln+'-'+tgl;

             keterangan:=kata[4];
             cabang:=kata[0];
             if (kata[7]='.00') then begin
             mutasi:='CR';
             jumlah:=kata[8];
              jumlah := stringreplace(jumlah,',','',[rfreplaceall,rfignorecase]);
              jumlah := stringreplace(jumlah,'.','',[rfreplaceall,rfignorecase]);
             end else begin



              if kata[8]='.00' then begin

                if (kata.Count-1)=8 then begin

                        mutasi:='DB';
                        jumlah:=kata[7];
                        jumlah := stringreplace(jumlah,',','',[rfreplaceall,rfignorecase]);
                        jumlah := stringreplace(jumlah,'.','',[rfreplaceall,rfignorecase]);
                end else begin

                        mutasi:='CR';
                        jumlah:=kata[9];
                        jumlah := stringreplace(jumlah,',','',[rfreplaceall,rfignorecase]);
                        jumlah := stringreplace(jumlah,'.','',[rfreplaceall,rfignorecase]);
                end;



              end else begin

                k:=0;
                kj:=8;
                while k < 100 do begin

                   if kata[kj]='.00' then begin

                      k:=100;
                      if (kj=kata.Count-1) then begin
                        mutasi:='DB';
                        jumlah:=kata[kj-1];
                        jumlah := stringreplace(jumlah,',','',[rfreplaceall,rfignorecase]);
                        jumlah := stringreplace(jumlah,'.','',[rfreplaceall,rfignorecase]);

                      end else begin
                        mutasi:='CR';
                        jumlah:=kata[kj+1];
                        jumlah := stringreplace(jumlah,',','',[rfreplaceall,rfignorecase]);
                        jumlah := stringreplace(jumlah,'.','',[rfreplaceall,rfignorecase]);

                      end;

                   end;
                   kj:=kj+1;

                end;


              end;

             end;
             kodetransaction:=kata[3];
             keterangan2:=kata[5];
             keterangan2 := StringReplace(keterangan2,tchar.Text,'',[rfReplaceAll,rfIgnoreCase]);
             keterangan := StringReplace(keterangan,tchar.Text,'',[rfReplaceAll,rfIgnoreCase]);

             tes:=Copy(jumlah,Length(jumlah)-1,2);
            // ShowMessage(tes);
             if (Copy(tes,1,1)<>'0') or (Copy(tes,2,1)<>'0') then begin
               jumlah:=copy(jumlah,1,Length(jumlah)-2)+'.'+tes;
             end else begin
              jumlah:=copy(jumlah,1,Length(jumlah)-2);
             end;

              tabel.q1.SQL.Clear;
              tabel.q1.sql.Add('insert into kas_bank_batch values(0,'''+a+''',''0'','''+keterangan+''','''+cabang+''','''+mutasi+''','''+jumlah+''',0,''BELUM TERPAKAI'',''ADA TANGGAL'','''+v_kodekas+''',''0'','''+keterangan2+''',null) ');
              tabel.q1.ExecSQL;




            end;


           end;
           tabel.q1.SQL.Clear;
           tabel.q1.sql.Add('COMMIT');
           tabel.q1.ExecSQL;
            fverifikasimandiri.ShowModal;
        //   ShowMessage('Data berhasil di import sebanyak '+inttostr(strl.Count - 1)+'');
           FreeAndNil(strl);
           sEdit1.Clear;
         pg1.Position:=0;



  //// BCA
 end else if Copy(ch2,1,3)='Inf' then begin

//  Memo1.Lines.Clear;
  ghj := 0;
  gket := 0;
  gcab := 0;
  gjml := 0;
  gsaldo := 0;
  akhir := 0;

  for i := 0 to f1.Count - 1 do
   begin
//    ShowMessage(f1[i]);
    kata3.CommaText := f1[i];
    kata3.Delimiter := '$';
    kata3.StrictDelimiter := True;
    ch := kata3.DelimitedText;
    ch := StringReplace(ch,'"','',[rfReplaceAll]);
    ch := StringReplace(ch,',','',[rfReplaceAll]);
    ch := StringReplace(ch,'|','',[rfReplaceAll]);

    tes:=copy(ch,1,7);


      if lowercase(tes)='periode' then begin
        tahun:=copy(ch,17,4);
      end;

      tes:=copy(ch,1,17);
      if lowercase(tes)='tanggal transaksi' then begin
        ghj:=1;
      end;

      if gket=0 then gket := Pos('keterangan', LowerCase(ch));

      if gcab=0 then gcab := Pos('cabang', LowerCase(ch));

      if gjml=0 then gjml := Pos('jumlah', LowerCase(ch));

      if gsaldo=0 then gsaldo := Pos('saldo', LowerCase(ch));
      if akhir=0 then akhir := Pos('saldo awal', LowerCase(ch));
      if akhir=0 then akhir := Pos('mutasi debet', LowerCase(ch));
      if akhir=0 then akhir := Pos('mutasi kredit', LowerCase(ch));
      if akhir=0 then akhir := Pos('saldo akhir', LowerCase(ch));

      split(ch,'$',kata);

      tanggal := '';
      keterangan := '';
      cabang := '';
      jumlah := '';
      mutasi := '';
      saldo := '';

      if akhir = 0 then
      begin

        for k := 0 to kata.Count - 1 do
        begin
          if (k=0) and (ghj<>0) then
          begin
            x := 0;
            y := 0;
            Z := 0;

            x := Pos('/',kata[k]);
            y := Pos('-',kata[k]);

            if x <> 0 then
            begin
              tgl := Copy(kata[k],1,x - 1);
              bln := Copy(kata[k],x + 1,length(kata[k]));
              tanggal:=tahun + '-' + bln + '-' + tgl;
              ststgl := 'ADA TANGGAL';
            end
            else if y <> 0 then
            begin
              tgl := Copy(kata[k],1,y - 1);
              bln := Copy(kata[k],y + 1,length(kata[k]));
              tanggal:=(tahun + '-' + bln + '-' + tgl);
              ststgl := 'ADA TANGGAL';
            end
            else if lowercase(kata[k]) = 'pend' then
            begin
              tanggal:=('2010-01-01');
              ststgl := 'PENDING';
            end;
          end;

          if (k=1) and (gket<>0) then
          begin
            if lowercase(Trim(kata[k])) <> 'keterangan' then
              keterangan := kata[k];
          end;

          if (k=2) and (gcab<>0) then
          begin
            if lowercase(Trim(kata[k])) <> 'cabang' then
              cabang := kata[k];
          end;

          if (k=3) and (gjml<>0) then
          begin
            if lowercase(Trim(kata[k])) <> 'jumlah' then
              jumlah := kata[k];

            z := Pos('cr',lowercase(jumlah));
            if z=0 then
              z := Pos('db',lowercase(jumlah));

            if z<>0 then
            begin
              jumlah := Trim(Copy(kata[k],1,z-1));
              mutasi := copy(kata[k],z,length(kata[k]));
            end;

          end;

          if (k=4) and (gsaldo<>0) then
          begin
            if lowercase(Trim(kata[k])) <> 'saldo' then
              saldo := kata[k];
          end;
        end;
//        Memo1.Lines.Add(tanggal + '------' + Trim(keterangan) + '------' + Trim(cabang) + '------' + Trim(jumlah) + '------' + Trim(mutasi) + '------' + Trim(saldo));
        if (tanggal <> '') and (keterangan <> '') and (cabang <> '') and (jumlah <> '') and (saldo <> '') then
        begin
      //  ShowMessage(tanggal);
//          Memo1.Lines.Add(tanggal + '------' + Trim(keterangan) + '------' + Trim(cabang) + '------' + Trim(jumlah) + '------' + Trim(mutasi) + '------' + Trim(saldo));
          keterangan:=ReplaceStr(keterangan,Edit1.Text,'');
          tabel.q1.SQL.Clear;
          tabel.q1.sql.Add('insert into kas_bank_batch values(0,'''+tanggal+''','+inttostr(sesi)+','''+keterangan+''','''+cabang+''','''+mutasi+''','''+jumlah+''','''+saldo+''',''BELUM TERPAKAI'','''+ststgl+''','''+v_kodekas+''',''0'','''',null)');
          tabel.q1.ExecSQL;
        end;
      end;
   end;

     tabel.q1.SQL.Clear;
     tabel.q1.sql.Add('COMMIT');
     tabel.q1.ExecSQL;

     inputkasbank;

     pg1.Position:=0;
     qimportkasbank.Active:=false;
     qimportkasbank.Active:=True;
     sedit1.text:='';

        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('select tanggal from kas_bank_import where tanggal!=''2010-01-01'' order by tanggal desc limit 1 ');
        tabel.q1.Active:=True;
        if tabel.q1.RecordCount > 0 then begin
           Label49.Caption:=formatdatetime('yyyy-mm-dd',tabel.q1.FieldValues['tanggal']);
        end else begin
           Label49.Caption:='-';
        end;

 end else begin

 if (bank='MANDIRI') then
    importmandiri()
 else if (bank='BRI') then
    importbri()
 else
 begin
   ShowMessage('Format Rekening Koran Salah Silahkan hub bagian it!');
    Exit;
 end;
 end;



end;

procedure Tfmenuutama.BitBtn20Click(Sender: TObject);
begin
  tabel.qhapuskonfirmasi.sql.Clear;
  tabel.qhapuskonfirmasi.SQL.Add('SELECT kp.no AS NO,kp.no AS nokonfirmasi,kp.no_order,c.nama,atas_nama,jumlah_uang,kp.tanggal_transfer AS tanggal,bank,u.nama AS admin, '+
  'IFNULL(ca.`catatan`,'''') AS catatan FROM detail_konfirmasipembayaran kp LEFT JOIN order_pembelian op USING(no_order) LEFT JOIN customer c USING(id_customer) LEFT JOIN `user` u ON u.`id_user`=op.id_karyawan  '+
  'LEFT JOIN y_relasi_konfirmasidanmutasi yr ON yr.id_konfirmasi=kp.no LEFT JOIN catatan_admin ca ON op.no_order=ca.`no_order` WHERE yr.no IS NULL AND kp.tanggal_transfer > ''2019-03-01 00:00:00''   '+
  'AND kp.no IN (SELECT no_konfirmasi FROM n_hapus_konfirmasi where id_user='''+v_idkaryawan+''')  ORDER BY kp.tanggal_transfer ASC');
  tabel.qhapuskonfirmasi.Active:=true;
  fdatahapuskonfirmasi.ShowModal;
end;

procedure Tfmenuutama.BitBtn21Click(Sender: TObject);
var
i, j, x , y: integer;
XlApp, XlBook, XlSheet: Variant;
begin
  if cxGrid17DBTableView1.DataController.DataSource.DataSet.RecordCount <> 0 then
  begin
    XlApp := CreateOleObject('Excel.Application');
    XlBook := XlApp.WorkBooks.Add;
    XlSheet := XlBook.worksheets.add;
    //XlSheet.Range['A2', 'A4'].Merge(EmptyParam);
    XlSheet.pagesetup.orientation :=2;
    //memberikan judul pada baris pertama
    for i:=0 to cxGrid17DBTableView1.ColumnCount-1 do
    begin
    XlSheet.cells[1,i+1]:=cxGrid17DBTableView1.Columns[i].Caption;
    end;
    x:=1; //inisialisasi untuk menampilkan no urut
    tabel.qlappemasangan.First;
    while not tabel.qlappemasangan.Eof do
    begin
      XlSheet.cells[x+1,1]:=x;
      for i:=0 to cxGrid17DBTableView1.ColumnCount-1 do
      begin
      XlSheet.cells[x+1,i+1]:=tabel.qlappemasangan.FieldByName(cxGrid17DBTableView1.Columns[i].DataBinding.FieldName).AsString;
      end;

      tabel.qlappemasangan.Next;
      inc(x);
    end;
    XlApp.visible:=true; //menampilkan dalam MS. Excel\</p>

  end;
end;

procedure Tfmenuutama.BitBtn22Click(Sender: TObject);
var srupiah:string;
begin
  fcekpenjualan.dt1.date := (StrToDateTime(tabel.qrekeningkorantanggal.Text) - 3);
  fcekpenjualan.dt2.date := (StrToDateTime(tabel.qrekeningkorantanggal.Text) + 3);
  srupiah := tabel.qrekeningkoranjumlah.Text;
  srupiah := StringReplace(srupiah,',','',[rfreplaceall,rfignorecase]);
  srupiah := stringreplace(srupiah,'.','',[rfreplaceall,rfignorecase]);
  fcekpenjualan.tcari.Text := srupiah;
  fcekpenjualan.Show;
  fcekpenjualan.Button2Click(nil);
end;

procedure Tfmenuutama.BitBtn23Click(Sender: TObject);
begin
          frxrekkoran.PrepareReport();
          frxrekkoran.LoadFromFile(ExtractFilePath(Application.ExeName)+'cetakrekeningkoran.Fr3');
          frxrekkoran.ShowReport();
end;

procedure Tfmenuutama.BitBtn24Click(Sender: TObject);
begin
  ftambahkonfirmasi.ShowModal;
end;

procedure Tfmenuutama.BitBtn25Click(Sender: TObject);
var
i, j, x , y: integer;
XlApp, XlBook, XlSheet: Variant;
begin
  if cxGridDBTableView13.DataController.DataSource.DataSet.RecordCount <> 0 then
  begin
    XlApp := CreateOleObject('Excel.Application');
    XlBook := XlApp.WorkBooks.Add;
    XlSheet := XlBook.worksheets.add;
    //XlSheet.Range['A2', 'A4'].Merge(EmptyParam);
    XlSheet.pagesetup.orientation :=2;
    //memberikan judul pada baris pertama
    for i:=0 to cxGridDBTableView13.ColumnCount-1 do
    begin
    XlSheet.cells[1,i+1]:=cxGridDBTableView13.Columns[i].Caption;

    XlSheet.Cells[1,i+1].interior.Color := clMoneyGreen;
    XlSheet.cells[1,i+1].horizontalalignment := -4108;
    XlSheet.cells[1,i+1].font.bold := true;
    XlSheet.cells[1,i+1].font.size:=8;
    end;
    x:=1; //inisialisasi untuk menampilkan no urut
    tabel.qlapdetailkontrabon.First;
    while not tabel.qlapdetailkontrabon.Eof do
    begin
      XlSheet.cells[x+1,1]:=x;
      for i:=0 to cxGridDBTableView13.ColumnCount-1 do
      begin
      XlSheet.cells[x+1,i+1]:=tabel.qlapdetailkontrabon.FieldByName(cxGridDBTableView13.Columns[i].DataBinding.FieldName).AsString;
      XlSheet.cells[x+1,i+1].font.size:=8;
      XlSheet.cells[x+1,i+1].columnwidth := 17;
      XlSheet.cells[x+1,1].columnwidth := 30;
//      XlSheet.rows[1].rowheight := 20;
//      XlSheet.rows[x+1].rowheight := 25;
//      XlSheet.cells[x+1,1].horizontalalignment := -4108;
      end;

      tabel.qlapdetailkontrabon.Next;
      inc(x);
    end;
    XlApp.visible:=true; //menampilkan dalam MS. Excel\</p>

  end;

end;

procedure Tfmenuutama.btnBaruLiburClick(Sender: TObject);
begin
  cxTanggalLibur.Date := Now();
  cxNamaLibur.Text := '';
  cxTipeLibur.Text := '';
  cxKeteranganLibur.Lines.Clear;
  btnSimpanLibur.Caption := 'Simpan';
  btnHapusLibur.Enabled := false;
  cxGridLibur.Enabled := true;

  tabel.vtholidays.Active:=false;
  SendRequest('get',urlPusat + 'holidays/data',tabel.vtholidays,nil,false);
  tabel.vtholidays.Active:=true;
end;

procedure Tfmenuutama.btnHapusLiburClick(Sender: TObject);
var
  lastPosition:Integer;
  lst:TStringList;
begin
  lastPosition := tabel.vtholidays.RecNo;

  lst := TStringList.Create;
  lst.Add('tgl=' + vpilihTanggalLibur);
  if SendRequest('post',urlPusat +'holidays/hapus',nil,lst,true) = True then
      btnBaruLiburClick(sender);

  if tabel.vtholidays.RecordCount > 0 then
    tabel.vtholidays.RecNo := lastPosition;
end;

procedure Tfmenuutama.btnSimpanLiburClick(Sender: TObject);
var
  tgl:string;
  lst:TStringList;
  lastPosition:Integer;
begin
  lastPosition := tabel.vtholidays.RecNo;
  tgl := FormatDateTime('yyyy-mm-dd', cxTanggalLibur.Date);

  if Trim(cxNamaLibur.Text) = '' then
  begin
    ShowMessage('Nama tidak boleh kosong ');
    cxNamaLibur.SetFocus;
  end
  else
  begin
    if btnSimpanLibur.Caption = 'Simpan' then
    begin
      lst := TStringList.Create;
      lst.Add('tgl=' + tgl);
      lst.Add('nama=' + cxNamaLibur.Text);
      lst.Add('keterangan=' + cxKeteranganLibur.Text);
      lst.Add('tipe=' + cxTipeLibur.Text);
      lst.Add('iduser=' + v_idkaryawanPusat);
      if SendRequest('post',urlPusat +'holidays/tambah',nil,lst,true) = True then
        btnBaruLiburClick(sender);
    end
    else
    begin
      lst := TStringList.Create;
      lst.Add('tgl=' + vpilihTanggalLibur);
      if SendRequest('post',urlPusat +'holidays/hapus',nil,lst,false) = True then
      begin
        lst.Clear;
        lst.Add('tgl=' + tgl);
        lst.Add('nama=' + cxNamaLibur.Text);
        lst.Add('keterangan=' + cxKeteranganLibur.Text);
        lst.Add('tipe=' + cxTipeLibur.Text);
        lst.Add('iduser=' + v_idkaryawanPusat);
        if SendRequest('post',urlPusat +'holidays/tambah',nil,lst,true) = True then
          btnBaruLiburClick(sender);
      end;

      if tabel.vtholidays.RecordCount > 0 then
        tabel.vtholidays.RecNo := lastPosition;
    end;
  end;
end;

procedure Tfmenuutama.btntukarClick(Sender: TObject);
begin
  if MessageDlg('Apakah anda yakin ingin menukarkan pemasangan tersebut?',mtConfirmation,[mbyes,mbno],0)=mryes then
  begin
    try
      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('START TRANSACTION');
      tabel.q1.ExecSQL;

      // tukar id pertama dengan id kedua
      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('update y_relasi_konfirmasidanmutasi set id_konfirmasi='+IntToStr(vt_nokonfirmasi2)+' '+
      ' where id_konfirmasi='+IntToStr(vt_nokonfirmasi1)+' and id_mutasi='+IntToStr(vt_idmutasi1)+' ');
      tabel.q1.ExecSQL;

      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('update uang_customer set id_konfirmasi='+IntToStr(vt_nokonfirmasi2)+' '+
      ' where id_konfirmasi='+IntToStr(vt_nokonfirmasi1)+' and no_kasbank='+IntToStr(vt_idmutasi1)+' ');
      tabel.q1.ExecSQL;


      // tukar id kedua dengan id pertama
      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('update y_relasi_konfirmasidanmutasi set id_konfirmasi='+IntToStr(vt_nokonfirmasi1)+' '+
      ' where id_konfirmasi='+IntToStr(vt_nokonfirmasi2)+' and id_mutasi='+IntToStr(vt_idmutasi2)+' ');
      tabel.q1.ExecSQL;

      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('update uang_customer set id_konfirmasi='+IntToStr(vt_nokonfirmasi1)+' '+
      ' where id_konfirmasi='+IntToStr(vt_nokonfirmasi2)+' and no_kasbank='+IntToStr(vt_idmutasi2)+' ');
      tabel.q1.ExecSQL;

      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('COMMIT');
      tabel.q1.ExecSQL;

      ShowMessage('Sukses');

      vt_idmutasi1:=-1;
      vt_idmutasi2:=-1;
      vt_nokonfirmasi1:=-1;
      vt_nokonfirmasi2:=-1;
      vt_jumlah:=0;

      tabel.qlappemasangan.Refresh;

    except on e:Exception do
    begin
      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('ROLLBACK');
      tabel.q1.ExecSQL;

      ShowMessage('Gagal : '+e.Message);
    end;

    end;
  end;
end;

procedure Tfmenuutama.BitBtn2Click(Sender: TObject);
var idtransaksi,norekening1,norekening2,norekeningkonfirmasi,tanggal1,tanggal2,idkonfirmasi:string;
kata:TStringList;
selisih:Integer;
bank:string;
begin
kata:=TstringList.Create;
idtransaksi:=inttostr(tabel.qrekeningkoranid_transaksi.Value);
norekening1:=tabel.qrekeningkoranno_rekening.Value;
norekening2:=tabel.qkonfirmasibank.Value;
idkonfirmasi:=tabel.qkonfirmasino.Text;
tanggal1:=formatdatetime('yyyy-mm-dd',tabel.qkonfirmasitanggal.Value);
tanggal2:=formatdatetime('yyyy-mm-dd',tabel.qrekeningkorantanggal.Value);
 bank:=tabel.qrekeningkoranbank.Value;
tabel.q1.SQL.Clear;
tabel.q1.SQL.Add('SELECT DATEDIFF('''+tanggal2+''','''+tanggal1+''') as selisih');
tabel.q1.Active:=True;
selisih:=tabel.q1.FieldValues['selisih'];


 if (tanggal2<>'2010-01-01' ) and (bank<>'SHOPEE') and (bank<>'TOKOPEDIA')  then begin

    if (selisih >= 7) Or (selisih < 0)  then begin
       ShowMessage('Tanggal Konfirmasi tidak boleh lebih kecil dari tanggal transfer, dan tidak boleh lebih besar 7 hari dari tanggal transfer');
      Exit;
    end;
 end;




Split(norekening2,'#',kata);
norekeningkonfirmasi:=kata[0];


 if Trim(norekeningkonfirmasi)<>Trim(norekening1) then begin
   ShowMessage('Pemasangan harus dengan bank yang sama!');
   Exit;

 end;
if vtpilihan.Locate('id_transaksi',idtransaksi,[])=true then begin
  ShowMessage('Transaksi tersebut sudah di gunakan!');
  Exit;
end;


if tabel.qkonfirmasijumlah_uang.Value<> tabel.qrekeningkoranjumlah.Value then begin
ShowMessage('Jumlah uang konfirmasi pembayaran harus sesuai dengan data rekening koran');
Exit;

end;

if vtpilihan.RecordCount =1 then begin

ShowMessage('Pencocokan rekening koran tidak boleh lebih dari 1 rekening koran!');
Exit;
end;


vtpilihan.Open;
vtpilihan.Append;
vtpilihanid_transaksi.Value:=IntToStr(tabel.qrekeningkoranid_transaksi.Value);
vtpilihanjumlah_uang.Value:=tabel.qrekeningkoranjumlah.Value;
vtpilihan.Post;

 hitungkonfirmasi;
 tabel.qrekeningkoran.Active:=false;
 tabel.qrekeningkoran.Active:=true;
 tabel.qrekeningkoran.Locate('id_transaksi',idtransaksi,[]);

 // cxGridDBTableView4.ViewData.Refresh();

end;

procedure Tfmenuutama.BitBtn3Click(Sender: TObject);
var
  status,v_stssap,tanggaltransfer,pesan,srupiah,idkonfirmasi,idrekeningkoran,idcustomer,kodekas,kodeperincian:string;
  jumlahuang : real;
  jso : TJSONObject;
begin
  pesan:='Apakah Anda yakin akan memasangkan data rekening koran dan konfirmasi pembayaran ? ';
  if messagedlg(pesan,mtconfirmation,[mbyes,mbno],0)=mryes then
  begin

    if vtpilihan.RecordCount = 0 then begin
      ShowMessage('Silahkan pilih Data rekening koran!');
      Exit;
    end;

    srupiah := dbtext5.Caption;
    srupiah := stringreplace(sRupiah,',','',[rfreplaceall,rfignorecase]);
    srupiah := stringreplace(srupiah,'.','',[rfreplaceall,rfignorecase]);

    tabel.q1.SQL.Clear;
    tabel.q1.SQL.Add('select no,nama,id_customer,kode_kas,cast(tanggal_transfer as date) as tgl from detail_konfirmasipembayaran kp join order_pembelian using(no_order) join customer using(id_customer) where kp.no='''+ tabel.qkonfirmasino.AsString +'''  '+
    ' union  '+
    ' select no,nama,id_customer,kode_kas,cast(tanggal_transfer as date) as tgl from detail_konfirmasipembayaran kp join s_penjualan_katalog ON kp.no_order=no_penjualan join customer using(id_customer) where kp.no='''+ tabel.qkonfirmasino.AsString +'''   ');
    tabel.q1.Active:=True;
    if tabel.q1.RecordCount > 0 then begin
      idkonfirmasi:=tabel.q1.FieldValues['no'];
      idcustomer:=tabel.q1.FieldValues['id_customer'];
      kodekas:=tabel.q1.FieldValues['kode_kas'];

      tanggaltransfer:=formatdatetime('yyyy-mm-dd',tabel.q1.FieldValues['tgl']);

      if (tanggaltransfer<>'2010-01-01' ) then begin
        tanggaltransfer:=formatdatetime('yyyy-mm-dd',now);
      end;

      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('START TRANSACTION');
      tabel.q1.ExecSQL;

        idrekeningkoran:=vtpilihanid_transaksi.Value;
        jumlahuang:=vtpilihanjumlah_uang.Value;

        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('select * from kas_bank_import where id_transaksi='''+idrekeningkoran+''' ');
        tabel.q1.Active:=True;
        kodekas:=tabel.q1.FieldValues['kode_kas'];

        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('select * from  uang_customer where no_kasbank='''+idrekeningkoran+''' ');
        tabel.q1.Active:=True;
        if tabel.q1.RecordCount > 0 then begin
          ShowMessage('Ada Kesalahan Pemasangan silahkan hub bag it!');
          vtpilihan.Last;
          tabel.q1.SQL.Clear;
          tabel.q1.SQL.Add('ROLLBACK');
          tabel.q1.ExecSQL;
          Exit;
        end;

        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('insert into uang_customer values(0,'''+idrekeningkoran+''','''+idcustomer+''','''+floattostr(jumlahuang)+''','''+tanggaltransfer+''','''+v_idkaryawan+''','''+idkonfirmasi+''',''LUNAS'',''TRANSFER'',8,'''','''+kodekas+''','''') ');
        tabel.q1.ExecSQL;

        kodebukubesar;

        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('insert into y_relasi_konfirmasidanmutasi values(0,'''+idkonfirmasi+''','''+idrekeningkoran+''',now(),'''+v_idkaryawan+''') ');
        tabel.q1.ExecSQL;

        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('SELECT data FROM `konstanta` WHERE jenis=''SAP AKUNTING BARU'' and data=''saptemp/terimauang'' ');
        tabel.q1.Active:=true;
        if tabel.q1.RecordCount = 0 then begin
          try
            v_t_lst := TStringList.Create;
            v_t_mem := TStringStream.Create;

            tabel.q1.SQL.Clear;
            tabel.q1.SQL.Add('SELECT CONCAT((SELECT branch FROM data_cabang),''_'',IFNULL(op.id_customer,IFNULL(c.id_customer,sp.id_customer)),''_'',df.no) AS revkode ' +
            ' FROM `detail_konfirmasipembayaran` df ' +
            ' LEFT JOIN order_pembelian op USING(no_order) ' +
            ' LEFT JOIN customer c ON c.nama=df.`no_order` ' +
            ' LEFT JOIN `s_penjualan_katalog` sp ON sp.no_penjualan=df.`no_order` WHERE `no`='''+ idkonfirmasi +''' ');
            tabel.q1.Active:=true;
            if tabel.q1.RecordCount = 0 then begin
              ShowMessage('DATA SAP GAGAL');
              tabel.q1.SQL.Clear;
              tabel.q1.SQL.Add('ROLLBACK');
              tabel.q1.ExecSQL;
              Exit;
            end;

            v_t_lst.Add('no_detailkonfirmasi=' + idkonfirmasi);
            v_t_lst.Add('rev_no=' + tabel.q1.FieldValues['revkode']);

            v_t_url := urlSAPCabang + 'saptemp/terimauang';

            tabel.generalpostservicetotabel;

            jso := TJSONObject.ParseJSONValue(v_t_str_global) as TJSONObject;
            jso := jso.GetValue('values') as TJSONObject;
            status := jso.GetValue('message').Value;

            if LowerCase(status) = 'sukses' then begin
              v_stssap := 'SUKSES';
            end else begin
              v_stssap := 'GAGAL';
            end;
          except
            v_stssap := 'GAGAL';
          end;
        end else begin
          v_stssap := 'SUKSES';
        end;

        if v_stssap = 'GAGAL' then begin
          ShowMessage('SAP GAGAL');
          tabel.q1.SQL.Clear;
          tabel.q1.SQL.Add('ROLLBACK');
          tabel.q1.ExecSQL;
          Exit;
        end;

      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('COMMIT');
      tabel.q1.ExecSQL;
      tabel.qkonfirmasi.active:=false;
      tabel.qkonfirmasi.active:=true;
      tabel.qrekeningkoran.Active:=false;
      tabel.qrekeningkoran.Active:=true;
      hitungkonfirmasi;
      vtpilihan.clear;
      ShowMessage('Data berhasil di pasangkan!');

      tknbayar.Text:='';
      tknsisa.Text:='';
    end else begin
      ShowMessage('Ada kesalahan data konfirmasi pembayaran silahkan hub bagian it!');
      Exit;
    end;
  end;
end;

procedure Tfmenuutama.BitBtn4Click(Sender: TObject);
begin
vtpilihan.Delete;
hitungkonfirmasi;

end;

procedure Tfmenuutama.BitBtn5Click(Sender: TObject);
var nopenjualan,kodeverifikasi,noor,notransaksi:String;  totaltemp,totalasli:real;
namacol,ongkir,cc,katalog,edc,diskon,lainlain,idcustomer,potongan,kodekas,kembalian,saldo,lebihbayar:string;
hedc,hcc,hasil,kelebihan:real;
begin

  if (tkpembayaran.Text='') or (tkpembayaran.Text='0') then begin
   ShowMessage('Silahkan isi pembayaran terlebih dulu!');
   Exit;
  end;

tabel.q1.SQL.Clear;
tabel.q1.SQL.Add('select no_penjualan from relasi_orderdanpenjualan where  no_order='''+tkorder.Text+''' ');
tabel.q1.Active:=true;
if tabel.q1.RecordCount=0 then begin
ShowMessage('No Order tidak berelasi dengan penjualan manapun silahkan hub bag it!');
Exit;
end;

nopenjualan:=tabel.q1.FieldValues['no_penjualan'];
tabel.q1.SQL.Clear;
tabel.q1.SQL.Add('select ifnull(sum(berat*harga),0) as total from detail_pengeluaranstok where no_pengeluaran='''+nopenjualan+''' ');
tabel.q1.Active:=true;
totalasli:=tabel.q1.FieldValues['total'];


tabel.q1.SQL.Clear;
tabel.q1.SQL.Add('select ifnull(sum(berat*harga),0) as total from detail_pengeluaranstok_temp where no_pengeluaran='''+tkorder.Text+''' ');
tabel.q1.Active:=true;
  if (tabel.q1.FieldValues['total'] > 0) and (v_statustombol='disabled') then begin


     totaltemp:=tabel.q1.FieldValues['total'];

    if totalasli<>totaltemp then begin
     ShowMessage('Ada perbedaan antara faktur sementara dan faktur asli silahkan cek kembali!');

     fperbedaanorder.qsementara.SQL.Clear;
     fperbedaanorder.qsementara.SQL.Add('SELECT nama_kain,jenis_warna,harga,pr.berat,pr.berat*harga AS subtotal  '+
     'FROM detail_pengeluaranstok_temp JOIN perincian_pengeluaranstok_temp pr USING(no_Detail) '+
     'JOIN warna w USING(id_Warna) JOIN kain k USING(id_kain) where no_pengeluaran='''+tkorder.Text+''' '+
     'ORDER BY jenis_warna,nama_kain ASC, berat DESC ');
     fperbedaanorder.qsementara.Active:=True;
    // ShowMessage(fperbedaanorder.qsementara.SQL.Text);

     fperbedaanorder.qasli.SQL.Clear;
     fperbedaanorder.qasli.SQL.Add('SELECT nama_kain,jenis_warna,harga,pr.berat,pr.berat*harga AS subtotal  '+
     'FROM detail_pengeluaranstok JOIN perincian_pengeluaranstok pr USING(no_Detail)   '+
     'JOIN warna w USING(id_Warna) JOIN kain k USING(id_kain) where no_pengeluaran='''+nopenjualan+'''   '+
     'ORDER BY jenis_warna,nama_kain ASC, berat DESC');
     fperbedaanorder.qasli.Active:=True;
   //  ShowMessage(fperbedaanorder.qasli.SQL.Text);
     fperbedaanorder.Showmodal;

     Exit;

    end;

  end;

   tabel.q1.SQL.Clear;
         tabel.q1.SQL.Add('select * from customer where nama='''+tkcustomer.Text+''' ');
         tabel.q1.Active:=true;
         idcustomer:=tabel.q1.FieldValues['id_customer'];


  tabel.q1.SQL.Clear;
  tabel.q1.SQL.Add('START TRANSACTION');
  tabel.q1.ExecSQL;

   tabel.q1.SQL.Clear;
   tabel.q1.SQL.Add('update penjualan_kainstok set tanggal=now(),status=1 where no_pengeluaran='''+tkorder.Text+'''  ');
   tabel.q1.ExecSQL;

    if tkongkir.Text = '' then begin
    ongkir :='0';
    end else begin
    ongkir :=  tkongkir.Text;
    end;
    ongkir := stringreplace(ongkir,',','',[rfreplaceall,rfignorecase]);
    ongkir := stringreplace(ongkir,'.','',[rfreplaceall,rfignorecase]);

    if tkkatalog.Text = '' then begin
    katalog:='0';
    end else begin
    katalog := tkkatalog.Text;
    end;

    katalog := stringreplace(katalog,',','',[rfreplaceall,rfignorecase]);
    katalog := stringreplace(katalog,'.','',[rfreplaceall,rfignorecase]);

     if tktotaldiskon.Text = '' then begin
    diskon:='0';
    end else begin
    diskon := tktotaldiskon.Text;
    end;

    diskon := stringreplace(diskon,',','',[rfreplaceall,rfignorecase]);
    diskon := stringreplace(diskon,'.','',[rfreplaceall,rfignorecase]);

    if tpotongan.Text = '' then begin
          potongan:='0';
    end else begin
          potongan:=tpotongan.Text;
    end;
    potongan := stringreplace(potongan,',','',[rfreplaceall,rfignorecase]);
    potongan := stringreplace(potongan,'.','',[rfreplaceall,rfignorecase]);

     if tkkembalian.Text = '' then begin
          kembalian:='0';
    end else begin
          kembalian:=tkkembalian.Text;
    end;

    kembalian := stringreplace(kembalian,',','',[rfreplaceall,rfignorecase]);
    kembalian := stringreplace(kembalian,'.','',[rfreplaceall,rfignorecase]);

    if tksaldo.Text = '' then begin
          saldo:='0';
    end else begin
          saldo:=tksaldo.Text;
    end;
    saldo := stringreplace(saldo,',','',[rfreplaceall,rfignorecase]);
    saldo := stringreplace(saldo,'.','',[rfreplaceall,rfignorecase]);



    if (potongan <>'') and (potongan<>'0')  then  begin

       tabel.q1.SQL.Clear;
       tabel.q1.SQL.Add('insert into uang_customer values(null,0,'''+idcustomer+''','''+potongan+''',now(),'''+v_idkaryawan+''',0,''LUNAS'',''POTONGAN'',8,'''+cbpotongan.Text+''',0,'''+v_nopenjualan+''')');
       tabel.q1.ExecSQL;

       tabel.q1.SQL.Clear;
       tabel.q1.SQL.Add('select max(no) as no from  uang_customer where id_customer='''+idcustomer+''' and jumlah_uang='''+potongan+'''  ');
       tabel.q1.Active:=True;
       notransaksi:=tabel.q1.FieldValues['no'];

       tabel.q1.SQL.Clear;
       tabel.q1.SQL.Add('insert into n_junctpenjualan values(null,'''+notransaksi+''','''+v_nopenjualan+''','''+potongan+''',''POTONGAN'') ');
       tabel.q1.ExecSQL;
    end;



    lebihbayar:='TIDAK';
    vpembayaran.First;
    while not vpembayaran.Eof do begin
      if vpembayaranjenis_pembayaran.Value='TT' then begin
       if (tksaldo.Text <> '0') and  (tksaldo.Text <> '') then begin

             if (StrToFloat(saldo) <= vpembayaranjumlah_uang.Value) and (lebihbayar='TIDAK')  then begin

               kelebihan:=vpembayaranjumlah_uang.Value-StrToFloat(saldo);

//               tabel.q1.SQL.Clear;
//               tabel.q1.SQL.Add('insert into n_junctpenjualan values(null,'''+notransaksi+''','''+v_nopenjualan+''','''+floattostr(kelebihan)+''','''+vpembayaranjenis_pembayaran.Value+''') ');
//               tabel.q1.ExecSQL;

                tabel.q1.SQL.Clear;
                tabel.q1.SQL.Add('insert into n_junctpenjualan values(null,'''+vpembayaranno_transaksi.Value+''','''+v_nopenjualan+''','''+floattostr(kelebihan)+''',''BAYAR PENJUALAN'') ');
                tabel.q1.ExecSQL;

               lebihbayar:='SUDAH';

             end else begin
               tabel.q1.SQL.Clear;
               tabel.q1.SQL.Add('insert into n_junctpenjualan values(null,'''+vpembayaranno_transaksi.Value+''','''+v_nopenjualan+''','''+floattostr(vpembayaranjumlah_uang.Value)+''',''BAYAR PENJUALAN'') ');
               tabel.q1.ExecSQL;

             end;




       end else begin
          tabel.q1.SQL.Clear;
          tabel.q1.SQL.Add('insert into n_junctpenjualan values(null,'''+vpembayaranno_transaksi.Value+''','''+v_nopenjualan+''','''+floattostr(vpembayaranjumlah_uang.Value)+''',''BAYAR PENJUALAN'') ');
          tabel.q1.ExecSQL;

       end;



      end else begin

         if vpembayarannama_bank.Value='BCA' then begin

             tabel.q1.SQL.Clear;
             tabel.q1.SQL.Add('select * from kas_bank where bank=''BCA'' ');
             tabel.q1.Active:=True;
             kodekas:=tabel.q1.FieldValues['kode_kas'];


         end else if vpembayarannama_bank.Value='MANDIRI' then begin
             tabel.q1.SQL.Clear;
             tabel.q1.SQL.Add('select * from kas_bank where bank=''MANDIRI'' ');
             tabel.q1.Active:=True;
             kodekas:=tabel.q1.FieldValues['kode_kas'];

         end else if vpembayarannama_bank.Value='CC' then begin
             tabel.q1.SQL.Clear;
             tabel.q1.SQL.Add('select * from kas_bank where bank=''MANDIRI'' ');
             tabel.q1.Active:=True;
             kodekas:=tabel.q1.FieldValues['kode_kas'];
         end else if vpembayarannama_bank.Value='LAINNYA' then begin
             tabel.q1.SQL.Clear;
             tabel.q1.SQL.Add('select * from kas_bank where bank=''MANDIRI'' ');
             tabel.q1.Active:=True;
             kodekas:=tabel.q1.FieldValues['kode_kas'];
         end else begin
            kodekas:='0';
         end;


         tabel.q1.SQL.Clear;
         tabel.q1.SQL.Add('insert into uang_customer values(null,0,'''+idcustomer+''','''+floattostr(vpembayaranjumlah_uang.Value)+''',now(),'''+v_idkaryawan+''',0,''LUNAS'','''+vpembayaranjenis_pembayaran.Value+''',8,'''+vpembayarannama_bank.Value+''','''+kodekas+''','''+v_nopenjualan+''')');
         tabel.q1.ExecSQL;

         tabel.q1.SQL.Clear;
         tabel.q1.SQL.Add('select max(no) as no from  uang_customer where id_customer='''+idcustomer+''' and jumlah_uang='''+floattostr(vpembayaranjumlah_uang.Value)+'''  ');
         tabel.q1.Active:=True;

         notransaksi:=tabel.q1.FieldValues['no'];

          if (tksaldo.Text <> '0') and  (tksaldo.Text <> '') then begin

             if (StrToFloat(saldo) <= vpembayaranjumlah_uang.Value) and (lebihbayar='TIDAK')  then begin

               kelebihan:=vpembayaranjumlah_uang.Value-StrToFloat(saldo);

               tabel.q1.SQL.Clear;
               tabel.q1.SQL.Add('insert into n_junctpenjualan values(null,'''+notransaksi+''','''+v_nopenjualan+''','''+floattostr(kelebihan)+''','''+vpembayaranjenis_pembayaran.Value+''') ');
               tabel.q1.ExecSQL;
               lebihbayar:='SUDAH';

             end else begin
               tabel.q1.SQL.Clear;
              tabel.q1.SQL.Add('insert into n_junctpenjualan values(null,'''+notransaksi+''','''+v_nopenjualan+''','''+floattostr(vpembayaranjumlah_uang.Value)+''','''+vpembayaranjenis_pembayaran.Value+''') ');
              tabel.q1.ExecSQL;
             end;




          end else begin
          tabel.q1.SQL.Clear;
          tabel.q1.SQL.Add('insert into n_junctpenjualan values(null,'''+notransaksi+''','''+v_nopenjualan+''','''+floattostr(vpembayaranjumlah_uang.Value)+''','''+vpembayaranjenis_pembayaran.Value+''') ');
          tabel.q1.ExecSQL;


          end;




       end;

      vpembayaran.Next;
      end;

     tabel.q1.SQL.Clear;
     tabel.q1.SQL.Add('select * from ongkir where no_transaksi='''+v_nopenjualan+'''  ');
     tabel.q1.Active:=True;
      if tabel.q1.RecordCount > 0 then begin

            tabel.q1.SQL.Clear;
            tabel.q1.SQL.Add('update ongkir set ongkir='''+ongkir+''',edc='''+floattostr(hedc)+''',cc='''+floattostr(hcc)+''',katalog='''+katalog+''',diskon='''+diskon+''' where no_transaksi='''+v_nopenjualan+''' ');
            tabel.q1.ExecSQL;

            tabel.q1.SQL.Clear;
            tabel.q1.SQL.Add('update ongkir set ongkir='''+ongkir+''',edc='''+floattostr(hedc)+''',cc='''+floattostr(hcc)+''',katalog='''+katalog+''',diskon='''+diskon+''' where no_transaksi='''+tkorder.Text+''' ');
            tabel.q1.ExecSQL;

            tabel.q1.SQL.Clear;
            tabel.q1.SQL.Add('select * from  n_penjualan where id_transaksi='''+v_nopenjualan+''' and jenis=''ONGKIR'' ');
            tabel.q1.Active:=True;
            if tabel.q1.RecordCount > 0 then begin
               tabel.q1.SQL.Clear;
               tabel.q1.SQL.Add('update n_penjualan set nominal='''+ongkir+''',id_user='''+v_idkaryawan+''' where id_transaksi='''+v_nopenjualan+''' and jenis=''ONGKIR'' ');
               tabel.q1.ExecSQL;

            end else begin
               tabel.q1.SQL.Clear;
               tabel.q1.SQL.Add('insert into n_penjualan values(0,'''+v_nopenjualan+''',''ONGKIR'','''+ongkir+''',''ONGKIR'',now(),'''+v_idkaryawan+''','''+v_idcustomer+''') ');
               tabel.q1.ExecSQL;
            end;


      end else begin
                      tabel.q1.SQL.Clear;
                      tabel.q1.SQL.Add('insert into ongkir values('''+v_nopenjualan+''','''+ongkir+''','''+katalog+''','''+floattostr(hcc)+''','''+floattostr(hedc)+''','''+diskon+''')  ');
                      tabel.q1.ExecSQL;

                      tabel.q1.SQL.Clear;
                      tabel.q1.SQL.Add('select * from ongkir where no_transaksi='''+noor+'''  ');
                      tabel.q1.Active:=True;
                          if tabel.q1.RecordCount >0 then begin
                             tabel.q1.SQL.Clear;
                            tabel.q1.SQL.Add('update ongkir set ongkir='''+ongkir+''',edc='''+floattostr(hedc)+''',cc='''+floattostr(hcc)+''',katalog='''+katalog+''',diskon='''+diskon+''' where no_transaksi='''+tkorder.Text+''' ');
                            tabel.q1.ExecSQL;

                          end else begin
                             tabel.q1.SQL.Clear;
                              tabel.q1.SQL.Add('insert into ongkir values('''+v_nopenjualan+''','''+ongkir+''','''+katalog+''','''+floattostr(hcc)+''','''+floattostr(hedc)+''','''+diskon+''')  ');
                              tabel.q1.ExecSQL;
                          end;

                           tabel.q1.SQL.Clear;
                          tabel.q1.SQL.Add('select * from  n_penjualan where id_transaksi='''+v_nopenjualan+''' and jenis=''ONGKIR'' ');
                          tabel.q1.Active:=True;
                          if tabel.q1.RecordCount > 0 then begin
                             tabel.q1.SQL.Clear;
                             tabel.q1.SQL.Add('update n_penjualan set nominal='''+ongkir+''',id_user='''+v_idkaryawan+''' where id_transaksi='''+v_nopenjualan+''' and jenis=''ONGKIR'' ');
                             tabel.q1.ExecSQL;

                          end else begin
                             tabel.q1.SQL.Clear;
                             tabel.q1.SQL.Add('insert into n_penjualan values(0,'''+v_nopenjualan+''',''ONGKIR'','''+ongkir+''',''ONGKIR'',now(),'''+v_idkaryawan+''','''+v_idcustomer+''') ');
                             tabel.q1.ExecSQL;
                          end;


      end;



            if (tkkatalog.Text <> '0') and  (tkkatalog.Text <> '') then begin

                          tabel.q1.SQL.Clear;
                          tabel.q1.SQL.Add('select * from  n_penjualan where id_transaksi='''+v_nopenjualan+''' and jenis=''KATALOG'' ');
                          tabel.q1.Active:=True;
                          if tabel.q1.RecordCount > 0 then begin
                             tabel.q1.SQL.Clear;
                             tabel.q1.SQL.Add('update n_penjualan set nominal='''+katalog+''',id_user='''+v_idkaryawan+''' where id_transaksi='''+v_nopenjualan+''' and jenis=''KATALOG'' ');
                             tabel.q1.ExecSQL;

                          end else begin
                              tabel.q1.SQL.Clear;
                            tabel.q1.SQL.Add('insert into n_penjualan values(0,'''+v_nopenjualan+''',''KATALOG'','''+katalog+''',''KATALOG'',now(),'''+v_idkaryawan+''','''+v_idcustomer+''') ');
                            tabel.q1.ExecSQL;
                          end;




            end;

              if (StrToFloat(kembalian) > 0) and  (tkkembalian.Text <> '') then begin

                          tabel.q1.SQL.Clear;
                          tabel.q1.SQL.Add('select * from  n_penjualan where id_transaksi='''+v_nopenjualan+''' and jenis=''KEMBALIAN'' ');
                          tabel.q1.Active:=True;
                          if tabel.q1.RecordCount > 0 then begin
                             tabel.q1.SQL.Clear;
                             tabel.q1.SQL.Add('update n_penjualan set nominal='''+kembalian+''',id_user='''+v_idkaryawan+''' where id_transaksi='''+v_nopenjualan+''' and jenis=''KEMBALIAN'' ');
                             tabel.q1.ExecSQL;

                          end else begin
                              tabel.q1.SQL.Clear;
                            tabel.q1.SQL.Add('insert into n_penjualan values(0,'''+v_nopenjualan+''',''KEMBALIAN'','''+kembalian+''',''KEMBALIAN'',now(),'''+v_idkaryawan+''','''+v_idcustomer+''') ');
                            tabel.q1.ExecSQL;
                          end;




            end;



                       tabel.q1.SQL.Clear;
                       tabel.q1.SQL.Add('select * from piutang where no_piutang='''+v_nopenjualan+''' ');
                       tabel.q1.Active:=true;
                       if tabel.q1.RecordCount > 0 then begin
                          tabel.q1.SQL.Clear;
                          tabel.q1.SQL.Add('delete from piutang where no_piutang='''+v_nopenjualan+''' ');
                          tabel.q1.ExecSQL;

                          tabel.q1.SQL.Clear;
                          tabel.q1.SQL.Add('delete from perincian_piutang where no_jual='''+v_nopenjualan+''' ');
                          tabel.q1.ExecSQL;
                       end;

                       tabel.q1.SQL.Clear;
                       tabel.q1.SQL.Add('insert into piutang values('''+v_nopenjualan+''',now(),'''+idcustomer+''',0,'' '')');
                       tabel.q1.ExecSQL;


                      tabel.q1.SQL.Clear;
                      tabel.q1.SQL.Add('select ifnull(sum(harga*(select sum(berat) from perincian_pengeluaranstok pp where pp.no_detail=dpk.no_detail)),0) as harga, '+
                      '(select sum(berat) from perincian_pengeluaranstok pp where pp.no_detail=dpk.no_detail) as berat '+
                      ' from detail_pengeluaranstok dpk join penjualan_kainstok pk using(no_pengeluaran) join kain k using(id_kain) '+
                      ' join warna w using(id_warna)  where pk.no_pengeluaran='''+v_nopenjualan+''' '+
                      ' group by pk.no_pengeluaran ');
                      tabel.q1.Active:=true;

                      if tkdiskon.Text <> '' then begin
                         hasil:=tabel.q1.FieldValues['harga']-strtofloat(diskon);

                         tabel.q1.SQL.Clear;
                         tabel.q1.SQL.Add('insert into uang_customer values(null,0,'''+idcustomer+''','''+diskon+''',now(),'''+v_idkaryawan+''',0,''LUNAS'',''DISKON'',8,'''',0,'''+v_nopenjualan+''')');
                         tabel.q1.ExecSQL;

                         tabel.q1.SQL.Clear;
                         tabel.q1.SQL.Add('select max(no) as no from  uang_customer where id_customer='''+idcustomer+''' and jumlah_uang='''+diskon+'''  ');
                         tabel.q1.Active:=True;
                         notransaksi:=tabel.q1.FieldValues['no'];

                         tabel.q1.SQL.Clear;
                         tabel.q1.SQL.Add('insert into n_junctpenjualan values(null,'''+notransaksi+''','''+v_nopenjualan+''','''+diskon+''',''DISKON'') ');
                         tabel.q1.ExecSQL;


                      end else begin
                        hasil:=tabel.q1.FieldValues['harga'];
                      end;

                          tabel.q1.SQL.Clear;
                          tabel.q1.SQL.Add('insert into perincian_piutang values(0,'''+v_nopenjualan+''',now(),'''+floattostr(hasil)+''',0,0,0,'''+floattostr(hasil)+''',0,0,'''+idcustomer+''',''PEMBELIAN'',''WARNA'',now(),0)');
                          tabel.q1.ExecSQL;

                          tabel.q1.SQL.Clear;
                          tabel.q1.SQL.Add('update edit_penjualan set status=''SELESAI'' where no_penjualan='''+v_nopenjualan+''' ');
                          tabel.q1.ExecSQL;
                     if v_view='INSERT' then begin

                              tabel.q1.SQL.Clear;
                              tabel.q1.SQL.Add('select * from  relasi_orderdanpenjualan where no_penjualan='''+v_nopenjualan+''' ');
                              tabel.q1.Active:=True;
                              if tabel.q1.RecordCount = 0 then begin
                                  tabel.q1.SQL.Clear;
                                  tabel.q1.SQL.Add('insert into relasi_orderdanpenjualan values(0,'''+tkorder.Text+''','''+v_nopenjualan+''')');
                                  tabel.q1.ExecSQL;

                                  tabel.q1.SQL.Clear;
                                  tabel.q1.SQL.Add('update order_pembelian set status_order=''SELESAI FAKTUR'' where no_order='''+tkorder.Text+''' ');
                                  tabel.q1.ExecSQL;
                              end;

                               tabel.q1.SQL.Clear;
                               tabel.q1.SQL.Add('update order_pembelian set status_order=''SELESAI FAKTUR'' where no_order='''+tkorder.Text+''' ');
                               tabel.q1.ExecSQL;



                               kodeverifikasi:=IntToStr(Random(9))+IntToStr(Random(9))+IntToStr(Random(9));

                               tabel.q1.SQL.Clear;
                               tabel.q1.SQL.Add('select * from kode_verifikasipenjualan where no_penjualan='''+v_nopenjualan+''' ');
                               tabel.q1.Active:=True;

                               if tabel.q1.RecordCount = 0 then begin
                                  tabel.q1.SQL.Clear;
                                  tabel.q1.SQL.Add('insert into kode_verifikasipenjualan values('''+v_nopenjualan+''','''+kodeverifikasi+''',0) ');
                                  tabel.q1.ExecSQL;

                               end;

                       end;




  try
       cetakfaktur;
       if cbprint.Checked = true then begin
             cetaksj1;
       end;
        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('COMMIT');
        tabel.q1.ExecSQL;
  except
        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('ROLLBACK');
        tabel.q1.ExecSQL;
   ShowMessage('Ada kesalahan sistem silahkan coba sekali lagi!');
   Exit;

  end;

tabel.qfakturasli.Active:=false;
tabel.qfakturasli.Active:=True;


tabel.qdetailpenjualan.Active:=false;
tabel.qdetailpenjualan.Active:=True;
tkorder.Clear;
tkcustomer.Clear;
tkdiskon.Clear;
tkongkir.Clear;
tktotaldiskon.Clear;
tktotaltagihan.Clear;
tksaldo.Text:='0';
tkkurangbayar.Text:='0';
tktagihan.Clear;
tkkatalog.Clear;
cbjenis.ItemIndex:=-1;
tkartu.Clear;
cbbank.ItemIndex:=-1;
tuang.Clear;
vpembayaran.Clear;
cbpotongan.ItemIndex:=-1;
tpotongan.Clear;
tkpembayaran.Clear;
tkkembalian.Clear;
tktotaltagihan.Text:='0';
cbprint.Checked:=false;
ShowMessage('Data berhasil di simpan!');





end;

procedure Tfmenuutama.BitBtn7Click(Sender: TObject);
begin
tabel.qkonfirmasi.Active:=false;
tabel.qkonfirmasi.Active:=true;

end;

procedure Tfmenuutama.BitBtn8Click(Sender: TObject);
var pesan,nama,jumlah:string;
begin
if qimportkasbank.RecordCount = 0 then begin
ShowMessage('tidak ada data kas bank!');
end;

end;

procedure Tfmenuutama.BitBtn9Click(Sender: TObject);
begin
tabel.qrekeningkoran.Active:=false;
tabel.qrekeningkoran.Active:=True;
end;

procedure Tfmenuutama.Button10Click(Sender: TObject);
var pesan,notransaksi:string;
begin
notransaksi:=qkassementarano_transaksi.Value;
 tabel.q1.SQL.Clear;
 tabel.q1.sql.Add('select * from  n_kassementara where no_transaksi='''+qkassementarano_transaksi.Text+''' and status=1 ');
 tabel.q1.Active:=True;
 if tabel.q1.RecordCount > 0 then begin

  ShowMessage('Data tidak bisa di hapus karena sudah acc akunting!');
  Exit;
 end;

pesan:='Apakah anda yakin akan membatalkan transaksi kas ? ';
   if messagedlg(pesan,mtconfirmation,[mbyes,mbno],0)=mryes then
   begin
      tabel.q1.SQL.Clear;
      tabel.q1.sql.Add('delete from n_kassementara where no_transaksi='''+qkassementarano_transaksi.Text+''' ');
      tabel.q1.ExecSQL;

      ShowMessage('Data berhasil di hapus');
      bersihkassementara;
   end;

end;

procedure Tfmenuutama.Button11Click(Sender: TObject);

var status,notransaksi:String;
begin
 status:=qkassementaranama_perkiraan.Value;
 notransaksi:=qkassementarano_transaksi.Value;
 tabel.q1.SQL.Clear;
 tabel.q1.sql.Add('select * from  n_kassementara where no_transaksi='''+qkassementarano_transaksi.Text+''' and status=1 ');
 tabel.q1.Active:=True;
 if tabel.q1.RecordCount > 0 then begin

  ShowMessage('Data tidak bisa di Edit karena sudah acc akunting!');
  qkassementara.Active:=false;
  qkassementara.Active:=true;
  Exit;
 end;

    if status='PENERIMAAN' then begin
     ComboBox1.ItemIndex:=0;
    end else begin
     ComboBox1.ItemIndex:=1;
    end;

    dtanggal.Date:=qkassementaratanggal.Value;
    tterima.Text:=qkassementaradari.Value;
    tkas.Text:=qkassementaranama_kas.Value;
    tperkiraan.Text:=qkassementaranama_perkiraan.Value;
    tjumlah.Text:=floattostr(qkassementarajumlah.Value);
    jmledit:=qkassementarajumlah.Value;
    mcatatan.Text:=qkassementaraketerangan.Value;
  //  tkurs.Text:=
    cxGrid12.Enabled:=false;
    Button12.Caption:='EDIT';
end;

procedure Tfmenuutama.Button12Click(Sender: TObject);
var kodekas,kodeperkiraan,tanggal,srupiah,status:String;
newkd,kode,tgl,bln,thn,tglx,kd,potkd,st,tanggalawal,tgk:String;
 i,n,nourut:integer; jml:real;
begin
  srupiah := tjumlah.text;
srupiah := stringreplace(sRupiah,',','',[rfreplaceall,rfignorecase]);
srupiah := stringreplace(srupiah,'.','',[rfreplaceall,rfignorecase]);
if ComboBox1.Text = '' then begin
        showmessage('Jenis harus diisi!');
        ComboBox1.SetFocus;
  end else if tterima.Text = '' then begin
        showmessage('Terima dari harus diisi!');
        tterima.SetFocus;
  end else if tkas.Text = '' then begin
        showmessage('Kas harus diisi!');
        tkas.SetFocus;
  end else if tperkiraan.Text = '' then begin
        showmessage('Perkiraan harus diisi!');
        tperkiraan.SetFocus;
  end else if tjumlah.Text = '' then begin
        showmessage('Jumlah harus diisi!');
        tjumlah.SetFocus;
  end else begin
    tabel.q1.SQL.Clear;
    tabel.q1.SQL.Add('select * from kas_bank where nama_kas='''+tkas.Text+''' ');
    tabel.q1.Active:=true;
    if tabel.q1.RecordCount = 0 then begin
    showmessage('Kas Bank tidak terdaftar didatabase!');
    tkas.SetFocus;
    end else begin
    kodekas:=tabel.q1.FieldValues['kode_kas'];
    tabel.q1.SQL.Clear;
    tabel.q1.SQL.Add('select * from perkiraan where nama_perkiraan ='''+tperkiraan.Text+''' ');
    tabel.q1.Active:=true;

      if tabel.q1.RecordCount = 0 then begin
      showmessage('Perkiraan tidak terdaftar didatabase!');
      tperkiraan.SetFocus;
      end else begin
       kodeperkiraan:=tabel.q1.FieldValues['kode_perkiraan'];
       tanggal:=formatdatetime('yyyy-mm-dd',dtanggal.Date);
       tgk:=formatdatetime('dd-MMM-yyyy',UniQuery1tanggal.Value);
     //  if tacc.text='BELUM DI ACC' then status:='0';

       if button12.Caption='EDIT' then begin

        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('select * from  n_kassementara  where no_transaksi='''+qkassementarano_transaksi.Value+''' and jumlah='''+floattostr(jmledit)+''' ');
        tabel.q1.Active:=True;
        if tabel.q1.RecordCount > 0 then begin
          tabel.q1.SQL.Clear;
          tabel.q1.SQL.Add('update  n_kassementara set tanggal='''+tanggal+''',jenis='''+ComboBox1.Text+''',dari='''+tterima.Text+''',kode_kas='''+kodekas+''',jumlah='''+srupiah+''',kode_perkiraan='''+kodeperkiraan+''',keterangan='''+mcatatan.Text+''' where no_transaksi='''+qkassementarano_transaksi.Text+''' ');
          tabel.q1.ExecSQL;
          showmessage('Data berhasil di update');
          uniquery1.Active:=false;
          uniquery1.Active:=true;
          uniquery1.Locate('tanggal',tgk,[]);

           bersihkassementara;
        end else begin
           ShowMessage('Data gagal di edit silahkan hub bag it!');
           Exit;
        end;

       end else begin

        generatekassementara;

        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('insert into n_kassementara values('''+nokassementara+''','''+tanggal+''','''+ComboBox1.Text+''', '''+tterima.Text+''', '''+kodekas+''','''+srupiah+''','''+kodeperkiraan+''','''+mcatatan.Text+''',''0'','''') ');
        tabel.q1.ExecSQL;





        showmessage('Data berhasil di simpan');
        bersihkassementara;
        end;




      end;

    end;


  end;
end;

procedure Tfmenuutama.Button13Click(Sender: TObject);
var
nourut:string;
tanggal,srupiah:string;
nama,saldo:string;
begin
nama:=tabel.qsaldopiutangnama.Value;
saldo:=formatcurr('#,##',tabel.qsaldopiutangtotal.Value);
ftransferuangfix.tnama.Text:=nama;
ftransferuangfix.tsaldo.Text:=saldo;
//ftransferuangfix.trek.SetFocus;
ftransferuangfix.ShowModal;

{if qpindahkas.RecordCount <> 0 then
begin
  qpindahkas.First;
  while not qpindahkas.Eof do
  begin
    kodebukubesar;

      srupiah := qpindahkasjumlah.Text;
      srupiah := stringreplace(sRupiah,',','',[rfreplaceall,rfignorecase]);
      srupiah := stringreplace(srupiah,'.','',[rfreplaceall,rfignorecase]);

    tabel.q1.SQL.Clear;
    tabel.q1.SQL.Add('select ifnull(max(no_urut),0) + 1 from buku_besar');
    tabel.q1.Open;
    nourut:=tabel.q1.Fields[0].AsString;
    tanggal:=FormatDateTime('yyyy-MM-dd',qpindahkastanggal.Value);

    tabel.q1.SQL.Clear;
   tabel.q1.SQL.Add('insert into buku_besar values('''+v_kodetransaksi+''','''+tanggal+''','''+qpindahkasjenis.Text+''','''+qpindahkasdari.Text+''','''','''','''+qpindahkaskode_kas.Text+''','''+srupiah+''','''+qpindahkaskode_perkiraan.Text+''','+
                    ' '''+qpindahkasketerangan.Text+''',0,'''+tanggal+''','''+nourut+''')');
   tabel.q1.ExecSQL;

   tabel.q1.SQL.Clear;
   tabel.q1.SQL.Add('insert into transaksi_bukubesar values(0,'''+v_kodetransaksi+''','''+qpindahkasno_transaksi.Text+''', ''KAS SEMENTARA'')');
   tabel.q1.ExecSQL;

   tabel.q1.SQL.Clear;
   tabel.q1.SQL.Add('update n_kassementara set status=1 where no_transaksi='''+qpindahkasno_transaksi.Text+''' ');
   tabel.q1.ExecSQL;

    qpindahkas.Next;
  end;

  qpindahkas.Active :=false;
  qpindahkas.Active :=True;
end;    }
end;

procedure Tfmenuutama.Button14Click(Sender: TObject);
var pesan,noclosing:string;
begin
pesan:='Apakah anda yakin Akan Membatalkan Pengembalian uang melalui transfer untuk customer '+tabel.qkembalidananama.Value+' ? ';
             if messagedlg(pesan,mtconfirmation,[mbyes,mbno],0)=mryes then
             begin
              noclosing:=IntToStr(tabel.qkembalidanano.Value);

              tabel.q1.SQL.Clear;
              tabel.q1.SQL.Add('select * from n_piutanglainlain where no='''+noclosing+'''  ');
              tabel.q1.Active:=True;
              if tabel.q1.RecordCount > 0 then begin
              tabel.q1.SQL.Clear;
              tabel.q1.SQL.Add('delete from n_piutanglainlain where no='''+noclosing+''' ');
              tabel.q1.ExecSQL;
              ShowMessage('Data berhasil di hapus!');
              tabel.qkembalidana.Active:=false;
              tabel.qkembalidana.Active:=True;
              end;



             end;

end;

procedure Tfmenuutama.Button15Click(Sender: TObject);
var
nourut:string;
tanggal,srupiah:string;
nama,saldo:string;
begin
nama:=tabel.qsaldopiutangnama.Value;
saldo:=formatcurr('#,##',tabel.qsaldopiutangtotal.Value);
fpengeluaranuang.tnama.Text:=nama;
fpengeluaranuang.tsaldo.Text:=saldo;
fpengeluaranuang.ShowModal;

end;

procedure Tfmenuutama.Button16Click(Sender: TObject);
var
kata:TstringList;
kode_kas:string;
begin
if ComboBox2.Text='' then begin
ShowMessage('Silahkan Pilih pilihan rekening');
Exit;
end;
      kata:=TstringList.Create;
     split(ComboBox2.Text,'#',kata);
     tabel.q1.SQL.Clear;
     tabel.q1.SQL.Add('select * from kas_bank where no_rekening='''+kata[0]+''' ');
     tabel.q1.Active:=True;
     kode_kas:=tabel.q1.FieldValues['kode_kas'];
     if ComboBox2.Text <> '' then begin

       tabel.qkonfirmasi.SQL.Clear;
       tabel.qkonfirmasi.SQL.Add('SELECT kp.no AS NO,kp.no AS nokonfirmasi,kp.no_order,IFNULL(c.nama,c2.nama) AS nama,atas_nama,jumlah_uang,kp.tanggal_transfer AS tanggal,bank,u.nama AS admin,  '+
       ' IFNULL(ca.catatan,'''') AS catatan,npo.no_pesanan,kp.`id_karyawan` AS id_user_konfirmasi FROM   '+
       ' detail_konfirmasipembayaran kp LEFT JOIN order_pembelian op USING(no_order) LEFT  JOIN customer c ON c.id_customer=op.id_customer  '+
       ' LEFT JOIN user u ON u.`id_user`=op.id_karyawan                                                                            '+
       ' LEFT JOIN y_relasi_konfirmasidanmutasi yr ON yr.id_konfirmasi=kp.no                                                        '+
       ' LEFT JOIN catatan_admin ca ON op.no_order=ca.`no_order`                                                                     '+
       ' LEFT JOIN n_pemasangan_olshop npo ON kp.no_order=npo.no_order                                                               '+
       ' LEFT JOIN s_penjualan_katalog sp ON sp.no_penjualan=kp.no_order                                                              '+
       ' LEFT JOIN customer c2 ON c2.id_customer=sp.id_customer                                                                        '+
       ' WHERE yr.no IS NULL AND kp.tanggal_transfer >=(SELECT tanggal FROM tgl_awalkonfirmasi) AND jumlah_uang !=0  and kp.kode_kas='''+kode_kas+'''                   '+
       ' AND kp.no NOT IN (SELECT no_konfirmasi FROM n_hapus_konfirmasi) ORDER BY kp.tanggal_transfer ASC ');
       tabel.qkonfirmasi.Active:=True;

//       tabel.qrekeningkoran.SQL.Clear;
//       tabel.qrekeningkoran.SQL.Add('select *,kbi.jumlah-ifnull(uc.jml,0) as sisa,if(status_tanggal=''PENDING'',''PENDING'',tanggal) as tanggal_sts  '+
//       'from kas_bank_import kbi JOIN kas_bank kb ON kb.kode_kas=kbi.kode_kas left join (select no_kasbank,sum(jumlah_uang) as jml from uang_customer group by no_kasbank) as  '+
//       ' uc on uc.no_kasbank=kbi.id_transaksi left join y_pemasanganmanual yp on yp.id_rekeningkoran=kbi.id_transaksi where  kbi.tanggal >= (select tanggal from tgl_awalkonfirmasi) and mutasi=''CR'' and yp.id_rekeningkoran is null and kb.kode_kas='''+kode_kas+'''  group by id_transaksi having sisa >0 order by sisa');
//       tabel.qrekeningkoran.Active:=True;

       tabel.qrekeningkoran.SQL.Clear;
       tabel.qrekeningkoran.SQL.Add('select kbi.id_transaksi,kbi.tanggal,kbi.keterangan,kbi.keterangan2,kbi.jumlah,no_rekening,bank,kbi.jumlah-ifnull(uc.jml,0) as sisa, '+
       ' if(status_tanggal=''PENDING'',''PENDING'',tanggal) as tanggal_sts                  '+
       ' from kas_bank_import kbi join kas_bank kb on kb.kode_kas=kbi.kode_kas left join      '+
       ' (select no_kasbank,sum(jumlah_uang) as jml from uang_customer group by no_kasbank) as   '+
       ' uc on uc.no_kasbank=kbi.id_transaksi                                              '+
       ' left join y_pemasanganmanual yp on yp.id_rekeningkoran=kbi.id_transaksi              '+
       ' where  mutasi=''CR'' AND ((kbi.tanggal >= (SELECT tanggal FROM tgl_awalkonfirmasi))        '+
       ' OR (SUBSTR(kbi.tanggal,1,10) = ''2010-01-01'')) and kb.kode_kas='''+kode_kas+''' AND yp.id_rekeningkoran IS NULL GROUP BY id_transaksi HAVING sisa >0 ORDER BY sisa ');
//       showmessage(tabel.qrekeningkoran.sql.text);
       tabel.qrekeningkoran.Active:=True;


     end;

end;

procedure Tfmenuutama.Button17Click(Sender: TObject);
begin
       tabel.qkonfirmasi.SQL.Clear;
       tabel.qkonfirmasi.SQL.Add('SELECT kp.no AS NO,kp.no AS nokonfirmasi,kp.no_order,IFNULL(c.nama,c2.nama) AS nama,atas_nama,jumlah_uang,kp.tanggal_transfer AS tanggal,bank,u.nama AS admin,  '+
       ' IFNULL(ca.catatan,'''') AS catatan,npo.no_pesanan,kp.`id_karyawan` AS id_user_konfirmasi FROM   '+
       ' detail_konfirmasipembayaran kp LEFT JOIN order_pembelian op USING(no_order) LEFT  JOIN customer c ON c.id_customer=op.id_customer  '+
       ' LEFT JOIN user u ON u.`id_user`=op.id_karyawan                                                                            '+
       ' LEFT JOIN y_relasi_konfirmasidanmutasi yr ON yr.id_konfirmasi=kp.no                                                        '+
       ' LEFT JOIN catatan_admin ca ON op.no_order=ca.`no_order`                                                                     '+
       ' LEFT JOIN n_pemasangan_olshop npo ON kp.no_order=npo.no_order                                                               '+
       ' LEFT JOIN s_penjualan_katalog sp ON sp.no_penjualan=kp.no_order                                                              '+
       ' LEFT JOIN customer c2 ON c2.id_customer=sp.id_customer                                                                        '+
       ' WHERE yr.no IS NULL AND kp.tanggal_transfer >=(SELECT tanggal FROM tgl_awalkonfirmasi) AND jumlah_uang !=0             '+
       ' AND kp.no NOT IN (SELECT no_konfirmasi FROM n_hapus_konfirmasi) ORDER BY kp.tanggal_transfer ASC ');
       tabel.qkonfirmasi.Active:=True;

       tabel.qrekeningkoran.SQL.Clear;
       tabel.qrekeningkoran.SQL.Add('select kbi.id_transaksi,kbi.tanggal,kbi.keterangan,kbi.keterangan2,kbi.jumlah,no_rekening,bank,kbi.jumlah-ifnull(uc.jml,0) as sisa, '+
       ' if(status_tanggal=''PENDING'',''PENDING'',tanggal) as tanggal_sts                  '+
       ' from kas_bank_import kbi join kas_bank kb on kb.kode_kas=kbi.kode_kas left join      '+
       ' (select no_kasbank,sum(jumlah_uang) as jml from uang_customer group by no_kasbank) as   '+
       ' uc on uc.no_kasbank=kbi.id_transaksi                                              '+
       ' left join y_pemasanganmanual yp on yp.id_rekeningkoran=kbi.id_transaksi              '+
       ' where  mutasi=''CR'' AND ((kbi.tanggal >= (SELECT tanggal FROM tgl_awalkonfirmasi))        '+
       ' OR (SUBSTR(kbi.tanggal,1,10) = ''2010-01-01''))  AND yp.id_rekeningkoran IS NULL GROUP BY id_transaksi HAVING sisa >0 ORDER BY sisa ');
       tabel.qrekeningkoran.Active:=True;
end;

procedure Tfmenuutama.Button18Click(Sender: TObject);
var tanggaltransfer,pesan,srupiah,idkonfirmasi,idrekeningkoran,idcustomer,iduangcustomer,kodekas,namacustomer,kodeperincian:string;
jumlahuang,totaluang:real;
nourut,idkonfirmasi2,i:Integer;
ABookmarks: array of TBookmark;
  AFocusedRecord: TcxCustomGridRecord;
begin
pesan:='Apakah Anda yakin akan memasangkan data rekening koran dan konfirmasi pembayaran ? ';
       if messagedlg(pesan,mtconfirmation,[mbyes,mbno],0)=mryes then
       begin

                if tabel.qrekomendasi.RecordCount = 0 then begin
                 ShowMessage('Silahkan pilih Data rekening koran!');
                 Exit;
                end;


                   try
                   tabel.qrekomendasi.First;
                  totaluang:=0;
                     ABookmarks := nil;
                    SetLength(ABookmarks, cxGrid18DBTableView1.Controller.SelectedRecordCount);
                    AFocusedRecord := cxGrid18DBTableView1.Controller.FocusedRecord;
//                  while not tabel.qrekomendasi.eof do begin
                    for I := 0 to cxGrid18DBTableView1.Controller.SelectedRecordCount - 1 do
                    begin
                      cxGrid18DBTableView1.Controller.SelectedRecords[I].Focused := true;
                      ABookmarks[I] := cxGrid18DBTableView1.DataController.DataSet.GetBookmark;


                   srupiah := dbtext10.Caption;
                   srupiah := stringreplace(sRupiah,',','',[rfreplaceall,rfignorecase]);
                   srupiah := stringreplace(srupiah,'.','',[rfreplaceall,rfignorecase]);

                  idkonfirmasi:=tabel.qrekomendasino.Text;
                  idkonfirmasi2:=tabel.qrekomendasino.Value;
                  namacustomer:=tabel.qrekomendasicustomer.Value;
                  idcustomer:=tabel.qrekomendasiid_customer.Text;
                  kodekas:=tabel.qrekomendasikode_kas.Text;
                  tanggaltransfer:=formatdatetime('yyyy-mm-dd',tabel.qrekomendasitanggal_transfer.Value);
//                   ShowMessage(idkonfirmasi);
//                    if tabel.qrekomendasipilih.Value = 'True' then
//                    begin


                  tabel.q1.SQL.Clear;
                  tabel.q1.SQL.Add('START TRANSACTION');
                  tabel.q1.ExecSQL;


                  idrekeningkoran:=tabel.qrekomendasiid_transaksi.text;
                  jumlahuang:=tabel.qrekomendasijumlah_uang.Value;
                  totaluang:=totaluang+jumlahuang;

                    tabel.q1.SQL.Clear;
                     tabel.q1.SQL.Add('select * from kas_bank_import where id_transaksi='''+idrekeningkoran+''' ');
                     tabel.q1.Active:=True;
                     kodekas:=tabel.q1.FieldValues['kode_kas'];

                     tabel.q1.SQL.Clear;
                     tabel.q1.SQL.Add('insert into uang_customer values(0,'''+idrekeningkoran+''','''+idcustomer+''','''+floattostr(jumlahuang)+''',now(),'''+v_idkaryawan+''','''+idkonfirmasi+''',''LUNAS'',''TRANSFER'',8,'''','''+kodekas+''','''') ');
                     tabel.q1.ExecSQL;

                     tabel.q1.SQL.Clear;
                     tabel.q1.SQL.Add('select max(no) as no from uang_customer ');
                     tabel.q1.Active:=True;
                     iduangcustomer:=tabel.q1.FieldValues['no'];

//                      kodebukubesar;
//                     tabel.q1.SQL.Clear;
//                     tabel.q1.SQL.Add('select ifnull(max(no_urut),0) as no from buku_besar');
//                     tabel.q1.Active:=true;
//
//                    if tabel.q1.RecordCount > 0 then begin
//                        nourut:=tabel.q1.FieldValues['no']+1;
//                    end else begin
//                        nourut:=1;
//                    end;

                     tabel.q1.SQL.Clear;
                     tabel.q1.SQL.Add('insert into y_relasi_konfirmasidanmutasi values(0,'''+inttostr(idkonfirmasi2)+''','''+idrekeningkoran+''',now(),'''+v_idkaryawan+''') ');
                     tabel.q1.ExecSQL;
//                    end;



                  end;
                  AFocusedRecord.Focused := true;
//                   tabel.qrekomendasi.Next;
//                  end;

                  tabel.q1.SQL.Clear;
                  tabel.q1.SQL.Add('COMMIT');
                  tabel.q1.ExecSQL;

                  tabel.qrekomendasi.active:=false;
                  tabel.qrekomendasi.active:=true;
                  tabel.qrekeningkoran.Active:=false;
                  tabel.qrekeningkoran.Active:=true;
                  tabel.qkonfirmasi.Active:=false;
                  tabel.qkonfirmasi.Active:=true;
                  ShowMessage('Data berhasil di pasangkan!');

                  except
                    ShowMessage('Ada kesalahan data konfirmasi pembayaran silahkan hub bagian it!');
                   Exit;
                  end;








   end;
end;

procedure Tfmenuutama.Button19Click(Sender: TObject);
var tanggal:string;
begin
tanggal:=formatdatetime('yyyy-mm-dd',cxDateEdit2.Date);
tabel.qpemasanganmanual.sql.Clear;
tabel.qpemasanganmanual.SQL.Add('SELECT yp.no as idxno,no_rekening,bank,nominal,tanggal_pemasangan,kategori,yp.keterangan,u.nama AS admin '+
'FROM y_pemasanganmanual yp JOIN kas_bank_import kbi ON kbi.id_transaksi=yp.id_rekeningkoran '+
'JOIN kas_bank kb ON kb.kode_kas=kbi.kode_kas JOIN user u ON u.id_user=yp.id_karyawan where cast(tanggal_pemasangan as date)='''+tanggal+''' ');
tabel.qpemasanganmanual.Active:=true;
//ShowMessage(tabel.qpemasanganmanual.SQL.Text);

end;

procedure Tfmenuutama.Button1Click(Sender: TObject);
begin
fimportolshop.Show;
{tabel.q1.SQL.Clear;
tabel.q1.SQL.Add('select ifnull(sum(jumlah),0) as jml from kas_bank_import where mutasi=''CR'' ');
tabel.q1.Active:=True;
cred:=tabel.q1.FieldValues['jml'];
tabel.q1.SQL.Clear;
tabel.q1.SQL.Add('select ifnull(sum(jumlah),0) as jml from kas_bank_import where mutasi=''DB'' ');
tabel.q1.Active:=True;
dbit:=tabel.q1.FieldValues['jml'];
total:=cred-dbit;

totaluser:=StrToFloat(Edit1.Text);

if total<>totaluser then begin
 ShowMessage('total uang di rekening koran dan data import beda silahkan cek kembali!');
 Exit;

end else begin
 tabel.q1.SQL.Clear;
 tabel.q1.sql.Add('START TRANSACTION');
 tabel.q1.ExecSQL;

 tabel.q1.SQL.Clear;
 tabel.q1.sql.Add('update kas_bank_import set status_pakai=''BELUM DI PAKAI'' where status_pakai=''TUNGGU VERIFIKASI'' and kode_kas=''7'' ');
 tabel.q1.ExecSQL;

  tabel.q1.SQL.Clear;
  tabel.q1.sql.Add('select * from vt_stsimport');
  tabel.q1.Active:=True;
  if tabel.q1.RecordCount >0 then begin
   tabel.q1.SQL.Clear;
   tabel.q1.sql.Add('delete from vt_stsimport');
   tabel.q1.ExecSQL;

  end;

  tabel.q1.SQL.Clear;
 tabel.q1.sql.Add('COMMIT');
 tabel.q1.ExecSQL;
 ShowMessage('Data import berhasil di verifikasi');
 qimportkasbank.Active:=false;
 qimportkasbank.Active:=True;
end;
        }



end;

procedure Tfmenuutama.Button20Click(Sender: TObject);
begin
tabel.qpemasanganmanual.sql.Clear;
tabel.qpemasanganmanual.SQL.Add('SELECT yp.no as idxno,no_rekening,bank,nominal,tanggal_pemasangan,kategori,yp.keterangan,u.nama AS admin '+
'FROM y_pemasanganmanual yp JOIN kas_bank_import kbi ON kbi.id_transaksi=yp.id_rekeningkoran '+
'JOIN kas_bank kb ON kb.kode_kas=kbi.kode_kas JOIN user u ON u.id_user=yp.id_karyawan');
tabel.qpemasanganmanual.Active:=true;
end;

procedure Tfmenuutama.Button21Click(Sender: TObject);
var i:integer;
  ABookmarks: array of TBookmark;
  AFocusedRecord: TcxCustomGridRecord;
  jmlkata:Integer;
  kondisiawal,notransaksi,notransaksi2,kondisiakhir :string;
begin
 if (Edit3.Text = '') then
 begin
  ShowMessage('Silahkan masukan kondisi awal !');
  Exit;
 end;

  if cxGrid21DBTableView1.Controller.SelectedRowCount = 0 then
  begin
    ShowMessage('Tidak ada data yang dipilih !');
    Exit;
  end else
  begin
     jmlkata := Length(Edit3.Text);

     tabel.q1.SQL.Clear;
     tabel.q1.SQL.Add('SELECT *,SUBSTR(KETERANGAN,1,'+IntToStr(jmlkata)+') AS kondisiawal FROM buku_besar '+
     'WHERE dari=''HUTANG LAIN-LAIN'' AND SUBSTR(keterangan,1,'+IntToStr(jmlkata)+')='''+UpperCase(Edit3.Text)+''' ');
     tabel.q1.Open;

     if tabel.q1.RecordCount = 0 then
     begin
       ShowMessage('Kondisi awal yang anda masukan tidak ada !');
       Exit;
     end else
     begin
       tabel.q5.sql.Clear;
       tabel.q5.SQL.Add('START TRANSACTION');
       tabel.q5.ExecSQL;
     end;

   if MessageDlg('Apakah anda sudah yakin akan merubah data ?',mtInformation,[mbYes,mbNo],0) = mrYes then
   begin

     ABookmarks := nil;
     SetLength(ABookmarks,cxGrid21DBTableView1.Controller.SelectedRecordCount);
     AFocusedRecord := cxGrid21DBTableView1.Controller.FocusedRecord;

     for I := 0 to cxGrid21DBTableView1.Controller.SelectedRecordCount -1 do
     begin
       cxGrid21DBTableView1.Controller.SelectedRecords[I].Focused := True;
       ABookmarks[I] := cxGrid21DBTableView1.DataController.DataSet.GetBookmark;

       jmlkata := Length(Edit3.Text);

       tabel.q1.SQL.Clear;
       tabel.q1.SQL.Add('SELECT *,SUBSTR(KETERANGAN,1,'+IntToStr(jmlkata)+') AS kondisiawal,SUBSTR(KETERANGAN,'+IntToStr(jmlkata+1)+') AS kondisiakhir FROM buku_besar '+
       'WHERE dari=''HUTANG LAIN-LAIN'' AND keterangan LIKE '''+tabel.qperapihan_kasketerangan.Value+''' AND no_transaksi='''+tabel.qperapihan_kasno_transaksi.AsString+''' ');
       tabel.q1.Open;

       if tabel.q1.RecordCount <> 0 then
       begin
        kondisiawal := tabel.q1.FieldByName('kondisiawal').Value;
        kondisiakhir := tabel.q1.FieldByName('kondisiakhir').Value;
       end else
       begin
         ShowMessage('Keterangan didata yg anda pilih tidak sama dengan kondisi awal !');
         Exit;
       end;

       if UpperCase(Edit3.Text) = UpperCase(kondisiawal) then
       begin
         tabel.q1.SQL.Clear;
         tabel.q1.SQL.Add('update buku_besar set keterangan ='''+UpperCase(tabel.qperapihan_kasjenis.Value)+' LEBIH BAYAR '+'#'+kondisiakhir+''' where no_transaksi ='''+tabel.qperapihan_kasno_transaksi.AsString+''' ');
         tabel.q1.ExecSQL;

       end else
       begin
         ShowMessage('No transaksi '''+tabel.qperapihan_kasno_transaksi.AsString+''' memiliki keterangan yg berbeda dengan ''Kondisi Awal'' !');
         tabel.q5.sql.Clear;
         tabel.q5.SQL.Add('ROLLBACK');
         tabel.q5.ExecSQL;

         Exit;
       end;

     end;
     AFocusedRecord.Focused := True;

     tabel.q5.sql.Clear;
     tabel.q5.SQL.Add('COMMIT');
     tabel.q5.ExecSQL;

     ShowMessage('Data berhasil diubah !');

     tabel.qperapihan_kas.Active := False;
     tabel.qperapihan_kas.Active := True;

   end else
   begin
     tabel.q5.sql.Clear;
     tabel.q5.SQL.Add('ROLLBACK');
     tabel.q5.ExecSQL;
   end;
  end;



end;

procedure Tfmenuutama.Button22Click(Sender: TObject);
var tanggal:string;
begin
tanggal:=formatdatetime('yyyy-mm-dd',cxDateEdit3.Date);
tabel.qlapolshop.sql.Clear;
tabel.qlapolshop.SQL.Add('select * from kas_bank_import where (keterangan2=''SHOPEE'' or keterangan2=''TOKOPEDIA'') and tanggal='''+tanggal+''' order by tanggal desc limit 100');
tabel.qlapolshop.Active:=True;

end;

procedure Tfmenuutama.Button23Click(Sender: TObject);
begin

tabel.qlapolshop.sql.Clear;
tabel.qlapolshop.SQL.Add('select * from kas_bank_import where (keterangan2=''SHOPEE'' or keterangan2=''TOKOPEDIA'') order by tanggal desc limit 100');
tabel.qlapolshop.Active:=True;

end;

procedure Tfmenuutama.Button24Click(Sender: TObject);
begin
 fhasil_perapihan.ShowModal;
end;

procedure Tfmenuutama.Button25Click(Sender: TObject);
var i, j, x , y, z: integer;
 XlApp, XlBook, XlSheet: Variant;
begin
 Button22.Enabled := False;

 try
       ProgressBar1.Visible := True;
      ProgressBar1.Position := 0;
      ProgressBar1.Update;

    XlApp := CreateOleObject('Excel.Application');
    XlBook := XlApp.WorkBooks.Add;
    XlSheet := XlBook.worksheets.add;


//  for i:=0 to cxGrid23DBTableView1.ColumnCount - 1 do
//    begin
//      XlSheet.cells[1,i+1]:=cxGrid23DBTableView1.Columns[i].Caption;
//    end;

    XlSheet.cells[1,1]:='LAPORAN HUTANG LAIN-LAIN';
    XlSheet.cells[1,1].font.bold := true;
    XlSheet.cells[1,1].font.size:=13;

     z := 0;
    while z < 7 do begin

      XlSheet.Cells[2,z+1].interior.Color := clMoneyGreen;
      XlSheet.cells[2,z+1].horizontalalignment := -4108;
      XlSheet.cells[2,z+1].font.bold := true;
      XlSheet.cells[2,z+1].font.size:=12;

     z := z + 1;
    end;


    x:=1; //inisialisasi untuk menampilkan no urut
    tabel.qdetail_lphutanglainlain.First;
    ProgressBar1.Max := tabel.qdetail_lphutanglainlain.RecordCount;


    while not tabel.qdetail_lphutanglainlain.Eof do
    begin

      XlSheet.cells[2,1]:='NO';
      XlSheet.cells[2,1].columnwidth := 5;

      XlSheet.cells[2,2]:='TANGGAL';
      XlSheet.cells[2,2].columnwidth := 15;

      XlSheet.cells[2,3]:='NAMA';
      XlSheet.cells[2,3].columnwidth := 50;

      XlSheet.cells[2,4]:='NO TRANSAKSI';
      XlSheet.cells[2,4].columnwidth := 20;

      XlSheet.cells[2,5]:='PENERIMAAN';
      XlSheet.cells[2,5].columnwidth := 20;

      XlSheet.cells[2,6]:='PENGELUARAN';
      XlSheet.cells[2,6].columnwidth := 20;

      XlSheet.cells[2,7]:='SALDO';
      XlSheet.cells[2,7].columnwidth := 20;

      XlSheet.cells[x+2,1]:= x;
      XlSheet.cells[x+2,2]:= FormatDateTime('dd-mmm-yyyy',tabel.qdetail_lphutanglainlaintanggal.AsDateTime);
      XlSheet.cells[x+2,3]:= tabel.qlaphutang_lainlainnama.Value;
      XlSheet.cells[x+2,4]:= tabel.qdetail_lphutanglainlainno_transaksi.AsString;
      XlSheet.cells[x+2,5]:= FormatFloat('0,.00', tabel.qdetail_lphutanglainlainpenerimaan.AsInteger);
      XlSheet.cells[x+2,6]:= FormatFloat('0,.00',tabel.qdetail_lphutanglainlainpengeluaran.AsInteger);
      XlSheet.cells[x+2,7]:= FormatFloat('0,.00',tabel.qdetail_lphutanglainlainsaldo.AsInteger);

//      for i:=0 to tabel.qdetail_lphutanglainlain.FieldCount-1 do
//      begin
//        XlSheet.cells[x+2,i+1]:=tabel.qdetail_lphutanglainlain.FieldByName(cxGrid23DBTableView1.Columns[i].DataBinding.FieldName).DisplayText;
//        XlSheet.cells[x+2,i+1].font.size:=10;
//        XlSheet.cells[x+2,i+1].columnwidth := 17;
//        XlSheet.cells[x+2,1].columnwidth := 20;
//      end;

     tabel.qdetail_lphutanglainlain.Next;

     ProgressBar1.Position := tabel.qdetail_lphutanglainlain.RecNo;
     ProgressBar1.Update;

    inc(x);
    end;
    // untuk menunjukan jumlah saldo
    XlSheet.cells[x+2,6] := 'SALDO AKHIR';
    XlSheet.cells[x+2,6].font.bold := true;
    XlSheet.cells[x+2,6].font.size:=12;

    XlSheet.cells[x+2,7] := FormatFloat('0,.00',tabel.qlaphutang_lainlainsaldo.AsInteger);
    XlSheet.cells[x+2,7].font.bold := true;
    XlSheet.cells[x+2,7].font.size:=12;

    XlApp.visible:=true; //menampilkan dalam MS. Excel\</p>

 except
  on E:Exception do
  ShowMessage(E.ClassName+e.Message);

 end;

  Button22.Enabled := False;
  ProgressBar1.Visible := False;
end;

procedure Tfmenuutama.Button26Click(Sender: TObject);
var kata:Tstringlist;
kode_kas:string;
begin
if ComboBox4.Text='' then begin
ShowMessage('Silahkan Pilih pilihan rekening');
Exit;
end;
      kata:=TstringList.Create;
     split(ComboBox4.Text,'#',kata);
//     ShowMessage(kata[0]);
     tabel.q1.SQL.Clear;
     tabel.q1.SQL.Add('select * from kas_bank where no_rekening='''+kata[0]+''' ');
     tabel.q1.open;
     kode_kas:=tabel.q1.FieldValues['kode_kas'];
//     ShowMessage(kode_kas);
     if ComboBox4.Text <> '' then begin
        tabel.qmanual.SQL.Clear;
        tabel.qmanual.SQL.Add('SELECT ks.bank as namabank,yp.kategori,yp.no,kb.tanggal,CONCAT(ks.`no_rekening`, '' # '',ks.atas_nama,'' # '',ks.bank) AS bank,yp.keterangan,kb.jumlah as nominal  '+
        ' FROM y_pemasanganmanual yp JOIN kas_bank_import kb ON kb.`id_transaksi`=yp.`id_rekeningkoran` JOIN kas_bank ks ON kb.`kode_kas`=ks.`kode_kas`  '+
        ' WHERE (yp.`kategori`=''SETTLEMENT'' OR yp.`kategori`=''SETORAN TUNAI'') and ks.kode_kas='''+kode_kas+''' '+
        ' and yp.no not in (select id_manual from junct_manualbank) order by kb.tanggal desc ');
      //  ShowMessage(tabel.qmanual.SQL.Text);
        tabel.qmanual.Active:=true;
     end;

end;

procedure Tfmenuutama.Button27Click(Sender: TObject);
begin
 if MessageDlg('Apakah anda yakin akan memasangkan no transaksi '''+edit13.Text+''' dengan '''+edit14.Text+'''',mtInformation,[mbYes,mbno],0) = mrYes then
 begin
   tabel.q1.SQL.Clear;
   tabel.q1.SQL.Add('insert into fix_reportongkir values(0,'''+Edit13.Text+''', '''+edit14.Text+''', '''+idcuscus+''' )');
   tabel.q1.ExecSQL;

   ShowMessage('Data berhasil dipasangkan !');

   Edit13.Text := '';
   Edit14.Text := '';
   idcuscus :='';
   tabel.qcuspemsangan.Active:=false;
   tabel.qpemasangancus.Active:=False;
   tabel.qpemasangancus.Active:=true;
 end;

end;

procedure Tfmenuutama.Button28Click(Sender: TObject);
var t1:string;
nourut:Integer;
tanggal,jumlah,kodekas,kodeperkiraan,catatan,tipepembayaran,nomuat:string;
begin
  tanggal := FormatDateTime('yyyy-mm-dd',DateTimePicker2.DateTime);
  if (tabel.qjurnalpengeluranongkir.RecordCount <> 0) then
  begin
    if MessageDlg('Apakah anda yakin akan melakukan jurnal pengeluaran ongkir? ',mtConfirmation,[mbYes,mbNo],0)=mryes then
    begin
      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('START TRANSACTION');
      tabel.q1.ExecSQL;

      try

        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('select * from kas_bank where nama_kas=''KAS'' ');
        tabel.q1.Active:=true;
        kodekas:=tabel.q1.FieldValues['kode_kas'];

        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('select * from perkiraan where nama_perkiraan =''TITIPAN ONGKOS KIRIM'' ');
        tabel.q1.Active:=true;
         kodeperkiraan:=tabel.q1.FieldValues['kode_perkiraan'];

        //  tanggal := FormatDateTime('yyyy-mm-dd',tabel.qjurnalpengeluranongkirtanggal.Value);
          jumlah := FloatToStr(tabel.qjurnalpengeluranongkirongkir.Value);
          catatan := tabel.qjurnalpengeluranongkirexspedisi.Value + ' - ' + tabel.qjurnalpengeluranongkirnama.Value;
          tipepembayaran:=tabel.qjurnalpengeluranongkirtipe_pembayaran.Value;
          nomuat:=tabel.qjurnalpengeluranongkirno_muat.Value;
          if (tipepembayaran<> 'KONTRA BON') and (jumlah<>'0') and (tipepembayaran<> '')  then begin

            tabel.q1.SQL.Clear;
            tabel.q1.SQL.Add('select max(no_urut) as no from buku_besar ');
            tabel.q1.Active:=true;
            nourut:=tabel.q1.FieldValues['no']+1;

            generatebukubesar;

            tabel.q1.SQL.Clear;
            tabel.q1.SQL.Add('insert into buku_besar values('''+vkdbukubesar+''','''+tanggal+''',''PENGELUARAN'',''TITIPAN ONGKOS KIRIM'','''','''','''+kodekas+''','''+jumlah+''','''+kodeperkiraan+''','''+catatan+''',0,'''+tanggal+''','''+inttostr(nourut)+''') ');
            tabel.q1.ExecSQL;

            tabel.q1.sql.Clear;
            tabel.q1.sql.Add('insert into fix_reportongkir values(0,'''+vkdbukubesar+''','''+tabel.qjurnalpengeluranongkirnama.Value+''','''+tabel.qjurnalpengeluranongkirid_customer.text+''') ');
            tabel.q1.ExecSQL;

            tabel.q2.SQL.Clear;
            tabel.q2.sql.Add('select max(id) from fix_reportongkir where no_transaksi='''+vkdbukubesar+''' ');
            tabel.q2.Open;

            tabel.q1.SQL.Clear;
            tabel.q1.SQL.Add('insert into fix_reportongkir_detail values(0,'''+tabel.q2.Fields[0].AsString+''','''+tabel.qjurnalpengeluranongkirno_penjualan.Value+''','''+kodeperkiraan+''') ');
            tabel.q1.ExecSQL;

            tabel.q1.SQL.Clear;
            tabel.q1.SQL.Add('insert into jurnal_ongkirdanlainlain values(0,'''+tabel.qjurnalpengeluranongkirno_penjualan.Value+''',''PENGELUARAN ONGKIR'','''+vkdbukubesar+''',now()) ');
            tabel.q1.ExecSQL;



          end;





        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('COMMIT');
        tabel.q1.ExecSQL;

        ShowMessage('Data berhasil di jurnal');
        tabel.qjurnalpengeluranongkir.Refresh;

      except on e:Exception do
        begin
          tabel.q1.SQL.Clear;
          tabel.q1.SQL.Add('ROLLBACK');
          tabel.q1.ExecSQL;

          ShowMessage('Ada kesalahan jurnal. Error : '+ e.Message);
        end;

      end;
    end;
  end;

end;

class function Tfmenuutama.AutoSizeColumns(DBGrid: TDBGrid; const MaxRows: Integer = 25): Integer;

var
  DataSet: TDataSet;
  Bookmark: TBookmark;
  Count, I: Integer;
  ColumnsWidth: array of Integer;
begin
  SetLength(ColumnsWidth, DBGrid.Columns.Count);
  for I := 0 to DBGrid.Columns.Count - 1 do
    if DBGrid.Columns[I].Visible then
      ColumnsWidth[I] := DBGrid.Canvas.TextWidth(DBGrid.Columns[I].Title.Caption + '   ')
    else
      ColumnsWidth[I] := 0;
  if DBGrid.DataSource <> nil then
    DataSet := DBGrid.DataSource.DataSet
  else
    DataSet := nil;
  if (DataSet <> nil) and DataSet.Active then
  begin
    Bookmark := DataSet.GetBookmark;
    DataSet.DisableControls;
    try
      Count := 0;
      DataSet.First;
      while not DataSet.Eof and (Count < MaxRows) do
      begin
        for I := 0 to DBGrid.Columns.Count - 1 do
          if DBGrid.Columns[I].Visible then
            ColumnsWidth[I] := Max(ColumnsWidth[I], DBGrid.Canvas.TextWidth(
              DBGrid.Columns[I].Field.Text));
        Inc(Count);
        DataSet.Next;
      end;
    finally
      DataSet.GotoBookmark(Bookmark);
      DataSet.FreeBookmark(Bookmark);
      DataSet.EnableControls;
    end;
  end;
  Count := 0;
  for I := 0 to DBGrid.Columns.Count - 1 do
    if DBGrid.Columns[I].Visible then
    begin
      DBGrid.Columns[I].Width := ColumnsWidth[I];
      Inc(Count, ColumnsWidth[I]);
    end;
  Result := Count - DBGrid.ClientWidth;
end;

procedure Tfmenuutama.Button29Click(Sender: TObject);
var selisih:Integer;
        tanggal1,tanggal2,srupiah:string;

begin

  srupiah := edit11.text;
  srupiah := stringreplace(sRupiah,',','',[rfreplaceall,rfignorecase]);
  srupiah := stringreplace(srupiah,'.','',[rfreplaceall,rfignorecase]);
//   ShowMessage( FloatToStr(Abs(StrToFloat(srupiah))));
//if Abs(StrToFloat(srupiah)) >= 100000 then begin
//  ShowMessage('Selisih tidak boleh lebih dari Rp.100.000');
//  Exit;
//end;

tanggal1:=formatdatetime('yyyy-mm-dd',tabel.qmanualtanggal.Value);
tanggal2:=formatdatetime('yyyy-mm-dd',tabel.qpasangmanualtanggal.Value);
tabel.q1.SQL.Clear;
tabel.q1.SQL.Add('SELECT DATEDIFF('''+tanggal2+''','''+tanggal1+''') as selisih');
tabel.q1.Active:=True;
selisih:=tabel.q1.FieldValues['selisih'];

//ShowMessage(IntToStr(selisih));
if (selisih > 0) or (selisih < -3) then
  ShowMessage('Tanggal tidak boleh lebih atau kurang dari 3 hari')
else
begin
    if MessageDlg('Apakah anda yakin akan melakukan pemsangan pendapatan toko? ',mtConfirmation,[mbYes,mbNo],0)=mryes then
    begin
      try
        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('START TRANSACTION');
        tabel.q1.ExecSQL;

        tabel.qpasangmanual.First;
        while not tabel.qpasangmanual.Eof do
        begin
//          if tabel.qpasangmanualpilih.Text = 'True' then
//          begin
            tabel.q1.SQL.Clear;
            tabel.q1.SQL.Add('insert into junct_manualbank values(0,'''+tabel.qmanualno.Text+''','''+tabel.qpasangmanualno_penjualan.Value+''','''+tanggal1+''','''+v_idkaryawan+''') ');
            tabel.q1.ExecSQL;
//          end;
          tabel.qpasangmanual.Next;
        end;

        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('COMMIT');
        tabel.q1.ExecSQL;

        ShowMessage('Berhasil di pasangkan');
        tabel.qmanual.Refresh;
        tabel.qpemasanganmanual.Active:=false;
        Button26Click(nil);
      except on e:Exception do
      begin
        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('ROLLBACK');
        tabel.q1.ExecSQL;

        ShowMessage('Gagal di pasangkan. Error : '+ e.Message);
      end;

      end;
    end;
end;

end;

procedure Tfmenuutama.Button2Click(Sender: TObject);
var srupiah:String; totalbayar,pesan,admin,notransaksi,idcustomer:string;
kembalian,totalpenjualan,totbayar,adm:real;
begin
vpembayaran.Open;
if cbjenis.Text='' then begin
ShowMessage('Silahkan isi jenis pembayaran');
Exit;
end;
if tuang.Text='' then begin
ShowMessage('silahkan isi jumlah uang');
Exit;
end;
    srupiah := tuang.text;
    srupiah := stringreplace(sRupiah,',','',[rfreplaceall,rfignorecase]);
    srupiah := stringreplace(srupiah,'.','',[rfreplaceall,rfignorecase]);

   if cbjenis.Text='DEBIT' then begin
       if cbbank.Text='LAINNYA' then begin
       adm:=v_lainnya*strtofloat(srupiah);
       end else if cbbank.Text='MANDIRI' then begin
       adm:=v_mandiri*strtofloat(srupiah);
       end else begin
       adm:=v_bca*strtofloat(srupiah);

       end;

   end else if cbjenis.Text='CC' then begin
      adm:=v_cc*strtofloat(srupiah);
   end else begin
     adm:=0;
   end;


vpembayaran.Append;
vpembayaranjenis_pembayaran.Value:=cbjenis.Text;
vpembayaranid_jenispembayar.Value:=tkartu.Text;
vpembayaranjumlah_uang.Value:=StrToFloat(srupiah);
vpembayaranadm.value:=adm;
vpembayarannama_bank.Value:=cbbank.Text;
vpembayarantotal.Value:=StrToFloat(srupiah)+adm;
vpembayaranno_transaksi.Value:=notransaksi;
vpembayaran.Post;


  if cbjenis.Text<>'CASH' then begin
     Panel5.Visible:=True;
    Panel5 .Top:=168;
    Panel5.Left:=10;
    ladm.Caption:=formatcurr('#,##',StrToFloat(srupiah)+adm);
    v_verifyadm:=formatcurr('#,##',StrToFloat(srupiah)+adm);
    Button7.SetFocus;
  end;


cbjenis.ItemIndex:=-1;
cbbank.ItemIndex:=-1;
tkartu.Clear;
tuang.Clear;
cbjenis.SetFocus;

totalbayar := cxGrid2DBTableView1.DataController.Summary.FooterSummaryTexts[0];
totalbayar := stringreplace(totalbayar,',','',[rfreplaceall,rfignorecase]);
totalbayar := stringreplace(totalbayar,'.','',[rfreplaceall,rfignorecase]);
totbayar:=StrToFloat(totalbayar);

admin := cxGrid2DBTableView1.DataController.Summary.FooterSummaryTexts[1];
admin := stringreplace(admin,',','',[rfreplaceall,rfignorecase]);
admin := stringreplace(admin,'.','',[rfreplaceall,rfignorecase]);
adm:=StrToFloat(admin);

v_totalbayar:=totbayar;

hitung;



//   pesan:='Apakah anda akan menambahkan potongan ? ';
//             if messagedlg(pesan,mtconfirmation,[mbyes,mbno],0)=mryes then
//             begin
//             cbpotongan.DroppedDown:=True;
//             cbpotongan.SetFocus;
//             end;

end;

procedure Tfmenuutama.Button30Click(Sender: TObject);
var
nourut:Integer;
tanggal,jumlah,kodekas,kodeperkiraan,catatan,tipepembayaran,nomuat:string;
begin
  if (tabel.qjurnalpengeluranongkir.RecordCount <> 0) or (tabel.qjurnalpengeluranlain.RecordCount <> 0) then
  begin
    if MessageDlg('Apakah anda yakin akan melakukan jurnal pengeluaran ongkir? ',mtConfirmation,[mbYes,mbNo],0)=mryes then
    begin
      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('START TRANSACTION');
      tabel.q1.ExecSQL;

      try

        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('select * from kas_bank where nama_kas=''KAS'' ');
        tabel.q1.Active:=true;
        kodekas:=tabel.q1.FieldValues['kode_kas'];

        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('select * from perkiraan where nama_perkiraan =''TITIPAN ONGKOS KIRIM'' ');
        tabel.q1.Active:=true;
         kodeperkiraan:=tabel.q1.FieldValues['kode_perkiraan'];

        tabel.qjurnalpengeluranongkir.First;
        while not tabel.qjurnalpengeluranongkir.Eof do
        begin
          tanggal := FormatDateTime('yyyy-mm-dd',DateTimePicker2.DateTime);
          jumlah := FloatToStr(tabel.qjurnalpengeluranongkirongkir.Value);
          catatan := tabel.qjurnalpengeluranongkirexspedisi.Value + ' - ' + tabel.qjurnalpengeluranongkirnama.Value;
          tipepembayaran:=tabel.qjurnalpengeluranongkirtipe_pembayaran.Value;
          nomuat:=tabel.qjurnalpengeluranongkirno_muat.Value;
          if (tipepembayaran<> 'KONTRA BON') and (jumlah<>'0') and (tipepembayaran<> '')  then begin

            tabel.q1.SQL.Clear;
            tabel.q1.SQL.Add('select max(no_urut) as no from buku_besar ');
            tabel.q1.Active:=true;
            nourut:=tabel.q1.FieldValues['no']+1;

            generatebukubesar;

            tabel.q1.SQL.Clear;
            tabel.q1.SQL.Add('insert into buku_besar values('''+vkdbukubesar+''','''+tanggal+''',''PENGELUARAN'',''TITIPAN ONGKOS KIRIM'','''','''','''+kodekas+''','''+jumlah+''','''+kodeperkiraan+''','''+catatan+''',0,'''+tanggal+''','''+inttostr(nourut)+''') ');
            tabel.q1.ExecSQL;

            tabel.q1.sql.Clear;
            tabel.q1.sql.Add('insert into fix_reportongkir values(0,'''+vkdbukubesar+''','''+tabel.qjurnalpengeluranongkirnama.Value+''','''+tabel.qjurnalpengeluranongkirid_customer.text+''') ');
            tabel.q1.ExecSQL;

            tabel.q2.SQL.Clear;
            tabel.q2.sql.Add('select max(id) from fix_reportongkir where no_transaksi='''+vkdbukubesar+''' ');
            tabel.q2.Open;

            tabel.q1.SQL.Clear;
            tabel.q1.SQL.Add('insert into fix_reportongkir_detail values(0,'''+tabel.q2.Fields[0].AsString+''','''+tabel.qjurnalpengeluranongkirno_penjualan.Value+''','''+kodeperkiraan+''') ');
            tabel.q1.ExecSQL;

            tabel.q1.SQL.Clear;
            tabel.q1.SQL.Add('insert into jurnal_ongkirdanlainlain values(0,'''+tabel.qjurnalpengeluranongkirno_penjualan.Value+''',''PENGELUARAN ONGKIR'','''+vkdbukubesar+''',now()) ');
            tabel.q1.ExecSQL;



          end;



          tabel.qjurnalpengeluranongkir.Next;
        end;


        tabel.qjurnalpengeluranlain.First;
        while not tabel.qjurnalpengeluranlain.Eof do
        begin
          tanggal := FormatDateTime('yyyy-mm-dd',DateTimePicker2.DateTime);
          jumlah := FloatToStr(tabel.qjurnalpengeluranlainjumlah.Value);
          catatan := tabel.qjurnalpengeluranlainketerangan.Value;

          tabel.q1.SQL.Clear;
          tabel.q1.SQL.Add('select * from perkiraan where nama_perkiraan ='''+tabel.qjurnalpengeluranlainnama_perkiraan.Value+''' ');
          tabel.q1.Active:=true;
           kodeperkiraan:=tabel.q1.FieldValues['kode_perkiraan'];

          tabel.q1.SQL.Clear;
          tabel.q1.SQL.Add('select max(no_urut) as no from buku_besar ');
          tabel.q1.Active:=true;
          nourut:=tabel.q1.FieldValues['no']+1;

          generatebukubesar;

          tabel.q1.SQL.Clear;
          tabel.q1.SQL.Add('insert into buku_besar values('''+vkdbukubesar+''','''+tanggal+''',''PENGELUARAN'','''+tabel.qjurnalpengeluranlainnama_perkiraan.Value+''','''','''','''+kodekas+''','''+jumlah+''','''+kodeperkiraan+''','''+catatan+''',0,'''+tanggal+''','''+inttostr(nourut)+''') ');
          tabel.q1.ExecSQL;

          tabel.q1.SQL.Clear;
          tabel.q1.SQL.Add('insert into n_relasi_jurnallainlain values(0,now(),'''+vkdbukubesar+''','''+tabel.qjurnalpengeluranlainno_transaksi.Value+''','''+v_idkaryawan+''') ');
          tabel.q1.ExecSQL;

          tabel.qjurnalpengeluranlain.Next;
        end;

        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('COMMIT');
        tabel.q1.ExecSQL;

        ShowMessage('Data berhasil di jurnal');
        tabel.qjurnalpengeluranongkir.Refresh;
        tabel.qjurnalpengeluranlain.Refresh;

      except on e:Exception do
        begin
          tabel.q1.SQL.Clear;
          tabel.q1.SQL.Add('ROLLBACK');
          tabel.q1.ExecSQL;

          ShowMessage('Ada kesalahan jurnal. Error : '+ e.Message);
        end;

      end;
    end;
  end;
end;

procedure Tfmenuutama.Button31Click(Sender: TObject);
var t1:string;
begin
  t1 := FormatDateTime('yyyy-mm-dd',DateTimePicker3.DateTime);

  tabel.qjurnalpengeluranongkir.SQL.Clear;
  tabel.qjurnalpengeluranongkir.SQL.Add('SELECT id_customer,mo.tanggal,mo.no_muat,ro.no_penjualan,dp.no_detail AS detail,op.no_order,c.nama,exspedisi,IFNULL(dk.jumlah,0) AS ongkir,ek.tipe_pembayaran '+
  ' FROM order_pembelian op JOIN customer c USING(id_customer) JOIN detail_muat dp                                                                   '+
  ' ON dp.no_pengeluaran=op.no_order JOIN muat_orderan mo ON mo.`no_muat`=dp.`no_muat` JOIN relasi_orderdanpenjualan ro ON ro.no_order=op.no_order  '+
  ' LEFT JOIN ongkir okr ON okr.no_transaksi=ro.no_penjualan                                                                                     '+
  ' LEFT JOIN ekspedisi ek ON ek.nama=op.exspedisi                                                                                                '+
  ' LEFT JOIN (SELECT no_order,jumlah FROM detail_pengeluaranongkir dpl GROUP BY no_order) AS dk ON dk.no_order=op.no_order                      '+
  ' WHERE cast(mo.tanggal as date)='''+t1+''' AND ongkir > 0  AND tipe_pembayaran=''TIDAK MEMAKAI KONTRABON''  and ro.no_penjualan not in (select no_transaksi from jurnal_ongkirdanlainlain)                                                                                                  '+
  ' UNION                                                                                                                                        '+
  ' SELECT id_customer,mo.tanggal,mo.no_muat,op.no_penjualan,dp.no_detail AS detail,op.no_penjualan,c.nama,ekspedisi AS exspedisi,IFNULL(dk.jumlah,0) AS ongkir,ifnull(ek.tipe_pembayaran,'''') as tipe_pembayaran  '+
  ' FROM s_penjualan_katalog op JOIN customer c USING(id_customer) JOIN detail_muat dp  ON dp.no_pengeluaran=op.no_penjualan                       '+
  ' JOIN muat_orderan mo ON mo.`no_muat`=dp.`no_muat`                                                                                            '+
  ' LEFT JOIN ongkir okr ON okr.no_transaksi=op.no_penjualan                                                                                      '+
  ' LEFT JOIN ekspedisi ek ON ek.nama=op.ekspedisi                                                                                                '+
  ' LEFT JOIN (SELECT no_order,jumlah FROM detail_pengeluaranongkir dpl GROUP BY no_order) AS dk ON dk.no_order=op.no_penjualan                  '+
  ' WHERE cast(mo.tanggal as date)='''+t1+''' AND ongkir > 0  AND tipe_pembayaran=''TIDAK MEMAKAI KONTRABON'' and op.no_penjualan not in (select no_transaksi from jurnal_ongkirdanlainlain)  ');
  tabel.qjurnalpengeluranongkir.Active:=true;


  tabel.qjurnalpengeluranlain.SQL.Clear;
  tabel.qjurnalpengeluranlain.SQL.Add('SELECT n.no_transaksi,n.tanggal,nama_perkiraan,n.keterangan,jumlah FROM n_kassementara n JOIN kas_bank USING(kode_kas) JOIN perkiraan USING(kode_perkiraan)  '+
  ' WHERE jumlah >0 AND n.no_transaksi NOT IN (SELECT no_transaksi FROM n_relasi_jurnallainlain)  and n.tanggal ='''+t1+''' ');
  tabel.qjurnalpengeluranlain.Active:=True;

end;

procedure Tfmenuutama.Button32Click(Sender: TObject);
var t1:string;
nourut:Integer;
tanggal,jumlah,kodekas,kodeperkiraan,catatan,tipepembayaran,nomuat:string;
begin
  tanggal := FormatDateTime('yyyy-mm-dd',DateTimePicker2.DateTime);
 if (tabel.qjurnalpengeluranlain.RecordCount <> 0) then
  begin
    if MessageDlg('Apakah anda yakin akan melakukan jurnal pengeluaran Lain Lain? ',mtConfirmation,[mbYes,mbNo],0)=mryes then
    begin
      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('START TRANSACTION');
      tabel.q1.ExecSQL;

      try

        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('select * from kas_bank where nama_kas=''KAS'' ');
        tabel.q1.Active:=true;
        kodekas:=tabel.q1.FieldValues['kode_kas'];

       // tanggal := FormatDateTime('yyyy-mm-dd',tabel.qjurnalpengeluranlaintanggal.Value);
        jumlah := FloatToStr(tabel.qjurnalpengeluranlainjumlah.Value);
        catatan := tabel.qjurnalpengeluranlainketerangan.Value;

          tabel.q1.SQL.Clear;
          tabel.q1.SQL.Add('select * from perkiraan where nama_perkiraan ='''+tabel.qjurnalpengeluranlainnama_perkiraan.Value+''' ');
          tabel.q1.Active:=true;
          kodeperkiraan:=tabel.q1.FieldValues['kode_perkiraan'];

          tabel.q1.SQL.Clear;
          tabel.q1.SQL.Add('select max(no_urut) as no from buku_besar ');
          tabel.q1.Active:=true;
          nourut:=tabel.q1.FieldValues['no']+1;

          generatebukubesar;

          tabel.q1.SQL.Clear;
          tabel.q1.SQL.Add('insert into buku_besar values('''+vkdbukubesar+''','''+tanggal+''',''PENGELUARAN'','''+tabel.qjurnalpengeluranlainnama_perkiraan.Value+''','''','''','''+kodekas+''','''+jumlah+''','''+kodeperkiraan+''','''+catatan+''',0,'''+tanggal+''','''+inttostr(nourut)+''') ');
          tabel.q1.ExecSQL;

          tabel.q1.SQL.Clear;
          tabel.q1.SQL.Add('insert into n_relasi_jurnallainlain values(0,now(),'''+vkdbukubesar+''','''+tabel.qjurnalpengeluranlainno_transaksi.Value+''','''+v_idkaryawan+''') ');
          tabel.q1.ExecSQL;

        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('COMMIT');
        tabel.q1.ExecSQL;

        ShowMessage('Data berhasil di jurnal');
        tabel.qjurnalpengeluranlain.Refresh;

      except on e:Exception do
        begin
          tabel.q1.SQL.Clear;
          tabel.q1.SQL.Add('ROLLBACK');
          tabel.q1.ExecSQL;

          ShowMessage('Ada kesalahan jurnal. Error : '+ e.Message);
        end;

      end;
    end;
  end;
end;

procedure Tfmenuutama.Button33Click(Sender: TObject);
begin
   if MessageDlg('Apakah anda yakin no transaksi '''+Edit13.Text+''' tidak diketahui ?',mtInformation,[mbYes,mbNo],0) = mrYes then
 begin
  tabel.q1.SQL.Clear;
  tabel.q1.SQL.Add('insert into transaksi_tidakdiketahui values (0,'''+v_idkaryawan+''','''+Edit13.Text+''', now())');
  tabel.q1.ExecSQL;

   Edit13.Text := '';
   Edit14.Text := '';
   idcuscus :='';

   tabel.qpemasangancus.Active := False;
   tabel.qpemasangancus.Active := True;

   tabel.qcuspemsangan.Active := False;
   tabel.qcuspemsangan.SQL.Clear;
   tabel.qcuspemsangan.SQL.Add('select * from customer');
   tabel.qcuspemsangan.ExecSQL;
   tabel.qcuspemsangan.Active := True;

   ShowMessage('Data berhasil disimpan !');
 end;
end;

procedure Tfmenuutama.Button34Click(Sender: TObject);
var t1,t2,exspedisi:string;
begin
 t1 := FormatDateTime('yyyy-mm-dd',cxDateEdit5.Date);
 t2 := FormatDateTime('yyyy-mm-dd',cxDateEdit6.Date);


 if Copy(exspedisi,1,6)='HERONA' then begin
 exspedisi:='HERONA';
 end else begin
 exspedisi:=cbekspedisi.Text;
 end;

  tabel.qjurnalkotrabon.SQL.Clear;
  tabel.qjurnalkotrabon.SQL.Add('SELECT id_customer,mo.tanggal,mo.no_muat,ro.no_penjualan,dp.no_detail AS detail,op.no_order,c.nama,exspedisi,IFNULL(dk.jumlah, 0)-IFNULL(dks.jumlah, 0) AS ongkir,ek.tipe_pembayaran,''False'' as pilihan '+
  ' FROM order_pembelian op JOIN customer c USING(id_customer) JOIN detail_muat dp                                                                   '+
  ' ON dp.no_pengeluaran=op.no_order JOIN muat_orderan mo ON mo.`no_muat`=dp.`no_muat` JOIN relasi_orderdanpenjualan ro ON ro.no_order=op.no_order  '+
  ' LEFT JOIN ongkir okr ON okr.no_transaksi=ro.no_penjualan                                                                                     '+
  ' LEFT JOIN ekspedisi ek ON ek.nama=op.exspedisi                                                                                                '+
  ' LEFT JOIN (SELECT no_order,jumlah FROM detail_pengeluaranongkir dpl GROUP BY no_order) AS dk ON dk.no_order=op.no_order                      '+
  ' LEFT JOIN (SELECT no_order,asuransi_versi_exspedisi AS jumlah FROM a_asuransiversi_exspedisi dps GROUP BY no_order) AS dks  ON dks.no_order = op.no_order '+
  ' WHERE cast(mo.tanggal as date)>='''+t1+''' and cast(mo.tanggal as date)<='''+t2+''' and exspedisi='''+exspedisi+'''  and ro.no_penjualan not in (select no_transaksi from jurnal_ongkirdanlainlain)   '+
  ' UNION                                                                                                                                        '+
  ' SELECT id_customer,mo.tanggal,mo.no_muat,op.no_penjualan,dp.no_detail AS detail,op.no_penjualan,c.nama,ekspedisi AS exspedisi,IFNULL(dk.jumlah,0) AS ongkir,ifnull(ek.tipe_pembayaran,'''') as tipe_pembayaran,''False'' as pilihan  '+
  ' FROM s_penjualan_katalog op JOIN customer c USING(id_customer) JOIN detail_muat dp  ON dp.no_pengeluaran=op.no_penjualan                       '+
  ' JOIN muat_orderan mo ON mo.`no_muat`=dp.`no_muat`                                                                                            '+
  ' LEFT JOIN ongkir okr ON okr.no_transaksi=op.no_penjualan                                                                                      '+
  ' LEFT JOIN ekspedisi ek ON ek.nama=op.ekspedisi                                                                                                '+
  ' LEFT JOIN (SELECT no_order,jumlah FROM detail_pengeluaranongkir dpl GROUP BY no_order) AS dk ON dk.no_order=op.no_penjualan                  '+
  ' LEFT JOIN (SELECT no_order,asuransi_versi_exspedisi AS jumlah FROM a_asuransiversi_exspedisi dps GROUP BY no_order) AS dks ON dks.no_order = op.no_penjualan '+
  ' WHERE cast(mo.tanggal as date)>='''+t1+''' and cast(mo.tanggal as date)<='''+t2+''' and ekspedisi='''+exspedisi+''' and op.no_penjualan not in (select no_transaksi from jurnal_ongkirdanlainlain)  ');
   //ShowMessage(tabel.qjurnalkotrabon.sql.text);
  tabel.qjurnalkotrabon.Active:=true;


end;

procedure Tfmenuutama.Button35Click(Sender: TObject);
var kodekas,kodeperkiraan,jumlah,catatan,tanggal,nofix:string; nourut:Integer;
begin
//if Edit15.Text='' then begin
//  ShowMessage('Silahkan isi Nominal Pembayaran!');
//  Exit;
//end;
//
//     jumlah := Edit15.text;
//     jumlah := stringreplace(jumlah,',','',[rfreplaceall,rfignorecase]);
//     jumlah := stringreplace(jumlah,'.','',[rfreplaceall,rfignorecase]);
//     tanggal:=formatdatetime('yyyy-mm-dd',cxDateEdit7.Date);
//
//      tabel.q1.SQL.Clear;
//      tabel.q1.SQL.Add('START TRANSACTION');
//      tabel.q1.ExecSQL;
//
//            tabel.q1.SQL.Clear;
//            tabel.q1.SQL.Add('select * from kas_bank where nama_kas=''AYAT SILANG'' ');
//            tabel.q1.Active:=true;
//            kodekas:=tabel.q1.FieldValues['kode_kas'];
//
//            tabel.q1.SQL.Clear;
//            tabel.q1.SQL.Add('select * from perkiraan where nama_perkiraan =''TITIPAN ONGKOS KIRIM'' ');
//            tabel.q1.Active:=true;
//            kodeperkiraan:=tabel.q1.FieldValues['kode_perkiraan'];
//            catatan :='Pembayaran titipan Ongkos Kirim Ke - ' + tabel.qjurnalkotrabonexspedisi.Value ;
//
//
//            tabel.q1.SQL.Clear;
//            tabel.q1.SQL.Add('select max(no_urut) as no from buku_besar ');
//            tabel.q1.Active:=true;
//            nourut:=tabel.q1.FieldValues['no']+1;
//
//            generatebukubesar;
//
//            tabel.q1.SQL.Clear;
//            tabel.q1.SQL.Add('insert into buku_besar values('''+vkdbukubesar+''','''+tanggal+''',''PENGELUARAN'',''TITIPAN ONGKOS KIRIM'','''','''','''+kodekas+''','''+jumlah+''','''+kodeperkiraan+''','''+catatan+''',0,'''+tanggal+''','''+inttostr(nourut)+''') ');
//            tabel.q1.ExecSQL;
//
//            tabel.q1.sql.Clear;
//            tabel.q1.sql.Add('insert into fix_reportongkir values(0,'''+vkdbukubesar+''','''+tabel.qjurnalkotrabonexspedisi.Value+''',0) ');
//            tabel.q1.ExecSQL;
//
//            tabel.q2.SQL.Clear;
//            tabel.q2.sql.Add('select max(id) as no from fix_reportongkir where no_transaksi='''+vkdbukubesar+''' ');
//            tabel.q2.Active:=true;
//            nofix:=tabel.q2.FieldValues['no'];
//          //  ShowMessage(tabel.q2.SQL.Text);
//
//            tabel.q1.SQL.Clear;
//            tabel.q1.SQL.Add('insert into pembayaran_kontrabon values(null,'''+vkdbukubesar+''','''+jumlah+''','''+tanggal+''','''+v_idkaryawan+''') ');
//            tabel.q1.ExecSQL;
//
//        tabel.qjurnalkotrabon.First;
//       while not tabel.qjurnalkotrabon.Eof do begin
//
//              if tabel.qjurnalkotrabonpilihan.Value='True' then  begin
//
//                tabel.q1.SQL.Clear;
//                tabel.q1.SQL.Add('insert into fix_reportongkir_detail values(0,'''+nofix+''','''+tabel.qjurnalkotrabonno_penjualan.Value+''','''+kodeperkiraan+''') ');
//                tabel.q1.ExecSQL;
//
//                tabel.q1.SQL.Clear;
//                tabel.q1.SQL.Add('insert into jurnal_ongkirdanlainlain values(0,'''+tabel.qjurnalkotrabonno_penjualan.Value+''',''PENGELUARAN ONGKIR KONTRABON'','''+vkdbukubesar+''',now()) ');
//                tabel.q1.ExecSQL;
//
//              end;
//
//         tabel.qjurnalkotrabon.Next;
//       end;
//
//      tabel.q1.SQL.Clear;
//      tabel.q1.SQL.Add('COMMIT');
//      tabel.q1.ExecSQL;
//
//       ShowMessage('Data berhasil di jurnal!');
//       tabel.qjurnalkotrabon.Active:=false;
//       tabel.qjurnalkotrabon.Active:=true;
//       Edit15.Clear;
//       Edit17.Clear;
//       Edit19.Clear;
//       cbekspedisi.Clear;
//       cxDateEdit5.Date:=Now();
//       cxDateEdit6.Date:=Now();
//       cxDateEdit7.Date:=Now();
//

end;

procedure Tfmenuutama.Button36Click(Sender: TObject);
var t1,t2:string;
begin
 t1 := FormatDateTime('yyyy-mm-dd',cxDateEdit8.Date);
 t2 := FormatDateTime('yyyy-mm-dd',cxDateEdit9.Date);
 tabel.qlapkontrabon.SQL.Clear;
 tabel.qlapkontrabon.SQL.Add('SELECT bb.no_transaksi,bb.tanggal,keterangan,nama AS exspedisi,jumlah,fr.id as id  FROM buku_besar bb '+
 ' JOIN fix_reportongkir fr ON fr.no_transaksi=bb.no_transaksi join pembayaran_kontrabon pk on pk.no_transaksi=bb.no_transaksi '+
 ' where bb.tanggal>='''+t1+''' and bb.tanggal<='''+t2+''' ');
 tabel.qlapkontrabon.Active:=True;

 // ShowMessage(tabel.qlapkontrabon.SQL.Text);
end;

procedure Tfmenuutama.Button37Click(Sender: TObject);
var id:string;
begin
  id:=IntToStr(tabel.qlapkontrabonid.Value);
  tabel.qlapdetailkontrabon.SQL.Clear;
  tabel.qlapdetailkontrabon.SQL.Add('SELECT * FROM v_detaillapkontrabon vd JOIN v_fix_reportongkir_detailfix vf ON vf.no_jual=vd.no_penjualan where vd.id='''+id+''' ');
  tabel.qlapdetailkontrabon.Active:=True;
end;

procedure Tfmenuutama.Button3Click(Sender: TObject);
var srupiah:String; totalbayar,pesan,admin,notransaksi:string; kembalian,totalpenjualan,totbayar,adm:real;
begin
if vpembayaran.recordcount =0 then  begin
  ShowMessage('Tidak ada data yang bisa di hapus');
  Exit;
end;
vpembayaran.Delete;
 if vpembayaran.RecordCount >0 then

totalbayar := cxGrid2DBTableView1.DataController.Summary.FooterSummaryTexts[0];
totalbayar := stringreplace(totalbayar,',','',[rfreplaceall,rfignorecase]);
totalbayar := stringreplace(totalbayar,'.','',[rfreplaceall,rfignorecase]);
totbayar:=StrToFloat(totalbayar);
notransaksi:=vpembayaranno_transaksi.Value;
v_totalbayar:=totbayar;

hitung;
 { if vpembayaran.RecordCount > 0 then begin

    totalbayar := cxGrid2DBTableView1.DataController.Summary.FooterSummaryTexts[0];
    totalbayar := stringreplace(totalbayar,',','',[rfreplaceall,rfignorecase]);
    totalbayar := stringreplace(totalbayar,'.','',[rfreplaceall,rfignorecase]);
    totbayar:=StrToFloat(totalbayar);

    admin := cxGrid2DBTableView1.DataController.Summary.FooterSummaryTexts[1];
    admin := stringreplace(admin,',','',[rfreplaceall,rfignorecase]);
    admin := stringreplace(admin,'.','',[rfreplaceall,rfignorecase]);
    adm:=StrToFloat(admin);

    Label17.Caption:=formatcurr('#,##',totbayar+adm);
    Label14.Caption:=cxGrid2DBTableView1.DataController.Summary.FooterSummaryTexts[1];

  end else begin

  end;   }


end;

procedure Tfmenuutama.Button4Click(Sender: TObject);
var tanggal,tanggal2,kode_kas,vsa,bank:string;
kata:TStringList;
begin
kata := TstringList.Create;
if combobox3.Text='' then begin
    ShowMessage('Silahkan Pilih Rekening yang akan di tampilkan!');
    Exit;
end;

    vt_idmutasi1:=-1;
    vt_idmutasi2:=-1;
    vt_nokonfirmasi1:=-1;
    vt_nokonfirmasi2:=-1;
    vt_jumlah:=0;

    btntukar.Enabled:=false;

   split(combobox3.Text,'#',kata);
   tabel.q1.SQL.Clear;
   tabel.q1.SQL.Add('select * from kas_bank where no_rekening='''+kata[0]+''' ');
   tabel.q1.Active:=True;
   kode_kas:=tabel.q1.FieldValues['kode_kas'];
   bank:=tabel.q1.FieldValues['bank'];
   tanggal:=formatdatetime('yyyy-mm-dd',cxDateEdit1.Date);
   tanggal2:=formatdatetime('yyyy-mm-dd',cxDateEdit4.Date);

   if (bank='MANDIRI') or (Pos('BRI',bank) > 0) then begin

      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('SELECT  @d:=IF(mutasi = ''DB'', ks.jumlah, 0) AS debet, @k:=IF(mutasi = ''CR'', ks.jumlah, 0) AS kredit, @saldo:= @saldo  + @k - @d AS saldo '+
      'FROM kas_bank_import ks LEFT JOIN y_relasi_konfirmasidanmutasi yr ON id_transaksi=id_mutasi                      '+
      'LEFT JOIN detail_konfirmasipembayaran d ON id_konfirmasi=d.no LEFT JOIN order_pembelian op USING(no_order)     '+
      'LEFT JOIN customer c USING(id_customer)  '+
      'LEFT JOIN y_pemasanganmanual yp ON yp.id_rekeningkoran=ks.id_transaksi JOIN (SELECT @saldo:=(select saldo_awal from saldo_awalkasbank where kode_kas='''+kode_kas+''' )) a '+
      ' WHERE ks.kode_kas='''+kode_kas+''' and DATE(ks.tanggal) < '''+tanggal+''' order by id_transaksi asc  ');
     // ShowMessage(tabel.q1.SQL.Text);
      tabel.q1.Open;

      if tabel.q1.RecordCount <> 0 then
      begin
        tabel.q1.Last;
        vsa := tabel.q1.FieldByName('saldo').AsString;
      end
      else
      begin
        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('select saldo_awal from saldo_awalkasbank where kode_kas='''+kode_kas+''' ');
        tabel.q1.Open;

        if tabel.q1.RecordCount = 0 then vsa:='0'
        else vsa := tabel.q1.Fields[0].AsString;
      end;


      tabel.qlappemasangan.sql.Clear;
      tabel.qlappemasangan.SQL.Add('select v.*, @saldo:= @saldo  + kredit - debet AS saldo_akhir  from ( '+
      ' SELECT ks.id_transaksi,yr.no,ks.tanggal,ks.keterangan,ks.cabang,ks.jumlah,IFNULL(c.nama,IFNULL(c2.nama,ifnull(c3.nama,IFNULL(yp.keterangan,''-'')))) AS nama,d.no as nodetailkonfirmasi,ks.id_transaksi as norekening, '+
      ' @d:=IF(mutasi = ''DB'', ks.jumlah, 0) AS debet, @k:=IF(mutasi = ''CR'', ks.jumlah, 0) AS kredit, mutasi,IFNULL(nt.status, '''') AS STATUS '+
      'FROM kas_bank_import ks LEFT JOIN v_y_relasi_konfirmasidanmutasi yr ON id_transaksi=id_mutasi                      '+
      'LEFT JOIN detail_konfirmasipembayaran d ON id_konfirmasi=d.no LEFT JOIN order_pembelian op USING(no_order)     '+
      'LEFT JOIN customer c USING(id_customer)  '+
      'LEFT JOIN s_penjualan_katalog sp ON sp.no_penjualan=d.no_order '+
      'LEFT JOIN customer c2 ON c2.id_customer=sp.id_customer  '+
      'LEFT JOIN customer c3 on c3.nama=d.no_order '+
      'LEFT JOIN y_pemasanganmanual yp ON yp.id_rekeningkoran=ks.id_transaksi '+
      'LEFT JOIN n_status_pemasangan nt ON nt.no_kasbank=yr.id_mutasi AND nt.id_konfirmasi=yr.`id_konfirmasi`  '+
      ' WHERE ks.kode_kas='''+kode_kas+''' and DATE(ks.tanggal) >='''+tanggal+''' and DATE(ks.tanggal) <='''+tanggal2+''' '+
      ' GROUP BY ks.id_transaksi '+
//      ' order by if('''+tanggal+''' >= (SELECT ifnull(`data`,''2021-03-16'') FROM konstanta WHERE jenis=''TANGGAL URUT MANDIRI''),ks.no_urut,ks.id_transaksi) asc '+
      ' order by ks.no_urut '+
      ' ) as v  JOIN (SELECT @saldo:='+vsa+' ) a ');
//     ShowMessage(tabel.qlappemasangan.SQL.Text);
     tabel.qlappemasangan.Active:=true;

   end else begin

    tabel.qlappemasangan.sql.Clear;
    tabel.qlappemasangan.SQL.Add('SELECT ks.id_transaksi,yr.no,ks.tanggal,ks.keterangan,ks.cabang,ks.jumlah,IFNULL(c.nama,IFNULL(c2.nama,ifnull(c3.nama,IFNULL(yp.keterangan,''-'')))) AS nama,ks.saldo_akhir '+
    ',mutasi,if(mutasi=''CR'',ks.jumlah,0) as kredit,if(mutasi=''DB'',ks.jumlah,0) as debet,d.no as nodetailkonfirmasi,ks.id_transaksi as norekening,IFNULL(nt.status, '''') AS STATUS '+
    'FROM kas_bank_import ks LEFT JOIN y_relasi_konfirmasidanmutasi yr ON id_transaksi=id_mutasi                      '+
    'LEFT JOIN detail_konfirmasipembayaran d ON id_konfirmasi=d.no LEFT JOIN order_pembelian op USING(no_order)     '+
    'LEFT JOIN customer c USING(id_customer)  '+
    'LEFT JOIN s_penjualan_katalog sp ON sp.no_penjualan=d.no_order '+
    'LEFT JOIN customer c2 ON c2.id_customer=sp.id_customer  '+
    'LEFT JOIN customer c3 on c3.nama=d.no_order '+
    'LEFT JOIN y_pemasanganmanual yp ON yp.id_rekeningkoran=ks.id_transaksi  '+
    ' LEFT JOIN n_status_pemasangan nt ON nt.no_kasbank=yr.id_mutasi AND nt.id_konfirmasi=yr.`id_konfirmasi`  '+
    ' WHERE ks.kode_kas='''+kode_kas+''' and DATE(ks.tanggal)>='''+tanggal+''' and DATE(ks.tanggal)<='''+tanggal2+''' '+
    ' GROUP BY ks.id_transaksi order by ks.no_urut asc  ');
//    ShowMessage(tabel.qlappemasangan.SQL.Text);
    tabel.qlappemasangan.Active:=true;

   end;




end;

procedure Tfmenuutama.Button5Click(Sender: TObject);
var idcustomer2:string;
begin


fsaldocustomer.qdata.SQL.Clear;
fsaldocustomer.qdata.SQL.Add('select * from v_saldocustomer where nama='''+tkcustomer.Text+''' ');
fsaldocustomer.qdata.active:=True;
if fsaldocustomer.qdata.RecordCount = 0 then begin
  ShowMessage('customer '+tkcustomer.Text+' tidak mempunyai saldo!');
  Exit;
end else begin
fsaldocustomer.ShowModal;
end;

end;

procedure Tfmenuutama.Button6Click(Sender: TObject);
begin
tabel.qdetailclosing.SQL.Clear;
tabel.qdetailclosing.SQL.Add('SELECT cast(uc.tanggal_pemasangan as date) as tgl,nama,no_pengeluaran, '+
' jumlah_uang,sumber,IFNULL(uc.keterangan,'''') AS ket FROM uang_customer uc JOIN n_junctpenjualan nj ON nj.no_uangcustomer=uc.no  '+
' JOIN penjualan_kainstok pks ON pks.no_pengeluaran=nj.id_nopembelian JOIN customer c ON c.id_customer=pks.id_customer left join y_detailclosing yd on yd.no_uangcustomer=uc.no   '+
' WHERE (sumber=''CASH'' OR sumber=''DEBIT'' OR sumber=''CC'') and yd.no_uangcustomer is null ORDER BY no_pengeluaran,sumber');
tabel.qdetailclosing.Active:=True;
end;

procedure Tfmenuutama.Button7Click(Sender: TObject);
begin
Panel6.Visible:=True;
Panel6.Top:=168;
Panel6.Left:=10;
Panel5.Visible:=false;
tverify.Clear;
tverify.SetFocus;

end;

procedure Tfmenuutama.Button8Click(Sender: TObject);
begin
if tverify.Text<>v_verifyadm then begin
ShowMessage('Nominal Hasil print dari edc salah! silahkan cek kembali transaksi anda!');
vpembayaran.Last;
vpembayaran.Delete;
end;
Panel6.Visible:=false;
end;

procedure Tfmenuutama.Button9Click(Sender: TObject);
var srupiah:string;
begin
if cbcash.Text='' then begin

end;
if tnominal.Text='' then begin

end;
vtclosing.Open;

  srupiah := tnominal.Text;
  srupiah := stringreplace(sRupiah,',','',[rfreplaceall,rfignorecase]);
  srupiah := stringreplace(srupiah,'.','',[rfreplaceall,rfignorecase]);
if vtclosing.Locate('bank',cbcash.Text,[])=true then begin
  ShowMessage('Bank '+cbcash.Text+' Sudah terdaftar!');
  Exit;
end;

vtclosing.Append;
vtclosingbank.Value:=cbcash.Text;
vtclosingnominal.Value:=StrToFloat(srupiah);
vtclosing.Post;
tnominal.Clear;
tnominal.SetFocus;

{ status:=qkassementaranama_perkiraan.Value;
  if qpindahkas.RecordCount<>0 then
  begin
    if status='PENERIMAAN' then begin
     feditkas.ComboBox1.ItemIndex:=0;
    end else begin
     feditkas.ComboBox1.ItemIndex:=1;
    end;
    feditkas.dtanggal.Date:=qpindahkastanggal.Value;
    feditkas.tterima.Text:=qpindahkasdari.Value;
    feditkas.tkas.Text:=qpindahkasnama_kas.Value;
    feditkas.tperkiraan.Text:=qpindahkasnama_perkiraan.Value;
    feditkas.tjumlah.Text:=floattostr(qpindahkasjumlah.Value);
    feditkas.jmledit:=qpindahkasjumlah.Value;
    feditkas.mcatatan.Text:=qpindahkasketerangan.Value;

    feditkas.tgk:=formatdatetime('dd-MMM-yyyy',qpindahkastanggal.Value);
    feditkas.notransaksi:=qpindahkasno_transaksi.Text;
    feditkas.jumlah:=qpindahkasjumlah.Text;

    feditkas.showmodal;
  end else ShowMessage('Data tidak ada!');    }
end;

procedure Tfmenuutama.C1Click(Sender: TObject);
var
  selisih,besarkecil : string;
begin
  if (tabel.qjurnalnonkontrabonongkir_sesudah.Value + tabel.qjurnalnonkontrabonasuransi_sesudah.Value)
  > (tabel.qjurnalnonkontrabonongkir_sebelum.Value + tabel.qjurnalnonkontrabonasuransi_sebelum.Value) then
  begin
    selisih := FloatToStr(((tabel.qjurnalnonkontrabonongkir_sesudah.Value + tabel.qjurnalnonkontrabonasuransi_sesudah.Value))
     - (tabel.qjurnalnonkontrabonongkir_sebelum.Value + tabel.qjurnalnonkontrabonasuransi_sebelum.Value));
    besarkecil := 'besar';
  end
  else // jika total sesudah lebih kecil dari total sebelum edit maka POST A/R cr.memo dan copy A/P cr.memo
  begin
    selisih := FloatToStr((tabel.qjurnalnonkontrabonongkir_sebelum.Value + tabel.qjurnalnonkontrabonasuransi_sebelum.Value)
    - (tabel.qjurnalnonkontrabonongkir_sesudah.Value + tabel.qjurnalnonkontrabonasuransi_sesudah.Value));
    besarkecil := 'kecil';
  end;

  if StrToFloat(selisih) <> 0 then
  begin
    with fInfoEditPembayaranKontrabon do
    begin
      noorder := tabel.qjurnalnonkontrabonno_order.Text;
      vselisih := selisih;
      vbesarkecil := besarkecil;
      vekspedisi := cxcbekspedisinon.Text;

      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('select FORMAT('+selisih+',0,''de_DE'') as selisih');
      tabel.q1.Open;
      selisih := tabel.q1.Fields[0].Text;
      vformatSelisih := selisih;

      ShowModal;
    end;
  end
  else
  begin
    ShowMessage('Data tersebut tidak terdapat selisih edit');
  end;
end;

procedure Tfmenuutama.cbbankDropDown(Sender: TObject);
begin
tabel.q1.SQL.Clear;
tabel.q1.SQL.Add('select * from biaya_admin where tipe=''TT'' ');
tabel.q1.Active:=true;
if not(tabel.q1.Eof) and (tabel.q1.Bof) then begin
cbbank.Items.Clear;
tabel.q1.First;
while not tabel.q1.Eof do
begin
cbbank.Items.Append(tabel.q1.FieldValues['jenis']);
tabel.q1.Next;

 end;

end;
end;

procedure Tfmenuutama.cbbankKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then begin
   tuang.SetFocus;
end;
end;

procedure Tfmenuutama.cbjenisChange(Sender: TObject);
begin
  if (cbjenis.Text='CASH')  then begin
    tkartu.Enabled:=False;
    label6.Caption:='-';
     cbbank.Enabled:=false;
     cbbank.Clear;
  end else if (cbjenis.Text='TT') then begin
    label6.Caption:='Atas nama';
    tkartu.Enabled:=true;
     cbbank.Enabled:=false;
     cbbank.Clear;
  end else if  (cbjenis.Text='CC') then begin
    label6.Caption:='4 Digit No kartu';
    tkartu.Enabled:=true;
    cbbank.Enabled:=false;
    cbbank.Clear;
  end else if (cbjenis.Text='DEBIT') then begin   
   label6.Caption:='4 Digit No kartu';
   tkartu.Enabled:=true;
   cbbank.Clear;
   cbbank.Enabled:=True;
    
  end;
end;

procedure Tfmenuutama.cbjenisKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then begin
  if cbjenis.Text='CASH' then begin
   tuang.SetFocus;
  end else begin
    tkartu.SetFocus;
  end;

end;
end;

procedure Tfmenuutama.cbpotonganDropDown(Sender: TObject);
begin
tabel.q1.SQL.Clear;
tabel.q1.SQL.Add('select * from potongan order by jenis_potongan');
tabel.q1.Active:=true;
if not(tabel.q1.Eof) and (tabel.q1.Bof) then begin
cbpotongan.Items.Clear;
tabel.q1.First;
while not tabel.q1.Eof do
begin
cbpotongan.Items.Append(tabel.q1.FieldValues['jenis_potongan']);
tabel.q1.Next;

 end;

end;
end;

procedure Tfmenuutama.cbpotonganKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13  then begin
  tpotongan.SetFocus;
end;
end;

procedure Tfmenuutama.cxButton1Click(Sender: TObject);
var s:string;
begin

end;

procedure Tfmenuutama.cxcbekspedisiPropertiesChange(Sender: TObject);
begin
  tabel.qjurnalkotrabon.Active := false;

  pcopy.Visible := false;
  psudahpost.Visible := false;
  ppost.Visible := false;

  linfopph.Visible := False;
end;

procedure Tfmenuutama.cxGrid17DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if Trim(tabel.qlappemasangannodetailkonfirmasi.Text) ='' then
    ShowMessage('Data belum dipasangkan,silahkan pasangkan terlebih dahulu')
  else
  begin
    if (vt_jumlah <> tabel.qlappemasanganjumlah.Value) and (vt_jumlah <> 0) then
    begin
      if (vt_idmutasi1 = -1) or (vt_idmutasi2 = -1) then
        ShowMessage('Jumlah uang harus sama !');
    end
    else
    begin
      if vt_idmutasi1 = tabel.qlappemasanganid_transaksi.Value then
      begin
        vt_idmutasi1 := -1;
        vt_nokonfirmasi1 := -1;
      end
      else if vt_idmutasi2 = tabel.qlappemasanganid_transaksi.value then
      begin
        vt_idmutasi2 := -1;
        vt_nokonfirmasi2 := -1;
      end
      else if vt_idmutasi1 = -1 then
      begin
        vt_idmutasi1 := tabel.qlappemasanganid_transaksi.Value;
        vt_nokonfirmasi1 := tabel.qlappemasangannodetailkonfirmasi.Value;
      end
      else
      begin
        vt_idmutasi2 := tabel.qlappemasanganid_transaksi.value;
        vt_nokonfirmasi2 := tabel.qlappemasangannodetailkonfirmasi.value;
      end;

      if vt_jumlah = 0 then
        vt_jumlah := tabel.qlappemasanganjumlah.Value;

      if (vt_idmutasi1 = -1) and (vt_idmutasi2 = -1) then
        vt_jumlah := 0;

      if (vt_idmutasi1 <> -1) and (vt_idmutasi2 <> -1) then
        btntukar.Enabled:=true
      else
        btntukar.Enabled:=false;

      cxGrid17DBTableView1.Invalidate(false);
      cxGrid17DBTableView1.Invalidate(true);
    end;
  end;
end;

procedure Tfmenuutama.cxGrid17DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (Sender.DataController.GetValue(AViewInfo.GridRecord.RecordIndex, 0) = vt_idmutasi1) or (Sender.DataController.GetValue(AViewInfo.GridRecord.RecordIndex, 0) = vt_idmutasi2) then
  begin

    if (AViewInfo.Selected) and (Screen.ActiveControl = Sender.Site) then
    begin
      ACanvas.Brush.Color := clSkyBlue;
      ACanvas.Font.Color := clBlack;
    end
    else
    begin
      ACanvas.Brush.Color := clLime;
      ACanvas.Font.Color := clBlack;

    end;
  end;
end;

procedure Tfmenuutama.cxGrid27DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
// Edit12.Text := RightStr(tabel.qpemasangancusketerangan.Value,5);
 tabel.qcuspemsangan.SQL.Clear;
 tabel.qcuspemsangan.SQL.Add('select * from customer '+
 'where nama like ''%'+RightStr(tabel.qpemasangancusketerangan.Value,5)+'%'' ');
// ShowMessage(tabel.qcuspemsangan.SQL.Text);
 tabel.qcuspemsangan.ExecSQL;

 Edit13.Text := tabel.qpemasangancusno_transaksi.Value;
end;

procedure Tfmenuutama.cxGrid28DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
 idcuscus := tabel.qcuspemsanganid_customer.AsString;
 Edit14.Text := tabel.qcuspemsangannama.Value;

 ShowMessage('Customer berhasil ditambahkan !');
end;

procedure Tfmenuutama.cxGrid29DBTableView1pilihanPropertiesEditValueChanged(
  Sender: TObject);
begin
vtotalkontrabon:=0;
      tabel.qjurnalkotrabon.First;
      while not tabel.qjurnalkotrabon.Eof do begin

            if tabel.qjurnalkotrabonpilihan.Value='True' then  begin

            vtotalkontrabon:=vtotalkontrabon+tabel.qjurnalkotrabonongkir.Value;
            end;
            tabel.qjurnalkotrabon.Next;
       end;
      edit17.Text:=formatcurr('#,##',vtotalkontrabon);

       hitungselisih();
end;

procedure Tfmenuutama.cxGrid30DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   tabel.qlapdetailkontrabon.Active:=false;
end;

procedure Tfmenuutama.cxGridDBColumn9PropertiesEditValueChanged(
  Sender: TObject);
var
  Edit: TcxCustomEdit;
  key: Word;
  recno:integer;
begin
  Edit := Sender as TcxCustomEdit;
  if LowerCase(Edit.EditValue) = 'true' then
  begin
    vtotalkontrabon := vtotalkontrabon + tabel.qjurnalkotrabontotal.Value;
    vtotalCentangKontrabon := vtotalCentangKontrabon + 1;
  end
  else
  begin
    vtotalkontrabon := vtotalkontrabon - tabel.qjurnalkotrabontotal.Value;
    vtotalCentangKontrabon := vtotalCentangKontrabon - 1;
  end;

  ttagihancentang.Text := FloatToStr(vtotalkontrabon);
  key := 0;
  ttagihaneksKeyUp(ttagihancentang,key,[]);

  if vtotalCentangKontrabon > 0 then
    SpeedButton8.Enabled := false
  else
    SpeedButton8.Enabled := True;

  lcentangkontrabon.Caption := 'Tercentang : '+IntToStr(vtotalCentangKontrabon);
end;

procedure Tfmenuutama.cxGridDBTableView10CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var jmlrekkoran:real;  srupiah,namabang,kategori,t1,keterangan:string;
begin
//if tabel.qpemasanganmanual.RecordCount > 0 then begin

 kategori:=tabel.qmanualkategori.Value;
 namabang:=tabel.qmanualnamabank.Value;
 keterangan:=tabel.qmanualketerangan.Value;

  t1 := FormatDateTime('yyyy-mm-dd',DateTimePicker1.DateTime);
   if kategori='SETORAN TUNAI' then begin
      tabel.qpasangmanual.SQL.Clear;
      tabel.qpasangmanual.SQL.Add('SELECT CAST(nt.tanggal AS DATE) AS tanggal,ro.no_penjualan,nt.bank,jenis_pembayaran,sum(nt.jumlah)-(IFNULL(pt.potongan,0)+IFNULL(ak.nominal,0)+IFNULL(pt.saldo,0)) as jumlah, '+
      ' ''False'' AS pilih  '+
      'FROM n_temp_kasirdetail nt JOIN relasi_orderdanpenjualan ro USING(no_order)  '+
      'LEFT JOIN (SELECT no_order,potongan,saldo FROM n_temp_kasir GROUP BY no_order ) AS pt ON pt.no_order=nt.no_order   '+
      'LEFT JOIN (SELECT no_penjualan,nominal FROM a_kembalian GROUP BY no_penjualan) AS ak ON ak.no_penjualan=nt.no_order   '+
      'WHERE CAST(nt.tanggal AS DATE) = '''+t1+'''  AND jenis_pembayaran=''CASH'' and substr(ro.no_penjualan,3,2)=substr('''+t1+''',9,2) group by ro.no_penjualan    '+
      'HAVING no_penjualan NOT IN (SELECT no_transaksi FROM junct_manualbank ) '+
      ' union all     '+
      'select sp.tanggal AS tanggal,sp.no_penjualan,nt.bank,jenis_pembayaran,sum(jumlah) as jumlah,''False'' AS pilih      '+
      'FROM s_penjualan_katalog sp JOIN s_detail_penjualankatalog sd ON sp.no_penjualan =sd.no_penjualan     '+
      'JOIN customer c ON c.id_customer =sp.id_customer                                             '+
      'JOIN n_temp_kasirdetail nt ON nt.no_order=sp.no_penjualan                                 '+
      'LEFT JOIN order_pembelian op                                                              '+
      'ON op.no_order =sp.no_order WHERE ISNULL(op.no_order) and CAST(nt.tanggal AS DATE) = '''+t1+'''  AND jenis_pembayaran=''CASH'' group by sp.no_penjualan      ');
      tabel.qpasangmanual.Active:=True;
      //  ShowMessage(tabel.qpasangmanual.SQL.Text);
      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('SELECT SUM(jumlah) as jml FROM (SELECT sum(nt.jumlah)-(IFNULL(pt.potongan,0)+IFNULL(ak.nominal,0)+IFNULL(pt.saldo,0)) as jumlah '+
      'FROM n_temp_kasirdetail nt JOIN relasi_orderdanpenjualan ro USING(no_order)  '+
      'LEFT JOIN (SELECT no_order,potongan,saldo FROM n_temp_kasir GROUP BY no_order ) AS pt ON pt.no_order=nt.no_order   '+
      'LEFT JOIN (SELECT no_penjualan,nominal FROM a_kembalian GROUP BY no_penjualan) AS ak ON ak.no_penjualan=nt.no_order   '+
      'WHERE CAST(nt.tanggal AS DATE) = '''+t1+''' and substr(ro.no_penjualan,3,2)=substr('''+t1+''',9,2)  AND jenis_pembayaran=''CASH'' group by ro.no_penjualan    '+
      'HAVING no_penjualan NOT IN (SELECT no_transaksi FROM junct_manualbank ) '+
      ' union all     '+
      'select sum(jumlah) as jumlah     '+
      'FROM s_penjualan_katalog sp JOIN s_detail_penjualankatalog sd ON sp.no_penjualan =sd.no_penjualan     '+
      'JOIN customer c ON c.id_customer =sp.id_customer                                             '+
      'JOIN n_temp_kasirdetail nt ON nt.no_order=sp.no_penjualan                                 '+
      'LEFT JOIN order_pembelian op                                                              '+
      'ON op.no_order =sp.no_order WHERE ISNULL(op.no_order) and CAST(nt.tanggal AS DATE) = '''+t1+'''  AND jenis_pembayaran=''CASH'' group by sp.no_penjualan   ) as t ');

      tabel.q1.Active:=True;
   end else if ((kategori='SETTLEMENT') and ( (keterangan='CC') or (keterangan='cc') )) then begin
       tabel.qpasangmanual.SQL.Clear;
      tabel.qpasangmanual.SQL.Add('SELECT CAST(nt.tanggal AS DATE) AS tanggal,ro.`no_penjualan`,nt.bank,jenis_pembayaran,nt.jumlah,''False'' as pilih '+
      ' FROM n_temp_kasirdetail nt JOIN relasi_orderdanpenjualan ro USING(no_order)  '+
      ' where CAST(nt.tanggal AS DATE) = '''+t1+'''  and jenis_pembayaran=''CC'' and nt.bank='''+namabang+''' '+
      ' having no_penjualan not in (select no_transaksi from junct_manualbank )  ');
      tabel.qpasangmanual.Active:=True;

      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('SELECT sum(nt.jumlah) as jml '+
      ' FROM n_temp_kasirdetail nt JOIN relasi_orderdanpenjualan ro USING(no_order)  '+
      ' where CAST(nt.tanggal AS DATE) = '''+t1+'''  and jenis_pembayaran=''CC'' and nt.bank='''+namabang+''' and no_penjualan not in (select no_transaksi from junct_manualbank )  ');
      tabel.q1.Active:=True;
   end else begin
      tabel.qpasangmanual.SQL.Clear;
      tabel.qpasangmanual.SQL.Add('SELECT CAST(nt.tanggal AS DATE) AS tanggal,ro.`no_penjualan`,nt.bank,jenis_pembayaran,nt.jumlah,''False'' as pilih '+
      ' FROM n_temp_kasirdetail nt JOIN relasi_orderdanpenjualan ro USING(no_order)  '+
      ' where CAST(nt.tanggal AS DATE) = '''+t1+''' and jenis_pembayaran!=''CC''  and jenis_pembayaran!=''TRANSFER'' and nt.bank='''+namabang+''' and jenis_pembayaran!=''CASH'' '+
      ' having no_penjualan not in (select no_transaksi from junct_manualbank )  ');
      tabel.qpasangmanual.Active:=True;

      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('SELECT sum(nt.jumlah) as jml '+
      ' FROM n_temp_kasirdetail nt JOIN relasi_orderdanpenjualan ro USING(no_order)  '+
      ' where CAST(nt.tanggal AS DATE) = '''+t1+''' and jenis_pembayaran!=''CC''  and jenis_pembayaran!=''TRANSFER'' and nt.bank='''+namabang+''' and jenis_pembayaran!=''CASH'' and no_penjualan not in (select no_transaksi from junct_manualbank )  ');
      tabel.q1.Active:=True;
   end;



   if tabel.qpasangmanual.RecordCount > 0 then begin

  ceklisjumlah := 0;
  Edit9.Text:=formatcurr('#,###',tabel.q1.FieldValues['jml']);

     jmlrekkoran:=tabel.qmanualnominal.Value;

    srupiah := edit9.text;
    srupiah := stringreplace(sRupiah,',','',[rfreplaceall,rfignorecase]);
    srupiah := stringreplace(srupiah,'.','',[rfreplaceall,rfignorecase]);
    if (Abs(jmlrekkoran-strtofloat(srupiah)) >= 100000 ) then begin
      Edit11.Color:=clRed;
    //  Edit11.Font.Color:=clWhite
    end else begin
       Edit11.Color:=clYellow;
      //   Edit11.Font.Color:=clWhite
    end;

    Edit11.Text:=formatcurr('#,###',jmlrekkoran-strtofloat(srupiah));
  end;
end;

procedure Tfmenuutama.cxGridDBTableView11EditValueChanged(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem);

  var
  cek:string;
begin
//  if (cxGridDBTableView11Column1.Index = AItem.Index) then
//  begin
//    cek:=( Sender.Controller.EditingController.Edit.EditingValue);
//    if cek = 'True' then
//      ceklisjumlah := ceklisjumlah + tabel.qpasangmanualjumlah.Value
//    else  if cek = 'False' then
//    ceklisjumlah := ceklisjumlah - tabel.qpasangmanualjumlah.Value;
//
//    Edit9.Text := FormatCurr('0,0.00',ceklisjumlah)
//  end;

end;

procedure Tfmenuutama.cxGridDBTableView15CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (Sender.DataController.GetValue(AViewInfo.GridRecord.RecordIndex, 0) <> '')  then
  begin

    if (AViewInfo.Selected) and (Screen.ActiveControl = Sender.Site) then
    begin
      ACanvas.Brush.Color := clSkyBlue;
      ACanvas.Font.Color := clBlack;
    end
    else
    begin
      ACanvas.Brush.Color := clWebWheat;
      ACanvas.Font.Color := clBlack;

    end;
  end;
end;

procedure Tfmenuutama.cxGridDBTableView16CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnSimpanLibur.Caption := 'Simpan Hasil Edit';
  btnHapusLibur.Enabled := True;
  vpilihTanggalLibur := FormatDateTime('yyyy-mm-dd', tabel.vtholidaystanggal_libur.Value);
  cxTanggalLibur.Date := tabel.vtholidaystanggal_libur.Value;
  cxNamaLibur.Text := tabel.vtholidaysnama.Text;
  cxTipeLibur.Text := tabel.vtholidaystipe.Text;
  cxKeteranganLibur.Text := tabel.vtholidaysketerangan.Text;
  cxGridLibur.Enabled := false;
end;

procedure Tfmenuutama.cxGridDBTableView3CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
vtpilihan.Open;
v_jmlrekening := 01;
v_cekpesanan2:='';
//cxGridDBTableView3.Invalidate(false);
//cxGridDBTableView3.Invalidate(true);
if tabel.qkonfirmasi.RecordCount = 0 then begin
 v_jmlkonfirmasi:=0;
 v_cekpesanan:='';
end else begin
v_jmlkonfirmasi:=tabel.qkonfirmasijumlah_uang.Value;
v_cekpesanan:=tabel.qkonfirmasino_pesanan.Value;
end;



tabel.qrekeningkoran.Active:=false;
tabel.qrekeningkoran.Active:=true;
tabel.qrekeningkoran.Locate('jumlah',v_jmlkonfirmasi,[]);
if tabel.qrekeningkoran.Locate('jumlah',v_jmlkonfirmasi,[]) = false then
begin
 tabel.qrekeningkoran.Locate('keterangan',v_cekpesanan,[]);
end;



vtpilihan.Clear;
hitungkonfirmasi;

//

//
cxGridDBTableView4.Invalidate(false);
cxGridDBTableView4.Invalidate(true);

end;

procedure Tfmenuutama.cxGridDBTableView3CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var no,namafhoto,alamat,lokasi:string;
    InStream: TFileStream;
    tempatsimpan,b,d,e:string;
  a,c,i:Integer;

begin

 no:=IntToStr(tabel.qkonfirmasinokonfirmasi.Value);
 tabel.q1.SQL.Clear;
 tabel.q1.SQL.Add('select * from fhoto_konfirmasi where no_detail='''+no+''' ');
 tabel.q1.Active:=true;

  if tabel.q1.RecordCount > 0 then begin
     namafhoto:=tabel.q1.FieldValues['fhoto'];
    tabel.q1.SQL.Clear;
    tabel.q1.SQL.Add('select * from alamat_fhoto where kategori=''TT''  ');
    tabel.q1.Active:=true;
    alamat:=tabel.q1.FieldValues['nama'];
    lokasi:=alamat+namafhoto;
  //  try
        b:=ExtractFilePath(ParamStr(0))+'foto tt\';

        tempatsimpan := b+namafhoto+'.png';
        CopyFile(PChar(lokasi), PChar(tempatsimpan),true);
      //  ShowMessage(lokasi);
      //  ShowMessage(tempatsimpan);

            shellExecute(
            0,'open', 'c:\Windows\System32\rundll32.exe',
            PChar('c:\Windows\System32\shimgvw.dll,ImageView_Fullscreen '+tempatsimpan),
            nil, SW_MAXIMIZE);
  //  except
   //    showmessage('Fhoto tidak ditemukan!');
  //  end;


  end else begin
    ShowMessage('Fhoto tidak ada');
  end;

end;

procedure Tfmenuutama.cxGridDBTableView3CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if Sender.DataController.GetValue(AViewInfo.GridRecord.RecordIndex, 5) = v_jmlrekening then
  begin

    if (AViewInfo.Selected) and (Screen.ActiveControl = Sender.Site) then
    begin
      ACanvas.Brush.Color := clSkyBlue;
      ACanvas.Font.Color := clBlack;
    end
    else
    begin
      ACanvas.Brush.Color := clLime;
      ACanvas.Font.Color := clBlack;

    end;
  end;

   if Sender.DataController.GetValue(AViewInfo.GridRecord.RecordIndex, 2) = v_cekpesanan2 then
  begin

    if (AViewInfo.Selected) and (Screen.ActiveControl = Sender.Site) then
    begin
      ACanvas.Brush.Color := clSkyBlue;
      ACanvas.Font.Color := clBlack;
    end
    else
    begin
      ACanvas.Brush.Color := clYellow;
      ACanvas.Font.Color := clBlack;

    end;
  end;
end;

procedure Tfmenuutama.cxGridDBTableView3StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  AColumn: TcxGridDBColumn;
  selisih,selisih2:real;
  konfirmasi:real;
  idtransaksi:string;
  AView: TcxGridDBTableView;
begin
 // if v_stswarna='MULAI' then begin
//    konfirmasi:=ARecord.Values[cxGridDBTableView3.Index];
//    selisih:=konfirmasi-v_jmlkonfirmasi;
//   idtransaksi:=ARecord.Values[cxGridDBTableView4id_transaksi.Index];
//    vtpilihan.Open;
//    if vtpilihan.Locate('id_transaksi',idtransaksi,[])=true    then  begin
//       AStyle := cxdipilih
//   end else if  ( Abs(selisih) = 0)  then  begin
//      AStyle := cxDefault;
//   end else begin
//      if ARecord.Focused then
//        AStyle := cxNotProcessedFocused
//      else
//        AStyle := cxNotProcessed;
//   end;
end;

procedure Tfmenuutama.cxGridDBTableView4CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
  var bank:string;
begin
v_jmlkonfirmasi:=01;
v_cekpesanan:='';
//cxGridDBTableView4.Invalidate(false);
//cxGridDBTableView4.Invalidate(true);
if tabel.qrekeningkoran.RecordCount = 0 then begin
 v_jmlrekening:=0;
 v_cekpesanan2:='';
 bank:='';
end else begin
v_jmlrekening:=tabel.qrekeningkoranjumlah.Value;
v_cekpesanan2:=tabel.qrekeningkoranketerangan.Value;
bank:=tabel.qrekeningkoranbank.Value;
end;

tabel.qkonfirmasi.Active:=false;
tabel.qkonfirmasi.Active:=true;
     //  ShowMessage(bank);
      //  ShowMessage(FloatToStr(v_jmlrekening));
  if (bank ='SHOPEE') OR (bank='TOKOPEDIA') then begin
     if tabel.qkonfirmasi.Locate('no_pesanan',v_cekpesanan2,[]) = true then
    begin
      tabel.qkonfirmasi.Locate('no_pesanan',v_cekpesanan2,[]);
    end else begin
     tabel.qkonfirmasi.Locate('jumlah_uang',v_jmlrekening,[]);
    end;

  end else begin
     tabel.qkonfirmasi.Locate('jumlah_uang',v_jmlrekening,[]);
  end;


//
//if tabel.qkonfirmasi.Locate('jumlah_uang',v_jmlrekening,[]) = false then
//begin
//  tabel.qkonfirmasi.Locate('no_pesanan',v_cekpesanan2,[]);
//end;

cxGridDBTableView3.Invalidate(false);
cxGridDBTableView3.Invalidate(true);



end;

procedure Tfmenuutama.cxGridDBTableView4CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
   if Sender.DataController.GetValue(AViewInfo.GridRecord.RecordIndex, 0) = v_jmlkonfirmasi then
  begin

    if (AViewInfo.Selected) and (Screen.ActiveControl = Sender.Site) then
    begin
      ACanvas.Brush.Color := clSkyBlue;
      ACanvas.Font.Color := clBlack;
    end
    else
    begin
      ACanvas.Brush.Color := clLime;
      ACanvas.Font.Color := clBlack;

    end;
  end;

   if Sender.DataController.GetValue(AViewInfo.GridRecord.RecordIndex, 1) = v_cekpesanan then
  begin

    if (AViewInfo.Selected) and (Screen.ActiveControl = Sender.Site) then
    begin
      ACanvas.Brush.Color := clSkyBlue;
      ACanvas.Font.Color := clBlack;
    end
    else
    begin
      ACanvas.Brush.Color := clYellow;
      ACanvas.Font.Color := clBlack;

    end;
  end;
end;

procedure Tfmenuutama.cxGridDBTableView4StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  AColumn: TcxGridDBColumn;
  selisih,selisih2:real;
  konfirmasi:real;
  idtransaksi:string;
  AView: TcxGridDBTableView;
begin
 // if v_stswarna='MULAI' then begin
//    konfirmasi:=ARecord.Values[cxGridDBTableView4sisa.Index];
//    selisih:=konfirmasi-v_jmlkonfirmasi;
//   idtransaksi:=ARecord.Values[cxGridDBTableView4id_transaksi.Index];
//    vtpilihan.Open;
//    if vtpilihan.Locate('id_transaksi',idtransaksi,[])=true    then  begin
//       AStyle := cxdipilih
//   end else if  ( Abs(selisih) = 0)  then  begin
//      AStyle := cxDefault;
//   end else begin
//      if ARecord.Focused then
//        AStyle := cxNotProcessedFocused
//      else
//        AStyle := cxNotProcessed;
//   end;

 // end;


end;

procedure Tfmenuutama.cxListBox2DblClick(Sender: TObject);
begin
tperkiraan.Text:=cxListBox2.Items.Strings[cxListBox2.ItemIndex];
cxListBox2.Height:=0;
if tjumlah.Enabled=True then tjumlah.SetFocus;
end;

procedure Tfmenuutama.cxListBox2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then begin
tperkiraan.Text:=cxListBox2.Items.Strings[cxListBox2.ItemIndex];
cxListBox2.Height:=0;
if tjumlah.Enabled=True then tjumlah.SetFocus;
end;
end;

procedure Tfmenuutama.cxPageControl1TcxPageControlPropertiesTcxPCCustomButtonsButtons0Click(
  Sender: TObject);
begin
 cxPageControl1.Pages[cxPageControl1.ActivePageIndex].TabVisible := False;
end;

procedure Tfmenuutama.dxBarLargeButton29Click(Sender: TObject);
begin
        timercekpemasangan.Enabled:=false;
 v_stswarna:='STOP';
 dxStatusBar1.Panels[0].Text:=v_namakaryawan;
 cxPageControl1.Pages[0].TabVisible := false;
 cxPageControl1.Pages[1].TabVisible := false;
 cxPageControl1.Pages[2].TabVisible := false;
 cxPageControl1.Pages[3].TabVisible := false;
 sGradientPanel4.Visible:=true;
 tuser.Text:='';
 tpass.Text:='';
 tuser.SetFocus;

end;

procedure Tfmenuutama.dxBarLargeButton40Click(Sender: TObject);
begin
cxPageControl1.Pages[3].TabVisible := true;
cxPageControl1.ActivePageIndex:=3;
//tabel.qclosing.SQL.Clear;
//tabel.qclosing.SQL.Add('select * from v_closing where tgl=curdate()');
//tabel.qclosing.Active:=True;

tabel.q1.SQL.Clear;
tabel.q1.SQL.Add('SELECT ifnull(sum(jumlah_uang),0) as jml FROM uang_customer uc JOIN n_junctpenjualan nj ON nj.no_uangcustomer=uc.no '+
'JOIN penjualan_kainstok pks ON pks.no_pengeluaran=nj.id_nopembelian JOIN customer c ON c.id_customer=pks.id_customer  '+
'LEFT JOIN y_detailclosing yd ON yd.no_uangcustomer=uc.no        '+
'WHERE sumber=''CASH'' AND yd.no IS NULL  ORDER BY no_pengeluaran,sumber');
tabel.q1.Active:=True;
 if tabel.q1.RecordCount > 0 then begin
   dcash.Text:=formatcurr('#,##',tabel.q1.FieldValues['jml']);
 end else begin
  dcash.Text:='0';
 end;

 tabel.q1.SQL.Clear;
tabel.q1.SQL.Add('SELECT ifnull(sum(jumlah_uang),0) as jml FROM uang_customer uc JOIN n_junctpenjualan nj ON nj.no_uangcustomer=uc.no '+
'JOIN penjualan_kainstok pks ON pks.no_pengeluaran=nj.id_nopembelian JOIN customer c ON c.id_customer=pks.id_customer  '+
'LEFT JOIN y_detailclosing yd ON yd.no_uangcustomer=uc.no        '+
'WHERE sumber=''DEBIT'' AND uc.keterangan=''BCA'' and yd.no IS NULL  ORDER BY no_pengeluaran,sumber');
tabel.q1.Active:=True;
 if tabel.q1.RecordCount > 0 then begin
   dbca.Text:=formatcurr('#,##',tabel.q1.FieldValues['jml']);
 end else begin
  dbca.Text:='0';
 end;

 tabel.q1.SQL.Clear;
tabel.q1.SQL.Add('SELECT ifnull(sum(jumlah_uang),0) as jml FROM uang_customer uc JOIN n_junctpenjualan nj ON nj.no_uangcustomer=uc.no '+
'JOIN penjualan_kainstok pks ON pks.no_pengeluaran=nj.id_nopembelian JOIN customer c ON c.id_customer=pks.id_customer  '+
'LEFT JOIN y_detailclosing yd ON yd.no_uangcustomer=uc.no        '+
'WHERE sumber=''DEBIT'' AND uc.keterangan=''MANDIRI'' and yd.no IS NULL  ORDER BY no_pengeluaran,sumber');
tabel.q1.Active:=True;
 if tabel.q1.RecordCount > 0 then begin
   dmandiri.Text:=formatcurr('#,##',tabel.q1.FieldValues['jml']);
 end else begin
   dmandiri.Text:='0';
 end;

 tabel.q1.SQL.Clear;
tabel.q1.SQL.Add('SELECT ifnull(sum(jumlah_uang),0) as jml FROM uang_customer uc JOIN n_junctpenjualan nj ON nj.no_uangcustomer=uc.no '+
'JOIN penjualan_kainstok pks ON pks.no_pengeluaran=nj.id_nopembelian JOIN customer c ON c.id_customer=pks.id_customer  '+
'LEFT JOIN y_detailclosing yd ON yd.no_uangcustomer=uc.no        '+
'WHERE sumber=''DEBIT'' AND uc.keterangan=''LAINNYA'' and yd.no IS NULL  ORDER BY no_pengeluaran,sumber');
tabel.q1.Active:=True;
 if tabel.q1.RecordCount > 0 then begin
   dlainnya.Text:=formatcurr('#,##',tabel.q1.FieldValues['jml']);
 end else begin
   dlainnya.Text:='0';
 end;

 tabel.q1.SQL.Clear;
tabel.q1.SQL.Add('SELECT ifnull(sum(jumlah_uang),0) as jml FROM uang_customer uc JOIN n_junctpenjualan nj ON nj.no_uangcustomer=uc.no '+
'JOIN penjualan_kainstok pks ON pks.no_pengeluaran=nj.id_nopembelian JOIN customer c ON c.id_customer=pks.id_customer  '+
'LEFT JOIN y_detailclosing yd ON yd.no_uangcustomer=uc.no        '+
'WHERE sumber=''CC'' and  yd.no IS NULL  ORDER BY no_pengeluaran,sumber');
tabel.q1.Active:=True;
 if tabel.q1.RecordCount > 0 then begin
   dcc.Text:=formatcurr('#,##',tabel.q1.FieldValues['jml']);
 end else begin
   dcc.Text:='0';
 end;


tabel.qdetailclosing.SQL.Clear;
tabel.qdetailclosing.SQL.Add('SELECT cast(uc.tanggal_pemasangan as date) as tgl,nama,no_pengeluaran, '+
' jumlah_uang,sumber,IFNULL(uc.keterangan,'''') AS ket FROM uang_customer uc JOIN n_junctpenjualan nj ON nj.no_uangcustomer=uc.no  '+
' JOIN penjualan_kainstok pks ON pks.no_pengeluaran=nj.id_nopembelian JOIN customer c ON c.id_customer=pks.id_customer left join y_detailclosing yd on yd.no_uangcustomer=uc.no   '+
' WHERE (sumber=''CASH'' OR sumber=''DEBIT'' OR sumber=''CC'') and yd.no_uangcustomer is null ORDER BY no_pengeluaran,sumber');
tabel.qdetailclosing.Active:=True;

tabel.q1.SQL.Clear;
tabel.q1.SQL.Add('select * from kas_bank where bank!='''' and bank!=''BCA2'' order by bank asc ');
tabel.q1.Active:=true;
if not(tabel.q1.Eof) and (tabel.q1.Bof) then begin
cbcash.Items.Clear;
tabel.q1.First;
while not tabel.q1.Eof do
begin
cbcash.Items.Append(tabel.q1.FieldValues['bank']);
tabel.q1.Next;
end;

end;
cbcash.ItemIndex:=1;

tabel.q1.SQL.Clear;
tabel.q1.SQL.Add('select * from kas_bank where bank!='''' and bank!=''BCA2'' order by bank asc  ');
tabel.q1.Active:=true;
if not(tabel.q1.Eof) and (tabel.q1.Bof) then begin
cbcc.Items.Clear;
tabel.q1.First;
while not tabel.q1.Eof do
begin
cbcc.Items.Append(tabel.q1.FieldValues['bank']);
tabel.q1.Next;

 end;
end;

cbcc.ItemIndex:=1;

tabel.q1.SQL.Clear;
tabel.q1.SQL.Add('select * from kas_bank where bank!='''' and bank!=''BCA2'' order by bank asc  ');
tabel.q1.Active:=true;
if not(tabel.q1.Eof) and (tabel.q1.Bof) then begin
cbbca.Items.Clear;
tabel.q1.First;
while not tabel.q1.Eof do
begin
cbbca.Items.Append(tabel.q1.FieldValues['bank']);
tabel.q1.Next;
 end;
end;

cbbca.ItemIndex:=0;

tabel.q1.SQL.Clear;
tabel.q1.SQL.Add('select * from kas_bank where bank!='''' and bank!=''BCA2'' order by bank asc  ');
tabel.q1.Active:=true;
if not(tabel.q1.Eof) and (tabel.q1.Bof) then begin
cbmandiri.Items.Clear;
tabel.q1.First;
while not tabel.q1.Eof do
begin
cbmandiri.Items.Append(tabel.q1.FieldValues['bank']);
tabel.q1.Next;

 end;
end;
cbmandiri.ItemIndex:=1;

tabel.q1.SQL.Clear;
tabel.q1.SQL.Add('select * from kas_bank where bank!='''' and bank!=''BCA2'' order by bank asc  ');
tabel.q1.Active:=true;
if not(tabel.q1.Eof) and (tabel.q1.Bof) then begin
cblainnya.Items.Clear;
tabel.q1.First;
while not tabel.q1.Eof do
begin
cblainnya.Items.Append(tabel.q1.FieldValues['bank']);
tabel.q1.Next;

 end;
end;
 cblainnya.ItemIndex:=1;


end;

procedure Tfmenuutama.dxBarLargeButton41Click(Sender: TObject);
begin
//fstokperhari.show;
end;

procedure Tfmenuutama.dxBarLargeButton42Click(Sender: TObject);
begin
//fpermintaankosong.show;
end;

procedure Tfmenuutama.dxBarLargeButton43Click(Sender: TObject);
begin



  v_jmlkonfirmasi:=10000000000;
  cxPageControl1.Pages[2].TabVisible := true;
  cxPageControl1.ActivePageIndex:=2;
  tabel.qkonfirmasi.active:=false;
  tabel.qkonfirmasi.active:=true;
  tabel.qrekeningkoran.Active:=false;
  tabel.qrekeningkoran.Active:=true;
 // ShowMessage(tabel.qrekeningkoran.SQL.Text);
  tabel.qrekomendasi.Active:=false;
  tabel.qrekomendasi.Active:=true;
  if tabel.qkonfirmasi.RecordCount > 0 then begin
    hitungkonfirmasi;
  end;
  v_stswarna:='MULAI'

end;

procedure Tfmenuutama.dxBarLargeButton44Click(Sender: TObject);
begin
cxPageControl1.Pages[0].TabVisible := true;
cxPageControl1.ActivePageIndex:=0;
qimportkasbank.Active:=false;
qimportkasbank.Active:=true;

end;

procedure Tfmenuutama.dxBarLargeButton45Click(Sender: TObject);
begin
cxPageControl1.Pages[4].TabVisible := true;
cxPageControl1.ActivePageIndex:=4;
tabel.qpenjualan5.Active:=false;
tabel.qpenjualan5.Active:=true;
tabel.qdetail5.Active:=false;
tabel.qdetail5.Active:=true;
end;

procedure Tfmenuutama.dxBarLargeButton46Click(Sender: TObject);
begin
cxPageControl1.Pages[5].TabVisible := true;
cxPageControl1.ActivePageIndex:=5;
tabel.qdataclosing.Active:=false;
tabel.qdataclosing.Active:=true;
tabel.qdatadetailclosing.Active:=false;
tabel.qdatadetailclosing.Active:=true;

end;

procedure Tfmenuutama.dxBarLargeButton47Click(Sender: TObject);
begin
cxPageControl1.Pages[6].TabVisible := true;
cxPageControl1.ActivePageIndex:=6;
bersihkassementara;
end;

procedure Tfmenuutama.dxBarLargeButton48Click(Sender: TObject);
begin
cxPageControl1.Pages[7].TabVisible := true;
cxPageControl1.ActivePageIndex:=7;
qpindahkas.Active:=false;
qpindahkas.Active:=true;
end;

procedure Tfmenuutama.dxBarLargeButton49Click(Sender: TObject);
begin
cxPageControl1.Pages[7].TabVisible := true;
cxPageControl1.ActivePageIndex:=7;
tabel.qsaldopiutang.Active:=false;
tabel.qsaldopiutang.Active:=true;
tabel.qdetailsaldopiutang.Active:=false;
tabel.qdetailsaldopiutang.Active:=true;
tabel.qkembalidana.Active:=false;
tabel.qkembalidana.Active:=true;
end;

procedure Tfmenuutama.dxBarLargeButton50Click(Sender: TObject);
begin
cxPageControl1.Pages[8].TabVisible := true;
cxPageControl1.ActivePageIndex:=8;
//tabel.qlappemasangan.sql.Clear;
//tabel.qlappemasangan.SQL.Add('SELECT yr.no,ks.tanggal,ks.keterangan,ks.cabang,ks.jumlah,op.no_order,id_customer,nama   '+
//'FROM kas_bank_import ks JOIN y_relasi_konfirmasidanmutasi yr ON id_transaksi=id_mutasi         '+
//'JOIN detail_konfirmasipembayaran d ON id_konfirmasi=d.no LEFT JOIN relasi_orderdanpenjualan r USING(no_order)   '+
//'JOIN order_pembelian op USING(no_order) JOIN customer c USING(id_customer)  ');
//tabel.qlappemasangan.Active:=true;
end;

procedure Tfmenuutama.dxBarLargeButton51Click(Sender: TObject);
begin
cxPageControl1.Pages[9].TabVisible := true;
cxPageControl1.ActivePageIndex:=9;
tabel.qpemasanganmanual.sql.Clear;
tabel.qpemasanganmanual.SQL.Add('SELECT yp.no as idxno,no_rekening,bank,nominal,tanggal_pemasangan,kategori,yp.keterangan,u.nama AS admin '+
'FROM y_pemasanganmanual yp JOIN kas_bank_import kbi ON kbi.id_transaksi=yp.id_rekeningkoran '+
'JOIN kas_bank kb ON kb.kode_kas=kbi.kode_kas JOIN user u ON u.id_user=yp.id_karyawan');
tabel.qpemasanganmanual.Active:=true;
end;

procedure Tfmenuutama.dxBarLargeButton52Click(Sender: TObject);
begin
cxPageControl1.Pages[10].TabVisible := true;
cxPageControl1.ActivePageIndex:=10;
tabel.qlapolshop.sql.Clear;
tabel.qlapolshop.SQL.Add('select * from kas_bank_import where keterangan2=''SHOPEE'' or keterangan2=''TOKOPEDIA'' order by tanggal desc limit 100');
tabel.qlapolshop.Active:=True;
end;

procedure Tfmenuutama.dxBarLargeButton53Click(Sender: TObject);
begin
cxPageControl1.Pages[11].TabVisible := true;
cxPageControl1.ActivePageIndex:=11;

 tabel.qperapihan_kas.Active := False;
 tabel.qperapihan_kas.Active := True;

 Edit7.Text := '';
 edit3.Text := '';
end;

procedure Tfmenuutama.dxBarLargeButton54Click(Sender: TObject);
begin

 tabel.qlaphutang_lainlain.Active := False;
 tabel.qlaphutang_lainlain.Active := True;

 tabel.qdetail_lphutanglainlain.Active := False;
 tabel.qdetail_lphutanglainlain.Active := True;

 Edit5.Text := '';

 cxPageControl1.Pages[12].TabVisible := true;
 cxPageControl1.ActivePageIndex:=12;
end;

procedure Tfmenuutama.dxBarLargeButton55Click(Sender: TObject);
begin
    cxPageControl1.Pages[13].TabVisible := true;
 cxPageControl1.ActivePageIndex:=13;
end;

procedure Tfmenuutama.dxBarLargeButton56Click(Sender: TObject);
begin
cxPageControl1.Pages[14].TabVisible := true;
 cxPageControl1.ActivePageIndex:=14;
 DateTimePicker3.Date:=Now;
end;

procedure Tfmenuutama.dxBarLargeButton57Click(Sender: TObject);
begin
  idcuscus := '';
  Edit13.Text := '';
  Edit14.Text := '';

 tabel.qpemasangancus.Active := False;
 tabel.qpemasangancus.Active := True;

 tabel.qcuspemsangan.Active := False;
 tabel.qcuspemsangan.SQL.Clear;
 tabel.qcuspemsangan.SQL.Add('select * from customer');
 tabel.qcuspemsangan.ExecSQL;
 tabel.qcuspemsangan.Active := True;

 cxPageControl1.Pages[15].TabVisible := true;
 cxPageControl1.ActivePageIndex:=15;

end;

procedure Tfmenuutama.dxBarLargeButton58Click(Sender: TObject);
begin
  vdataKontrabonTercentang := TstringList.Create;

  tabel.vtjurnalkotrabon.Active := false;
  tabel.qjurnalkotrabon.Active:=false;
  Edit15.Clear;
  Edit17.Clear;
  Edit19.Clear;
  cbekspedisi.Clear;
  cxDateEdit5.Date:=Now();
  cxDateEdit6.Date:=Now();
  cxDateEdit7.Date:=Now();

  cxcbekspedisi.Properties.Items.Clear;

  tabel.q1.SQL.Clear;
  tabel.q1.SQL.Add('select nama from ekspedisi where tipe_pembayaran=''KONTRA BON'' OR asuransi_jenis=''DIPISAH'' ');
  tabel.q1.Open;
  tabel.q1.First;
  while not tabel.q1.Eof do
  begin
    cxcbekspedisi.Properties.Items.Append(tabel.q1.FieldValues['nama']);

    tabel.q1.Next;
  end;

  cxcbbankkontrabon.Properties.Items.Clear;

  tabel.q1.SQL.Clear;
  tabel.q1.SQL.Add('SELECT CONCAT(jenis_perkiraan,'' - '',no_perkiraan) as nama FROM perkiraan_sap JOIN kas_bank ON kode_kas=nama_perkiraan AND alamat=''PUSAT'' ');
  tabel.q1.Open;
  tabel.q1.First;
  while not tabel.q1.Eof do
  begin
    cxcbbankkontrabon.Properties.Items.Append(tabel.q1.FieldValues['nama']);

    tabel.q1.Next;
  end;

  pcopy.Visible := false;
  psudahpost.Visible := false;
  ppost.Visible := false;

  cxPageControl1.Pages[cxPembayaranKontrabon2.PageIndex].TabVisible := True;
  cxPageControl1.ActivePage := cxPembayaranKontrabon2;
end;

procedure Tfmenuutama.dxBarLargeButton59Click(Sender: TObject);
begin
cxPageControl1.Pages[17].TabVisible := true;
 cxPageControl1.ActivePageIndex:=17;
 cxdateedit8.Date:=Now;
 cxdateedit9.Date:=Now;
end;

procedure Tfmenuutama.dxBarLargeButton5Click(Sender: TObject);
begin
//fkasir.show;
{
PageControl1.Pages[0].TabVisible := true;
PageControl1.ActivePageIndex:=0;   }
v_statustombol:='disabled';
cxPageControl1.Pages[1].TabVisible := true;
cxPageControl1.ActivePageIndex:=1;
tabel.qfakturasli.SQL.Clear;
tabel.qfakturasli.SQL.Add('SELECT op.no_order,id_customer,c.nama AS customer,u.nama AS admin,id_user,gh.jm AS jml,op.tanggal, '+
'jenis,jenis_pengiriman,exspedisi,penanggung                                                                              '+
'FROM order_pembelian op LEFT JOIN order_siappacking os ON os.no_order=op.no_order                                         '+
'JOIN customer c USING(id_customer) JOIN user u ON u.id_user=op.id_karyawan                                                '+
'LEFT JOIN (SELECT opb.no_order,IFNULL(jml,0) AS jm FROM order_pembelian opb LEFT JOIN                                      '+
'(SELECT no_order,IFNULL(COUNT(no_detail),0) AS jml FROM detail_order WHERE dikerjakan!=''SIAP KIRIM'' GROUP BY no_order )  '+
'AS gb ON gb.no_order=opb.no_order) AS gh ON gh.no_order=op.no_order                                                      '+
'WHERE (IFNULL(os.status,4)!=0) AND  ((status_order = ''SIAP KIRIM'' OR status_order=''SELESAI'') AND                     '+
' ( status_bayar = ''SUDAH DIBAYAR'' OR status_bayar = ''SKIP''  OR status_bayar = ''BAYAR DI TOKO'' ))                  '+
' OR (status_order = ''SIAP CETAK FAKTUR SEMENTARA'' AND jm = 0 AND (status_bayar = ''SUDAH DIBAYAR''                    '+
' OR status_bayar = ''SKIP'' OR status_bayar = ''BAYAR DI TOKO'')) ');
tabel.qfakturasli.Active:=True;

tabel.qdetailpenjualan.Active:=false;
tabel.qdetailpenjualan.Active:=True;
Panel5.Visible:=false;
Panel6.Visible:=false;
end;

procedure Tfmenuutama.dxBarLargeButton60Click(Sender: TObject);
begin
  flepassalahtransfer.ShowModal;
end;

procedure Tfmenuutama.dxBarLargeButton61Click(Sender: TObject);
begin
  fbiayaadmin.showmodal;
end;

procedure Tfmenuutama.dxBarLargeButton62Click(Sender: TObject);
begin
 fdatarefund.show;
end;

procedure Tfmenuutama.dxBarLargeButton63Click(Sender: TObject);
begin
  faccperbaikanpembayaran.showmodal;
end;

procedure Tfmenuutama.dxBarLargeButton64Click(Sender: TObject);
begin
  cxTabSupplier.TabVisible := true;
  cxPageControl1.ActivePage := cxTabSupplier;
  SendRequest('get',urlPusat + 'GetDataSupplier',vtsupplier,nil,false);
end;

procedure Tfmenuutama.dxBarLargeButton65Click(Sender: TObject);
begin
  flaporanperpriode.Show;
end;

procedure Tfmenuutama.dxBarLargeButton66Click(Sender: TObject);
begin
  fpettycash.Show;
end;

procedure Tfmenuutama.dxBarLargeButton67Click(Sender: TObject);
begin
  tabel.qjurnalkotrabon.Active:=false;
  cxTanggal1Non.Date := Now();
  cxTanggal2Non.Date := Now();

  cxcbekspedisinon.Properties.Items.Clear;

  tabel.q1.SQL.Clear;
  tabel.q1.SQL.Add('select nama from ekspedisi where jenis_pembayaran_asuransi=''TIDAK MEMAKAI KONTRABON'' ');
  tabel.q1.Active:=true;
  tabel.q1.First;
  while not tabel.q1.Eof do
  begin
    cxcbekspedisinon.Properties.Items.Append(tabel.q1.FieldValues['nama']);

    tabel.q1.Next;
  end;

  cxPageControl1.Pages[cxPerbaikanNonKontrabon.PageIndex].TabVisible := True;
  cxPageControl1.ActivePage := cxPerbaikanNonKontrabon;
end;

procedure Tfmenuutama.dxBarLargeButton68Click(Sender: TObject);
begin
  btnBaruLiburClick(sender);

  cxPageControl1.Pages[cxHoliday.PageIndex].TabVisible := True;
  cxPageControl1.ActivePage := cxHoliday;
end;

procedure Tfmenuutama.dxBarLargeButton69Click(Sender: TObject);
begin
  tOrderPerbaikanARDouble.Text := '';
  tabel.qperbaikanarinvoicedouble.Active := false;

  cxPageControl1.Pages[cxPerbaikanARInvoiceDouble.PageIndex].TabVisible := True;
  cxPageControl1.ActivePage := cxPerbaikanARInvoiceDouble;
end;

procedure Tfmenuutama.dxBarLargeButton70Click(Sender: TObject);
begin
  fdataarinvoice.show;
end;

procedure Tfmenuutama.dxBarLargeButton71Click(Sender: TObject);
begin
  fdataarincomingpayment.show;
end;

procedure Tfmenuutama.dxBarLargeButton72Click(Sender: TObject);
begin
  fuangkasir.show;
end;

procedure Tfmenuutama.dxBarLargeButton73Click(Sender: TObject);
begin
  fuangedc.show;
end;

procedure Tfmenuutama.dxBarLargeButton74Click(Sender: TObject);
begin
  fuangolshop.show;
end;

procedure Tfmenuutama.dxBarLargeButton75Click(Sender: TObject);
begin
fgrpo.show;
end;

procedure Tfmenuutama.E1Click(Sender: TObject);
var
  InputValue,uang,total : string;
  CustIsPressOK : boolean;
begin
  uang := tabel.qkonfirmasijumlah_uang.Text;
  uang := stringreplace(uang,',','',[rfreplaceall,rfignorecase]);
  uang := stringreplace(uang,'.','',[rfreplaceall,rfignorecase]);
  InputValue := uang;

  repeat
    CustIsPressOK := InputQuery('Edit Jumlah Uang', 'Jumlah',InputValue);

    if CustIsPressOK then
      begin
        if InputValue <> '0' then
          begin
            if MessageDlg('Anda yakin akan mengedit '+tabel.qkonfirmasino_order.Value+' jumlah uang '+uang+' menjadi ' +inputValue+'?',mtInformation,[mbYes,mbNo],0)= mrYes then
            try
            tabel.q1.SQL.Clear;
            tabel.q1.SQL.Add('START TRANSACTION');
            tabel.q1.ExecSQL;

            tabel.q1.SQL.Clear;
            tabel.q1.SQL.Add('update detail_konfirmasipembayaran set jumlah_uang='''+InputValue+''' where no='''+tabel.qkonfirmasinokonfirmasi.Text+''' ');
            tabel.q1.ExecSQL;

            tabel.q1.SQL.Clear;
            tabel.q1.SQL.Add('select sum(jumlah_uang) from detail_konfirmasipembayaran where no_order='''+tabel.qkonfirmasino_order.Value+''' group by no_order ');
            tabel.q1.Open;
            total := tabel.q1.Fields[0].AsString;

            tabel.q1.SQL.Clear;
            tabel.q1.SQL.Add('update konfirmasi_pembayaran set jumlah_uang='''+total+''' where no_order='''+tabel.qkonfirmasino_order.Text+''' ');
            tabel.q1.ExecSQL;


            tabel.q1.SQL.Clear;
            tabel.q1.SQL.Add('COMMIT');
            tabel.q1.ExecSQL;

            ShowMessage('Berhasil di edit');
            tabel.qkonfirmasi.Active:=False;
            tabel.qkonfirmasi.Active:=true;
            except
            ShowMessage('Gagal di edit, silahkan edit ulang!');
            tabel.q1.SQL.Clear;
            tabel.q1.SQL.Add('ROLLBACK');
            tabel.q1.ExecSQL;

            end;
          end
        else
        begin
          MessageDlg('Data tidak boleh 0', mtInformation,[mbOk],0) ;
        end;
      end;
    until (CustIsPressOK = false) or (CustIsPressOK and (InputValue <> ''));
end;

procedure Tfmenuutama.E2Click(Sender: TObject);
begin
 fedittanggal.Edit1.Text:=tabel.qkonfirmasiatas_nama.Value;
 fedittanggal.Edit2.Text:=tabel.qkonfirmasibank.Value;
 fedittanggal.Edit3.Text:=formatcurr('#,##',tabel.qkonfirmasijumlah_uang.Value);
 fedittanggal.cxDateEdit1.Date:=tabel.qkonfirmasitanggal.Value;
 v_nokonfirmasi:=IntToStr(tabel.qkonfirmasino.Value);
 fedittanggal.showmodal;

end;

function InputCombo(const ACaption, APrompt: string; const AList: TStrings): string;

  function GetCharSize(Canvas: TCanvas): TPoint;
  var
    I: Integer;
    Buffer: array[0..51] of Char;
  begin
    for I := 0 to 25 do Buffer[I] := Chr(I + Ord('A'));
    for I := 0 to 25 do Buffer[I + 26] := Chr(I + Ord('a'));
    GetTextExtentPoint(Canvas.Handle, Buffer, 52, TSize(Result));
    Result.X := Result.X div 52;
  end;

var
  Form: TForm;
  Prompt: TLabel;
  Combo: TComboBox;
  DialogUnits: TPoint;
  ButtonTop, ButtonWidth, ButtonHeight: Integer;
begin
  Result := '';
  Form   := TForm.Create(Application);
  with Form do
    try
      Canvas.Font := Font;
      DialogUnits := GetCharSize(Canvas);
      BorderStyle := bsDialog;
      Caption     := ACaption;
      ClientWidth := MulDiv(250, DialogUnits.X, 4);
      Position    := poScreenCenter;
      Prompt      := TLabel.Create(Form);
      with Prompt do
      begin
        Parent   := Form;
        Caption  := APrompt;
        Left     := MulDiv(8, DialogUnits.X, 4);
        Top      := MulDiv(8, DialogUnits.Y, 8);
        Constraints.MaxWidth := MulDiv(230, DialogUnits.X, 4);
        WordWrap := True;
      end;
      Combo := TComboBox.Create(Form);
      with Combo do
      begin
        Parent := Form;
        Style  := csDropDownList;
        //für Eingabemöglichkeit in Combo verwende
        //For input possibility in combo uses
        //Style := csDropDown;
        Items.Assign(AList);
        ItemIndex := 0;
        Left      := Prompt.Left;
        Top       := Prompt.Top + Prompt.Height + 5;
        Width     := MulDiv(230, DialogUnits.X, 4);
      end;
      ButtonTop    := Combo.Top + Combo.Height + 15;
      ButtonWidth  := MulDiv(50, DialogUnits.X, 4);
      ButtonHeight := MulDiv(14, DialogUnits.Y, 8);
      with TButton.Create(Form) do
      begin
        Parent      := Form;
        Caption     := 'OK';
        ModalResult := mrOk;
        default     := True;
        SetBounds(MulDiv(70, DialogUnits.X, 4), ButtonTop, ButtonWidth,
          ButtonHeight);
      end;
      with TButton.Create(Form) do
      begin
        Parent      := Form;
        Caption     := 'Cancel';
        ModalResult := mrCancel;
        Cancel      := True;
        SetBounds(MulDiv(135, DialogUnits.X, 4), Combo.Top + Combo.Height + 15,
          ButtonWidth, ButtonHeight);
        Form.ClientHeight := Top + Height + 13;
      end;
      if ShowModal = mrOk then
      begin
        Result := Combo.Text;
      end;
    finally
      Form.Free;
    end;
end;

procedure Tfmenuutama.E3Click(Sender: TObject);
var
  List: TStringList;
  sts,kodekas:string;
begin
  List := TStringList.Create;
  try
    tabel.q1.SQL.Clear;
    tabel.q1.SQL.Add('select concat(no_rekening,'' # '',atas_nama,'' # '',bank) as id from kas_bank where (keterangan=''PEMBAYARAN CUSTOMER'' OR keterangan=''ONLINE SHOP'' OR kode_kas=6)  '+
    ' and concat(no_rekening,'' # '',atas_nama,'' # '',bank)<>'''+tabel.qkonfirmasibank.Value+''' ');
    tabel.q1.Open;

    tabel.q1.First;
    List.Clear;
    List.Add(tabel.qkonfirmasibank.Value);
    while not tabel.q1.Eof do
    begin
      List.Add(tabel.q1.Fields[0].AsString);
      tabel.q1.Next;
    end;

    sts := InputCombo('Edit Bank', tabel.qkonfirmasino_order.Value + ' - '+UpperCase(tabel.qkonfirmasiatas_nama.Value), List);
    if sts<>'' then
    begin
      if MessageDlg('Apakah anda yakin akan melakukan edit bank ?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
      begin
        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('select kode_kas from kas_bank where concat(no_rekening,'' # '',atas_nama,'' # '',bank)='''+sts+''' ');
        tabel.q1.Open;
        kodekas := tabel.q1.Fields[0].AsString;
        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('update detail_konfirmasipembayaran set kode_kas='''+kodekas+''',bank='''+sts+''' where no='''+tabel.qkonfirmasino.Text+''' ');
        tabel.q1.ExecSQL;

        ShowMessage('Data berhasil di edit');
        tabel.qkonfirmasi.Refresh;
      end;
    end;
  finally
    List.Free;
  end;
end;

procedure Tfmenuutama.E4Click(Sender: TObject);
var pesanan:string;
begin
  try
    tabel.q1.SQL.Clear;
    tabel.q1.SQL.Add('select kode_kas from kas_bank where keterangan = ''ONLINE SHOP'' and concat(no_rekening,'' # '',atas_nama,'' # '',bank)='''+tabel.qkonfirmasibank.Value+''' ');
    tabel.q1.Open;
    if tabel.q1.RecordCount = 0 then
      ShowMessage('Tidak bisa di edit karena bukan bank Online Shop! ')
    else
    begin
      pesanan:= tabel.qkonfirmasino_pesanan.Text;
      if InputQuery('Edit No Pesanan', 'No Order : '+tabel.qkonfirmasino_order.Text,pesanan) then
      begin
        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('select no_order from n_pemasangan_olshop where no_order='''+tabel.qkonfirmasino_order.Text+''' ');
        tabel.q1.Open;
        if tabel.q1.RecordCount > 0 then
        begin
          tabel.q1.SQL.Clear;
          tabel.q1.SQL.Add('insert into n_edit_pesanan_olshop values(0,now(),'''+tabel.qkonfirmasino_order.Text+''','''+tabel.qkonfirmasino_pesanan.Text+''', '+
          ' '''+pesanan+''','+v_idkaryawan+') ');
          tabel.q1.ExecSQL;

          tabel.q1.SQL.Clear;
          tabel.q1.SQL.Add('update n_pemasangan_olshop set no_pesanan='''+pesanan+''' where no_order='''+tabel.qkonfirmasino_order.Text+''' ');
          tabel.q1.ExecSQL;
        end;

        ShowMessage('Sukses');
        tabel.qkonfirmasi.Refresh;
      end;
    end;
  except on e:Exception do
  begin
    ShowMessage('Error : '+e.Message);
  end;

  end;
end;

procedure Tfmenuutama.Edit12Change(Sender: TObject);
begin
 tabel.qcuspemsangan.SQL.Clear;
 tabel.qcuspemsangan.SQL.Add('select * from customer '+
 'where nama like ''%'+edit12.Text+'%'' ');
 tabel.qcuspemsangan.ExecSQL;
end;

procedure Tfmenuutama.Edit15Change(Sender: TObject);
begin
hitungselisih();
// if edit15.Text='' then begin
//     jumlahbayar:='0';
// end else begin
//     jumlahbayar := edit15.text;
//     jumlahbayar := stringreplace(jumlahbayar,',','',[rfreplaceall,rfignorecase]);
//     jumlahbayar := stringreplace(jumlahbayar,'.','',[rfreplaceall,rfignorecase]);
// end;
//
//  if Edit17.Text='' then begin
//      jumlahyangdipilih:='0';
//  end else begin
//     jumlahyangdipilih := edit17.text;
//     jumlahyangdipilih := stringreplace(jumlahyangdipilih,',','',[rfreplaceall,rfignorecase]);
//     jumlahyangdipilih := stringreplace(jumlahyangdipilih,'.','',[rfreplaceall,rfignorecase]);
//  end;
//  selisih:=strtofloat(jumlahbayar)-strtofloat(jumlahyangdipilih);
// // ShowMessage(FloatToStr(selisih));
//  edit19.Text:=formatcurr('#,###',selisih);





end;

procedure Tfmenuutama.Edit15KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
srupiah :string;
irupiah :currency;
begin

srupiah := edit15.text;
srupiah := stringreplace(sRupiah,',','',[rfreplaceall,rfignorecase]);
srupiah := stringreplace(srupiah,'.','',[rfreplaceall,rfignorecase]);
irupiah := strtocurrdef(srupiah,0);

edit15.text := formatcurr('#,##',irupiah);
edit15.selstart := length(edit15.text);
end;

procedure Tfmenuutama.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then begin


end;
end;

procedure Tfmenuutama.Edit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
srupiah :string;
irupiah :currency;
begin

srupiah := tuang.text;
srupiah := stringreplace(sRupiah,',','',[rfreplaceall,rfignorecase]);
srupiah := stringreplace(srupiah,'.','',[rfreplaceall,rfignorecase]);
irupiah := strtocurrdef(srupiah,0);

tuang.text := formatcurr('#,##',irupiah);
tuang.selstart := length(tuang.text);
end;

procedure Tfmenuutama.Edit5Change(Sender: TObject);
begin
tabel.qlaphutang_lainlain.Active := False;

 tabel.qlaphutang_lainlain.SQL.Clear;
 tabel.qlaphutang_lainlain.SQL.Add('SELECT fr.nama,IFNULL(pn.jml,0)- IFNULL(pg.jml,0) AS saldo FROM buku_besar JOIN fix_reportongkir fr USING(no_transaksi) '+
  'LEFT JOIN (SELECT nama,SUM(jumlah) AS jml FROM buku_besar JOIN fix_reportongkir USING(no_transaksi) WHERE jenis=''Penerimaan'' AND dari =''hutang lain-lain'' GROUP BY nama ) AS pn '+
  'ON pn.nama = fr.nama '+
  'LEFT JOIN (SELECT nama,SUM(jumlah) AS jml FROM buku_besar JOIN fix_reportongkir USING(no_transaksi) WHERE jenis=''pengeluaran'' AND dari =''hutang lain-lain'' GROUP BY nama ) AS pg '+
  'ON pg.nama = fr.nama '+
  'WHERE dari=''HUTANG LAIN-LAIN'' and fr.nama like ''%'+edit5.text+'%'' '+
  'GROUP BY fr.nama');
 tabel.qlaphutang_lainlain.ExecSQL;

 tabel.qlaphutang_lainlain.Active := True;
end;

procedure Tfmenuutama.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
 begin
   Button21.SetFocus;
 end;
end;

procedure Tfmenuutama.Edit7Change(Sender: TObject);
begin
 tabel.qperapihan_kas.SQL.Clear;
 tabel.qperapihan_kas.SQL.Add('SELECT * FROM buku_besar WHERE dari=''HUTANG LAIN-LAIN'' '+
  ' AND keterangan NOT LIKE ''%#%'' AND no_transaksi like ''%'+edit7.Text+'%'' '+
  'OR dari=''HUTANG LAIN-LAIN'' AND keterangan NOT LIKE ''%#%'' AND keterangan like ''%'+edit7.Text+'%'' ');
  tabel.qperapihan_kas.ExecSQL;
end;

procedure Tfmenuutama.formatuang(ts: TEdit);
 var
srupiah :string;
irupiah :currency;
begin

srupiah := ts.text;
srupiah := stringreplace(sRupiah,',','',[rfreplaceall,rfignorecase]);
srupiah := stringreplace(srupiah,'.','',[rfreplaceall,rfignorecase]);
irupiah := strtocurrdef(srupiah,0);

ts.text := formatcurr('#,##',irupiah);
ts.selstart := length(ts.Text);
end;

procedure Tfmenuutama.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//flogin.show;
end;

procedure Tfmenuutama.FormCreate(Sender: TObject);
var ipclient: string;
begin
{ipclient:=LocalIp;

    q1.SQL.Clear;
    q1.SQL.Add('delete from server_indy where jenis=''BON'' ');
    q1.ExecSQL;

     q1.SQL.Clear;
    q1.SQL.Add('insert into server_indy values(,''BON'','''+ipclient+''') ');
    q1.ExecSQL;     }


//IdTCPServer1.Active:= true;

end;

procedure Tfmenuutama.FormShow(Sender: TObject);
var i:integer;
begin
  urlSAPCabang := '';
  urlPusat := 'http://192.168.20.20:8077/';
  if pos('20.6',tabel.server.Server) > 0 then
  begin
    urlSAPCabang := 'http://192.168.20.15:8502/';
    urlPusat := 'http://192.168.20.15:8077/';
  end
  else if pos('20.3',tabel.server.Server) > 0 then
    urlSAPCabang := 'http://192.168.20.13:8502/'
  else if pos('10.10',tabel.server.Server) > 0 then
    urlSAPCabang := 'http://192.168.10.11:8502/'
  else if pos('31.3',tabel.server.Server) > 0 then
    urlSAPCabang := 'http://192.168.31.13:8502/'
  else if pos('81.3',tabel.server.Server) > 0 then
    urlSAPCabang := 'http://192.168.81.10:8502/';


vtotalkontrabon:=0;
//timer1.Enabled:=True;
 sGradientPanel4.Top:=28;
 sGradientPanel4.Left:=1;
 sGradientPanel4.BringToFront;
 v_stswarna:='STOP';
 dxStatusBar1.Panels[0].Text:=v_namakaryawan;

 for i := 0 to cxPageControl1.PageCount - 1 do
  cxPageControl1.Pages[i].TabVisible := false;


  tabel.q1.SQL.Clear;
 tabel.q1.SQL.Add('select concat(bank, '' '', atas_nama) from kas_bank');
 tabel.q1.Open;

// biayaadmin;

  cxtanggalsapkontrabon.Date := Now();
end;

procedure Tfmenuutama.frxrekkoranGetValue(const VarName: string;
  var Value: Variant);
begin
   if(VarName = 'rekkoran') then begin
    Value := ComboBox3.Text;
    end;
end;

procedure Tfmenuutama.frxReport1GetValue(const VarName: string;
  var Value: Variant);
var roll,kg,kg2,subtotal,total2,ppn,totalbayar,ongkir,adm,cc,katalog,diskon:real;
srupiah,eceran,rollan,noorder,kode_ver,kurangbayar:string;
begin
    kurangbayar := tkkembalian.text;
    kurangbayar := stringreplace(kurangbayar,',','',[rfreplaceall,rfignorecase]);
    kurangbayar := stringreplace(kurangbayar,'.','',[rfreplaceall,rfignorecase]);

    totalbayar:=0;
    tabel.q1.SQL.Clear;
    tabel.q1.SQL.Add('select * from data_perusahaan where id_perusahaan=4 ');
    tabel.q1.Active:=true;
    if(VarName = 'toko') then begin
    Value := tabel.q1.FieldValues['nama'];
    end;
     if(VarName = 'alamat') then begin
    Value :=tabel.q1.FieldValues['alamat'];
    end;
    if(VarName = 'telp') then begin
    Value := tabel.q1.FieldValues['telepon'];
    end;
    if(VarName = 'bank') then begin
    Value :='Bank    : '+tabel.q1.FieldValues['bank'];
    end;
    if(VarName = 'an') then begin
    Value :='An       : '+tabel.q1.FieldValues['atas_nama'];
    end;

    if(VarName = 'norek') then begin
    Value :='No Rek : '+tabel.q1.FieldValues['no_rekening'];
    end;

      if(VarName = 'npwp') then begin
    Value :='NPWP :'+tabel.q1.FieldValues['npwp'];
    end;

    if(VarName = 'nopenjualan') then begin
    Value :='No Penjualan : '+v_nopenjualan;
    end;
    if(VarName = 'tgl') then begin
    Value :='Tanggal : '+FormatDateTime('dd-mm-yyyy',now);
    end;
    if(VarName = 'customer') then begin
    Value :='Customer : '+tkcustomer.Text;
    end;

     if(VarName = 'akhir') then begin
    Value :=v_statusfaktur;
    end;

     tabel.q1.SQL.Clear;
    tabel.q1.SQL.Add('select no_order from relasi_orderdanpenjualan where no_penjualan='''+v_nopenjualan+''' ');
    tabel.q1.Active:=true;

     if(VarName = 'noorder') then begin
    Value :='No Order : '+tabel.q1.FieldValues['no_order'];
    end;

    tabel.q1.SQL.Clear;
    tabel.q1.SQL.Add('select concat(ifnull(sum(ppn.berat),0),''Kg ('',ifnull(count(ppn.no_roll),0),'')'') as kgan '+
    'from detail_pengeluaranstok dpk join penjualan_kainstok pk using(no_pengeluaran) join kain k using(id_kain) '+
    'join warna w using(id_warna) join perincian_pengeluaranstok ppn on dpk.no_detail=ppn.no_Detail left join status_penjualan sp on sp.no_diperincian=ppn.no where no_pengeluaran='''+v_nopenjualan+''' and sp.status=''KGAN'' ');
    tabel.q1.Active:=true;
    eceran:=tabel.q1.FieldValues['kgan'];

     if(VarName = 'eceran') then begin
    Value :=eceran;
    end;

    tabel.q1.SQL.Clear;
    tabel.q1.SQL.Add('select concat(ifnull(sum(ppn.berat),0),''Kg ('',ifnull(count(ppn.no_roll),0),'')'') as rollan '+
    'from detail_pengeluaranstok dpk join penjualan_kainstok pk using(no_pengeluaran) join kain k using(id_kain) '+
    'join warna w using(id_warna) join perincian_pengeluaranstok ppn on dpk.no_detail=ppn.no_Detail left join status_penjualan sp on sp.no_diperincian=ppn.no where no_pengeluaran='''+v_nopenjualan+''' and sp.status=''ROLLAN'' ');
    tabel.q1.Active:=true;
    rollan:=tabel.q1.FieldValues['rollan'];

      if(VarName = 'rollan') then begin
    Value :=rollan;
    end;

     if(VarName = 'pot') then begin

        Value :=cbpotongan.Text;


     end;
      if(VarName = 'potongan') then begin
       if tpotongan.Text='' then begin
         Value :='';
       end else begin
         Value :='Rp. '+tpotongan.Text;
       end;

     end;

     if(VarName = 'totalbayar') then begin
       if StrToFloat(kurangbayar) >0 then begin

        Value :='Rp. '+tkkembalian.Text;
       end else begin
         Value :='Rp. 0';
       end;
     end;

      if(VarName = 'ketlebih') then begin

         if StrToFloat(kurangbayar) <0 then begin
            Value :='Kurang Bayar';
         end else begin
            if (tksaldo.Text <> '') and (tksaldo.Text <> '0') then  begin
              Value :='Lebih Bayar';
            end else begin
             Value :='';
            end;
         end;


      end;

      if(VarName = 'lebih') then begin
       if StrToFloat(kurangbayar) <0 then begin
            Value :='Rp. '+formatcurr('#,##',StrToFloat(kurangbayar)*-1);
       end else begin
        if (tksaldo.Text <> '') and (tksaldo.Text <> '0') then  begin
           Value :='Rp. '+tksaldo.Text;
        end else begin
         Value :='';
        end;
       end;


      end;


    tabel.q1.SQL.Clear;
    tabel.q1.SQL.Add('select * from kode_verifikasipenjualan where no_penjualan='''+v_nopenjualan+''' ');
    tabel.q1.Active:=true;
    if tabel.q1.RecordCount > 0 then begin
      kode_ver:=tabel.q1.FieldValues['kode_verifikasi'];
    end else begin
      kode_ver:='';
    end;
    if(VarName = 'kode') then begin
        Value :=kode_ver;
     end;

end;

procedure Tfmenuutama.frxsj2GetValue(const VarName: string; var Value: Variant);
var totalkg,totalroll,provinsi,kota,kecamatan,kelurahan,kodepos,rtrw,noorder,nopenjualan:string;
begin
    totalroll:=cxGridDBTableView2.DataController.Summary.FooterSummaryTexts[1];
    totalkg:=cxGridDBTableView2.DataController.Summary.FooterSummaryTexts[2];


    tabel.q1.SQL.Clear;
    tabel.q1.SQL.Add('select * from data_perusahaan where id_perusahaan=4 ');
    tabel.q1.Active:=true;
    if(VarName = 'namatoko') then begin
    Value :=tabel.q1.FieldValues['nama'];
    end;

     if(VarName = 'alamattoko') then begin
    Value :=tabel.q1.FieldValues['alamat'];
    end;

    if(VarName = 'telepon') then begin
    Value := 'Telp: 4214962 Hp:087722020009 Web:www.knitto.co.id';
    end;

    tabel.q1.SQL.Clear;
    tabel.q1.SQL.Add('select no_penjualan from relasi_orderdanpenjualan where no_order='''+tkorder.Text+''' ');
    tabel.q1.Active:=True;
    nopenjualan:=tabel.q1.FieldValues['no_penjualan'];
    noorder:=tkorder.Text;
    if(VarName = 'noorder') then begin
    Value :='No Order : '+noorder;
    end;

    if(VarName = 'nopenjualan') then begin
    Value :='No Penjualan :'+nopenjualan;
    end;

    if(VarName = 'tgl') then begin
        Value :=formatdatetime('dd-mm-yyyy',now);
    end;

          tabel.q1.SQL.Clear;
          tabel.q1.sQL.Add('select kode_verifikasi from kode_verifikasipenjualan where  no_penjualan='''+nopenjualan+''' ');
          tabel.q1.Active:=true;
          if tabel.q1.RecordCount =0 then begin
            if(VarName = 'kode') then begin
              Value :='';
            end;
          end else begin
            if(VarName = 'kode') then begin
              Value :=tabel.q1.FieldValues['kode_verifikasi'];
            end;
          end;

          tabel.q1.SQL.Clear;
          tabel.q1.sQL.Add('select * from customer where nama='''+tkcustomer.Text+''' ');
          tabel.q1.Active:=true;
           if(VarName = 'customer') then begin
              Value :='Kepada Yth. '+tabel.q1.FieldValues['nama'];
            end;
            if(VarName = 'hp') then begin
              Value :='No Telepon :'+tabel.q1.FieldValues['telepon'];
            end;


        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('select da.provinsi,da.kota as kt,kecamatan,kelurahan,rt_rw,kode_pos,alamat from alamat_pengiriman da join alamat_kirimorder ak on ak.no_dialamatpengiriman=da.no where no_order='''+tkorder.Text+''' ');
        tabel.q1.Active:=true;

        if tabel.q1.RecordCount > 0 then begin
          provinsi:=tabel.q1.FieldValues['provinsi'];
          kota:=tabel.q1.FieldValues['kt'];
          kecamatan:=tabel.q1.FieldValues['kecamatan'];
          kelurahan:=tabel.q1.FieldValues['kelurahan'];
          kodepos:=tabel.q1.FieldValues['kode_pos'];
          rtrw:=tabel.q1.FieldValues['rt_rw'];

             if(VarName = 'prov') then begin
              Value :='Provinsi :'+provinsi;
            end;
              if(VarName = 'kota') then begin
              Value :='Kota :'+kota;
            end;
              if(VarName = 'kecamatan') then begin
              Value :='Kecamatan :'+kecamatan;
            end;
              if(VarName = 'kelurahan') then begin
              Value :='kelurahan :'+kelurahan;
            end;
              if(VarName = 'kodepos') then begin
              Value :='kode pos :'+kodepos;
            end;
              if(VarName = 'rtrw') then begin
              Value :='Rt/Rw :'+rtrw;
            end;
             if(VarName = 'alamat') then begin
              Value :='Alamat :'+tabel.q1.FieldValues['alamat'];
            end;

        end;

             if(VarName = 'ket') then begin
              Value :='Keterangan :';
            end;
            if(VarName = 'totalroll') then begin
              Value :=totalroll;
            end;
             if(VarName = 'totalkg') then begin
              Value :=totalkg;
            end;

end;

procedure Tfmenuutama.frxsjGetValue(const VarName: string; var Value: Variant);
var totalkg,totalroll,noorder,nopenjualan:string;
begin
totalroll:=cxGridDBTableView2.DataController.Summary.FooterSummaryTexts[1];
totalkg:=cxGridDBTableView2.DataController.Summary.FooterSummaryTexts[2];
 
    tabel.q1.SQL.Clear;
    tabel.q1.SQL.Add('select * from data_perusahaan where id_perusahaan=4 ');
    tabel.q1.Active:=true;
    if(VarName = 'namatoko') then begin
    Value :=tabel.q1.FieldValues['nama'];
    end;
     if(VarName = 'alamattoko') then begin
    Value :=tabel.q1.FieldValues['alamat'];
    end;
    if(VarName = 'telepon') then begin
    Value :='Telp: 4214962 Hp:087722020009 Web:www.knitto.co.id';
    end;
    tabel.q1.SQL.Clear;
    tabel.q1.SQL.Add('select no_penjualan from relasi_orderdanpenjualan where no_order='''+tkorder.Text+''' ');
    tabel.q1.Active:=True;
    nopenjualan:=tabel.q1.FieldValues['no_penjualan'];
     noorder:=tkorder.Text;;

       if(VarName = 'noorder') then begin
    Value :='No Order :'+noorder;
    end;

      if(VarName = 'nopenjualan') then begin
    Value :='No Penjualan :'+nopenjualan+' No Order: '+noorder;
    end;

      if(VarName = 'tgl') then begin
        Value :=formatdatetime('dd-mm-yyyy',now);
      end;

          tabel.q1.SQL.Clear;
          tabel.q1.sQL.Add('select kode_verifikasi from kode_verifikasipenjualan where  no_penjualan='''+nopenjualan+''' ');
          tabel.q1.Active:=true;
          if tabel.q1.RecordCount =0 then begin
            if(VarName = 'kode') then begin
              Value :='';
            end;
          end else begin
            if(VarName = 'kode') then begin
              Value :=tabel.q1.FieldValues['kode_verifikasi'];
            end;
          end;
          tabel.q1.SQL.Clear;
          tabel.q1.sQL.Add('select * from customer where nama='''+tkcustomer.Text+''' ');
          tabel.q1.Active:=true;
           if(VarName = 'customer') then begin
              Value :='Kepada Yth. '+tabel.q1.FieldValues['nama'];
            end;
            if(VarName = 'hp') then begin
              Value :='No Telepon :'+tabel.q1.FieldValues['telepon'];
            end;
             if(VarName = 'alamat') then begin
              Value :='Alamat :'+tabel.q1.FieldValues['alamat'];
            end;
             if(VarName = 'ket') then begin
              Value :='Keterangan :';
            end;
            if(VarName = 'totalroll') then begin
              Value :=totalroll;
            end;
             if(VarName = 'totalkg') then begin
              Value :=totalkg;
            end;
end;

function Tfmenuutama.SendRequest(method, link: string; dt: TDataSet;
  ls: TstringList; showMsg: boolean): Boolean;
var
  mem:TStringStream;
  st,status:string;
  jso: TJSONObject;
begin
  mem := TStringStream.Create;

  if method='get' then
  begin
    tabel.httpget(link,mem);
    st := mem.DataString;
  end
  else
  begin
    if ls = nil then
    begin
      ls := TStringList.Create;
      ls.Clear;
    end;
    st := tabel.httppost(link,ls);
  end;

  jso := TJSONObject.ParseJSONValue(st) as TJSONObject;
  status := jso.GetValue('status').Value;
  if status = '200' then
  begin
    if dt <> nil then
      tabel.datatogrid(dt,st)
    else
    begin
      jso := jso.GetValue('values') as TJSONObject;
      if showMsg=true then
         ShowMessage(jso.GetValue('message').Value);
    end;
    Result := true;
  end
  else
  begin
    jso := jso.GetValue('values') as TJSONObject;
    ShowMessage(jso.GetValue('message').Value);
    Result := false;
    exit;
  end;
end;

procedure Tfmenuutama.SMDBGrid2ChangeSelection(Sender: TObject);
var i,g:Integer;
begin

// FOR i:= 0 TO SMDBGrid2.SelectedRows.Count-1 DO BEGIN
//          g:=g+1;
//        //  goto
//       Data.db.GotoBookmark(Pointer(SMDBGrid1.SelectedRows.Items[i]));
// END;


end;

procedure Tfmenuutama.SpeedButton10Click(Sender: TObject);
var t1,t2,exspedisi:string;
begin
  t1 := FormatDateTime('yyyy-mm-dd',cxTanggal1Non.Date);
  t2 := FormatDateTime('yyyy-mm-dd',cxTanggal2Non.Date);

  if cxcbekspedisinon.Text <> '' then
  begin
    tabel.qjurnalnonkontrabon.SQL.Clear;
//    tabel.qjurnalnonkontrabon.SQL.Add('SELECT id_customer,dpo.tanggal_resi as tanggal,mo.no_muat,ro.no_penjualan,no_resi,dp.no_detail AS detail,op.no_order,c.nama,exspedisi,asuransi_jenis '+
//    ' ,IFNULL(dk.jumlah, 0)-IFNULL(dks.jumlah, 0) AS ongkir,IFNULL(dks.jumlah,0) AS asuransi,ifnull(vedit.no_penjualan,'''') as edit '+
//    ' ,IFNULL(dk.jumlah,0) AS total,ongkir_sebelum,asuransi_sebelum,ongkir_sesudah,asuransi_sesudah '+
//    ' ,jenis_pembayaran_asuransi,ek.tipe_pembayaran,IFNULL(pph,'''') AS pph,''False'' as pilihan '+
//    ' FROM order_pembelian op JOIN customer c USING(id_customer) JOIN detail_muat dp                                                                   '+
//    ' ON dp.no_pengeluaran=op.no_order JOIN muat_orderan mo ON mo.`no_muat`=dp.`no_muat` JOIN relasi_orderdanpenjualan ro ON ro.no_order=op.no_order  '+
//    ' JOIN detail_pengeluaranongkir dpo on op.no_order=dpo.no_order '+
//    ' LEFT JOIN ongkir okr ON okr.no_transaksi=ro.no_penjualan                                                                                     '+
//    ' LEFT JOIN ekspedisi ek ON ek.nama=op.exspedisi                                                                                                '+
//    ' LEFT JOIN (SELECT no_order,jumlah FROM detail_pengeluaranongkir dpl GROUP BY no_order) AS dk ON dk.no_order=op.no_order                      '+
//    ' LEFT JOIN (SELECT no_order,asuransi_versi_exspedisi AS jumlah FROM a_asuransiversi_exspedisi dps GROUP BY no_order) AS dks  ON dks.no_order = op.no_order '+
//    ' LEFT JOIN fhoto_resi fr ON op.no_order=fr.no_order  '+
//    ' LEFT JOIN (SELECT id,no_penjualan,ongkir_sebelum,asuransi_sebelum,ongkir_sesudah,asuransi_sesudah FROM n_pembayaran_ekspedisi_edit n where jenis=''NON KONTRABON'' GROUP BY no_penjualan) AS vedit ON ro.no_penjualan=vedit.no_penjualan '+
//    ' WHERE date(dpo.tanggal_resi) between '''+t1+''' and '''+t2+''' and exspedisi='''+cxcbekspedisinon.Text+'''  '+
//    ' UNION                                                                                                                                        '+
//    ' SELECT id_customer,dpo.tanggal_resi as tanggal,mo.no_muat,op.no_penjualan,no_resi,dp.no_detail AS detail,op.no_penjualan,c.nama,ekspedisi AS exspedisi,asuransi_jenis '+
//    ' ,IFNULL(dk.jumlah, 0)-IFNULL(dks.jumlah, 0) AS ongkir,IFNULL(dks.jumlah,0) AS asuransi,ifnull(vedit.no_penjualan,'''') as edit '+
//    ' ,IFNULL(dk.jumlah,0) AS total,ongkir_sebelum,asuransi_sebelum,ongkir_sesudah,asuransi_sesudah '+
//    ' ,jenis_pembayaran_asuransi,IFNULL(ek.tipe_pembayaran,'''') AS tipe_pembayaran,IFNULL(pph,'''') AS pph,''False'' as pilihan  '+
//    ' FROM s_penjualan_katalog op JOIN customer c USING(id_customer) JOIN detail_muat dp  ON dp.no_pengeluaran=op.no_penjualan                       '+
//    ' JOIN muat_orderan mo ON mo.`no_muat`=dp.`no_muat`                                                                                            '+
//    ' JOIN detail_pengeluaranongkir dpo on op.no_penjualan=dpo.no_order '+
//    ' LEFT JOIN ongkir okr ON okr.no_transaksi=op.no_penjualan                                                                                      '+
//    ' LEFT JOIN ekspedisi ek ON ek.nama=op.ekspedisi                                                                                                '+
//    ' LEFT JOIN (SELECT no_order,jumlah FROM detail_pengeluaranongkir dpl GROUP BY no_order) AS dk ON dk.no_order=op.no_penjualan                  '+
//    ' LEFT JOIN (SELECT no_order,asuransi_versi_exspedisi AS jumlah FROM a_asuransiversi_exspedisi dps GROUP BY no_order) AS dks ON dks.no_order = op.no_penjualan '+
//    ' LEFT JOIN fhoto_resi fr ON op.no_penjualan=fr.no_order  '+
//    ' LEFT JOIN (SELECT id,no_penjualan,ongkir_sebelum,asuransi_sebelum,ongkir_sesudah,asuransi_sesudah FROM n_pembayaran_ekspedisi_edit n where jenis=''NON KONTRABON'' GROUP BY no_penjualan) AS vedit ON op.no_penjualan=vedit.no_penjualan '+
//    ' WHERE date(dpo.tanggal_resi) between '''+t1+''' and '''+t2+''' and  ekspedisi='''+cxcbekspedisinon.Text+''' ');
    tabel.qjurnalnonkontrabon.SQL.Add('CALL sp_get_data_pembayaran_nonkontrabon('''+t1+''','''+t2+''','''+cxcbekspedisinon.Text+''') ');
    tabel.qjurnalnonkontrabon.Active:=true;
  end;
end;

procedure Tfmenuutama.SpeedButton11Click(Sender: TObject);
begin
  tabel.qperbaikanarinvoicedouble.SQL.Clear;
//  tabel.qperbaikanarinvoicedouble.SQL.Add('SELECT n.no_order,pk.`no_pengeluaran`,pk.tanggal,no_sj,c.nama,total_tagihan '+
//  ' FROM n_temp_kasir n JOIN order_pembelian o USING(no_order) JOIN relasi_orderdanpenjualan r USING(no_order) '+
//  ' JOIN penjualan_kainstok pk ON r.no_penjualan=no_pengeluaran JOIN customer c ON o.id_customer=c.id_customer'+
//  ' WHERE o.no_order='''+tOrderPerbaikanARDouble.Text+''' and pk.tanggal between ''2021-09-01'' and ''2021-10-31'' ');
  tabel.qperbaikanarinvoicedouble.SQL.Add('CALL sp_get_data_perbaikan_arinvoice_double('''+tOrderPerbaikanARDouble.Text+''') ');
  tabel.qperbaikanarinvoicedouble.Active := True;
  if tabel.qperbaikanarinvoicedouble.RecordCount = 0 then
    ShowMessage('No Order tidak terdaftar');
end;

procedure Tfmenuutama.SpeedButton12Click(Sender: TObject);
var
  refNo : string;
begin
  try
    if (tabel.qperbaikanarinvoicedouble.Active = true) and (tabel.qperbaikanarinvoicedouble.RecordCount > 0) then
    begin
      if MessageDlg('Apakah anda yakin akan melakukan POST A/R Credit Memo ? ',mtConfirmation,[mbyes,mbNo],0)=mryes then
      begin
        refNo := vcabangbranch +'_'+tabel.qperbaikanarinvoicedoubleno_order.Text+'_CancelPenjualanDagang';
        // POST A/R Credit Memo
        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('CALL sinkronisasi_sap('''+tabel.qperbaikanarinvoicedoubleno_order.Text+''','''+refNo+''',''cancel_order'',''/saptemp/sinkcreditmemoretur'',@out_msg)');
        tabel.q1.ExecSQL;

        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('select @out_msg as pesan');
        tabel.q1.open;

        if tabel.q1.FieldValues['pesan'] = 'sukses' then
        begin
          changeStatusBar('Sukses','Data Berhasil di POST...',clMenuHighlight,clMenuHighlight);
          ShowMessage('Data Berhasil di POST...');
          tOrderPerbaikanARDouble.Text := '';
          tabel.qperbaikanarinvoicedouble.Active := false;
        end
        else
          ShowMessage('Terjadi kesalahan : '+tabel.q1.FieldByName('pesan').Text);
      end;
    end
    else
      ShowMessage('Data tidak boleh kosong! ');
  except on e:Exception do
  begin
    ShowMessage('Error : '+e.Message);
  end;
  end;
end;

procedure Tfmenuutama.SpeedButton1Click(Sender: TObject);
begin
op.Filter := 'Form File (*.csv) | *.csv';
if op.Execute then
sedit1.text:=op.FileName;
end;

procedure Tfmenuutama.SpeedButton2Click(Sender: TObject);
var ongkir,katalog,edc,cc,diskon,total,totalgrid,tberat,totalbayar,adm:Real; srupiah:string;
begin

    tberat:=StrToFloat(cxGridDBTableView2.DataController.Summary.FooterSummaryTexts[2]);
     if tktotaltagihan.Text <> '' then begin
              srupiah := tktotaltagihan.Text;
              srupiah := stringreplace(sRupiah,',','',[rfreplaceall,rfignorecase]);
              srupiah := stringreplace(srupiah,'.','',[rfreplaceall,rfignorecase]);
              totalgrid:=StrToFloat(srupiah);
     end else begin
         totalgrid:=0;
     end;


            vpembayaran.First;
            totalbayar:=0;

            if vpembayaran.RecordCount = 0 then begin
              totalbayar:=0;
            end else begin
              while not vpembayaran.eof do begin
                totalbayar:=totalbayar+vpembayaranjumlah_uang.Value;
                vpembayaran.Next;
              end;
            end;
  total:=(totalgrid-totalbayar);
  total:=total;
  tuang.Text:=formatcurr('#,###',total);

end;

procedure Tfmenuutama.SpeedButton3Click(Sender: TObject);
begin
  if tpass.Text = '' then begin
      showmessage('password harus diisi!');
  end else begin
      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('select * from user where username='''+tuser.Text+''' and  password=md5('''+tpass.Text+''') ');
      tabel.q1.Active:=true;
      if tabel.q1.RecordCount > 0 then begin
      v_idkaryawan:=tabel.q1.FieldValues['id_user'];
      v_namakaryawan:=tabel.q1.FieldValues['nama'];
      v_leveladmin:=tabel.q1.FieldValues['level'];

        if (UpperCase(v_leveladmin) = 'OWNER') or (UpperCase(v_leveladmin) = 'AKUNTING') or (UpperCase(v_leveladmin) ='ASS AKUNTING') then
        begin
          sGradientPanel4.Visible:=false;
          dxStatusBar1.Panels[0].Text:='User :'+v_namakaryawan;

          if (UpperCase(v_leveladmin) ='ASS AKUNTING') then
            dxBarLargeButton62.Visible
          else
            Timer4.Enabled:=true;

          tabel.q1.SQL.Clear;
          tabel.q1.SQL.Add('select * from data_cabang ');
          tabel.q1.Active:=true;
          dxStatusBar1.Panels[1].Text:=tabel.q1.FieldValues['nama_cabang'];
          Self.Caption := tabel.q1.FieldValues['nama_cabang'];
          vcabang := tabel.q1.FieldValues['nama_cabang'];
          vcabangbranch := tabel.q1.FieldValues['branch'];

          tabel.login( tuser.Text, tpass.Text );
          tabel.loginSAP( tuser.Text, tpass.Text );
          if v_statuslogin <> 'SUKSES' then
            ShowMessage(v_statuslogin);

          timercekpemasangan.Enabled:=true;
          timercekkonfirmasidp.Enabled:=true;
          timercekrekkoranbefore.Enabled:=true;

          Timer2.Enabled := True;
        end
        else
        begin
          ShowMessage('Aplikasi hanya bisa di buka oleh user dengan level owner dan akunting');
        end;

      end else begin
      ShowMessage('Username Atau Password Salah!');
      tuser.Clear;
      tpass.Clear;
      Exit;

      end;
  end;
end;

procedure Tfmenuutama.SpeedButton4Click(Sender: TObject);
var kembalian:string;
begin
 if tkkembalian.Text='' then begin
  kembalian :='0';
 end else begin
  kembalian := tkkembalian.Text;
 end;

 kembalian := stringreplace(kembalian,',','',[rfreplaceall,rfignorecase]);
 kembalian := stringreplace(kembalian,'.','',[rfreplaceall,rfignorecase]);

 if StrToFloat(kembalian) >0 then begin
   tksaldo.Text:=tkkembalian.Text;
   tkkembalian.Text:='0';
 end else begin
   ShowMessage('Kembalian bisa di pindahkan ke saldo jika nilainya positif!');
 end;


end;

procedure Tfmenuutama.SpeedButton5Click(Sender: TObject);
var saldo:string;
begin
 if tksaldo.Text='' then begin
  saldo :='0';
 end else begin
  saldo := tksaldo.Text;
 end;

 saldo := stringreplace(saldo,',','',[rfreplaceall,rfignorecase]);
 saldo := stringreplace(saldo,'.','',[rfreplaceall,rfignorecase]);

 if StrToFloat(saldo) >0 then begin
   tkkembalian.Text:=tksaldo.Text;
  tksaldo.Text:='0';
 end else begin
   ShowMessage('Kembalian bisa di batalkan jika saldo nilainya positif!');
 end;




end;

procedure Tfmenuutama.SpeedButton6Click(Sender: TObject);
var
  datanopenjualan,glakun,glnamaakun,selisih:string;
  lastPosition:integer;
begin
  with tabel.qjurnalkotrabon do
  begin
    if (Active = False) or (RecordCount = 0) then
      ShowMessage('Tidak ada data yang di centang')
    else
    begin
      lastPosition := RecNo;

      Filtered := false;
      Filter := 'pilihan=True';
      Filtered := True;

      if RecordCount > 0 then
      begin
        selisih := tselisih.text;
        selisih := stringreplace(selisih,',','',[rfreplaceall,rfignorecase]);

        if StrToFloat(selisih) <> 0 then
        begin
          Filtered := false;
          RecNo := lastPosition;
          ShowMessage('Terdapat selisih, silahkan perbaiki data');
          ttagihaneks.SetFocus;
        end
        else
        begin
          tabel.q1.SQL.Clear;
          tabel.q1.SQL.Add('select * from perkiraan_sap where upper(trim(jenis_perkiraan))=''AP INVOICE'' ');
          tabel.q1.Open;
          if tabel.q1.RecordCount > 0 then
          begin
            glakun := tabel.q1.FieldByName('no_perkiraan').Text;
            glnamaakun := tabel.q1.FieldByName('nama_perkiraan').Text;
          end
          else
          begin
            glakun := '';
            glnamaakun := '';
          end;

          First;
          while not Eof do
          begin
            datanopenjualan := datanopenjualan + tkutip.Text + tabel.qjurnalkotrabonno_penjualan.Text + tkutip.Text + ',';

            Next;
          end;

          SetLength(datanopenjualan,Length(datanopenjualan)-1);

          // Jika jenis asuransi DIPISAH maka AP Invoice Asuransi
//          ShowMessage(tabel.qjurnalkotrabonasuransi_jenis.Text + ' = '+FloatToStr(totalAsuransi) + ' '+ FloatToStr(totalEstimasiAsuransi));
          if (tabel.qjurnalkotrabonjenis_pembayaran_asuransi.Text='MEMAKAI KONTRABON') and (tabel.qjurnalkotrabontipe_pembayaran.Text='KONTRA BON') then
          begin
            tabel.q1.SQL.Clear;
            tabel.q1.SQL.Add('SELECT *,FORMAT(tot,2,''de_DE'') AS total FROM (  '+
            ' SELECT ''Yes'' as wtax,''A'' as sts,CONCAT(IF(no_resi IS NOT NULL,CONCAT(op.no_order,'' - '',no_resi),op.no_order),'' - Ongkir'') AS description,group_tax '+
              ' ,IF(ongkir_sesudah IS NOT NULL,ongkir_sesudah ,IFNULL(dk.jumlah, 0)-IFNULL(dks.jumlah, 0)) AS tot '+
             ' ,FORMAT(IFNULL(berat_resi,0),2,''de_DE'') AS qty,FORMAT(IFNULL(IF(jenis_pembayaran_asuransi = ''MEMAKAI KONTRABON'',IFNULL(dk.jumlah,0),IFNULL(dk.jumlah, 0)-IFNULL(dks.jumlah, 0))/ berat_resi,0),2,''de_DE'') AS price'+
            ' FROM order_pembelian op JOIN customer c USING(id_customer) JOIN detail_muat dp                                                                   '+
            ' ON dp.no_pengeluaran=op.no_order JOIN muat_orderan mo ON mo.`no_muat`=dp.`no_muat` JOIN relasi_orderdanpenjualan ro ON ro.no_order=op.no_order  '+
            ' LEFT JOIN ongkir okr ON okr.no_transaksi=ro.no_penjualan                                                                                     '+
            ' LEFT JOIN ekspedisi ek ON ek.nama=op.exspedisi                                                                                                '+
            ' LEFT JOIN (SELECT no_order,jumlah,berat_resi FROM detail_pengeluaranongkir dpl GROUP BY no_order) AS dk ON dk.no_order=op.no_order                      '+
            ' LEFT JOIN (SELECT no_order,asuransi_versi_exspedisi AS jumlah FROM a_asuransiversi_exspedisi dps GROUP BY no_order) AS dks  ON dks.no_order = op.no_order '+
            ' LEFT JOIN fhoto_resi fr ON op.no_order=fr.no_order   '+
            ' LEFT JOIN (SELECT id,no_penjualan,ongkir_sebelum,asuransi_sebelum,ongkir_sesudah,asuransi_sesudah FROM n_pembayaran_ekspedisi_edit n '+
            ' WHERE id = (SELECT MAX(id) AS id FROM n_pembayaran_ekspedisi_edit WHERE no_penjualan=n.`no_penjualan` AND `status`=0) GROUP BY no_penjualan) AS vedit ON ro.no_penjualan=vedit.no_penjualan '+
            ' WHERE exspedisi='''+cxcbekspedisi.Text+''' and ro.no_penjualan in ('+datanopenjualan+') and ro.no_penjualan not in (select no_transaksi from jurnal_ongkirdanlainlain)   '+
            ' UNION                                                                                                                                        '+
            ' SELECT ''Yes'' as wtax,''A'' as sts,CONCAT(IF(no_resi IS NOT NULL,CONCAT(op.no_penjualan,'' - '',no_resi),op.no_penjualan),'' - Ongkir'') AS description,group_tax '+
            ' ,IF(ongkir_sesudah IS NOT NULL,ongkir_sesudah ,IFNULL(dk.jumlah, 0)-IFNULL(dks.jumlah, 0)) AS tot '+
            ' ,FORMAT(IFNULL(berat_resi,0),2,''de_DE'') AS qty,FORMAT(IFNULL(IF(jenis_pembayaran_asuransi = ''MEMAKAI KONTRABON'',IFNULL(dk.jumlah,0),IFNULL(dk.jumlah, 0)-IFNULL(dks.jumlah, 0))/ berat_resi,0),2,''de_DE'') AS price'+
            ' FROM s_penjualan_katalog op JOIN customer c USING(id_customer) JOIN detail_muat dp  ON dp.no_pengeluaran=op.no_penjualan                       '+
            ' JOIN muat_orderan mo ON mo.`no_muat`=dp.`no_muat`                                                                                            '+
            ' LEFT JOIN ongkir okr ON okr.no_transaksi=op.no_penjualan                                                                                      '+
            ' LEFT JOIN ekspedisi ek ON ek.nama=op.ekspedisi                                                                                                '+
            ' LEFT JOIN (SELECT no_order,jumlah,berat_resi FROM detail_pengeluaranongkir dpl GROUP BY no_order) AS dk ON dk.no_order=op.no_penjualan                  '+
            ' LEFT JOIN (SELECT no_order,asuransi_versi_exspedisi AS jumlah FROM a_asuransiversi_exspedisi dps GROUP BY no_order) AS dks ON dks.no_order = op.no_penjualan '+
            ' LEFT JOIN fhoto_resi fr ON op.no_penjualan=fr.no_order   '+
            ' LEFT JOIN (SELECT id,no_penjualan,ongkir_sebelum,asuransi_sebelum,ongkir_sesudah,asuransi_sesudah FROM n_pembayaran_ekspedisi_edit n '+
            ' WHERE id = (SELECT MAX(id) AS id FROM n_pembayaran_ekspedisi_edit WHERE no_penjualan=n.`no_penjualan` AND `status`=0) GROUP BY no_penjualan) AS vedit ON op.no_penjualan=vedit.no_penjualan '+
            ' WHERE  ekspedisi='''+cxcbekspedisi.Text+''' and op.no_penjualan in ('+datanopenjualan+') and op.no_penjualan not in (select no_transaksi from jurnal_ongkirdanlainlain) '+
            // ASURANSI
            ' UNION                                                                                                                                     '+
            ' SELECT ''No'' as wtax,''B'' as sts,CONCAT(IF(no_resi IS NOT NULL,CONCAT(op.no_order,'' - '',no_resi),op.no_order),'' - Asuransi'') AS description,asu.group_tax '+
              ' ,IF(asuransi_sesudah IS NOT NULL,asuransi_sesudah ,IFNULL(dks.jumlah, 0)) AS tot '+
             ' ,FORMAT(0,2,''de_DE'') AS qty,FORMAT(0,2,''de_DE'') AS price'+
            ' FROM order_pembelian op JOIN customer c USING(id_customer) JOIN detail_muat dp                                                                   '+
            ' ON dp.no_pengeluaran=op.no_order JOIN muat_orderan mo ON mo.`no_muat`=dp.`no_muat` JOIN relasi_orderdanpenjualan ro ON ro.no_order=op.no_order  '+
            ' LEFT JOIN (select e.nama,a.group_tax from ekspedisi e join asuransi a using(kode_asuransi) ) asu on asu.nama= exspedisi   '+
            ' LEFT JOIN ongkir okr ON okr.no_transaksi=ro.no_penjualan                                                                                     '+
            ' LEFT JOIN ekspedisi ek ON ek.nama=op.exspedisi                                                                                                '+
            ' LEFT JOIN (SELECT no_order,jumlah,berat_resi FROM detail_pengeluaranongkir dpl GROUP BY no_order) AS dk ON dk.no_order=op.no_order                      '+
            ' LEFT JOIN (SELECT no_order,asuransi_versi_exspedisi AS jumlah FROM a_asuransiversi_exspedisi dps GROUP BY no_order) AS dks  ON dks.no_order = op.no_order '+
            ' LEFT JOIN fhoto_resi fr ON op.no_order=fr.no_order   '+
            ' LEFT JOIN (SELECT id,no_penjualan,ongkir_sebelum,asuransi_sebelum,ongkir_sesudah,asuransi_sesudah FROM n_pembayaran_ekspedisi_edit n '+
            ' WHERE id = (SELECT MAX(id) AS id FROM n_pembayaran_ekspedisi_edit WHERE no_penjualan=n.`no_penjualan` AND `status`=0) GROUP BY no_penjualan) AS vedit ON ro.no_penjualan=vedit.no_penjualan '+
            ' WHERE exspedisi='''+cxcbekspedisi.Text+''' and ro.no_penjualan in ('+datanopenjualan+') and ro.no_penjualan not in (select no_transaksi from jurnal_ongkirdanlainlain)   '+
            ' UNION                                                                                                                                        '+
            ' SELECT ''No'' as wtax,''B'' as sts,CONCAT(IF(no_resi IS NOT NULL,CONCAT(op.no_penjualan,'' - '',no_resi),op.no_penjualan),'' - Asuransi'') AS description,asu.group_tax '+
            ' ,IF(asuransi_sesudah IS NOT NULL,asuransi_sesudah ,IFNULL(dks.jumlah, 0)) AS tot '+
            ' ,FORMAT(0,2,''de_DE'') AS qty,FORMAT(0,2,''de_DE'') AS price'+
            ' FROM s_penjualan_katalog op JOIN customer c USING(id_customer) JOIN detail_muat dp  ON dp.no_pengeluaran=op.no_penjualan                       '+
            ' JOIN muat_orderan mo ON mo.`no_muat`=dp.`no_muat`                                                                                            '+
            ' LEFT JOIN (select e.nama,a.group_tax from ekspedisi e join asuransi a using(kode_asuransi) ) asu on asu.nama= ekspedisi   '+
            ' LEFT JOIN ongkir okr ON okr.no_transaksi=op.no_penjualan                                                                                      '+
            ' LEFT JOIN ekspedisi ek ON ek.nama=op.ekspedisi                                                                                                '+
            ' LEFT JOIN (SELECT no_order,jumlah,berat_resi FROM detail_pengeluaranongkir dpl GROUP BY no_order) AS dk ON dk.no_order=op.no_penjualan                  '+
            ' LEFT JOIN (SELECT no_order,asuransi_versi_exspedisi AS jumlah FROM a_asuransiversi_exspedisi dps GROUP BY no_order) AS dks ON dks.no_order = op.no_penjualan '+
            ' LEFT JOIN fhoto_resi fr ON op.no_penjualan=fr.no_order   '+
            ' LEFT JOIN (SELECT id,no_penjualan,ongkir_sebelum,asuransi_sebelum,ongkir_sesudah,asuransi_sesudah FROM n_pembayaran_ekspedisi_edit n '+
            ' WHERE id = (SELECT MAX(id) AS id FROM n_pembayaran_ekspedisi_edit WHERE no_penjualan=n.`no_penjualan` AND `status`=0) GROUP BY no_penjualan) AS vedit ON op.no_penjualan=vedit.no_penjualan '+
            ' WHERE  ekspedisi='''+cxcbekspedisi.Text+''' and op.no_penjualan in ('+datanopenjualan+') and op.no_penjualan not in (select no_transaksi from jurnal_ongkirdanlainlain) '+
            ' ) as v WHERE tot <> 0 order by sts,description ');
//            ShowMessage(tabel.q1.SQL.Text);
            tabel.q1.open;
          end
          else
          begin
            tabel.q1.SQL.Clear;
            tabel.q1.SQL.Add('SELECT ''Yes'' as wtax,CONCAT(IF(no_resi IS NOT NULL,CONCAT(op.no_order,'' - '',no_resi),op.no_order),'' - Ongkir'') AS description,group_tax '+
  //          ' ,CONCAT(''IDR '',FORMAT(IF(jenis_pembayaran_asuransi = ''MEMAKAI KONTRABON'',IFNULL(dk.jumlah,0),IFNULL(dk.jumlah, 0)-IFNULL(dks.jumlah, 0)),2,''de_DE'')) AS total '+
              ' ,CONCAT(FORMAT(IF(jenis_pembayaran_asuransi = ''MEMAKAI KONTRABON'',IF(ongkir_sesudah IS NOT NULL,ongkir_sesudah + asuransi_sesudah,IFNULL(dk.jumlah,0)) '+
              ' ,IF(ongkir_sesudah IS NOT NULL,ongkir_sesudah ,IFNULL(dk.jumlah, 0)-IFNULL(dks.jumlah, 0))),2,''de_DE'')) AS total '+
             ' ,FORMAT(IFNULL(berat_resi,0),2,''de_DE'') AS qty,FORMAT(IFNULL(IF(jenis_pembayaran_asuransi = ''MEMAKAI KONTRABON'',IFNULL(dk.jumlah,0),IFNULL(dk.jumlah, 0)-IFNULL(dks.jumlah, 0))/ berat_resi,0),2,''de_DE'') AS price'+
            ' FROM order_pembelian op JOIN customer c USING(id_customer) JOIN detail_muat dp                                                                   '+
            ' ON dp.no_pengeluaran=op.no_order JOIN muat_orderan mo ON mo.`no_muat`=dp.`no_muat` JOIN relasi_orderdanpenjualan ro ON ro.no_order=op.no_order  '+
            ' LEFT JOIN ongkir okr ON okr.no_transaksi=ro.no_penjualan                                                                                     '+
            ' LEFT JOIN ekspedisi ek ON ek.nama=op.exspedisi                                                                                                '+
            ' LEFT JOIN (SELECT no_order,jumlah,berat_resi FROM detail_pengeluaranongkir dpl GROUP BY no_order) AS dk ON dk.no_order=op.no_order                      '+
            ' LEFT JOIN (SELECT no_order,asuransi_versi_exspedisi AS jumlah FROM a_asuransiversi_exspedisi dps GROUP BY no_order) AS dks  ON dks.no_order = op.no_order '+
            ' LEFT JOIN fhoto_resi fr ON op.no_order=fr.no_order   '+
            ' LEFT JOIN (SELECT id,no_penjualan,ongkir_sebelum,asuransi_sebelum,ongkir_sesudah,asuransi_sesudah FROM n_pembayaran_ekspedisi_edit n '+
            ' WHERE id = (SELECT MAX(id) AS id FROM n_pembayaran_ekspedisi_edit WHERE no_penjualan=n.`no_penjualan` AND `status`=0) GROUP BY no_penjualan) AS vedit ON ro.no_penjualan=vedit.no_penjualan '+
            ' WHERE exspedisi='''+cxcbekspedisi.Text+''' and ro.no_penjualan in ('+datanopenjualan+') and ro.no_penjualan not in (select no_transaksi from jurnal_ongkirdanlainlain)   '+
            ' UNION                                                                                                                                        '+
            ' SELECT ''Yes'' as wtax,CONCAT(IF(no_resi IS NOT NULL,CONCAT(op.no_penjualan,'' - '',no_resi),op.no_penjualan),'' - Ongkir'') AS description,group_tax '+
  //          ' ,CONCAT(''IDR '',FORMAT(IF(jenis_pembayaran_asuransi = ''MEMAKAI KONTRABON'',IFNULL(dk.jumlah,0),IFNULL(dk.jumlah, 0)-IFNULL(dks.jumlah, 0)),2,''de_DE'')) AS total '+
            ' ,CONCAT(FORMAT(IF(jenis_pembayaran_asuransi = ''MEMAKAI KONTRABON'',IF(ongkir_sesudah IS NOT NULL,ongkir_sesudah + asuransi_sesudah,IFNULL(dk.jumlah,0)) '+
            ' ,IF(ongkir_sesudah IS NOT NULL,ongkir_sesudah ,IFNULL(dk.jumlah, 0)-IFNULL(dks.jumlah, 0))),2,''de_DE'')) AS total '+
            ' ,FORMAT(IFNULL(berat_resi,0),2,''de_DE'') AS qty,FORMAT(IFNULL(IF(jenis_pembayaran_asuransi = ''MEMAKAI KONTRABON'',IFNULL(dk.jumlah,0),IFNULL(dk.jumlah, 0)-IFNULL(dks.jumlah, 0))/ berat_resi,0),2,''de_DE'') AS price'+
            ' FROM s_penjualan_katalog op JOIN customer c USING(id_customer) JOIN detail_muat dp  ON dp.no_pengeluaran=op.no_penjualan                       '+
            ' JOIN muat_orderan mo ON mo.`no_muat`=dp.`no_muat`                                                                                            '+
            ' LEFT JOIN ongkir okr ON okr.no_transaksi=op.no_penjualan                                                                                      '+
            ' LEFT JOIN ekspedisi ek ON ek.nama=op.ekspedisi                                                                                                '+
            ' LEFT JOIN (SELECT no_order,jumlah,berat_resi FROM detail_pengeluaranongkir dpl GROUP BY no_order) AS dk ON dk.no_order=op.no_penjualan                  '+
            ' LEFT JOIN (SELECT no_order,asuransi_versi_exspedisi AS jumlah FROM a_asuransiversi_exspedisi dps GROUP BY no_order) AS dks ON dks.no_order = op.no_penjualan '+
            ' LEFT JOIN fhoto_resi fr ON op.no_penjualan=fr.no_order   '+
            ' LEFT JOIN (SELECT id,no_penjualan,ongkir_sebelum,asuransi_sebelum,ongkir_sesudah,asuransi_sesudah FROM n_pembayaran_ekspedisi_edit n '+
            ' WHERE id = (SELECT MAX(id) AS id FROM n_pembayaran_ekspedisi_edit WHERE no_penjualan=n.`no_penjualan` AND `status`=0) GROUP BY no_penjualan) AS vedit ON op.no_penjualan=vedit.no_penjualan '+
            ' WHERE  ekspedisi='''+cxcbekspedisi.Text+''' and op.no_penjualan in ('+datanopenjualan+') and op.no_penjualan not in (select no_transaksi from jurnal_ongkirdanlainlain)  ');
            tabel.q1.open;
          end;

          vtsapkontrabon.Active := false;
          vtsapkontrabon.Active := True;
          vtsapkontrabon.Clear;

          tabel.q1.First;
          while not tabel.q1.Eof do
          begin
            vtsapkontrabon.Append;

            vtsapkontrabondescription.Text := tabel.q1.FieldByName('description').Text;
            vtsapkontrabonglakun.Text := tkutip.Text + glakun;
            vtsapkontrabonglakunname.Text := glnamaakun;
            vtsapkontrabonbranch.Text := vcabangbranch;
            vtsapkontrabontax.Text := tabel.q1.FieldByName('group_tax').Text;
            vtsapkontrabonwtax.Text := tabel.q1.FieldByName('wtax').Text;
            vtsapkontrabontotal.Text := tabel.q1.FieldByName('total').Text;
            vtsapkontrabonblanket.Text := '';
            vtsapkontrabonqty.Text := tabel.q1.FieldByName('qty').Text;
            vtsapkontrabonprice.Text := tabel.q1.FieldByName('price').Text;
            vtsapkontrabonlongdescription.Text := tabel.q1.FieldByName('description').Text;

            vtsapkontrabon.Post;

            tabel.q1.Next;
          end;

          TcxGridDBTableView(cxGrid34.FocusedView).CopyToClipboard(True);
          Filtered := false;
          RecNo := lastPosition;

          SpeedButton8.Enabled := True;

          changeStatusBar('Sukses','Data yang di Centang Berhasil Tercopy...',clTeal,clTeal);
          ShowMessage('Data yang di Centang Berhasil Tercopy');
        end;
      end
      else
      begin
        Filtered := false;
        RecNo := lastPosition;
        ShowMessage('Silahkan centang data yang akan di copy');
      end;

    end;
  end;
end;

procedure Tfmenuutama.SpeedButton7Click(Sender: TObject);
var
  i:integer;
begin
  if cxcbekspedisi.Text <> '' then
  begin
    tabel.qjurnalkotrabon.SQL.Clear;
//    tabel.qjurnalkotrabon.SQL.Add('SELECT op.id_customer,dpo.tanggal_resi as tanggal,mo.no_muat,ro.no_penjualan,no_resi,dp.no_detail AS detail,op.no_order,c.nama,exspedisi,asuransi_jenis,kode_asuransi '+
//    ' ,IF(ongkir_sesudah IS NOT NULL,ongkir_sesudah,IFNULL(dk.jumlah, 0)-IFNULL(dks.jumlah, 0)) AS ongkir '+
//    ' ,IF(asuransi_sesudah IS NOT NULL,asuransi_sesudah,IFNULL(dks.jumlah,0)) AS asuransi,IFNULL(nt.asuransi,0) AS estimasi_asuransi '+
//    ' ,IF(jenis_pembayaran_asuransi = ''MEMAKAI KONTRABON'',IF(ongkir_sesudah IS NOT NULL,ongkir_sesudah + asuransi_sesudah,IFNULL(dk.jumlah,0)) '+
//    ' ,IF(ongkir_sesudah IS NOT NULL,ongkir_sesudah ,IFNULL(dk.jumlah, 0)-IFNULL(dks.jumlah, 0))) AS total '+
//    ' ,IFNULL(vedit.no_penjualan,'''') AS edit '+
//    ' ,IFNULL(IF(jenis_pembayaran_asuransi = ''MEMAKAI KONTRABON'',(IFNULL(nt.ongkir,0) + IFNULL(nt.asuransi,0)) - IF(ongkir_sesudah IS NOT NULL,ongkir_sesudah + asuransi_sesudah,IFNULL(dk.jumlah,0)) '+
//    ' ,IFNULL(nt.ongkir,0) - IF(ongkir_sesudah IS NOT NULL,ongkir_sesudah ,IFNULL(dk.jumlah,0) - IFNULL(dks.jumlah,0))),0) AS selisih '+
//    ' ,ongkir_sesudah,asuransi_sesudah '+
//    ' ,jenis_pembayaran_asuransi,ek.tipe_pembayaran,IFNULL(pph,'''') AS pph,''False'' as pilihan '+
//    ' FROM order_pembelian op JOIN customer c USING(id_customer) JOIN detail_muat dp                                                                   '+
//    ' ON dp.no_pengeluaran=op.no_order JOIN muat_orderan mo ON mo.`no_muat`=dp.`no_muat` JOIN relasi_orderdanpenjualan ro ON ro.no_order=op.no_order  '+
//    ' JOIN detail_pengeluaranongkir dpo on op.no_order=dpo.no_order '+
//    ' LEFT JOIN ongkir okr ON okr.no_transaksi=ro.no_penjualan                                                                                     '+
//    ' LEFT JOIN ekspedisi ek ON ek.nama=op.exspedisi                                                                                                '+
//    ' LEFT JOIN (SELECT no_order,jumlah FROM detail_pengeluaranongkir dpl GROUP BY no_order) AS dk ON dk.no_order=op.no_order                      '+
//    ' LEFT JOIN (SELECT no_order,asuransi_versi_exspedisi AS jumlah FROM a_asuransiversi_exspedisi dps GROUP BY no_order) AS dks  ON dks.no_order = op.no_order '+
//    ' LEFT JOIN fhoto_resi fr ON op.no_order=fr.no_order LEFT JOIN n_temp_kasir nt ON op.no_order=nt.no_order '+
//    ' LEFT JOIN (SELECT id,no_penjualan,ongkir_sebelum,asuransi_sebelum,ongkir_sesudah,asuransi_sesudah FROM n_pembayaran_ekspedisi_edit n '+
//    ' WHERE id = (SELECT MAX(id) AS id FROM n_pembayaran_ekspedisi_edit WHERE no_penjualan=n.`no_penjualan` AND `status`=0) GROUP BY no_penjualan) AS vedit ON ro.no_penjualan=vedit.no_penjualan '+
//    ' WHERE exspedisi='''+cxcbekspedisi.Text+'''  and ro.no_penjualan not in (select no_transaksi from jurnal_ongkirdanlainlain)   '+
//    ' and ro.no_penjualan not in (select no_penjualan from n_pembayaran_ekspedisi_detail)  '+
//    ' UNION                                                                                                                                        '+
//    ' SELECT op.id_customer,mo.tanggal,dpo.tanggal_resi as no_muat,op.no_penjualan,no_resi,dp.no_detail AS detail,op.no_penjualan,c.nama,ekspedisi AS exspedisi,asuransi_jenis,kode_asuransi '+
//    ' ,IF(ongkir_sesudah IS NOT NULL,ongkir_sesudah,IFNULL(dk.jumlah, 0)-IFNULL(dks.jumlah, 0)) AS ongkir '+
//    ' ,IF(asuransi_sesudah IS NOT NULL,asuransi_sesudah,IFNULL(dks.jumlah,0)) AS asuransi,IFNULL(nt.asuransi,0) AS estimasi_asuransi '+
//    ' ,IF(jenis_pembayaran_asuransi = ''MEMAKAI KONTRABON'',IF(ongkir_sesudah IS NOT NULL,ongkir_sesudah + asuransi_sesudah,IFNULL(dk.jumlah,0)) '+
//    ' ,IF(ongkir_sesudah IS NOT NULL,ongkir_sesudah ,IFNULL(dk.jumlah, 0)-IFNULL(dks.jumlah, 0))) AS total '+
//    ' ,IFNULL(vedit.no_penjualan,'''') AS edit '+
//    ' ,IFNULL(IF(jenis_pembayaran_asuransi = ''MEMAKAI KONTRABON'',(IFNULL(nt.ongkir,0) + IFNULL(nt.asuransi,0)) - IF(ongkir_sesudah IS NOT NULL,ongkir_sesudah + asuransi_sesudah,IFNULL(dk.jumlah,0)) '+
//    ' ,IFNULL(nt.ongkir,0) - IF(ongkir_sesudah IS NOT NULL,ongkir_sesudah ,IFNULL(dk.jumlah,0) - IFNULL(dks.jumlah,0))),0) AS selisih '+
//    ' ,ongkir_sesudah,asuransi_sesudah '+
//    ' ,jenis_pembayaran_asuransi,IFNULL(ek.tipe_pembayaran,'''') AS tipe_pembayaran,IFNULL(pph,'''') AS pph,''False'' as pilihan  '+
//    ' FROM s_penjualan_katalog op JOIN customer c USING(id_customer) JOIN detail_muat dp  ON dp.no_pengeluaran=op.no_penjualan                       '+
//    ' JOIN muat_orderan mo ON mo.`no_muat`=dp.`no_muat`                                                                                            '+
//    ' JOIN detail_pengeluaranongkir dpo on op.no_penjualan=dpo.no_order '+
//    ' LEFT JOIN ongkir okr ON okr.no_transaksi=op.no_penjualan                                                                                      '+
//    ' LEFT JOIN ekspedisi ek ON ek.nama=op.ekspedisi                                                                                                '+
//    ' LEFT JOIN (SELECT no_order,jumlah FROM detail_pengeluaranongkir dpl GROUP BY no_order) AS dk ON dk.no_order=op.no_penjualan                  '+
//    ' LEFT JOIN (SELECT no_order,asuransi_versi_exspedisi AS jumlah FROM a_asuransiversi_exspedisi dps GROUP BY no_order) AS dks ON dks.no_order = op.no_penjualan '+
//    ' LEFT JOIN fhoto_resi fr ON op.no_penjualan=fr.no_order LEFT JOIN n_temp_kasir nt ON op.no_penjualan=nt.no_order '+
//    ' LEFT JOIN (SELECT id,no_penjualan,ongkir_sebelum,asuransi_sebelum,ongkir_sesudah,asuransi_sesudah FROM n_pembayaran_ekspedisi_edit n '+
//    ' WHERE id = (SELECT MAX(id) AS id FROM n_pembayaran_ekspedisi_edit WHERE no_penjualan=n.`no_penjualan` AND `status`=0) GROUP BY no_penjualan) AS vedit ON op.no_penjualan=vedit.no_penjualan '+
//    ' WHERE  ekspedisi='''+cxcbekspedisi.Text+''' and op.no_penjualan not in (select no_transaksi from jurnal_ongkirdanlainlain)  '+
//    ' and op.no_penjualan not in (select no_penjualan from n_pembayaran_ekspedisi_detail)  ');
    tabel.qjurnalkotrabon.SQL.Add('CALL sp_get_data_pembayaran_kontrabon('''+cxcbekspedisi.Text+''','''')');
    //ShowMessage(tabel.qjurnalkotrabon.sql.text);
    tabel.qjurnalkotrabon.Active:=true;

    tabel.q1.sql.Clear;
    tabel.q1.SQL.Add('select IFNULL(LOWER(REPLACE(pph,'' '','''')),'''') as pph from ekspedisi where nama='''+cxcbekspedisi.Text+''' ');
    tabel.q1.Open;

    linfopph.Visible := False;

//    if (tabel.q1.RecordCount > 0)  and (tabel.q1.Fields[0].Text = 'pph23')then
//    begin
//      pcopy.Left := (cxPembayaranKontrabon2.ClientWidth  - (pcopy.Width + psudahpost.Width) - 50) div 2;
//      psudahpost.Left := (cxPembayaranKontrabon2.ClientWidth + 50) div 2;
//
//      pcopy.Visible := true;
//      psudahpost.Visible := true;
//      ppost.Visible := false;
//
//      linfopph.Caption := UpperCase(cxcbekspedisi.Text + ' menggunakan pph23');
//      linfopph.Visible := true;
//    end
//    else
//    begin
      ppost.Left := (cxPembayaranKontrabon2.ClientWidth - ppost.Width) div 2;

      pcopy.Visible := false;
      psudahpost.Visible := false;
      ppost.Visible := true;
//    end;

    vtotalkontrabon := 0;
    vtotalCentangKontrabon := 0;
    ttagihaneks.Text := '0';
    ttagihancentang.Text := '0';

    lcentangkontrabon.Caption := 'Tercentang : '+IntToStr(vtotalCentangKontrabon);
  end;
end;

procedure Tfmenuutama.SpeedButton8Click(Sender: TObject);
var
  noBayar,selisih,refNo,refNoAsuransi,endPoint,noDetail,namaTabel,ongkir,asuransi,kodeperkiraan:string;
  lastPosition:integer;
  totalAsuransi,totalEstimasiAsuransi:real;
begin
  try
    with tabel.qjurnalkotrabon do
    begin
      if (Active = False) or (RecordCount = 0) then
        ShowMessage('Tidak ada data yang di centang')
      else
      begin
        lastPosition := RecNo;

        Filtered := false;
        Filter := 'pilihan=True';
        Filtered := True;

        if RecordCount > 0 then
        begin
          selisih := tselisih.text;
          selisih := stringreplace(selisih,',','',[rfreplaceall,rfignorecase]);


          if Trim(cxcbbankkontrabon.Text) = '' then
          begin
            ShowMessage('Pilihan bank tidak boleh kosong');
            cxcbbankkontrabon.SetFocus;
          end
          else if StrToFloat(selisih) <> 0 then
          begin
            Filtered := false;
            RecNo := lastPosition;
            ShowMessage('Terdapat selisih, silahkan perbaiki data');
            ttagihaneks.SetFocus;
          end
          else
          begin
            if MessageDlg('Apakah anda yakin data sudah masuk di SAP ? ',mtConfirmation,[mbYes,mbNo],1) = mrYes then
            begin
              noBayar := generateNoBayarKontrabonSAP();

              tabel.q1.SQL.Clear;
              tabel.q1.SQL.Add('select kode_perkiraan FROM perkiraan_sap JOIN kas_bank ON kode_kas=nama_perkiraan '+
              ' where CONCAT(jenis_perkiraan,'' - '',no_perkiraan) = '''+cxcbbankkontrabon.Text+''' ');
              tabel.q1.Open;
              if tabel.q1.RecordCount = 0 then
                kodeperkiraan := '0'
              else
                kodeperkiraan := tabel.q1.Fields[0].Text;

              tabel.q1.SQL.Clear;
              tabel.q1.SQL.Add('START TRANSACTION');
              tabel.q1.ExecSQL;

              tabel.q1.SQL.Clear;
              tabel.q1.SQL.Add('insert into n_pembayaran_ekspedisi (no_bayar,ekspedisi,kode_perkiraan,posting_date,id_user) '+
              ' values('''+noBayar+''','''+cxcbekspedisi.Text+''','+kodeperkiraan+','''+FormatDateTime('yyyy-mm-dd',cxtanggalsapkontrabon.Date)+''','+v_idkaryawan+') ');
              tabel.q1.ExecSQL;

              First;
              while not Eof do
              begin
                totalAsuransi := totalAsuransi + tabel.qjurnalkotrabonasuransi.Value;
                totalEstimasiAsuransi := totalEstimasiAsuransi + tabel.qjurnalkotrabonestimasi_asuransi.Value;

                if (tabel.qjurnalkotrabonedit.Text <> '') then
                begin
                  ongkir := FloatToStr(tabel.qjurnalkotrabonongkir_sesudah.value + tabel.qjurnalkotrabonasuransi_sesudah.value);
                  asuransi := FloatToStr(tabel.qjurnalkotrabonasuransi_sesudah.value);
                end
                else
                begin
                  ongkir := FloatToStr(tabel.qjurnalkotrabonongkir.value + tabel.qjurnalkotrabonasuransi.value);
                  asuransi := FloatToStr(tabel.qjurnalkotrabonasuransi.value);
                end;

                tabel.q1.SQL.Clear;
                tabel.q1.SQL.Add('insert into n_pembayaran_ekspedisi_detail (no_bayar,no_penjualan,no_order) '+
                ' values('''+noBayar+''','''+tabel.qjurnalkotrabonno_penjualan.Text+''','''+tabel.qjurnalkotrabonno_order.Text+''') ');
                tabel.q1.ExecSQL;

                // jika ada pengeditan ongkir/asuransi
//                ShowMessage(tabel.qjurnalkotrabonno_order.Text + ' == '+ tabel.qjurnalkotrabonselisih.Text);
                if (tabel.qjurnalkotrabonselisih.Value <> 0) then
                begin
                  tabel.q1.SQL.Clear;
                  tabel.q1.SQL.Add('select max(id) as id from n_pembayaran_ekspedisi_detail where no_bayar='''+noBayar+''' and no_order='''+tabel.qjurnalkotrabonno_order.Text+''' ');
                  tabel.q1.Open;
                  noDetail := tabel.q1.Fields[0].Text;

                  refNo := vcabangbranch +'_'+tabel.qjurnalkotrabonno_order.Text+'_RevisiEstimasiOngkir';

                  tabel.q1.SQL.Clear;
                  tabel.q1.SQL.Add('select id from sinkronisasi_data where ref_no like '''+refNo+'%'' ');
                  tabel.q1.Open;
                  if tabel.q1.RecordCount = 0 then
                    refNo := refNo + '1'
                  else
                    refNo := refNo + IntToStr(tabel.q1.RecordCount + 1);

                  // pengecekan jika selisih minus (tagihan sesudah > tagihan sebelum) maka POST A/R Invoice
                  if tabel.qjurnalkotrabonselisih.Value < 0 then
                  begin
                    namaTabel := 'detail_pengeluaranongkir_lebih';
                    endPoint := '/saptemp/sinkarinvoiceongkir';
                  end
                  else // pengecekan jika selisih plus (tagihan sesudah < tagihan sebelum) maka POST A/R cr.memo
                  begin
                    namaTabel := 'detail_pengeluaranongkir_kurang';
                    endPoint := '/saptemp/sinkcreditmemoongkir';
                  end;

                  tabel.q1.SQL.Clear;
                  tabel.q1.SQL.Add('CALL sinkronisasi_sap('''+tabel.qjurnalkotrabonno_order.Text+''','''+refNo+''','''+namaTabel+''','''+endPoint+''',@out_msg)');
                  tabel.q1.ExecSQL;

                  tabel.q1.SQL.Clear;
                  tabel.q1.SQL.Add('select @out_msg as pesan');
                  tabel.q1.open;

                  if tabel.q1.FieldValues['pesan'] <> 'sukses' then
                  begin
                    tabel.q1.SQL.Clear;
                    tabel.q1.SQL.Add('ROLLBACK');
                    tabel.q1.ExecSQL;

                    Filtered := false;
                    RecNo := lastPosition;

                    ShowMessage('Terjadi kesalahan : '+tabel.q1.FieldByName('pesan').Text);
                    Exit;
                  end;

                  tabel.q1.SQL.Clear;
                  tabel.q1.SQL.Add('update n_pembayaran_ekspedisi_edit set `status`=1, updatedAt=now() where no_penjualan='''+tabel.qjurnalkotrabonno_penjualan.Text+''' and `status`=0 ');
                  tabel.q1.ExecSQL;

                  tabel.q1.SQL.Clear;
                  tabel.q1.SQL.Add('update detail_pengeluaranongkir set jumlah='+ongkir+' where no_order='''+tabel.qjurnalkotrabonno_order.Text+''' ');
                  tabel.q1.ExecSQL;

                  tabel.q1.SQL.Clear;
                  tabel.q1.SQL.Add('update a_asuransiversi_exspedisi set asuransi_versi_exspedisi='+asuransi+' where no_order='''+tabel.qjurnalkotrabonno_order.Text+''' ');
                  tabel.q1.ExecSQL;
                end;

                Next;
              end;


              // Jika jenis asuransi DIPISAH
              if (tabel.qjurnalkotrabonasuransi_jenis.Text='DIPISAH') and ((totalAsuransi <> 0) or (totalEstimasiAsuransi <> 0)) then
              begin
                refNoAsuransi := vcabangbranch +'_'+noBayar+'_';
                tabel.q1.SQL.Clear;
                tabel.q1.SQL.Add('select nama from asuransi where kode_asuransi='''+tabel.qjurnalkotrabonkode_asuransi.text+''' ');
                tabel.q1.Open;
                if tabel.q1.RecordCount > 0 then
                  refNoAsuransi := refNoAsuransi + tabel.q1.Fields[0].Text;
                refNoAsuransi := refNoAsuransi + '_AsuransiNonKontraBon';


                // POST OutgoingPayment
                tabel.q1.SQL.Clear;
                tabel.q1.SQL.Add('CALL sinkronisasi_sap('''+noBayar+''','''+refNoAsuransi+''',''n_pembayaran_ekspedisi'',''/saptemp/sinkpaymentongkir'',@out_msg)');
                tabel.q1.ExecSQL;

                tabel.q1.SQL.Clear;
                tabel.q1.SQL.Add('select @out_msg as pesan');
                tabel.q1.open;

                if tabel.q1.FieldValues['pesan'] <> 'sukses' then
                begin
                  tabel.q1.SQL.Clear;
                  tabel.q1.SQL.Add('ROLLBACK');
                  tabel.q1.ExecSQL;

                  Filtered := false;
                  RecNo := lastPosition;

                  ShowMessage('Terjadi kesalahan : '+tabel.q1.FieldByName('pesan').Text);
                  Exit;
                end;

                // AP Invoice Asuransi
                tabel.q1.SQL.Clear;
                tabel.q1.SQL.Add('CALL sinkronisasi_sap('''+noBayar+''','''+refNoAsuransi+''',''n_pembayaran_ekspedisi'',''/saptemp/sinkinvoiceongkir'',@out_msg)');
                tabel.q1.ExecSQL;

                tabel.q1.SQL.Clear;
                tabel.q1.SQL.Add('select @out_msg as pesan');
                tabel.q1.open;

                if tabel.q1.FieldValues['pesan'] <> 'sukses' then
                begin
                  tabel.q1.SQL.Clear;
                  tabel.q1.SQL.Add('ROLLBACK');
                  tabel.q1.ExecSQL;

                  Filtered := false;
                  RecNo := lastPosition;

                  ShowMessage('Terjadi kesalahan : '+tabel.q1.FieldByName('pesan').Text);
                  Exit;
                end;
              end;

              tabel.q1.SQL.Clear;
              tabel.q1.SQL.Add('COMMIT');
              tabel.q1.ExecSQL;

              Filtered := false;

              SpeedButton7Click(sender);

              changeStatusBar('Sukses','Data yang di Centang Berhasil Disimpan...',clMenuHighlight,clMenuHighlight);
            end
            else
            begin
              Filtered := false;
              RecNo := lastPosition;
            end;
          end;
        end
        else
        begin
          Filtered := false;
          RecNo := lastPosition;
          ShowMessage('Silahkan centang data yang akan disimpan');
        end;
      end;
    end;
  except on e:Exception do
  begin
    tabel.q1.SQL.Clear;
    tabel.q1.SQL.Add('ROLLBACK');
    tabel.q1.ExecSQL;

    ShowMessage('Error : '+e.Message);
  end;
  end;
end;

procedure Tfmenuutama.SpeedButton9Click(Sender: TObject);
var
  noBayar,selisih,refNo,endPoint,noDetail,namaTabel,ongkir,asuransi,kodeperkiraan:string;
  lastPosition:integer;
begin
  try
    with tabel.qjurnalkotrabon do
    begin
      if (Active = False) or (RecordCount = 0) then
        ShowMessage('Tidak ada data yang di centang')
      else
      begin
        lastPosition := RecNo;

        Filtered := false;
        Filter := 'pilihan=True';
        Filtered := True;

        if RecordCount > 0 then
        begin
          selisih := tselisih.text;
          selisih := stringreplace(selisih,',','',[rfreplaceall,rfignorecase]);

          if Trim(cxcbbankkontrabon.Text) = '' then
          begin
            ShowMessage('Pilihan bank tidak boleh kosong');
            cxcbbankkontrabon.SetFocus;
          end
          else if StrToFloat(selisih) <> 0 then
          begin
            Filtered := false;
            RecNo := lastPosition;
            ShowMessage('Terdapat selisih, silahkan perbaiki data');
            ttagihaneks.SetFocus;
          end
          else
          begin
            if MessageDlg('Apakah anda yakin akan melakukan POST data ke SAP ? ',mtConfirmation,[mbYes,mbNo],1) = mrYes then
            begin
              noBayar := generateNoBayarKontrabonSAP();

              tabel.q1.SQL.Clear;
              tabel.q1.SQL.Add('select kode_perkiraan FROM perkiraan_sap JOIN kas_bank ON kode_kas=nama_perkiraan '+
              ' where CONCAT(jenis_perkiraan,'' - '',no_perkiraan) = '''+cxcbbankkontrabon.Text+''' ');
              tabel.q1.Open;
              if tabel.q1.RecordCount = 0 then
                kodeperkiraan := '0'
              else
                kodeperkiraan := tabel.q1.Fields[0].Text;

              tabel.q1.SQL.Clear;
              tabel.q1.SQL.Add('START TRANSACTION');
              tabel.q1.ExecSQL;

              tabel.q1.SQL.Clear;
              tabel.q1.SQL.Add('insert into n_pembayaran_ekspedisi (no_bayar,ekspedisi,kode_perkiraan,posting_date,id_user) '+
              ' values('''+noBayar+''','''+cxcbekspedisi.Text+''','+kodeperkiraan+','''+FormatDateTime('yyyy-mm-dd',cxtanggalsapkontrabon.Date)+''','+v_idkaryawan+') ');
              tabel.q1.ExecSQL;

              First;
              while not Eof do
              begin
                if (tabel.qjurnalkotrabonedit.Text <> '') then
                begin
                  ongkir := FloatToStr(tabel.qjurnalkotrabonongkir_sesudah.value + tabel.qjurnalkotrabonasuransi_sesudah.value);
                  asuransi := FloatToStr(tabel.qjurnalkotrabonasuransi_sesudah.value);
                end
                else
                begin
                  ongkir := FloatToStr(tabel.qjurnalkotrabonongkir.value + tabel.qjurnalkotrabonasuransi.value);
                  asuransi := FloatToStr(tabel.qjurnalkotrabonasuransi.value);
                end;

                tabel.q1.SQL.Clear;
                tabel.q1.SQL.Add('insert into n_pembayaran_ekspedisi_detail (no_bayar,no_penjualan,no_order) '+
                ' values('''+noBayar+''','''+tabel.qjurnalkotrabonno_penjualan.Text+''','''+tabel.qjurnalkotrabonno_order.Text+''') ');
                tabel.q1.ExecSQL;

                // jika ada pengeditan ongkir/asuransi
                if  (tabel.qjurnalkotrabonselisih.Value <> 0) then
                begin
                  tabel.q1.SQL.Clear;
                  tabel.q1.SQL.Add('select max(id) as id from n_pembayaran_ekspedisi_detail where no_bayar='''+noBayar+''' and no_order='''+tabel.qjurnalkotrabonno_order.Text+''' ');
                  tabel.q1.Open;
                  noDetail := tabel.q1.Fields[0].Text;

                  refNo := vcabangbranch +'_'+tabel.qjurnalkotrabonno_order.Text+'_RevisiEstimasiOngkir';

                  tabel.q1.SQL.Clear;
                  tabel.q1.SQL.Add('select id from sinkronisasi_data where ref_no like '''+refNo+'%'' ');
                  tabel.q1.Open;
                  if tabel.q1.RecordCount = 0 then
                    refNo := refNo + '1'
                  else
                    refNo := refNo + IntToStr(tabel.q1.RecordCount + 1);

                  // pengecekan jika selisih minus (tagihan sesudah > tagihan sebelum) maka POST A/R Invoice
                  if tabel.qjurnalkotrabonselisih.Value < 0 then
                  begin
                    endPoint := '/saptemp/sinkarinvoiceongkir';
                    namaTabel := 'detail_pengeluaranongkir_kurang2';
                  end
                  else // pengecekan jika selisih plus (tagihan sesudah < tagihan sebelum) maka POST A/R cr.memo
                  begin
                    endPoint := '/saptemp/sinkcreditmemoongkir';
                    namaTabel := 'detail_pengeluaranongkir_lebih2';
                  end;

                  tabel.q1.SQL.Clear;
                  tabel.q1.SQL.Add('CALL sinkronisasi_sap('''+tabel.qjurnalkotrabonno_order.Text+''','''+refNo+''','''+namaTabel+''','''+endPoint+''',@out_msg)');
                  tabel.q1.ExecSQL;

                  tabel.q1.SQL.Clear;
                  tabel.q1.SQL.Add('select @out_msg as pesan');
                  tabel.q1.open;

                  if tabel.q1.FieldValues['pesan'] <> 'sukses' then
                  begin
                    tabel.q1.SQL.Clear;
                    tabel.q1.SQL.Add('ROLLBACK');
                    tabel.q1.ExecSQL;

                    Filtered := false;
                    RecNo := lastPosition;

                    ShowMessage('Terjadi kesalahan : '+tabel.q1.FieldByName('pesan').Text);
                    Exit;
                  end;
                end;

                tabel.q1.SQL.Clear;
                tabel.q1.SQL.Add('update n_pembayaran_ekspedisi_edit set `status`=1, updatedAt=now() where no_penjualan='''+tabel.qjurnalkotrabonno_penjualan.Text+''' and `status`=0 ');
                tabel.q1.ExecSQL;

                tabel.q1.SQL.Clear;
                tabel.q1.SQL.Add('update detail_pengeluaranongkir set jumlah='+ongkir+' where no_order='''+tabel.qjurnalkotrabonno_order.Text+''' ');
                tabel.q1.ExecSQL;

                tabel.q1.SQL.Clear;
                tabel.q1.SQL.Add('update a_asuransiversi_exspedisi set asuransi_versi_exspedisi='+asuransi+' where no_order='''+tabel.qjurnalkotrabonno_order.Text+''' ');
                tabel.q1.ExecSQL;

                Next;
              end;


              if Length(cxcbekspedisi.Text) > 26 then
                refNo := vcabangbranch +'_'+noBayar+'_'+copy(cxcbekspedisi.Text,1,26)+'_OngkirK'
              else
                refNo := vcabangbranch +'_'+noBayar+'_'+cxcbekspedisi.Text+'_OngkirK';
              // POST OutgoingPayment
              tabel.q1.SQL.Clear;
              tabel.q1.SQL.Add('CALL sinkronisasi_sap('''+noBayar+''','''+refNo+''',''n_pembayaran_ekspedisi'',''/saptemp/sinkpaymentongkir'',@out_msg)');
              tabel.q1.ExecSQL;

              tabel.q1.SQL.Clear;
              tabel.q1.SQL.Add('select @out_msg as pesan');
              tabel.q1.open;

              if tabel.q1.FieldValues['pesan'] <> 'sukses' then
              begin
                tabel.q1.SQL.Clear;
                tabel.q1.SQL.Add('ROLLBACK');
                tabel.q1.ExecSQL;

                Filtered := false;
                RecNo := lastPosition;

                ShowMessage('Terjadi kesalahan : '+tabel.q1.FieldByName('pesan').Text);
                Exit;
              end;

              refNo := vcabangbranch +'_'+noBayar+'_'+cxcbekspedisi.Text+'_OngkirK';

              // POST A/P Invoice
              tabel.q1.SQL.Clear;
              tabel.q1.SQL.Add('CALL sinkronisasi_sap('''+noBayar+''','''+refNo+''',''n_pembayaran_ekspedisi'',''/saptemp/sinkinvoiceongkir'',@out_msg)');
              tabel.q1.ExecSQL;

              tabel.q1.SQL.Clear;
              tabel.q1.SQL.Add('select @out_msg as pesan');
              tabel.q1.open;

              if tabel.q1.FieldValues['pesan'] = 'sukses' then
              begin
                tabel.q1.SQL.Clear;
                tabel.q1.SQL.Add('COMMIT');
                tabel.q1.ExecSQL;

                Filtered := false;

                SpeedButton7Click(sender);

                changeStatusBar('Sukses','Data yang di Centang Berhasil di POST...',clMenuHighlight,clMenuHighlight);
              end
              else
              begin
                tabel.q1.SQL.Clear;
                tabel.q1.SQL.Add('ROLLBACK');
                tabel.q1.ExecSQL;

                Filtered := false;
                RecNo := lastPosition;

                ShowMessage('Terjadi kesalahan : '+tabel.q1.FieldByName('pesan').Text);
              end;


            end
            else
            begin
              Filtered := false;
              RecNo := lastPosition;
            end;
          end;
        end
        else
        begin
          Filtered := false;
          RecNo := lastPosition;
          ShowMessage('Silahkan centang data yang akan di POST');
        end;
      end;
    end;
  except on e:Exception do
  begin
    tabel.q1.SQL.Clear;
    tabel.q1.SQL.Add('ROLLBACK');
    tabel.q1.ExecSQL;

    ShowMessage('Error : '+e.Message);
  end;
  end;
end;

procedure Tfmenuutama.Timer1Timer(Sender: TObject);
begin
//Timer1.Enabled:=false;
{
qt1.Active:=false;
qt1.Active:=True;

if qt1.RecordCount > 0 then begin
 fordersiapbayar.qdata.Active:=false;
 fordersiapbayar.qdata.Active:=true;
 fordersiapbayar.Show;
end else begin
 Timer1.Enabled:=True;
end;  }

end;

procedure Tfmenuutama.Timer2Timer(Sender: TObject);
begin
  qcekdata.SQL.Clear;
  qcekdata.SQL.Add('SELECT atk.*,TIME_TO_SEC(TIMEDIFF(NOW(),atk.tanggal_transfer))/60 AS menit FROM `a_tempdetail_konfirmasipembayaran`atk WHERE status_verifikasi=''BELUM DI VERIFIKASI'' '+
  ' AND TIME_TO_SEC(TIMEDIFF(NOW(),atk.tanggal_transfer))/60 > 18 ');
  qcekdata.Active:=true;

  if qcekdata.RecordCount > 0 then begin
    ppemasangan.visible := True;
    ppemasangan.caption := 'Ada '+ inttostr(qcekdata.RecordCount) +' data yang tidak terpasangkan' ;
  end else begin
    ppemasangan.visible := False;
  end;

  faccperbaikanpembayaran.qdata.Active:=False;
  faccperbaikanpembayaran.qdata.Active:=True;
  if faccperbaikanpembayaran.qdata.RecordCount > 0 then begin
    pperbaikanpembayaran.visible := True;
    pperbaikanpembayaran.caption := 'Ada '+ inttostr(faccperbaikanpembayaran.qdata.RecordCount) +' Perbaiki Data Pembayaran Yang Harus di Review' ;
  end else begin
    pperbaikanpembayaran.visible := False;
  end;

  fpettycash.qtopup.Active:=False;
  fpettycash.qtopup.Active:=True;
  if fpettycash.qtopup.RecordCount > 0 then begin
    ppettycash.visible := True;
    ppettycash.caption :=  inttostr(fpettycash.qtopup.RecordCount) +' data Top-UP petty cash' ;
  end else begin
    ppettycash.visible := False;
  end;
end;

procedure Tfmenuutama.Timer4Timer(Sender: TObject);
begin
  qcekrefund.Active := false;
  qcekrefund.Active := True;
  if qcekrefund.RecordCount > 0 then
  begin
    Timer4.Enabled := false;
    fdatarefund.Show;
  end;
end;

procedure Tfmenuutama.timercekpemasanganTimer(Sender: TObject);
begin
  if fcekpemasangan.Visible = false then
  begin
    qcekpemasangan.Active:=false;
    qcekpemasangan.Active:=true;
    if qcekpemasangan.RecordCount > 0 then
    begin
      fcekpemasangan.Show;
    end;
  end;

end;

procedure Tfmenuutama.timercekrekkoranbeforeTimer(Sender: TObject);
begin
  qcekrekkoranbefore.Active:=false;
  qcekrekkoranbefore.Active:=True;
  if qcekrekkoranbefore.RecordCount > 0 then
  begin
    timercekrekkoranbefore.Enabled:=False;
    fcekrekeningkoran.Show;
  end
  else
    fcekrekeningkoran.Close;
end;

procedure Tfmenuutama.timercekkonfirmasidpTimer(Sender: TObject);
begin
  qcekkonfirmasidp.Active:=false;
  qcekkonfirmasidp.Active:=true;
  if qcekkonfirmasidp.RecordCount > 0 then
  begin
    pkonfirmasidp.Caption := 'Ada ('+IntToStr(qcekkonfirmasidp.RecordCount)+') konfirmasi Dp yang harus dipasangkan';
    pkonfirmasidp.Visible:=True;
  end
  else
    pkonfirmasidp.Visible:=False;
end;

procedure Tfmenuutama.tjumlahChange(Sender: TObject);
var
srupiah :string;
irupiah :currency;
begin

srupiah := tjumlah.text;
srupiah := stringreplace(sRupiah,',','',[rfreplaceall,rfignorecase]);
srupiah := stringreplace(srupiah,'.','',[rfreplaceall,rfignorecase]);
irupiah := strtocurrdef(srupiah,0);

tjumlah.text := formatcurr(',0',irupiah);
tjumlah.selstart := length(tjumlah.text);
end;

procedure Tfmenuutama.tjumlahKeyPress(Sender: TObject; var Key: Char);
begin
 if Key=#13 then begin
mcatatan.SetFocus;
end;
end;

procedure Tfmenuutama.tkartuKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then begin
if cbjenis.Text='DEBIT' then begin
 cbbank.DroppedDown:=True;
 cbbank.SetFocus;
end else begin
 tuang.SetFocus;
end;

end;
end;

procedure Tfmenuutama.tkasKeyPress(Sender: TObject; var Key: Char);
begin
 if Key=#13 then begin
tperkiraan.SetFocus;
end;
end;

procedure Tfmenuutama.tkdiskonChange(Sender: TObject);
var tagihankain,ongkir,katalog,diskon,kurangbayar:Real; sdiskon,songkir,skatalog,skurangbayar:string;
begin
if tkdiskon.Text<>'' then begin
 sdiskon:=tkdiskon.Text;
end else begin
 sdiskon:='0';
end;

if tkkatalog.Text<>'' then begin
 skatalog:=tkkatalog.Text;
end else begin
 skatalog:='0';
end;

if tkongkir.Text<>'' then begin
 songkir:=tkongkir.Text;
end else begin
 songkir:='0';
end;

if tkkurangbayar.Text<>'' then begin
   skurangbayar:=tkkurangbayar.Text
  end else begin
   skurangbayar:=tkkurangbayar.Text;
end;
 skurangbayar := skurangbayar;
 skurangbayar := stringreplace(skurangbayar,',','',[rfreplaceall,rfignorecase]);
 skurangbayar := stringreplace(skurangbayar,'.','',[rfreplaceall,rfignorecase]);
 kurangbayar:=StrToFloat(skurangbayar);

 sdiskon := sdiskon;
 sdiskon := stringreplace(sdiskon,',','',[rfreplaceall,rfignorecase]);
 sdiskon := stringreplace(sdiskon,'.','',[rfreplaceall,rfignorecase]);
 diskon:=StrToFloat(sdiskon)*v_totkg;
 //ShowMessage(sdiskon);

 tktotaldiskon.text := formatcurr('#,##',diskon);

 skatalog:= skatalog;
 skatalog := stringreplace(skatalog,',','',[rfreplaceall,rfignorecase]);
 skatalog := stringreplace(skatalog,'.','',[rfreplaceall,rfignorecase]);
 katalog:=StrToFloat(skatalog);

 songkir := songkir;
 songkir := stringreplace(songkir,',','',[rfreplaceall,rfignorecase]);
 songkir := stringreplace(songkir,'.','',[rfreplaceall,rfignorecase]);
 ongkir  :=StrToFloat(songkir);

 // v_totkg
  v_totaltagihan:=(v_tagihankain+ongkir+katalog+kurangbayar)-diskon;
  //ShowMessage(FloatToStr(v_totaltagihan));
hitung;
end;

procedure Tfmenuutama.tkdiskonKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13  then begin
tkongkir.SetFocus;
end;
end;

procedure Tfmenuutama.tkdiskonKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
srupiah :string;
irupiah :currency;
begin

srupiah := tkdiskon.text;
srupiah := stringreplace(sRupiah,',','',[rfreplaceall,rfignorecase]);
srupiah := stringreplace(srupiah,'.','',[rfreplaceall,rfignorecase]);
irupiah := strtocurrdef(srupiah,0);

tkdiskon.text := formatcurr('#,##',irupiah);
tkdiskon.selstart := length(tkdiskon.text);
end;

procedure Tfmenuutama.tkkatalogChange(Sender: TObject);
var tagihankain,ongkir,katalog,diskon,kurangbayar:Real; sdiskon,songkir,skatalog,skurangbayar:string;
begin
if tkdiskon.Text<>'' then begin
 sdiskon:=tkdiskon.Text;
end else begin
 sdiskon:='0';
end;

if tkkatalog.Text<>'' then begin
 skatalog:=tkkatalog.Text;
end else begin
 skatalog:='0';
end;

if tkongkir.Text<>'' then begin
 songkir:=tkongkir.Text;
end else begin
 songkir:='0';
end;

if tkkurangbayar.Text<>'' then begin
   skurangbayar:=tkkurangbayar.Text
  end else begin
   skurangbayar:=tkkurangbayar.Text;
end;
 skurangbayar := skurangbayar;
 skurangbayar := stringreplace(skurangbayar,',','',[rfreplaceall,rfignorecase]);
 skurangbayar := stringreplace(skurangbayar,'.','',[rfreplaceall,rfignorecase]);
 kurangbayar:=StrToFloat(skurangbayar);


 sdiskon := sdiskon;
 sdiskon := stringreplace(sdiskon,',','',[rfreplaceall,rfignorecase]);
 sdiskon := stringreplace(sdiskon,'.','',[rfreplaceall,rfignorecase]);
 diskon:=StrToFloat(sdiskon)*v_totkg;

 skatalog:= skatalog;
 skatalog := stringreplace(skatalog,',','',[rfreplaceall,rfignorecase]);
 skatalog := stringreplace(skatalog,'.','',[rfreplaceall,rfignorecase]);
 katalog:=StrToFloat(skatalog);

 songkir := songkir;
 songkir := stringreplace(songkir,',','',[rfreplaceall,rfignorecase]);
 songkir := stringreplace(songkir,'.','',[rfreplaceall,rfignorecase]);
 ongkir  :=StrToFloat(songkir);

 // v_totkg
  v_totaltagihan:=(v_tagihankain+ongkir+katalog+kurangbayar)-diskon;

hitung;

end;

procedure Tfmenuutama.tkkatalogKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13  then begin
cbjenis.DroppedDown:=True;
cbjenis.SetFocus;
end;
end;

procedure Tfmenuutama.tkkatalogKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
srupiah :string;
irupiah :currency;
begin

srupiah := tkkatalog.text;
srupiah := stringreplace(sRupiah,',','',[rfreplaceall,rfignorecase]);
srupiah := stringreplace(srupiah,'.','',[rfreplaceall,rfignorecase]);
irupiah := strtocurrdef(srupiah,0);

tkkatalog.text := formatcurr('#,##',irupiah);
tkkatalog.selstart := length(tkkatalog.Text);
end;

procedure Tfmenuutama.tkongkirChange(Sender: TObject);
var tagihankain,ongkir,katalog,diskon,kurangbayar:Real; sdiskon,songkir,skatalog,skurangbayar:string;
begin
if tkdiskon.Text<>'' then begin
 sdiskon:=tkdiskon.Text;
end else begin
 sdiskon:='0';
end;

if tkkatalog.Text<>'' then begin
 skatalog:=tkkatalog.Text;
end else begin
 skatalog:='0';
end;

if tkongkir.Text<>'' then begin
 songkir:=tkongkir.Text;
end else begin
 songkir:='0';
end;

if tkkurangbayar.Text<>'' then begin
   skurangbayar:=tkkurangbayar.Text
  end else begin
   skurangbayar:=tkkurangbayar.Text;
end;
 skurangbayar := skurangbayar;
 skurangbayar := stringreplace(skurangbayar,',','',[rfreplaceall,rfignorecase]);
 skurangbayar := stringreplace(skurangbayar,'.','',[rfreplaceall,rfignorecase]);
 kurangbayar:=StrToFloat(skurangbayar);


 sdiskon := sdiskon;
 sdiskon := stringreplace(sdiskon,',','',[rfreplaceall,rfignorecase]);
 sdiskon := stringreplace(sdiskon,'.','',[rfreplaceall,rfignorecase]);
 diskon:=StrToFloat(sdiskon)*v_totkg;

 skatalog:= skatalog;
 skatalog := stringreplace(skatalog,',','',[rfreplaceall,rfignorecase]);
 skatalog := stringreplace(skatalog,'.','',[rfreplaceall,rfignorecase]);
 katalog:=StrToFloat(skatalog);

 songkir := songkir;
 songkir := stringreplace(songkir,',','',[rfreplaceall,rfignorecase]);
 songkir := stringreplace(songkir,'.','',[rfreplaceall,rfignorecase]);
 ongkir  :=StrToFloat(songkir);

 // v_totkg
  v_totaltagihan:=(v_tagihankain+ongkir+katalog+kurangbayar)-diskon;

hitung;

end;

procedure Tfmenuutama.tkongkirKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13  then begin
tkkatalog.SetFocus;
end;
end;

procedure Tfmenuutama.tkongkirKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
 var
srupiah :string;
irupiah :currency;
begin

srupiah := tkongkir.text;
srupiah := stringreplace(sRupiah,',','',[rfreplaceall,rfignorecase]);
srupiah := stringreplace(srupiah,'.','',[rfreplaceall,rfignorecase]);
irupiah := strtocurrdef(srupiah,0);

tkongkir.text := formatcurr('#,##',irupiah);
tkongkir.selstart := length(tkongkir.Text);
end;

procedure Tfmenuutama.tnominalKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then begin
cbcash.SetFocus;
end;
end;

procedure Tfmenuutama.tnominalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
srupiah :string;
irupiah :currency;
begin

srupiah := tnominal.text;
srupiah := stringreplace(sRupiah,',','',[rfreplaceall,rfignorecase]);
srupiah := stringreplace(srupiah,'.','',[rfreplaceall,rfignorecase]);
irupiah := strtocurrdef(srupiah,0);

tnominal.text := formatcurr('#,##',irupiah);
tnominal.selstart := length(tnominal.text);

end;

procedure Tfmenuutama.tpassKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then begin
    SpeedButton3click(nil);
  end;
end;

procedure Tfmenuutama.tperkiraanChange(Sender: TObject);
var kode:string;
begin

with tabel.q1 do
cxListBox2.Items.Clear;
cxListBox2.Height:=0;
if (tperkiraan.Text <> '') then
kode:='%'+trim(tperkiraan.Text)+'%';
tabel.q1.SQL.Clear;
tabel.q1.SQL.Add('select * from perkiraan  where nama_perkiraan like '''+kode+''' ');
tabel.q1.Active:=true;
while not tabel.q1.Eof do
begin
cxListBox2.Height:=75;
cxListBox2.Items.Append(tabel.q1.FieldValues['nama_perkiraan']);
tabel.q1.Next;

end;
end;

procedure Tfmenuutama.tperkiraanKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var tes:string;
begin
  tes:=Chr(Key)+' - '+IntToStr(Key);
if tes ='( - 40' then begin
            if cxListBox2.Height <> 0 then begin
            cxListBox2.SetFocus;
            cxListBox2.Selected[0]:=true;
        end;

end;
end;


procedure Tfmenuutama.tperkiraanKeyPress(Sender: TObject; var Key: Char);
var kode:String;
begin
if key=#13 then begin
kode:='%'+trim(tperkiraan.Text)+'%';
tabel.q1.SQL.Clear;
tabel.q1.SQL.Add('select * from perkiraan where nama_perkiraan = '''+kode+''' limit 1');
tabel.q1.Active:=true;
if tabel.q1.recordcount > 0 then begin
tkas.Text:=tabel.q1.FieldValues['nama_perkiraan'];
tjumlah.SetFocus;
cxListBox2.Height:=0;
end else begin
tabel.q1.SQL.Clear;
tabel.q1.SQL.Add('select * from perkiraan where nama_perkiraan like '''+kode+''' limit 1');
tabel.q1.Active:=true;
if tabel.q1.recordcount > 0 then begin
tkas.Text:=tabel.q1.FieldValues['nama_perkiraan'];
tjumlah.SetFocus;
cxListBox2.Height:=0;
end else begin
showmessage('Nama perkiraan tidak terdaftar didatabase!');
tperkiraan.SetFocus;
cxListBox2.Height:=0;
end;
end;
end;
end;

procedure Tfmenuutama.tpotonganChange(Sender: TObject);
begin
hitung;
end;

procedure Tfmenuutama.tpotonganKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
 var
srupiah :string;
irupiah :currency;
begin
if tpotongan.Text<>'-' then begin

srupiah := tpotongan.text;
srupiah := stringreplace(sRupiah,',','',[rfreplaceall,rfignorecase]);
srupiah := stringreplace(srupiah,'.','',[rfreplaceall,rfignorecase]);
irupiah := strtocurrdef(srupiah,0);

tpotongan.text := formatcurr('#,##',irupiah);
tpotongan.selstart := length(tpotongan.text);
end;

end;

procedure Tfmenuutama.ttagihaneksKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in [#8, '0'..'9','.']) then
    Key := #0;
end;

procedure Tfmenuutama.ttagihaneksKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
srupiah :string;
irupiah :currency;
begin
try
srupiah := TcxTextEdit(Sender).text;
srupiah := stringreplace(sRupiah,',','',[rfreplaceall,rfignorecase]);
srupiah := stringreplace(srupiah,'.','',[rfreplaceall,rfignorecase]);
irupiah := strtocurrdef(srupiah,0);

TcxTextEdit(Sender).text := formatcurr('#,##',irupiah);
TcxTextEdit(Sender).selstart := length(TcxTextEdit(Sender).text);
except

end;
end;

procedure Tfmenuutama.ttagihaneksPropertiesChange(Sender: TObject);
begin
try
  tselisih.Text := funchitungselisih(ttagihaneks.Text,ttagihancentang.Text);
except

end;
end;

procedure Tfmenuutama.tterimaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key =#13 then begin
   tkas.SetFocus;
  end;
end;

procedure Tfmenuutama.ttimerstatusbarTimer(Sender: TObject);
begin
  TTimer(sender).Enabled := false;

  dxStatusBar1.Panels[0].Text:='User :'+v_namakaryawan;
  dxStatusBar1.Panels.Items[0].PanelStyle.Font.Color := clBlack;

  dxStatusBar1.Panels[1].Text:=vcabang;
  dxStatusBar1.Panels.Items[1].PanelStyle.Font.Color := clBlack;
end;

procedure Tfmenuutama.tuangKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then begin
 Button2Click(nil);
end;
end;

procedure Tfmenuutama.tuangKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
srupiah :string;
irupiah :currency;
begin

srupiah := tuang.text;
srupiah := stringreplace(sRupiah,',','',[rfreplaceall,rfignorecase]);
srupiah := stringreplace(srupiah,'.','',[rfreplaceall,rfignorecase]);
irupiah := strtocurrdef(srupiah,0);

tuang.text := formatcurr('#,##',irupiah);
tuang.selstart := length(tuang.text);
end;

procedure Tfmenuutama.tuserKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then begin
  tpass.SetFocus;
end;
end;

procedure Tfmenuutama.tverifyKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then begin
  Button8Click(nil);
end;
end;

procedure Tfmenuutama.tverifyKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
srupiah :string;
irupiah :currency;
begin
srupiah := tverify.text;
srupiah := stringreplace(sRupiah,',','',[rfreplaceall,rfignorecase]);
srupiah := stringreplace(srupiah,'.','',[rfreplaceall,rfignorecase]);
irupiah := strtocurrdef(srupiah,0);

tverify.text := formatcurr('#,##',irupiah);
tverify.selstart := length(tverify.Text);
end;

end.
