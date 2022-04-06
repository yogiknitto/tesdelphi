unit ufcekpenjualan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB,
  cxDBData, Vcl.StdCtrls, Vcl.DBCtrls, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  DBAccess, Uni, MemDS, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  Tfcekpenjualan = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    dt1: TcxDateEdit;
    Button2: TButton;
    Edit1: TEdit;
    Label4: TLabel;
    Label3: TLabel;
    tcari: TEdit;
    Panel2: TPanel;
    qdata: TUniQuery;
    qdatatanggal: TDateField;
    qdatano_pengeluaran: TStringField;
    qdatanama: TStringField;
    qdatatagihan: TFloatField;
    qdataongkir: TFloatField;
    qdatakatalog: TFloatField;
    qdatadiskon: TFloatField;
    qdatatotaltagihan: TFloatField;
    qdatatgl_transfer: TDateField;
    qdataatas_nama: TStringField;
    qdatajumlah_uang: TFloatField;
    qdatabank: TStringField;
    qdatacatatan: TMemoField;
    dsqdata: TUniDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1tanggal: TcxGridDBColumn;
    cxGrid1DBTableView1no_pengeluaran: TcxGridDBColumn;
    cxGrid1DBTableView1nama: TcxGridDBColumn;
    cxGrid1DBTableView1tagihan: TcxGridDBColumn;
    cxGrid1DBTableView1ongkir: TcxGridDBColumn;
    cxGrid1DBTableView1katalog: TcxGridDBColumn;
    cxGrid1DBTableView1diskon: TcxGridDBColumn;
    cxGrid1DBTableView1totaltagihan: TcxGridDBColumn;
    cxGrid1DBTableView1tgl_transfer: TcxGridDBColumn;
    cxGrid1DBTableView1atas_nama: TcxGridDBColumn;
    cxGrid1DBTableView1jumlah_uang: TcxGridDBColumn;
    cxGrid1DBTableView1bank: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    DBMemo1: TDBMemo;
    Button1: TButton;
    dt2: TcxDateEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure tcariKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcekpenjualan: Tfcekpenjualan;

implementation

uses
  uftabel;

{$R *.dfm}

procedure Tfcekpenjualan.Button1Click(Sender: TObject);
begin
  close;
end;

procedure Tfcekpenjualan.Button2Click(Sender: TObject);
var tanggal1,tanggal2,kode,kode2,rupiah:string; tg:real;
begin
 tanggal1:=FormatDateTime('yyyy-mm-dd',dt1.Date);
 tanggal2:=FormatDateTime('yyyy-mm-dd',dt2.Date);

  if edit1.Text='' then begin
    ShowMessage('selisih harus di isi!');
    Exit;
  end;

rupiah := Edit1.text;
rupiah := stringreplace(Rupiah,',','',[rfreplaceall,rfignorecase]);
rupiah := stringreplace(rupiah,'.','',[rfreplaceall,rfignorecase]);


kode:=tcari.text+'%';
kode2:='%'+tcari.text+'%';

qdata.sql.clear;
qdata.sql.add('select * from v_konfirmasipembayaran where (katalog like '''+kode+''' or (tagihan >= '+tcari.text+'-'+rupiah+' and tagihan <= '+tcari.text+'+'+rupiah+' ) '+
'  or (totaltagihan >= '+tcari.text+'-'+rupiah+' and totaltagihan <= '+tcari.text+'+'+rupiah+' )  or (jumlah_uang >= '+tcari.text+'-'+rupiah+' and jumlah_uang <= '+tcari.text+'+'+rupiah+' )  or REPLACE(catatan, ''.'', '''') like '''+kode2+'''  ) and  tanggal >='''+tanggal1+''' and  tanggal <='''+tanggal2+''' order by tanggal asc ');
qdata.Active:=True;
end;

procedure Tfcekpenjualan.FormShow(Sender: TObject);
begin
  edit1.Text:=formatcurr('#,###',1000);
end;

procedure Tfcekpenjualan.tcariKeyPress(Sender: TObject; var Key: Char);
begin
 if Key=#13 then begin
   Button2Click(nil);
  end;

end;

end.
