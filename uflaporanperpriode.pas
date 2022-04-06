unit uflaporanperpriode;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ExtCtrls, StdCtrls, DBAccess, Uni, MemDS,
  Grids, DBGrids,ComObj, SMDBGrid, cxPC, VirtualTable, cxContainer,
  cxTextEdit,ShellApi, dxBarBuiltInMenu, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Vcl.ComCtrls;

type
  Tflaporanperpriode = class(TForm)
    Panel1: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Label8: TLabel;
    cbbulan: TComboBox;
    cbtahun: TComboBox;
    Button2: TButton;
    qdata2: TUniQuery;
    dsqdata2: TUniDataSource;
    cxGrid1DBTableView1no_roll: TcxGridDBColumn;
    cxGrid1DBTableView1rollinduk: TcxGridDBColumn;
    cxGrid1DBTableView1nama_kain: TcxGridDBColumn;
    cxGrid1DBTableView1jenis_warna: TcxGridDBColumn;
    cxGrid1DBTableView1kode_spk: TcxGridDBColumn;
    cxGrid1DBTableView1stokakhir: TcxGridDBColumn;
    cxGrid1DBTableView1nominal: TcxGridDBColumn;
    Panel2: TPanel;
    Button1: TButton;
    Button3: TButton;
    cxGrid1DBTableView1no_lokasi: TcxGridDBColumn;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Button4: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    UniQuery1: TUniQuery;
    UniDataSource1: TUniDataSource;
    UniQuery1nama_kain: TStringField;
    UniQuery1jenis_warna: TStringField;
    UniQuery1stok: TFloatField;
    UniQuery1total: TFloatField;
    cxGridDBTableView1nama_kain: TcxGridDBColumn;
    cxGridDBTableView1jenis_warna: TcxGridDBColumn;
    cxGridDBTableView1stok: TcxGridDBColumn;
    cxGridDBTableView1total: TcxGridDBColumn;
    vt: TVirtualTable;
    vtnama_kain: TStringField;
    vtjenis_warna: TStringField;
    vtstok: TStringField;
    vttotal: TStringField;
    vtroll: TVirtualTable;
    vtrollno_roll: TStringField;
    vtrollno_lokasi: TStringField;
    vtrollroll_induk: TStringField;
    vtrollnama_kain: TStringField;
    vtrolljenis_warna: TStringField;
    vtrollkode_spk: TStringField;
    vtrollstokakhir: TStringField;
    vtrolltotalstokakhir: TStringField;
    SaveDialog1: TSaveDialog;
    tchar: TcxTextEdit;
    cxGrid1DBTableView1tanggal_terima: TcxGridDBColumn;
    cxGrid1DBTableView1harga: TcxGridDBColumn;
    cxGrid1DBTableView1Stokawal: TcxGridDBColumn;
    cxGrid1DBTableView1nominalstokawal: TcxGridDBColumn;
    cxGrid1DBTableView1Pembelian: TcxGridDBColumn;
    cxGrid1DBTableView1Nominalpembelian: TcxGridDBColumn;
    cxGrid1DBTableView1terimaretur: TcxGridDBColumn;
    cxGrid1DBTableView1nominalterimaretur: TcxGridDBColumn;
    cxGrid1DBTableView1Penjualan: TcxGridDBColumn;
    cxGrid1DBTableView1nominalpenjualan: TcxGridDBColumn;
    cxGrid1DBTableView1Retur: TcxGridDBColumn;
    cxGrid1DBTableView1NominalRetur: TcxGridDBColumn;
    cxGrid1DBTableView1Nominalkoreksi: TcxGridDBColumn;
    cxGrid1DBTableView1KoreksiKainrusak: TcxGridDBColumn;
    cxGrid1DBTableView1Koreksi: TcxGridDBColumn;
    cxGrid1DBTableView1Nominalkainrusak: TcxGridDBColumn;
    qdata2no_lokasi: TStringField;
    qdata2harga: TFloatField;
    qdata2tanggal_terima: TDateField;
    qdata2tipe_kain: TStringField;
    qdata2nama_kain: TStringField;
    qdata2jenis_warna: TStringField;
    qdata2kode_spk: TStringField;
    qdata2no_roll: TStringField;
    qdata2roll_induk: TStringField;
    qdata2stokawal: TFloatField;
    qdata2totalstokawal: TFloatField;
    qdata2terima: TFloatField;
    qdata2totalterima: TFloatField;
    qdata2terimaretur: TFloatField;
    qdata2totalterimaretur: TFloatField;
    qdata2penjualan: TFloatField;
    qdata2totalpenjualan: TFloatField;
    qdata2retur: TFloatField;
    qdata2totalretur: TFloatField;
    qdata2beratkoreksi: TFloatField;
    qdata2totalberatkoreksi: TFloatField;
    qdata2koreksi_kainrusak: TFloatField;
    qdata2totalkoreksi_kainrusak: TFloatField;
    qdata2stokakhir: TFloatField;
    qdata2totalstokakhir: TFloatField;
    Panel3: TPanel;
    Panel4: TPanel;
    cxTabSheet3: TcxTabSheet;
    Panel5: TPanel;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    Button5: TButton;
    qdatainduk: TUniQuery;
    StringField1: TStringField;
    FloatField1: TFloatField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    FloatField15: TFloatField;
    FloatField16: TFloatField;
    FloatField17: TFloatField;
    dsqdatainduk: TUniDataSource;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGridDBTableView2harga: TcxGridDBColumn;
    cxGridDBTableView2tanggal_terima: TcxGridDBColumn;
    cxGridDBTableView2nama_kain: TcxGridDBColumn;
    cxGridDBTableView2jenis_warna: TcxGridDBColumn;
    cxGridDBTableView2kode_spk: TcxGridDBColumn;
    cxGridDBTableView2roll_induk: TcxGridDBColumn;
    cxGridDBTableView2stokawal: TcxGridDBColumn;
    cxGridDBTableView2totalstokawal: TcxGridDBColumn;
    cxGridDBTableView2terima: TcxGridDBColumn;
    cxGridDBTableView2totalterima: TcxGridDBColumn;
    cxGridDBTableView2terimaretur: TcxGridDBColumn;
    cxGridDBTableView2totalterimaretur: TcxGridDBColumn;
    cxGridDBTableView2penjualan: TcxGridDBColumn;
    cxGridDBTableView2totalpenjualan: TcxGridDBColumn;
    cxGridDBTableView2retur: TcxGridDBColumn;
    cxGridDBTableView2totalretur: TcxGridDBColumn;
    cxGridDBTableView2beratkoreksi: TcxGridDBColumn;
    cxGridDBTableView2totalberatkoreksi: TcxGridDBColumn;
    cxGridDBTableView2koreksi_kainrusak: TcxGridDBColumn;
    cxGridDBTableView2totalkoreksi_kainrusak: TcxGridDBColumn;
    cxGridDBTableView2stokakhir: TcxGridDBColumn;
    cxGridDBTableView2totalstokakhir: TcxGridDBColumn;
    cxTabSheet4: TcxTabSheet;
    Panel6: TPanel;
    Label2: TLabel;
    ComboBox5: TComboBox;
    ComboBox6: TComboBox;
    Button6: TButton;
    dsqdata: TUniDataSource;
    qdata: TUniQuery;
    cxGrid4: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGrid1DBTableView1tanggal_h: TcxGridDBColumn;
    cxGrid1DBTableView1tanggal_hilang: TcxGridDBColumn;
    cxGrid1DBTableView1tanggal_so: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGrid1DBTableView1lokasi_asal: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    qdatainduktanggal_terima: TDateField;
    qdatatanggal_h: TStringField;
    qdatatanggal_hilang: TStringField;
    qdatatanggal_so: TDateTimeField;
    qdatalokasi_asal: TStringField;
    qdatano_lokasi: TStringField;
    qdataharga: TFloatField;
    qdatatanggal_terima: TDateField;
    qdatatipe_kain: TStringField;
    qdatanama_kain: TStringField;
    qdatajenis_warna: TStringField;
    qdatakode_spk: TStringField;
    qdatano_roll: TStringField;
    qdataroll_induk: TStringField;
    qdatastokawal: TFloatField;
    qdatatotalstokawal: TFloatField;
    qdataterima: TFloatField;
    qdatatotalterima: TFloatField;
    qdataterimaretur: TFloatField;
    qdatatotalterimaretur: TFloatField;
    qdatapenjualan: TFloatField;
    qdatatotalpenjualan: TFloatField;
    qdataretur: TFloatField;
    qdatatotalretur: TFloatField;
    qdataberatkoreksi: TFloatField;
    qdatatotalberatkoreksi: TFloatField;
    qdatakoreksi_kainrusak: TFloatField;
    qdatatotalkoreksi_kainrusak: TFloatField;
    qdatastokakhir: TFloatField;
    qdatatotalstokakhir: TFloatField;
    qdataberat_mutasi: TFloatField;
    qdatatotalmutasi: TFloatField;
    qdatadt: TMemoField;
    qdatamutasifix: TFloatField;
    qdatatotalmutasifix: TFloatField;
    qdataberat_sekarang: TFloatField;
    qdatatot: TFloatField;
    GroupBox1: TGroupBox;
    cdasar: TComboBox;
    GroupBox2: TGroupBox;
    qdataindukterimatransfer: TFloatField;
    qdatainduktotalterimatransfer: TFloatField;
    cxGridDBTableView2terimatransfer: TcxGridDBColumn;
    cxGridDBTableView2totalterimatransfer: TcxGridDBColumn;
    qdataterimatransfer: TFloatField;
    qdatatotalterimatransfer: TFloatField;
    cxGridDBTableView3terimatransfer: TcxGridDBColumn;
    cxGridDBTableView3totalterimatransfer: TcxGridDBColumn;
    qdata2terimatransfer: TFloatField;
    qdata2totalterimatransfer: TFloatField;
    cxGrid1DBTableView1terimatransfer: TcxGridDBColumn;
    cxGrid1DBTableView1totalterimatransfer: TcxGridDBColumn;
    qdata2penjualantransfer: TFloatField;
    qdata2totalpenjualantransfer: TFloatField;
    cxGrid1DBTableView1penjualantransfer: TcxGridDBColumn;
    cxGrid1DBTableView1totalpenjualantransfer: TcxGridDBColumn;
    qdataindukpenjualantransfer: TFloatField;
    qdatainduktotalpenjualantransfer: TFloatField;
    cxGridDBTableView2penjualantransfer: TcxGridDBColumn;
    cxGridDBTableView2totalpenjualantransfer: TcxGridDBColumn;
    qdatapenjualantransfer: TFloatField;
    qdatatotalpenjualantransfer: TFloatField;
    cxGridDBTableView3penjualantransfer: TcxGridDBColumn;
    cxGridDBTableView3totalpenjualantransfer: TcxGridDBColumn;
    qdata2sapenjualanbssegel: TFloatField;
    qdata2satotalpenjualanbssegel: TFloatField;
    qdata2penjualanbssegel: TFloatField;
    qdata2totalpenjualanbssegel: TFloatField;
    cxGrid1DBTableView1sapenjualanbssegel: TcxGridDBColumn;
    cxGrid1DBTableView1satotalpenjualanbssegel: TcxGridDBColumn;
    cxGrid1DBTableView1penjualanbssegel: TcxGridDBColumn;
    cxGrid1DBTableView1totalpenjualanbssegel: TcxGridDBColumn;
    qdatainduksapenjualanbssegel: TFloatField;
    qdatainduksatotalpenjualanbssegel: TFloatField;
    qdataindukpenjualanbssegel: TFloatField;
    qdatainduktotalpenjualanbssegel: TFloatField;
    cxGridDBTableView2sapenjualanbssegel: TcxGridDBColumn;
    cxGridDBTableView2satotalpenjualanbssegel: TcxGridDBColumn;
    cxGridDBTableView2penjualanbssegel: TcxGridDBColumn;
    cxGridDBTableView2totalpenjualanbssegel: TcxGridDBColumn;
    qdatasapenjualanbssegel: TFloatField;
    qdatasatotalpenjualanbssegel: TFloatField;
    qdatapenjualanbssegel: TFloatField;
    qdatatotalpenjualanbssegel: TFloatField;
    cxGridDBTableView3sapenjualanbssegel: TcxGridDBColumn;
    cxGridDBTableView3satotalpenjualanbssegel: TcxGridDBColumn;
    cxGridDBTableView3penjualanbssegel: TcxGridDBColumn;
    cxGridDBTableView3totalpenjualanbssegel: TcxGridDBColumn;
    dtanggal: TDateTimePicker;
    Label1: TLabel;
    btneksportrusak: TButton;
    qdata2stskain: TStringField;
    cxGrid1DBTableView1stskain: TcxGridDBColumn;
    qdataindukstskain: TStringField;
    cxGridDBTableView2stskain: TcxGridDBColumn;
    cxTabSheet5: TcxTabSheet;
    GroupBox3: TGroupBox;
    ComboBox7: TComboBox;
    Button7: TButton;
    ComboBox8: TComboBox;
    cxGrid5: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridLevel4: TcxGridLevel;
    qstokperiode: TUniQuery;
    dsqstokperiode: TUniDataSource;
    qstokperiodetanggal_terima: TDateField;
    qstokperiodeno_roll: TStringField;
    qstokperiodenama_kain: TStringField;
    qstokperiodejenis_warna: TStringField;
    qstokperiodekode_spk: TStringField;
    qstokperiodeharga: TFloatField;
    qstokperiodestokawal: TFloatField;
    qstokperiodenominalstokawal: TFloatField;
    qstokperiodepembelian: TFloatField;
    qstokperiodenominalpembelian: TFloatField;
    qstokperiodeterimatransfer: TFloatField;
    qstokperiodetotalterimatransfer: TFloatField;
    qstokperiodeterimaretur: TFloatField;
    qstokperiodenominalterimaretur: TFloatField;
    qstokperiodepenjualan: TFloatField;
    qstokperiodenominalpenjualan: TFloatField;
    qstokperiodepenjualantransfer: TFloatField;
    qstokperiodetotalpenjualantransfer: TFloatField;
    qstokperiodepenjualanbssegel: TFloatField;
    qstokperiodetotalpenjualanbssegel: TFloatField;
    qstokperioderetur: TFloatField;
    qstokperiodenominalretur: TFloatField;
    qstokperiodekoreksi: TFloatField;
    qstokperiodenominalkoreksi: TFloatField;
    qstokperiodekoreksikainrusak: TFloatField;
    qstokperiodenominalkainrusak: TFloatField;
    qstokperiodestokakhir: TFloatField;
    qstokperiodenominal: TFloatField;
    cxGridDBTableView4tanggal_terima: TcxGridDBColumn;
    cxGridDBTableView4no_roll: TcxGridDBColumn;
    cxGridDBTableView4nama_kain: TcxGridDBColumn;
    cxGridDBTableView4jenis_warna: TcxGridDBColumn;
    cxGridDBTableView4kode_spk: TcxGridDBColumn;
    cxGridDBTableView4harga: TcxGridDBColumn;
    cxGridDBTableView4stokawal: TcxGridDBColumn;
    cxGridDBTableView4nominalstokawal: TcxGridDBColumn;
    cxGridDBTableView4pembelian: TcxGridDBColumn;
    cxGridDBTableView4nominalpembelian: TcxGridDBColumn;
    cxGridDBTableView4terimatransfer: TcxGridDBColumn;
    cxGridDBTableView4totalterimatransfer: TcxGridDBColumn;
    cxGridDBTableView4terimaretur: TcxGridDBColumn;
    cxGridDBTableView4nominalterimaretur: TcxGridDBColumn;
    cxGridDBTableView4penjualan: TcxGridDBColumn;
    cxGridDBTableView4nominalpenjualan: TcxGridDBColumn;
    cxGridDBTableView4penjualantransfer: TcxGridDBColumn;
    cxGridDBTableView4totalpenjualantransfer: TcxGridDBColumn;
    cxGridDBTableView4penjualanbssegel: TcxGridDBColumn;
    cxGridDBTableView4totalpenjualanbssegel: TcxGridDBColumn;
    cxGridDBTableView4retur: TcxGridDBColumn;
    cxGridDBTableView4nominalretur: TcxGridDBColumn;
    cxGridDBTableView4koreksi: TcxGridDBColumn;
    cxGridDBTableView4nominalkoreksi: TcxGridDBColumn;
    cxGridDBTableView4koreksikainrusak: TcxGridDBColumn;
    cxGridDBTableView4nominalkainrusak: TcxGridDBColumn;
    cxGridDBTableView4stokakhir: TcxGridDBColumn;
    cxGridDBTableView4nominal: TcxGridDBColumn;
    GroupBox4: TGroupBox;
    ComboBox9: TComboBox;
    qstokperiodestatus_kain: TStringField;
    cxGridDBTableView4status_kain: TcxGridDBColumn;
    procedure cbtahunDropDown(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ComboBox1DropDown(Sender: TObject);
    procedure qdatadtGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure cdasarChange(Sender: TObject);
    procedure btneksportrusakClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox8DropDown(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure ComboBox9Change(Sender: TObject);
  private
    { Private declarations }
    procedure execView(dasar,tanggal:string);
    function convertMonthNametoIndex(bulan:string):string;
  public
    { Public declarations }
  end;

var
   XlApp, XlBook, XlSheet: Variant;
  flaporanperpriode: Tflaporanperpriode;

implementation

uses uftabel, Math;

{$R *.dfm}

procedure Tflaporanperpriode.cbtahunDropDown(Sender: TObject);
var tanggal,tahun,perbandingan:string;
begin
tabel.q1.SQL.Clear;
tabel.q1.SQL.Add('select distinct(DATE_FORMAT(tanggal_terima,''%Y'')) as tanggal_terima from pembelian_kainstok order by tanggal_terima');
tabel.q1.Active:=true;
perbandingan:='0000';
if not(tabel.q1.Eof) and (tabel.q1.Bof) then begin
TComboBox(Sender).Items.Clear;
tabel.q1.First;
while not tabel.q1.Eof do
begin
tanggal:=tabel.q1.FieldValues['tanggal_terima'];
tahun:=copy(tanggal,1,4);
if tahun=perbandingan then begin

end else begin
TComboBox(Sender).Items.Append(tahun);
perbandingan:=tahun;
end;
tabel.q1.Next;

 end;
  end;
end;

procedure Tflaporanperpriode.Button2Click(Sender: TObject);
var tanggal,bulan:string;
jmlrecord:integer;
begin

 tabel.q1.SQL.Clear;
  tabel.q1.SQL.Add('select * from n_penjagaan where isi=''ADJUST PERPERIODE'' ');
  tabel.q1.open;

  if not tabel.q1.IsEmpty then
  begin
    ShowMessage('Stok perpriode tidak bisa ditampilkan karena sedang ada koreksi adjust ');
    exit;
  end;

  tanggal:=cbtahun.Text+'-'+convertMonthNametoIndex(cbbulan.Text);
  jmlrecord := 0;
  if (tabel.server.Server = '192.168.10.10')  then
  begin
    tabel.q1.SQL.Clear;
    tabel.q1.SQL.Add('select count(id) as jml from n_stokperioderoll_bulan where concat(tahun,''-'',bulan)='''+tanggal+''' ');
    tabel.q1.Open;
    jmlrecord := tabel.q1.Fields[0].Value;
  end;

  if jmlrecord > 0 then
  begin
    qdata2.SQL.Clear;
    qdata2.SQL.Add('SELECT IF(stokakhir = ppn.berat_terima AND ppn.terima_dari=''PEMBELIAN'' AND pnj.no_roll IS NULL AND LEFT(vs.no_roll,1)=''R'',''ROLLAN'',''KGAN'') AS stskain  '+
      ' ,ppn.no_lokasi,harga,tanggal_terima,tipe_kain,nama_kain,jenis_warna,kode_spk,vs.no_roll,vs.roll_induk , stokawal-IFNULL(sakr.berat,0) AS stokawal, '+
      ' totalstokawal - IFNULL(sakr.nominal,0) AS totalstokawal,terima ,totalterima,terimatransfer,totalterimatransfer, terimaretur ,  totalterimaretur ,  penjualan, '+
      ' sapenjualanbssegel,satotalpenjualanbssegel,penjualanbssegel,totalpenjualanbssegel, '+
      ' totalpenjualan ,penjualantransfer,totalpenjualantransfer,  retur,totalretur,beratkoreksi ,totalberatkoreksi ,IFNULL(kr.berat,0) AS koreksi_kainrusak,IFNULL(kr.nominal,0) AS totalkoreksi_kainrusak, '+
      ' stokakhir - IFNULL(sakr.berat,0) - IFNULL(kr.berat,0) AS stokakhir,  totalstokakhir - IFNULL(sakr.nominal,0) -IFNULL(kr.nominal,0) AS totalstokakhir '+
//      ' FROM v_stokperioderoll vs '+
      ' FROM n_stokperioderoll_bulan vs join perincian_penerimaanstok ppn using(no_roll) '+
      ' LEFT JOIN '+
      ' (SELECT no_roll,SUM(p.berat) AS berat FROM penjualan_kainstok JOIN detail_pengeluaranstok USING(no_pengeluaran) JOIN perincian_pengeluaranstok p USING(no_detail) '+
      ' WHERE DATE_FORMAT(tanggal, ''%Y-%m'') <= '''+tanggal+'''  GROUP BY no_roll) AS pnj ON pnj.no_roll=vs.no_roll '+
      ' LEFT JOIN '+
      ' (SELECT SUM(berat) AS berat,SUM(nominal) AS nominal,no_roll FROM koreksi_kainrusak WHERE DATE_FORMAT(tanggal_efektif, ''%Y-%m'') < '''+tanggal+'''  '+
      ' GROUP BY no_roll) AS sakr ON sakr.no_roll=vs.no_roll '+
      ' LEFT JOIN '+
      ' (SELECT SUM(berat) AS berat,SUM(nominal) AS nominal,no_roll FROM koreksi_kainrusak WHERE DATE_FORMAT(tanggal_efektif, ''%Y-%m'') = '''+tanggal+''' '+
      ' GROUP BY no_roll) AS kr ON kr.no_roll=vs.no_roll WHERE concat(vs.tahun,''-'',vs.bulan) = '''+tanggal+'''  GROUP BY vs.no_roll '+
      ' HAVING stokawal <> 0 OR totalstokawal <> 0 OR satotalpenjualanbssegel <> 0 OR totalterima <> 0 OR totalterimatransfer <> 0 OR totalterimaretur <> 0 OR totalpenjualan <> 0 OR totalpenjualantransfer <> 0 '+
      ' OR totalpenjualanbssegel <> 0 OR totalretur <> 0 OR totalberatkoreksi <> 0 OR totalkoreksi_kainrusak <> 0 OR stokakhir <> 0 OR totalstokakhir <> 0 ');
    qdata2.Active:=True;
  end
  else
  begin

    execView('per bulan',tanggal);

    qdata2.SQL.Clear;
    qdata2.SQL.Add('SELECT IF(stokakhir = berat_terima AND terima_dari=''PEMBELIAN'' AND pnj.no_roll IS NULL AND LEFT(vs.no_roll,1)=''R'',''ROLLAN'',''KGAN'') AS stskain '+
      ' ,no_lokasi,harga,tanggal_terima,tipe_kain,nama_kain,jenis_warna,kode_spk,vs.no_roll,vs.roll_induk , stokawal-IFNULL(sakr.berat,0) AS stokawal, '+
      ' totalstokawal- IFNULL(sakr.nominal,0) AS totalstokawal,terima ,totalterima,terimatransfer,totalterimatransfer, terimaretur ,  totalterimaretur ,  penjualan, '+
      ' sapenjualanbssegel,satotalpenjualanbssegel,penjualanbssegel,totalpenjualanbssegel, '+
      ' totalpenjualan ,penjualantransfer,totalpenjualantransfer,  retur,totalretur,beratkoreksi ,totalberatkoreksi ,IFNULL(kr.berat,0) AS koreksi_kainrusak,IFNULL(kr.nominal,0) AS totalkoreksi_kainrusak, '+
      ' vs.stokakhir - IFNULL(sakr.berat,0) - IFNULL(kr.berat,0) AS stokakhir,  vs.totalstokakhir - IFNULL(sakr.nominal,0) -IFNULL(kr.nominal,0) AS totalstokakhir '+
      ' FROM v_stokperioderoll vs '+
      ' LEFT JOIN '+
      ' (SELECT no_roll,SUM(p.berat) AS berat FROM penjualan_kainstok JOIN detail_pengeluaranstok USING(no_pengeluaran) JOIN perincian_pengeluaranstok p USING(no_detail) '+
      ' WHERE DATE_FORMAT(tanggal, ''%Y-%m'') <= '''+tanggal+'''  GROUP BY no_roll) AS pnj ON pnj.no_roll=vs.no_roll '+
      ' LEFT JOIN '+
      ' (SELECT SUM(berat) AS berat,SUM(nominal) AS nominal,no_roll FROM koreksi_kainrusak WHERE DATE_FORMAT(tanggal_efektif, ''%Y-%m'') < '''+tanggal+'''  '+
      ' GROUP BY no_roll) AS sakr ON sakr.no_roll=vs.no_roll '+
      ' LEFT JOIN '+
      ' (SELECT SUM(berat) AS berat,SUM(nominal) AS nominal,no_roll FROM koreksi_kainrusak WHERE DATE_FORMAT(tanggal_efektif, ''%Y-%m'') = '''+tanggal+''' '+
      ' GROUP BY no_roll) AS kr ON kr.no_roll=vs.no_roll  GROUP BY vs.no_roll '+
      ' HAVING stokawal <> 0 OR sapenjualanbssegel <> 0 OR terima <> 0 OR terimatransfer <> 0 OR terimaretur <> 0 OR penjualan <> 0 OR penjualantransfer <> 0 '+
      '  OR penjualanbssegel <> 0 OR retur <> 0 OR beratkoreksi <> 0 OR koreksi_kainrusak <> 0 OR  stokakhir <> 0 ');
    qdata2.Active:=True;
  end;
//  ShowMessage(qdata2.SQL.Text);

end;

procedure Tflaporanperpriode.Button3Click(Sender: TObject);
begin
close;
end;

procedure Tflaporanperpriode.Button4Click(Sender: TObject);
var tanggal,bulan:string;
begin
if ComboBox2.Text = 'Januari' then begin
                bulan:='01';
end else if ComboBox2.Text = 'Februari' then begin
                bulan:='02';
end else if ComboBox2.Text = 'Maret' then begin
 bulan:='03';
end else if ComboBox2.Text = 'April' then begin
bulan:='04';
end else if ComboBox2.Text = 'Mei' then begin
bulan:='05';
end else if ComboBox2.Text = 'Juni' then begin
bulan:='06';
end else if ComboBox2.Text = 'Juli' then begin
bulan:='07';
end else if ComboBox2.Text = 'Agustus' then begin
bulan:='08';
end else if ComboBox2.Text = 'September' then begin
bulan:='09';
end else if ComboBox2.Text = 'Oktober' then begin
bulan:='10';
end else if ComboBox2.Text = 'November' then begin
bulan:='11';
end else if ComboBox2.Text = 'Desember' then begin
bulan:='12';
end else  begin
bulan:='00';
end;
tanggal:=ComboBox1.Text+'-'+bulan;

tabel.q1.SQL.Clear;
tabel.q1.sql.Add(' CREATE OR REPLACE VIEW v_stokperioderoll AS SELECT tanggal_terima,ppn.no_roll AS no_roll,id_supplier,no_lokasi,IFNULL(dpn.roll_induk,ppn.no_roll) AS roll_induk, '+
'nama_kain,jenis_Warna,kode_spk,   '+
'IFNULL(sapt.terima,0) AS saterima,                      '+
'IFNULL(sapt.totalterima,0) AS satotalterima,                '+
'IFNULL(satr.terimaretur,0) AS saterimaretur,            '+
'IFNULL(satr.totalterimaretur,0) AS satotalterimaretur,        '+
'IFNULL(sapnj.penjualan,0) AS sapenjualan,             '+
'IFNULL(sapnj.totalpenjualan,0) AS satotalpenjualan,             '+
'IFNULL(sabr.beratretur,0) AS saretur,                   '+
'IFNULL(sabr.totalretur,0) AS satotalretur,                   '+
'IFNULL(sakrs.beratkoreksi,0) AS saberatkoreksi,           '+
'IFNULL(sakrs.totalkoreksi,0) AS satotalkoreksi,           '+
'(IFNULL(sapt.terima,0)+IFNULL(satr.terimaretur,0))-(IFNULL(sapnj.penjualan,0)+IFNULL(sabr.beratretur,0)+IFNULL(sakrs.beratkoreksi,0)) AS stokawal,  '+
'(IFNULL(sapt.totalterima,0)+IFNULL(satr.totalterimaretur,0))-(IFNULL(sapnj.totalpenjualan,0)+IFNULL(sabr.totalretur,0)+IFNULL(sakrs.totalkoreksi,0)) AS totalstokawal,  '+
'IFNULL(pt.terima,0) AS terima,                                                                                                                     '+
'IFNULL(pt.totalterima,0) AS totalterima,                                                                                                                     '+
'IFNULL(tr.terimaretur,0) AS terimaretur,                                                                                                           '+
'IFNULL(tr.totalterimaretur,0) AS totalterimaretur, '+
'IFNULL(tr2.totalterimareturnonhpp,0) AS totalterimareturnonhpp, '+
'IFNULL(pnj.penjualan,0) AS penjualan,           '+
'IFNULL(pnj.totalpenjualan,0) AS totalpenjualan, '+
'IFNULL(pnj2.totalpenjualan,0) AS totalpenjualannonhpp, '+

'IFNULL(br.beratretur,0) AS retur,                                                                                                                          '+
'IFNULL(br.totalretur,0) AS totalretur,  '+
'IFNULL(krs.beratkoreksi,0) AS beratkoreksi,                                                                                                                '+
'IFNULL(krs.totalkoreksi,0) AS totalberatkoreksi, '+
'((IFNULL(sapt.terima,0)+IFNULL(satr.terimaretur,0))-(IFNULL(sapnj.penjualan,0)+IFNULL(sabr.beratretur,0)+IFNULL(sakrs.beratkoreksi,0))+          '+
'IFNULL(pt.terima,0)+IFNULL(tr.terimaretur,0))-(IFNULL(pnj.penjualan,0)+IFNULL(br.beratretur,0)+IFNULL(krs.beratkoreksi,0)) AS stokakhir,          '+

'((IFNULL(sapt.totalterima,0)+IFNULL(satr.totalterimaretur,0))-(IFNULL(sapnj.totalpenjualan,0)+IFNULL(sabr.totalretur,0)+IFNULL(sakrs.totalkoreksi,0))+          '+
'IFNULL(pt.totalterima,0)+IFNULL(tr.totalterimaretur,0))-(IFNULL(pnj.totalpenjualan,0)+IFNULL(br.totalretur,0)+IFNULL(krs.totalkoreksi,0)) AS totalstokakhir          '+

'FROM  perincian_penerimaanstok ppn join detail_penerimaanstok using(no_detail) join pembelian_kainstok pks using(no_terima)   LEFT JOIN data_pecahroll dpn ON dpn.roll2=ppn.no_roll '+
'join kain k using(id_kain) join warna w using(id_Warna) '+

'LEFT JOIN                                                                                                                                       '+
'(SELECT ppn.no_roll AS no_roll,IFNULL(ppn.berat,0) AS terima,IFNULL(ppn.berat, 0)*harga as totalterima FROM detail_penerimaanstok dpk JOIN                                                '+
'perincian_penerimaanstok ppn ON dpk.no_detail = ppn.no_detail JOIN pembelian_kainstok pk USING(no_terima) WHERE DATE_FORMAT(tanggal_terima, ''%Y-%m'')<'''+tanggal+''' '+
'AND (pk.jenis_penerimaan=''PEMBELIAN'' or pk.jenis_penerimaan=''TRANSFER STOK'')  GROUP BY no_roll )                                                                                         '+
'AS sapt ON sapt.no_roll=ppn.no_roll                                                                                                               '+
'LEFT JOIN                                                                                                                                        '+
'(SELECT ppn.no_roll   AS no_roll,IFNULL(ppn.berat,0) AS terimaretur, '+
' IFNULL(ppn.berat, 0)*(select harga_beli from detail_pengeluaranstok dp join detail_returpenjualanstok dr on dp.no_detail=dr.no_Detailpenjualan  where dr.no_detail=dpk.no_detail) as totalterimaretur  '+
'FROM detail_penerimaanstok dpk JOIN perincian_penerimaanstok ppn ON dpk.no_detail = ppn.no_detail                                                '+
'JOIN pembelian_kainstok pk USING(no_terima) WHERE DATE_FORMAT(tanggal_terima, ''%Y-%m'')<'''+tanggal+''' AND pk.jenis_penerimaan=''RETURAN''                         '+
'GROUP BY ppn.no_roll)                                                                                                                              '+
'AS satr ON satr.no_roll=ppn.no_roll                                                                                                                '+
'LEFT JOIN                                                                                                                                          '+
'(SELECT pps.no_roll,SUM(pps.berat) AS penjualan,SUM(pps.berat*(select harga from detail_penerimaanstok join perincian_penerimaanstok using(no_detail) where no_roll=pps.no_roll)) AS totalpenjualan    '+
'FROM penjualan_kainstok pk JOIN detail_pengeluaranstok dp USING(no_pengeluaran) JOIN perincian_pengeluaranstok pps USING(no_detail) WHERE DATE_FORMAT(tanggal, ''%Y-%m'') <'''+tanggal+''' AND (pk.jenis_penerimaan=''PEMBELIAN'' or pk.jenis_penerimaan=''TRANSFER STOK'') AND penjualan_melalui=''TRANSAKSI''   '+
'GROUP BY no_roll)                                                                                                                                 '+
'AS sapnj ON sapnj.no_roll=ppn.no_roll                                                                                                            '+
'LEFT JOIN                                                                                                                                        '+
'(SELECT pd2.no_roll,IFNULL(SUM(pd2.berat),0) AS beratretur,IFNULL(SUM(dp2.harga*pd2.berat),0) AS totalretur                                           '+
'FROM perincian_detailreturpenerimaanstok pd2                                                                                                    '+
'JOIN detail_returpembelianstok dr                                                                                                               '+
' ON pd2.no_detail=dr.no_detail JOIN  detail_penerimaanstok dp2 ON dp2.no_detail=dr.no_detailpenerimaan JOIN                                     '+
' retur_pembelianstok k2 USING(no_retur) WHERE DATE_FORMAT(tanggal, ''%Y-%m'') <'''+tanggal+''' GROUP BY no_roll)                                    '+
' AS sabr ON sabr.no_roll=ppn.no_roll                                                                                                           '+
'LEFT JOIN                                                                                                                                      '+
'(SELECT pps.no_roll,SUM(pps.berat) AS beratkoreksi,SUM(pps.berat*(select harga from detail_penerimaanstok join perincian_penerimaanstok using(no_detail) where no_roll=pps.no_roll)) AS totalkoreksi                                                         '+
'FROM                                                                                                                                          '+
'penjualan_kainstok pk JOIN detail_pengeluaranstok dp                                                                                          '+
'USING(no_pengeluaran) JOIN perincian_pengeluaranstok pps USING(no_detail)                                                                     '+
'WHERE DATE_FORMAT(tanggal,''%Y-%m'') <'''+tanggal+''' AND                                                                                          '+
'(pk.jenis_penerimaan=''PEMBELIAN'' or pk.jenis_penerimaan=''TRANSFER STOK'') AND penjualan_melalui!=''TRANSAKSI'' AND penjualan_melalui!=''KASIR''                                       '+
'GROUP BY no_roll)                                                                                                                             '+
'AS sakrs ON sakrs.no_roll=ppn.no_roll                                                                                                         '+

'LEFT JOIN                                                                                                                                     '+
'(SELECT ppn.no_roll AS no_roll,IFNULL(ppn.berat,0) AS terima,IFNULL(ppn.berat, 0)*harga as totalterima FROM detail_penerimaanstok dpk JOIN                                              '+
'perincian_penerimaanstok ppn ON dpk.no_detail = ppn.no_detail JOIN pembelian_kainstok pk USING(no_terima) WHERE DATE_FORMAT(tanggal_terima,''%Y-%m'') = '''+tanggal+'''  '+
'and (pk.jenis_penerimaan=''PEMBELIAN'' or pk.jenis_penerimaan=''TRANSFER STOK'')  GROUP BY no_roll )                                                                                         '+
'AS pt ON pt.no_roll=ppn.no_roll                                                                                                                   '+
'LEFT JOIN                                                                                                                                         '+
'(SELECT ppn.no_roll AS no_roll,IFNULL(ppn.berat,0) AS terimaretur, '+
'IFNULL(ppn.berat, 0)*(select harga_beli from detail_pengeluaranstok dp join detail_returpenjualanstok dr on dp.no_detail=dr.no_Detailpenjualan  where dr.no_detail=dpk.no_detail) as totalterimaretur '+
'FROM detail_penerimaanstok dpk JOIN perincian_penerimaanstok ppn ON dpk.no_detail = ppn.no_detail                                                '+
'JOIN pembelian_kainstok pk USING(no_terima) WHERE DATE_FORMAT(tanggal_terima,''%Y-%m'') ='''+tanggal+''' AND pk.jenis_penerimaan=''RETURAN''                          '+
'GROUP BY ppn.no_roll) AS tr ON tr.no_roll=ppn.no_roll                                                                                              '+

'LEFT JOIN                                                                                                                                         '+
'(SELECT ppn.no_roll   AS no_roll,IFNULL(ppn.berat,0) AS terimaretur,IFNULL(ppn.berat, 0)*(select harga from detail_pengeluaranstok where no_detail=drp.no_detailpenjualan) as totalterimareturnonhpp                                  '+
'FROM detail_penerimaanstok dpk JOIN perincian_penerimaanstok ppn ON dpk.no_detail = ppn.no_detail                                                 '+
'JOIN pembelian_kainstok pk USING(no_terima) join detail_returpenjualanstok drp on drp.no_detail=dpk.no_detail WHERE DATE_FORMAT(tanggal_terima,''%Y-%m'') ='''+tanggal+''' AND pk.jenis_penerimaan=''RETURAN''                          '+
'GROUP BY ppn.no_roll) AS tr2 ON tr2.no_roll=ppn.no_roll                                                                                              '+

'LEFT JOIN                                                                                                                                          '+
'(SELECT pps.no_roll,SUM(pps.berat) AS penjualan,SUM(pps.berat*(select harga from detail_penerimaanstok join perincian_penerimaanstok using(no_detail) where no_roll=pps.no_roll)) AS totalpenjualan   '+
'FROM penjualan_kainstok pk JOIN detail_pengeluaranstok dp USING(no_pengeluaran) JOIN perincian_pengeluaranstok pps USING(no_detail) WHERE DATE_FORMAT(tanggal, ''%Y-%m'') = '''+tanggal+''' AND (pk.jenis_penerimaan=''PEMBELIAN'' or pk.jenis_penerimaan=''TRANSFER STOK'') AND penjualan_melalui=''TRANSAKSI''  '+
'GROUP BY no_roll) AS pnj ON pnj.no_roll=ppn.no_roll                                                                                               '+
'LEFT JOIN                                                                                                                                          '+
'(SELECT pps.no_roll,SUM(pps.berat) AS penjualan,SUM(pps.berat*dp.harga) AS totalpenjualan   '+
'FROM penjualan_kainstok pk JOIN detail_pengeluaranstok dp USING(no_pengeluaran) JOIN perincian_pengeluaranstok pps USING(no_detail) WHERE DATE_FORMAT(tanggal, ''%Y-%m'') = '''+tanggal+''' AND (pk.jenis_penerimaan=''PEMBELIAN'' or pk.jenis_penerimaan=''TRANSFER STOK'') AND penjualan_melalui=''TRANSAKSI''  '+
'GROUP BY no_roll) AS pnj2 ON pnj2.no_roll=ppn.no_roll                                                                                               '+

'LEFT JOIN                                                                                                                                         '+
'(SELECT pd2.no_roll,IFNULL(SUM(pd2.berat),0) AS beratretur,IFNULL(SUM(dp2.harga*pd2.berat),0) AS totalretur                                             '+
'FROM perincian_detailreturpenerimaanstok pd2                                                                                                       '+
'JOIN detail_returpembelianstok dr                                                                                                                  '+
' ON pd2.no_detail=dr.no_detail JOIN  detail_penerimaanstok dp2 ON dp2.no_detail=dr.no_detailpenerimaan JOIN                                        '+
' retur_pembelianstok k2 USING(no_retur) WHERE DATE_FORMAT(tanggal,''%Y-%m'') = '''+tanggal+''' GROUP BY no_roll) AS br ON br.no_roll=ppn.no_roll         '+
'LEFT JOIN                                                                                                                                          '+
'(SELECT pps.no_roll,SUM(pps.berat) AS beratkoreksi,SUM(pps.berat*(select harga from detail_penerimaanstok join perincian_penerimaanstok using(no_detail) where no_roll=pps.no_roll)) AS totalkoreksi    '+
'FROM                                                                                                                                               '+
'penjualan_kainstok pk JOIN detail_pengeluaranstok dp                                                                                               '+
'USING(no_pengeluaran) JOIN perincian_pengeluaranstok pps USING(no_detail)                                                                          '+
'WHERE DATE_FORMAT(tanggal,''%Y-%m'') = '''+tanggal+''' AND                                                                                             '+
'(pk.jenis_penerimaan=''PEMBELIAN'' or pk.jenis_penerimaan=''TRANSFER STOK'') AND penjualan_melalui!=''TRANSAKSI'' AND penjualan_melalui!=''KASIR''                                          '+
'GROUP BY no_roll) AS krs ON krs.no_roll=ppn.no_roll  '+
'GROUP BY ppn.no_roll HAVING (stokakhir!=0 OR totalstokakhir!=0)  ');

 tabel.q1.ExecSQL;

 UniQuery1.SQL.Clear;
 UniQuery1.SQL.Add('SELECT nama_kain,jenis_warna,SUM(stokakhir) AS stok, SUM(totalstokakhir) AS total FROM v_stokperioderoll GROUP BY nama_kain,jenis_warna ORDER BY nama_kain,jenis_warna ');
 UniQuery1.Active:=True;

end;

procedure Tflaporanperpriode.btneksportrusakClick(Sender: TObject);
const sLineBreak = '#13#10';
var t2,t3,jenis:string; dpp,ppn,total:real;     i,x:integer;
var
  Stream: TFileStream;
  OutLine: string;
  sTemp,strfile,tglefektif: string;
  var
  saveDialog : tsavedialog;

var
  fld: TField;
  lst: TStringList;
  wasActive: Boolean;
  writer: TTextWriter;
begin
XlApp := CreateOleObject('Excel.Application');
XlBook := XlApp.WorkBooks.Add;
XlSheet := XlBook.worksheets.add;

  tglefektif := FormatDateTime('dd/mm/yyyy',dtanggal.Date);

  if cxPageControl1.ActivePage = cxTabSheet1 then
  begin
    if cxGrid1DBTableView1.DataController.DataSource.DataSet.RecordCount <> 0 then
    begin
      try
        saveDialog := TSaveDialog.Create(self);
        saveDialog.Title := 'Export stok ' + cbbulan.Text + ' - ' + cbtahun.Text + ' per no roll';
        saveDialog.InitialDir := GetCurrentDir;
        saveDialog.Filter := 'CSV File|*.csv';
        saveDialog.DefaultExt := 'csv';
        saveDialog.FilterIndex := 1;

        if saveDialog.Execute
        then
        begin
          strfile := saveDialog.FileName;
          writer := TStreamWriter.Create(strfile);
          try
            OutLine := 'tanggal,no_rollinduk,no_rollcabang,berat,nominal,';
            SetLength(OutLine, Length(OutLine) - 1);
            writer.WriteLine(OutLine);

            qdata2.First;
            while not qdata2.Eof do
            begin
              // You'll need to add your special handling here where OutLine is built
              OutLine := '';
              OutLine := tglefektif + ','+qdata2roll_induk.Text +','+qdata2no_roll.Text+','+qdata2stokakhir.Text+','+qdata2totalstokakhir.AsString+',';
              SetLength(OutLine, Length(OutLine) - 1);
              writer.WriteLine(OutLine);

              qdata2.Next;
            end;
          finally
            writer.Free;
            saveDialog.Free;
            ShellExecute(Handle, 'open',  PChar(strfile), nil, nil, SW_SHOWNORMAL);
            ShowMessage('Export sukses');
          end;
        end;

      except
        ShowMessage('File sedang di buka, silahkan tutup terlebih dahulu');
      end;
    end;

  end;
end;

procedure Tflaporanperpriode.Button1Click(Sender: TObject);
const sLineBreak = '#13#10';
var t2,t3,jenis:string; dpp,ppn,total:real;     i,x:integer;
var
  Stream: TFileStream;
  OutLine: string;
  sTemp,strfile: string;
  var
  saveDialog : tsavedialog;

var
  fld: TField;
  lst: TStringList;
  wasActive: Boolean;
  writer: TTextWriter;
begin
XlApp := CreateOleObject('Excel.Application');
XlBook := XlApp.WorkBooks.Add;
XlSheet := XlBook.worksheets.add;


  if cxPageControl1.ActivePage = cxTabSheet1 then
  begin
    if cxGrid1DBTableView1.DataController.DataSource.DataSet.RecordCount <> 0 then
    begin
      try
        saveDialog := TSaveDialog.Create(self);
        saveDialog.Title := 'Export stok ' + cbbulan.Text + ' - ' + cbtahun.Text + ' per no roll';
        saveDialog.InitialDir := GetCurrentDir;
        saveDialog.Filter := 'CSV File|*.csv';
        saveDialog.DefaultExt := 'csv';
        saveDialog.FilterIndex := 1;

        if saveDialog.Execute
        then
        begin
          strfile := saveDialog.FileName;
          writer := TStreamWriter.Create(strfile);
          try
            OutLine := '';
            for i := 0 to cxGrid1DBTableView1.ColumnCount - 1 do
            begin
              sTemp := cxGrid1DBTableView1.Columns[i].Caption;
              OutLine := OutLine + sTemp + ',';
            end;
            SetLength(OutLine, Length(OutLine) - 1);
            writer.WriteLine(OutLine);

            qdata2.First;
            while not qdata2.Eof do
            begin
              // You'll need to add your special handling here where OutLine is built
              OutLine := '';

              for i := 0 to cxGrid1DBTableView1.ColumnCount - 1 do
              begin
                if (cxGrid1DBTableView1.Columns[i].DataBinding.FieldName = 'tanggal_terima') then
//                  sTemp := FormatDateTime('dd/mm/yyyy',qdatainduktanggal_terima.Value)
                  sTemp := DateToStr(qdata2tanggal_terima.Value)
                else
                sTemp := Trim(qdata2.fieldbyname(cxGrid1DBTableView1.Columns[i].DataBinding.FieldName).AsString);
                // Special handling to sTemp here
                OutLine := OutLine + sTemp + ',';
              end;
              SetLength(OutLine, Length(OutLine) - 1);
              writer.WriteLine(OutLine);

              qdata2.Next;
            end;
          finally
            writer.Free;
            saveDialog.Free;
            ShellExecute(Handle, 'open',  PChar(strfile), nil, nil, SW_SHOWNORMAL);
            ShowMessage('Export sukses');
          end;
        end;

      except
        ShowMessage('File sedang di buka, silahkan tutup terlebih dahulu');
      end;
    end;

  end
  else if cxPageControl1.ActivePage = cxTabSheet2 then
  begin
    if cxGridDBTableView1.DataController.DataSource.DataSet.RecordCount <> 0 then
    begin

      try
        saveDialog := TSaveDialog.Create(self);
        saveDialog.Title := 'Export stok ' + cbbulan.Text + ' - ' + cbtahun.Text + ' per jenis dan warna kain';
        saveDialog.InitialDir := GetCurrentDir;
        saveDialog.Filter := 'CSV File|*.csv';
        saveDialog.DefaultExt := 'csv';
        saveDialog.FilterIndex := 1;

        if saveDialog.Execute
        then
        begin
          strfile := saveDialog.FileName;
          writer := TStreamWriter.Create(strfile);
          try
               OutLine := '';
            for i := 0 to cxGridDBTableView1.ColumnCount - 1 do
            begin
              sTemp := cxGridDBTableView1.Columns[i].Caption;
              OutLine := OutLine + sTemp + ',';
            end;
            SetLength(OutLine, Length(OutLine) - 1);
            writer.WriteLine(OutLine);

            UniQuery1.First;
            while not UniQuery1.Eof do
            begin
              // You'll need to add your special handling here where OutLine is built
              OutLine := '';

              for i := 0 to cxGridDBTableView1.ColumnCount - 1 do
              begin
                sTemp := Trim(UniQuery1.fieldbyname(cxGridDBTableView1.Columns[i].DataBinding.FieldName).AsString);
                // Special handling to sTemp here
                OutLine := OutLine + sTemp + ',';
              end;
              SetLength(OutLine, Length(OutLine) - 1);
              writer.WriteLine(OutLine);

              UniQuery1.Next;
            end;
          finally
            writer.Free;
            saveDialog.Free;
            ShellExecute(Handle, 'open',  PChar(strfile), nil, nil, SW_SHOWNORMAL);
            ShowMessage('Export sukses');
          end;
        end;
      except
        ShowMessage('File sedang di buka, silahkan tutup terlebih dahulu');
      end;
    end;
  end
  else if cxPageControl1.ActivePage = cxTabSheet3 then
  begin
    if cxGridDBTableView2.DataController.DataSource.DataSet.RecordCount <> 0 then
    begin
      try
        saveDialog := TSaveDialog.Create(self);
        saveDialog.Title := 'Export stok ' + cbbulan.Text + ' - ' + cbtahun.Text + ' per roll induk';
        saveDialog.InitialDir := GetCurrentDir;
        saveDialog.Filter := 'CSV File|*.csv';
        saveDialog.DefaultExt := 'csv';
        saveDialog.FilterIndex := 1;

        if saveDialog.Execute
        then
        begin
          strfile := saveDialog.FileName;
          writer := TStreamWriter.Create(strfile);
          try
               OutLine := '';
            for i := 0 to cxGridDBTableView2.ColumnCount - 1 do
            begin
              sTemp := cxGridDBTableView2.Columns[i].Caption;
              OutLine := OutLine + sTemp + ',';
            end;
            SetLength(OutLine, Length(OutLine) - 1);
            writer.WriteLine(OutLine);

            qdatainduk.First;
            while not qdatainduk.Eof do
            begin
              // You'll need to add your special handling here where OutLine is built
              OutLine := '';

              for i := 0 to cxGridDBTableView2.ColumnCount - 1 do
              begin
                if (cxGridDBTableView2.Columns[i].DataBinding.FieldName = 'tanggal_terima') then
//                  sTemp := FormatDateTime('dd/mm/yyyy',qdatainduktanggal_terima.Value)
                  sTemp := DateToStr(qdatainduktanggal_terima.Value)
                else
                sTemp := Trim(qdatainduk.fieldbyname(cxGridDBTableView2.Columns[i].DataBinding.FieldName).AsString);
                // Special handling to sTemp here
                OutLine := OutLine + sTemp + ',';
              end;
              SetLength(OutLine, Length(OutLine) - 1);
              writer.WriteLine(OutLine);

              qdatainduk.Next;
            end;
          finally
            writer.Free;
            saveDialog.Free;
            ShellExecute(Handle, 'open',  PChar(strfile), nil, nil, SW_SHOWNORMAL);
            ShowMessage('Export sukses');
          end;
        end;

      except
        ShowMessage('File sedang di buka, silahkan tutup terlebih dahulu');
      end;
    end;
  end
  else if cxPageControl1.ActivePage = cxTabSheet4 then
  begin
    if cxGridDBTableView3.DataController.DataSource.DataSet.RecordCount <> 0 then
    begin
      try
        saveDialog := TSaveDialog.Create(self);
        saveDialog.Title := 'Export stok ' + cbbulan.Text + ' - ' + cbtahun.Text + ' per no roll (mutasi)';
        saveDialog.InitialDir := GetCurrentDir;
        saveDialog.Filter := 'CSV File|*.csv';
        saveDialog.DefaultExt := 'csv';
        saveDialog.FilterIndex := 1;

        if saveDialog.Execute
        then
        begin
          strfile := saveDialog.FileName;
          writer := TStreamWriter.Create(strfile);
          try
            OutLine := '';
            for i := 0 to cxGridDBTableView3.ColumnCount - 1 do
            begin
              sTemp := cxGridDBTableView3.Columns[i].Caption;
              OutLine := OutLine + sTemp + ',';
            end;
            SetLength(OutLine, Length(OutLine) - 1);
            writer.WriteLine(OutLine);

            qdata.First;
            while not qdata.Eof do
            begin
              // You'll need to add your special handling here where OutLine is built
              OutLine := '';

              for i := 0 to cxGridDBTableView3.ColumnCount - 1 do
              begin
                if (cxGridDBTableView3.Columns[i].DataBinding.FieldName = 'tanggal_terima') then
//                  sTemp := FormatDateTime('dd/mm/yyyy',qdatainduktanggal_terima.Value)
                  sTemp := DateToStr(qdatatanggal_terima.Value)
                else
                sTemp := Trim(qdata.fieldbyname(cxGridDBTableView3.Columns[i].DataBinding.FieldName).AsString);
                // Special handling to sTemp here
                OutLine := OutLine + sTemp + ',';
              end;
              SetLength(OutLine, Length(OutLine) - 1);
              writer.WriteLine(OutLine);

              qdata.Next;
            end;
          finally
            writer.Free;
            saveDialog.Free;
            ShellExecute(Handle, 'open',  PChar(strfile), nil, nil, SW_SHOWNORMAL);
            ShowMessage('Export sukses');
          end;
        end;

      except
        ShowMessage('File sedang di buka, silahkan tutup terlebih dahulu');
      end;
    end;
  end
  else if cxPageControl1.ActivePage = cxTabSheet5 then
  begin
    if cxGridDBTableView4.DataController.DataSource.DataSet.RecordCount <> 0 then
    begin
      try
        saveDialog := TSaveDialog.Create(self);
        saveDialog.Title := 'Export stok ' + cbbulan.Text + ' - ' + cbtahun.Text + ' ';
        saveDialog.InitialDir := GetCurrentDir;
        saveDialog.Filter := 'CSV File|*.csv';
        saveDialog.DefaultExt := 'csv';
        saveDialog.FilterIndex := 1;

        if saveDialog.Execute
        then
        begin
          strfile := saveDialog.FileName;
          writer := TStreamWriter.Create(strfile);
          try
            OutLine := '';
            for i := 0 to cxGridDBTableView4.ColumnCount - 1 do
            begin
              sTemp := cxGridDBTableView4.Columns[i].Caption;
              OutLine := OutLine + sTemp + ',';
            end;
            SetLength(OutLine, Length(OutLine) - 1);
            writer.WriteLine(OutLine);

            qstokperiode.First;
            while not qstokperiode.Eof do
            begin
              // You'll need to add your special handling here where OutLine is built
              OutLine := '';

              for i := 0 to cxGridDBTableView4.ColumnCount - 1 do
              begin
                if (cxGridDBTableView4.Columns[i].DataBinding.FieldName = 'tanggal_terima') then
//                  sTemp := FormatDateTime('dd/mm/yyyy',qdatainduktanggal_terima.Value)
                  sTemp := DateToStr(qstokperiodetanggal_terima.Value)
                else
                sTemp := Trim(qstokperiode.fieldbyname(cxGridDBTableView4.Columns[i].DataBinding.FieldName).AsString);
                // Special handling to sTemp here
                OutLine := OutLine + sTemp + ',';
              end;
              SetLength(OutLine, Length(OutLine) - 1);
              writer.WriteLine(OutLine);

              qstokperiode.Next;
            end;
          finally
            writer.Free;
            saveDialog.Free;
            ShellExecute(Handle, 'open',  PChar(strfile), nil, nil, SW_SHOWNORMAL);
            ShowMessage('Export sukses');
          end;
        end;

      except
        ShowMessage('File sedang di buka, silahkan tutup terlebih dahulu');
      end;
    end;
  end;
end;


procedure Tflaporanperpriode.ComboBox1DropDown(Sender: TObject);
var tanggal,tahun,perbandingan:string;
begin
tabel.q1.SQL.Clear;
tabel.q1.SQL.Add('select distinct(DATE_FORMAT(tanggal_terima,''%Y'')) as tanggal_terima from pembelian_kainstok');
tabel.q1.Active:=true;
perbandingan:='0000';
if not(tabel.q1.Eof) and (tabel.q1.Bof) then begin
ComboBox1.Items.Clear;
tabel.q1.First;
while not tabel.q1.Eof do
begin
tanggal:=tabel.q1.FieldValues['tanggal_terima'];
tahun:=copy(tanggal,1,4);
if tahun=perbandingan then begin

end else begin
ComboBox1.Items.Append(tahun);
perbandingan:=tahun;
end;
tabel.q1.Next;

 end;
  end;
end;

procedure Tflaporanperpriode.ComboBox8DropDown(Sender: TObject);
var tanggal,tahun,perbandingan:string;
begin
tabel.q1.SQL.Clear;
tabel.q1.SQL.Add('select distinct(DATE_FORMAT(tanggal_terima,''%Y'')) as tanggal_terima from pembelian_kainstok order by tanggal_terima');
tabel.q1.Active:=true;
perbandingan:='0000';
if not(tabel.q1.Eof) and (tabel.q1.Bof) then begin
TComboBox(Sender).Items.Clear;
tabel.q1.First;
while not tabel.q1.Eof do
begin
tanggal:=tabel.q1.FieldValues['tanggal_terima'];
tahun:=copy(tanggal,1,4);
if tahun=perbandingan then begin

end else begin
TComboBox(Sender).Items.Append(tahun);
perbandingan:=tahun;
end;
tabel.q1.Next;

 end;
  end;

end;

procedure Tflaporanperpriode.ComboBox9Change(Sender: TObject);
begin
  if pos('tahun',LowerCase(ComboBox9.Text)) > 0 then
  begin
    ComboBox8.Left := 8;
    button7.Left := 160;
    ComboBox7.Visible:=false;
  end
  else
  begin
    ComboBox8.Left := 160;
    button7.Left := 320;
    ComboBox7.Visible:=true;
  end;
end;

procedure SaveAsCSV(myFileName: string; myDataSet: TDataSet);
var
  myTextFile: TextFile;
  i: integer;
  s: string;
begin
  //create a new file
  AssignFile(myTextFile, myFileName);
  Rewrite(myTextFile);

  s := ''; //initialize empty string

  try
    //write field names (as column headers)
    for i := 0 to myDataSet.FieldCount - 1 do
      begin
        s := s + Format('"%s";', [myDataSet.Fields[i].FieldName]);
      end;
    Writeln(myTextFile, s);

    //write field values
    while not myDataSet.Eof do
      begin
        s := '';
        for i := 0 to myDataSet.FieldCount - 1 do
          begin
            s := s + Format('"%s";', [Trim(myDataSet.Fields[i].AsString)]);
          end;
        Writeln(myTextfile, s);
        myDataSet.Next;
      end;

  finally
    CloseFile(myTextFile);
  end;
end;

procedure Tflaporanperpriode.qdatadtGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Text := copy(qdatadt.AsString,1,10000);
end;

procedure Tflaporanperpriode.Button5Click(Sender: TObject);
var tanggal,wsatanggalefektif,wtanggalefektif,wtanggalpecah:string;
jmlrecord:integer;
begin

  tabel.q1.SQL.Clear;
  tabel.q1.SQL.Add('select * from n_penjagaan where isi=''ADJUST PERPERIODE'' ');
  tabel.q1.open;

  if not tabel.q1.IsEmpty then
  begin
    ShowMessage('Stok perpriode tidak bisa ditampilkan karena sedang ada koreksi adjust ');
    exit;
  end;

  jmlrecord := 0;
  tanggal:=ComboBox3.Text+'-'+convertMonthNametoIndex(ComboBox4.Text);
  if (tabel.server.Server = '192.168.10.10') then
  begin
    if (Pos('bulan',LowerCase(cdasar.Text)) > 0) then
    begin
      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('select count(id) as jml from n_stokperioderoll_bulan where concat(tahun,''-'',bulan)='''+tanggal+''' ');
      tabel.q1.Open;
      jmlrecord := tabel.q1.Fields[0].Value;
    end
    else
    begin
      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('select count(id) as jml from n_stokperioderoll_bulan where tahun='''+ComboBox3.Text+''' ');
      tabel.q1.Open;
      jmlrecord := tabel.q1.Fields[0].Value;
    end;
  end;

  if (tabel.server.Server = '192.168.10.10') and (Pos('bulan',LowerCase(cdasar.Text)) > 0) and (jmlrecord > 0) then
  begin
    wsatanggalefektif := 'DATE_FORMAT(tanggal_efektif, ''%Y-%m'') < '''+tanggal+''' ';
    wtanggalefektif := 'DATE_FORMAT(tanggal_efektif, ''%Y-%m'') = '''+tanggal+''' ';

//    execView(cdasar.Text,tanggal);

    qdatainduk.SQL.Clear;
    qdatainduk.SQL.Add('SELECT  IF(SUBSTR(roll_induk,1,1)=''R'' AND IFNULL(vpecah.jml,0)=0 ,''ROLLAN'',''KGAN'') AS stskain,no_lokasi,harga,tanggal_terima,tipe_kain,nama_kain,jenis_warna,kode_spk,vs.no_roll,vs.roll_induk , SUM(stokawal-IFNULL(sakr.berat,0)) AS stokawal, '+
    ' SUM(totalstokawal- IFNULL(sakr.nominal,0)) AS totalstokawal,SUM(terima) AS terima ,SUM(totalterima) AS totalterima,sum(terimatransfer) as terimatransfer,sum(totalterimatransfer) as totalterimatransfer, '+
    ' SUM(terimaretur) AS terimaretur ,  '+
    ' SUM(sapenjualanbssegel) AS sapenjualanbssegel,SUM(satotalpenjualanbssegel) AS satotalpenjualanbssegel,SUM(penjualanbssegel) AS penjualanbssegel,SUM(totalpenjualanbssegel) AS totalpenjualanbssegel, '+
    ' SUM(totalterimaretur) AS totalterimaretur,  SUM(penjualan) AS penjualan,  SUM(totalpenjualan) AS totalpenjualan,  SUM(penjualantransfer) AS penjualantransfer,  SUM(totalpenjualantransfer) AS totalpenjualantransfer, '+
    ' SUM(retur) retur,SUM(totalretur) AS totalretur,SUM(beratkoreksi) AS beratkoreksi ,SUM(totalberatkoreksi) AS totalberatkoreksi ,  '+
    ' SUM(IFNULL(kr.berat,0)) AS koreksi_kainrusak,SUM(IFNULL(kr.nominal,0)) AS totalkoreksi_kainrusak,  SUM(stokakhir - IFNULL(sakr.berat,0) - IFNULL(kr.berat,0)) AS stokakhir,  '+
    ' SUM(totalstokakhir - IFNULL(sakr.nominal,0) -IFNULL(kr.nominal,0)) AS totalstokakhir  '+
    ' FROM n_stokperioderoll_bulan vs '+
    ' LEFT JOIN '+
    ' (SELECT SUM(berat) AS berat,SUM(nominal) AS nominal,no_roll FROM koreksi_kainrusak WHERE '+wsatanggalefektif+'  '+
    ' GROUP BY no_roll) AS sakr ON sakr.no_roll=vs.no_roll  '+
    ' LEFT JOIN '+
    ' (SELECT SUM(berat) AS berat,SUM(nominal) AS nominal,no_roll FROM koreksi_kainrusak WHERE '+wtanggalefektif+' '+
    ' GROUP BY no_roll) AS kr ON kr.no_roll=vs.no_roll '+
    ' LEFT JOIN (SELECT roll1,COUNT(roll2) AS jml FROM data_pecahroll '+
    ' WHERE DATE_FORMAT(tanggal_pecah,''%Y-%m'')<='''+tanggal+''' GROUP BY roll1) '+
    ' AS vpecah ON vs.roll_induk=vpecah.roll1 '+
    ' WHERE concat(vs.tahun,''-'',vs.bulan) = '''+tanggal+''' GROUP BY vs.roll_induk '+
    ' HAVING stokawal <> 0 OR totalstokawal <> 0 OR satotalpenjualanbssegel <> 0 OR totalterima <> 0 OR totalterimatransfer <> 0 OR totalterimaretur <> 0 OR totalpenjualan <> 0 OR totalpenjualantransfer <> 0 '+
    ' OR totalpenjualanbssegel <> 0 OR totalretur <> 0 OR totalberatkoreksi <> 0 OR totalkoreksi_kainrusak <> 0 OR stokakhir <> 0 OR totalstokakhir <> 0 ');
//    ShowMessage(qdatainduk.sql.Text);
    qdatainduk.Active:=True;
  end
  else if (tabel.server.Server = '192.168.10.10') and (Pos('tahun',LowerCase(cdasar.Text)) > 0)  and (jmlrecord > 0) then
  begin
    tanggal := ComboBox3.Text;

    wsatanggalefektif := 'DATE_FORMAT(tanggal_efektif, ''%Y'') < '''+tanggal+''' ';
    wtanggalefektif := 'DATE_FORMAT(tanggal_efektif, ''%Y'') = '''+tanggal+''' ';

//    execView(cdasar.Text,tanggal);

//    qdatainduk.SQL.Clear;
//    qdatainduk.SQL.Add('SELECT no_lokasi,harga,tanggal_terima,tipe_kain,nama_kain,jenis_warna,kode_spk,vs.no_roll,vs.roll_induk , SUM(stokawal-IFNULL(sakr.berat,0)) AS stokawal, '+
//    ' SUM(totalstokawal- IFNULL(sakr.nominal,0)) AS totalstokawal,SUM(terima) AS terima ,SUM(totalterima) AS totalterima,sum(terimatransfer) as terimatransfer,sum(totalterimatransfer) as totalterimatransfer, '+
//    ' SUM(terimaretur) AS terimaretur ,  '+
//    ' SUM(sapenjualanbssegel) AS sapenjualanbssegel,SUM(satotalpenjualanbssegel) AS satotalpenjualanbssegel,SUM(penjualanbssegel) AS penjualanbssegel,SUM(totalpenjualanbssegel) AS totalpenjualanbssegel, '+
//    ' SUM(totalterimaretur) AS totalterimaretur,  SUM(penjualan) AS penjualan,  SUM(totalpenjualan) AS totalpenjualan,  SUM(penjualantransfer) AS penjualantransfer,  SUM(totalpenjualantransfer) AS totalpenjualantransfer, '+
//    ' SUM(retur) retur,SUM(totalretur) AS totalretur,SUM(beratkoreksi) AS beratkoreksi ,SUM(totalberatkoreksi) AS totalberatkoreksi ,  '+
//    ' SUM(IFNULL(kr.berat,0)) AS koreksi_kainrusak,SUM(IFNULL(kr.nominal,0)) AS totalkoreksi_kainrusak,  SUM(vs.stokakhir - IFNULL(sakr.berat,0) - IFNULL(kr.berat,0)) AS stokakhir,  '+
//    ' SUM(vs.totalstokakhir - IFNULL(sakr.nominal,0) -IFNULL(kr.nominal,0)) AS totalstokakhir  '+
//    ' FROM n_stokperioderoll_tahun_fix vs '+
//    ' LEFT JOIN '+
//    ' (SELECT SUM(berat) AS berat,SUM(nominal) AS nominal,no_roll FROM koreksi_kainrusak WHERE '+wsatanggalefektif+'  '+
//    ' GROUP BY no_roll) AS sakr ON sakr.no_roll=vs.no_roll '+
//    ' LEFT JOIN '+
//    ' (SELECT SUM(berat) AS berat,SUM(nominal) AS nominal,no_roll FROM koreksi_kainrusak WHERE '+wtanggalefektif+' '+
//    ' GROUP BY no_roll) AS kr ON kr.no_roll=vs.no_roll WHERE vs.tahun = '''+tanggal+''' GROUP BY vs.roll_induk '+
//    ' HAVING stokawal <> 0 OR totalstokawal <> 0 OR satotalpenjualanbssegel <> 0 OR totalterima <> 0 OR totalterimatransfer <> 0 OR totalterimaretur <> 0 OR totalpenjualan <> 0 OR totalpenjualantransfer <> 0 '+
//    ' OR totalpenjualanbssegel <> 0 OR totalretur <> 0 OR totalberatkoreksi <> 0 OR totalkoreksi_kainrusak <> 0 OR stokakhir <> 0 OR totalstokakhir <> 0 ');
////    ShowMessage(qdatainduk.sql.Text);
//    qdatainduk.Active:=True;
    qdatainduk.SQL.Clear;
    qdatainduk.SQL.Add('SELECT IF(SUBSTR(roll_induk,1,1)=''R'' AND IFNULL(vpecah.jml,0)=0 ,''ROLLAN'',''KGAN'') AS stskain,no_lokasi,harga,tanggal_terima,tipe_kain,nama_kain,jenis_warna,kode_spk,vs.no_roll,vs.roll_induk '+
    ' , SUM(IF(bulan=minbln,stokawal-IFNULL(sakr.berat,0),0)) AS stokawal, '+
    ' SUM(IF(bulan=minbln,totalstokawal- IFNULL(sakr.nominal,0),0)) AS totalstokawal,SUM(terima) AS terima ,SUM(totalterima) AS totalterima,sum(terimatransfer) as terimatransfer,sum(totalterimatransfer) as totalterimatransfer, '+
    ' SUM(terimaretur) AS terimaretur ,  '+
    ' SUM(sapenjualanbssegel) AS sapenjualanbssegel,SUM(satotalpenjualanbssegel) AS satotalpenjualanbssegel,SUM(penjualanbssegel) AS penjualanbssegel,SUM(totalpenjualanbssegel) AS totalpenjualanbssegel, '+
    ' SUM(totalterimaretur) AS totalterimaretur,  SUM(penjualan) AS penjualan,  SUM(totalpenjualan) AS totalpenjualan,  SUM(penjualantransfer) AS penjualantransfer,  SUM(totalpenjualantransfer) AS totalpenjualantransfer, '+
    ' SUM(retur) retur,SUM(totalretur) AS totalretur,SUM(beratkoreksi) AS beratkoreksi ,SUM(totalberatkoreksi) AS totalberatkoreksi ,  '+
    ' SUM(IFNULL(kr.berat,0)) AS koreksi_kainrusak,SUM(IFNULL(kr.nominal,0)) AS totalkoreksi_kainrusak,  SUM(IF(bulan=maxbln,stokakhir - IFNULL(sakr.berat,0) - IFNULL(kr.berat,0),0)) AS stokakhir,  '+
    ' SUM(IF(bulan=maxbln,totalstokakhir - IFNULL(sakr.nominal,0) -IFNULL(kr.nominal,0),0)) AS totalstokakhir  '+
    ' FROM n_stokperioderoll_bulan vs JOIN (SELECT MIN(bulan) AS minbln,MAX(bulan) AS maxbln FROM n_stokperioderoll_bulan WHERE tahun='''+tanggal+''')  AS a '+
    ' LEFT JOIN '+
    ' (SELECT SUM(berat) AS berat,SUM(nominal) AS nominal,no_roll FROM koreksi_kainrusak WHERE '+wsatanggalefektif+'  '+
    ' GROUP BY no_roll) AS sakr ON sakr.no_roll=vs.no_roll  '+
    ' LEFT JOIN '+
    ' (SELECT SUM(berat) AS berat,SUM(nominal) AS nominal,no_roll FROM koreksi_kainrusak WHERE '+wtanggalefektif+' '+
    ' GROUP BY no_roll) AS kr ON kr.no_roll=vs.no_roll '+
    ' LEFT JOIN (SELECT roll1,COUNT(roll2) AS jml FROM data_pecahroll '+
    ' WHERE DATE_FORMAT(tanggal_pecah,''%Y'')<='''+tanggal+''' GROUP BY roll1) '+
    ' AS vpecah ON vs.roll_induk=vpecah.roll1 '+
    ' WHERE vs.tahun = '''+tanggal+''' GROUP BY vs.roll_induk '+
    ' HAVING stokawal <> 0 OR totalstokawal <> 0 OR satotalpenjualanbssegel <> 0 OR totalterima <> 0 OR totalterimatransfer <> 0 OR totalterimaretur <> 0 OR totalpenjualan <> 0 OR totalpenjualantransfer <> 0 '+
    ' OR totalpenjualanbssegel <> 0 OR totalretur <> 0 OR totalberatkoreksi <> 0 OR totalkoreksi_kainrusak <> 0 OR stokakhir <> 0 OR totalstokakhir <> 0 ');
//    ShowMessage(qdatainduk.sql.Text);
    qdatainduk.Active:=True;
  end
  else
  begin
    if Pos('tahun',LowerCase(cdasar.Text)) > 0 then
    begin
      tanggal := ComboBox3.Text;

      wsatanggalefektif := 'DATE_FORMAT(tanggal_efektif, ''%Y'') < '''+tanggal+''' ';
      wtanggalefektif := 'DATE_FORMAT(tanggal_efektif, ''%Y'') = '''+tanggal+''' ';
      wtanggalpecah := 'DATE_FORMAT(tanggal_pecah,''%Y'')<='''+tanggal+''' ';
    end
    else
    begin
      tanggal:=ComboBox3.Text+'-'+convertMonthNametoIndex(ComboBox4.Text);

      wsatanggalefektif := 'DATE_FORMAT(tanggal_efektif, ''%Y-%m'') < '''+tanggal+''' ';
      wtanggalefektif := 'DATE_FORMAT(tanggal_efektif, ''%Y-%m'') = '''+tanggal+''' ';
      wtanggalpecah := 'DATE_FORMAT(tanggal_pecah,''%Y-%m'')<='''+tanggal+''' ';
    end;

    execView(cdasar.Text,tanggal);

    qdatainduk.SQL.Clear;
    qdatainduk.SQL.Add('SELECT IF(SUBSTR(roll_induk,1,1)=''R'' AND IFNULL(vpecah.jml,0)=0 ,''ROLLAN'',''KGAN'') AS stskain,no_lokasi,harga,tanggal_terima,tipe_kain,nama_kain,jenis_warna,kode_spk,vs.no_roll,vs.roll_induk , SUM(stokawal-IFNULL(sakr.berat,0)) AS stokawal, '+
    ' SUM(totalstokawal- IFNULL(sakr.nominal,0)) AS totalstokawal,SUM(terima) AS terima ,SUM(totalterima) AS totalterima,sum(terimatransfer) as terimatransfer,sum(totalterimatransfer) as totalterimatransfer, '+
    ' SUM(terimaretur) AS terimaretur ,  '+
    ' SUM(sapenjualanbssegel) AS sapenjualanbssegel,SUM(satotalpenjualanbssegel) AS satotalpenjualanbssegel,SUM(penjualanbssegel) AS penjualanbssegel,SUM(totalpenjualanbssegel) AS totalpenjualanbssegel, '+
    ' SUM(totalterimaretur) AS totalterimaretur,  SUM(penjualan) AS penjualan,  SUM(totalpenjualan) AS totalpenjualan,  SUM(penjualantransfer) AS penjualantransfer,  SUM(totalpenjualantransfer) AS totalpenjualantransfer, '+
    ' SUM(retur) retur,SUM(totalretur) AS totalretur,SUM(beratkoreksi) AS beratkoreksi ,SUM(totalberatkoreksi) AS totalberatkoreksi ,  '+
    ' SUM(IFNULL(kr.berat,0)) AS koreksi_kainrusak,SUM(IFNULL(kr.nominal,0)) AS totalkoreksi_kainrusak,  SUM(vs.stokakhir - IFNULL(sakr.berat,0) - IFNULL(kr.berat,0)) AS stokakhir,  '+
    ' SUM(vs.totalstokakhir - IFNULL(sakr.nominal,0) -IFNULL(kr.nominal,0)) AS totalstokakhir  '+
    ' FROM v_stokperioderoll vs '+
    ' LEFT JOIN '+
    ' (SELECT SUM(berat) AS berat,SUM(nominal) AS nominal,no_roll FROM koreksi_kainrusak WHERE '+wsatanggalefektif+'  '+
    ' GROUP BY no_roll) AS sakr ON sakr.no_roll=vs.no_roll '+
    ' LEFT JOIN '+
    ' (SELECT SUM(berat) AS berat,SUM(nominal) AS nominal,no_roll FROM koreksi_kainrusak WHERE '+wtanggalefektif+' '+
    ' GROUP BY no_roll) AS kr ON kr.no_roll=vs.no_roll  '+
    ' LEFT JOIN (SELECT roll1,COUNT(roll2) AS jml FROM data_pecahroll '+
    ' WHERE '+wtanggalpecah+' GROUP BY roll1) '+
    ' AS vpecah ON vs.roll_induk=vpecah.roll1 '+
    ' GROUP BY vs.roll_induk '+
    ' HAVING stokawal <> 0 OR sapenjualanbssegel <> 0 OR terima <> 0 OR terimatransfer <> 0 OR terimaretur <> 0 OR penjualan <> 0 OR penjualantransfer <> 0 '+
    ' OR penjualanbssegel <> 0 OR retur <> 0 OR beratkoreksi <> 0 OR koreksi_kainrusak <> 0 OR  stokakhir <> 0 ');
//    ShowMessage(qdatainduk.sql.Text);
    qdatainduk.Active:=True;
  end;

end;

procedure Tflaporanperpriode.Button6Click(Sender: TObject);
var tanggal,bulan:string;
jmlrecord:integer;
begin

  tabel.q1.SQL.Clear;
  tabel.q1.SQL.Add('select * from n_penjagaan where isi=''ADJUST PERPERIODE'' ');
  tabel.q1.open;

  if not tabel.q1.IsEmpty then
  begin
    ShowMessage('Stok perpriode tidak bisa ditampilkan karena sedang ada koreksi adjust ');
    exit;
  end;

  tanggal:=ComboBox5.Text+'-'+convertMonthNametoIndex(ComboBox6.Text);
  jmlrecord := 0;
  if (tabel.server.Server = '192.168.10.10')  then
  begin
    tabel.q1.SQL.Clear;
    tabel.q1.SQL.Add('select count(id) as jml from n_stokperioderoll_bulan where concat(tahun,''-'',bulan)='''+tanggal+''' ');
    tabel.q1.Open;
    jmlrecord := tabel.q1.Fields[0].Value;
  end;
//  ShowMessage(IntToStr(jmlrecord));
  if jmlrecord > 0 then
  begin
    qdata.SQL.Clear;
    qdata.SQL.Add('SELECT IF(ppn.no_lokasi=''HILANG'' OR LEFT(ppn.no_lokasi,2)=''H_'',DATE(vso.tanggal),''-'') AS tanggal_h, '+
      ' IF(ppn.no_lokasi=''HILANG'',(SELECT CAST(MAX(tanggal) AS DATE) FROM histori_pemindahandarih_kehilang WHERE no_roll=vs.no_roll),''-'') AS tanggal_hilang,  '+
      ' vso.tanggal AS tanggal_so, vso.lokasi_asal, ppn.no_lokasi,vs.harga,vs.tanggal_terima,vs.tipe_kain,vs.nama_kain,vs.jenis_warna,vs.kode_spk,vs.no_roll,vs.roll_induk ,  '+
      '(stokawal-IFNULL(sakr.berat,0)) AS stokawal, (totalstokawal- IFNULL(sakr.nominal,0)) AS totalstokawal,vs.terima ,vs.totalterima,vs.terimatransfer,vs.totalterimatransfer, vs.terimaretur ,  '+
      ' sapenjualanbssegel,satotalpenjualanbssegel,penjualanbssegel,totalpenjualanbssegel, '+
      ' totalterimaretur,  vs.penjualan,  totalpenjualan ,vs.penjualantransfer,  totalpenjualantransfer ,  vs.retur,vs.totalretur,vs.beratkoreksi ,vs.totalberatkoreksi ,  '+
      ' (IFNULL(kr.berat,0)) AS koreksi_kainrusak,(IFNULL(kr.nominal,0)) AS totalkoreksi_kainrusak,  (stokakhir - IFNULL(sakr.berat,0) - IFNULL(kr.berat,0)) AS stokakhir,  '+
      ' (totalstokakhir - IFNULL(sakr.nominal,0) -IFNULL(kr.nominal,0)) AS totalstokakhir ,  IFNULL(vm.berat_mutasi,0) AS berat_mutasi,  '+
      ' IFNULL(vm.berat_mutasi,0) * vs.harga AS totalmutasi, vm.dt,IF (stokakhir <= IFNULL(v.berat_asal,0),stokakhir, IFNULL(v.berat_asal,0)) AS mutasifix,       '+
      ' IF (stokakhir <= IFNULL(v.berat_asal,0),stokakhir, IFNULL(v.berat_asal,0)) * vs.harga AS totalmutasifix,IFNULL(v.berat_asal,0) AS berat_sekarang,IFNULL(v.berat_asal,0) * vs.harga AS tot  '+
//      ' FROM v_stokperioderoll vs '+
      ' FROM n_stokperioderoll_bulan vs  join perincian_penerimaanstok ppn using(no_roll) '+
      ' LEFT JOIN  (SELECT  `v_pecahanroll`.`roll_induk` AS `roll_induk`,   SUM(berat_terima) AS berat_mutasi ,  '+
      ' GROUP_CONCAT(CONCAT(CONVERT(SUBSTR(`v_pecahanroll`.`tanggal_pecah`,1,10) USING latin1),''-'',  '+
      ' `v_pecahanroll`.`status_pecah`,''-'',`v_pecahanroll`.`nama`,''-'',`v_pecahanroll`.`berat_terima`) ORDER BY `v_pecahanroll`.`tanggal_pecah` ASC SEPARATOR ''#'') AS `dt`  '+
      ' FROM `v_pecahanroll` WHERE DATE_FORMAT(tanggal_pecah, ''%Y-%m'') > '''+tanggal+'''  GROUP BY `v_pecahanroll`.`roll_induk`) vm ON no_roll=vm.roll_induk LEFT JOIN v_ystokall v USING(no_roll)  '+
      ' LEFT JOIN (SELECT tanggal,lokasi_akhir AS lokasi_asal,no_roll FROM data_stokofnamefisik JOIN `detail_stokofnamefisik` ON NO=no_stokofname  '+
      ' JOIN (SELECT CONCAT(MAX(NO),no_roll) AS DATA FROM data_stokofnamefisik JOIN `detail_stokofnamefisik` ON NO=no_stokofname GROUP BY no_roll) AS v ON CONCAT(NO,no_roll)=v.data) AS vso ON vs.no_roll=vso.no_roll  '+
      ' LEFT JOIN  '+
      ' (SELECT SUM(berat) AS berat,SUM(nominal) AS nominal,no_roll FROM koreksi_kainrusak WHERE DATE_FORMAT(tanggal_efektif, ''%Y-%m'') < '''+tanggal+'''  '+
      ' GROUP BY no_roll) AS sakr ON sakr.no_roll=vs.no_roll  '+
      ' LEFT JOIN  '+
      ' (SELECT SUM(berat) AS berat,SUM(nominal) AS nominal,no_roll FROM koreksi_kainrusak WHERE DATE_FORMAT(tanggal_efektif, ''%Y-%m'') = '''+tanggal+'''  '+
      ' GROUP BY no_roll) AS kr ON kr.no_roll=vs.no_roll WHERE concat(vs.tahun,''-'',vs.bulan) = '''+tanggal+''' GROUP BY vs.no_roll  '+
      ' HAVING stokawal <> 0 OR totalstokawal <> 0 OR satotalpenjualanbssegel <> 0 OR totalterima <> 0 OR totalterimatransfer <> 0 OR totalterimaretur <> 0 OR totalpenjualan <> 0 OR totalpenjualantransfer <> 0 '+
    ' OR totalpenjualanbssegel <> 0 OR totalretur <> 0 OR totalberatkoreksi <> 0 OR totalkoreksi_kainrusak <> 0 OR stokakhir <> 0 OR totalstokakhir <> 0 ');
    qdata.Active:=True;
  end
  else
  begin
    execView('per bulan',tanggal);

    qdata.SQL.Clear;
    qdata.SQL.Add('SELECT IF(vs.no_lokasi=''HILANG'' OR LEFT(vs.no_lokasi,2)=''H_'',DATE(vso.tanggal),''-'') AS tanggal_h, '+
      ' IF(vs.no_lokasi=''HILANG'',(SELECT CAST(MAX(tanggal) AS DATE) FROM histori_pemindahandarih_kehilang WHERE no_roll=vs.no_roll),''-'') AS tanggal_hilang,  '+
      ' vso.tanggal AS tanggal_so, vso.lokasi_asal, vs.no_lokasi,vs.harga,vs.tanggal_terima,vs.tipe_kain,vs.nama_kain,vs.jenis_warna,vs.kode_spk,vs.no_roll,vs.roll_induk ,  '+
      '(stokawal-IFNULL(sakr.berat,0)) AS stokawal, (totalstokawal- IFNULL(sakr.nominal,0)) AS totalstokawal,vs.terima ,vs.totalterima,vs.terimatransfer,vs.totalterimatransfer, vs.terimaretur ,  '+
      ' sapenjualanbssegel,satotalpenjualanbssegel,penjualanbssegel,totalpenjualanbssegel, '+
      ' totalterimaretur,  vs.penjualan,  totalpenjualan ,vs.penjualantransfer,  totalpenjualantransfer ,  vs.retur,vs.totalretur,vs.beratkoreksi ,vs.totalberatkoreksi ,  '+
      ' (IFNULL(kr.berat,0)) AS koreksi_kainrusak,(IFNULL(kr.nominal,0)) AS totalkoreksi_kainrusak,  (vs.stokakhir - IFNULL(sakr.berat,0) - IFNULL(kr.berat,0)) AS stokakhir,  '+
      ' (vs.totalstokakhir - IFNULL(sakr.nominal,0) -IFNULL(kr.nominal,0)) AS totalstokakhir ,  IFNULL(vm.berat_mutasi,0) AS berat_mutasi,  '+
      ' IFNULL(vm.berat_mutasi,0) * vs.harga AS totalmutasi, vm.dt,IF (vs.stokakhir <= IFNULL(v.berat_asal,0),vs.stokakhir, IFNULL(v.berat_asal,0)) AS mutasifix,       '+
      ' IF (vs.stokakhir <= IFNULL(v.berat_asal,0),vs.stokakhir, IFNULL(v.berat_asal,0)) * vs.harga AS totalmutasifix,IFNULL(v.berat_asal,0) AS berat_sekarang,IFNULL(v.berat_asal,0) * vs.harga AS tot  '+
      ' FROM v_stokperioderoll vs LEFT JOIN  (SELECT  `v_pecahanroll`.`roll_induk` AS `roll_induk`,   SUM(berat_terima) AS berat_mutasi ,  '+
      ' GROUP_CONCAT(CONCAT(CONVERT(SUBSTR(`v_pecahanroll`.`tanggal_pecah`,1,10) USING latin1),''-'',  '+
      ' `v_pecahanroll`.`status_pecah`,''-'',`v_pecahanroll`.`nama`,''-'',`v_pecahanroll`.`berat_terima`) ORDER BY `v_pecahanroll`.`tanggal_pecah` ASC SEPARATOR ''#'') AS `dt`  '+
      ' FROM `v_pecahanroll` WHERE DATE_FORMAT(tanggal_pecah, ''%Y-%m'') > '''+tanggal+'''  GROUP BY `v_pecahanroll`.`roll_induk`) vm ON no_roll=vm.roll_induk LEFT JOIN v_ystokall v USING(no_roll)  '+
      ' LEFT JOIN (SELECT tanggal,lokasi_akhir AS lokasi_asal,no_roll FROM data_stokofnamefisik JOIN `detail_stokofnamefisik` ON NO=no_stokofname  '+
      ' JOIN (SELECT CONCAT(MAX(NO),no_roll) AS DATA FROM data_stokofnamefisik JOIN `detail_stokofnamefisik` ON NO=no_stokofname GROUP BY no_roll) AS v ON CONCAT(NO,no_roll)=v.data) AS vso ON vs.no_roll=vso.no_roll  '+
      ' LEFT JOIN  '+
      ' (SELECT SUM(berat) AS berat,SUM(nominal) AS nominal,no_roll FROM koreksi_kainrusak WHERE DATE_FORMAT(tanggal_efektif, ''%Y-%m'') < '''+tanggal+'''  '+
      ' GROUP BY no_roll) AS sakr ON sakr.no_roll=vs.no_roll  '+
      ' LEFT JOIN  '+
      ' (SELECT SUM(berat) AS berat,SUM(nominal) AS nominal,no_roll FROM koreksi_kainrusak WHERE DATE_FORMAT(tanggal_efektif, ''%Y-%m'') = '''+tanggal+'''  '+
      ' GROUP BY no_roll) AS kr ON kr.no_roll=vs.no_roll   GROUP BY vs.no_roll  '+
      ' HAVING stokawal > 0 OR sapenjualanbssegel <> 0 OR terima <> 0 OR terimatransfer <> 0 OR terimaretur <> 0 OR penjualan <> 0 OR penjualantransfer <> 0 '+
      ' OR penjualanbssegel <> 0 OR retur <> 0 OR beratkoreksi <> 0 OR koreksi_kainrusak <> 0 OR  stokakhir > 0 ');
    qdata.Active:=True;
  end;

end;

procedure Tflaporanperpriode.Button7Click(Sender: TObject);
var tanggalawal,tanggal_akhir,bulan,tglakhir:string;
    tanggal,wsatanggalefektif,wtanggalefektif:string;
    jmlrecord:integer;
begin
  if ((Pos('tahun',LowerCase(ComboBox9.Text)) > 0) and (ComboBox8.Text='') ) or
  ((Pos('bulan',LowerCase(ComboBox9.Text)) > 0) and ((ComboBox7.Text='') or (ComboBox8.Text=''))) then begin
    ShowMessage('Silahkan Isi periode Untuk Menampilkan Data');
    exit;
  end;

  if ComboBox8.Text <= '2019' then
  begin
//    ShowMessage('masuk');
    tabel.q1.SQL.Clear;
    tabel.q1.SQL.Add('select * from n_penjagaan where isi=''ADJUST PERPERIODE'' ');
    tabel.q1.open;

    if not tabel.q1.IsEmpty then
    begin
      ShowMessage('Stok perpriode tidak bisa ditampilkan karena sedang ada koreksi adjust ');
      exit;
    end;

    if (tabel.server.Server = '192.168.10.10')  then
    begin
      if (Pos('tahun',LowerCase(ComboBox9.Text)) > 0)  then
      begin
        tanggal := ComboBox8.Text;
        wsatanggalefektif := 'DATE_FORMAT(tanggal_efektif, ''%Y'') < '''+tanggal+''' ';
        wtanggalefektif := 'DATE_FORMAT(tanggal_efektif, ''%Y'') = '''+tanggal+''' ';

        qstokperiode.SQL.Clear;
        qstokperiode.SQL.Add('SELECT  IF(stokawal = 0 ,''ROLLAN'',''KGAN'') AS stskain,no_lokasi,harga,tanggal_terima,tipe_kain,nama_kain,jenis_warna,kode_spk,vs.no_roll,vs.roll_induk , SUM(IF(bulan=minbln,stokawal-IFNULL(sakr.berat,0),0)) AS stokawal, '+
        '  SUM(IF(bulan=minbln,totalstokawal- IFNULL(sakr.nominal,0),0)) AS nominalstokawal,SUM(terima) AS pembelian ,SUM(totalterima) AS nominalpembelian,sum(terimatransfer) as terimatransfer,sum(totalterimatransfer) as totalterimatransfer, '+
        ' SUM(terimaretur) AS terimaretur ,  '+
        ' SUM(sapenjualanbssegel) AS sapenjualanbssegel,SUM(satotalpenjualanbssegel) AS satotalpenjualanbssegel,SUM(penjualanbssegel) AS penjualanbssegel,SUM(totalpenjualanbssegel) AS totalpenjualanbssegel, '+
        ' SUM(totalterimaretur) AS nominalterimaretur,  SUM(penjualan) AS penjualan,  SUM(totalpenjualan) AS nominalpenjualan,  SUM(penjualantransfer) AS penjualantransfer,  SUM(totalpenjualantransfer) AS totalpenjualantransfer, '+
        ' SUM(retur) retur,SUM(totalretur) AS nominalretur,SUM(beratkoreksi) AS koreksi ,SUM(totalberatkoreksi) AS nominalkoreksi ,  '+
        ' SUM(IFNULL(kr.berat,0)) AS koreksikainrusak,SUM(IFNULL(kr.nominal,0)) AS nominalkainrusak,  SUM(IF(bulan=maxbln,stokakhir - IFNULL(sakr.berat,0) - IFNULL(kr.berat,0),0)) AS stokakhir,  '+
        ' SUM(IF(bulan=maxbln,totalstokakhir - IFNULL(sakr.nominal,0) -IFNULL(kr.nominal,0),0)) AS nominal  '+
        ' FROM n_stokperioderoll_bulan vs JOIN (SELECT MIN(bulan) AS minbln,MAX(bulan) AS maxbln FROM n_stokperioderoll_bulan WHERE tahun='''+tanggal+''')  AS a '+
        ' LEFT JOIN '+
        ' (SELECT SUM(berat) AS berat,SUM(nominal) AS nominal,no_roll FROM koreksi_kainrusak WHERE '+wsatanggalefektif+'  '+
        ' GROUP BY no_roll) AS sakr ON sakr.no_roll=vs.no_roll  '+
        ' LEFT JOIN '+
        ' (SELECT SUM(berat) AS berat,SUM(nominal) AS nominal,no_roll FROM koreksi_kainrusak WHERE '+wtanggalefektif+' '+
        ' GROUP BY no_roll) AS kr ON kr.no_roll=vs.no_roll WHERE vs.tahun = '''+tanggal+''' GROUP BY vs.roll_induk '+
        ' HAVING stokawal <> 0 OR nominalstokawal <> 0 OR satotalpenjualanbssegel <> 0 OR nominalpembelian <> 0 OR totalterimatransfer <> 0 OR nominalterimaretur <> 0 OR nominalpenjualan <> 0 OR totalpenjualantransfer <> 0 '+
        ' OR totalpenjualanbssegel <> 0 OR nominalretur <> 0 OR nominalkoreksi <> 0 OR nominalkainrusak <> 0 OR stokakhir <> 0 OR nominal <> 0 ');
    //    ShowMessage(qdatainduk.sql.Text);
        qstokperiode.Active:=True;
      end
      else
      begin
        tanggal:=ComboBox8.Text+'-'+convertMonthNametoIndex(ComboBox7.Text);
        wsatanggalefektif := 'DATE_FORMAT(tanggal_efektif, ''%Y-%m'') < '''+tanggal+''' ';
        wtanggalefektif := 'DATE_FORMAT(tanggal_efektif, ''%Y-%m'') = '''+tanggal+''' ';

    //    execView(cdasar.Text,tanggal);

        qstokperiode.SQL.Clear;
        qstokperiode.SQL.Add('SELECT  IF(stokawal = 0 ,''ROLLAN'',''KGAN'') AS stskain,no_lokasi,harga,tanggal_terima,tipe_kain,nama_kain,jenis_warna,kode_spk,vs.no_roll,vs.roll_induk , SUM(stokawal-IFNULL(sakr.berat,0)) AS stokawal, '+
        ' SUM(totalstokawal- IFNULL(sakr.nominal,0)) AS nominalstokawal,SUM(terima) AS pembelian ,SUM(totalterima) AS nominalpembelian,sum(terimatransfer) as terimatransfer,sum(totalterimatransfer) as totalterimatransfer, '+
        ' SUM(terimaretur) AS terimaretur ,  '+
        ' SUM(sapenjualanbssegel) AS sapenjualanbssegel,SUM(satotalpenjualanbssegel) AS satotalpenjualanbssegel,SUM(penjualanbssegel) AS penjualanbssegel,SUM(totalpenjualanbssegel) AS totalpenjualanbssegel, '+
        ' SUM(totalterimaretur) AS nominalterimaretur,  SUM(penjualan) AS penjualan,  SUM(totalpenjualan) AS nominalpenjualan,  SUM(penjualantransfer) AS penjualantransfer,  SUM(totalpenjualantransfer) AS totalpenjualantransfer, '+
        ' SUM(retur) retur,SUM(totalretur) AS nominalretur,SUM(beratkoreksi) AS koreksi ,SUM(totalberatkoreksi) AS nominalkoreksi ,  '+
        ' SUM(IFNULL(kr.berat,0)) AS koreksikainrusak,SUM(IFNULL(kr.nominal,0)) AS nominalkainrusak,  SUM(stokakhir - IFNULL(sakr.berat,0) - IFNULL(kr.berat,0)) AS stokakhir,  '+
        ' SUM(totalstokakhir - IFNULL(sakr.nominal,0) -IFNULL(kr.nominal,0)) AS nominal  '+
        ' FROM n_stokperioderoll_bulan vs '+
        ' LEFT JOIN '+
        ' (SELECT SUM(berat) AS berat,SUM(nominal) AS nominal,no_roll FROM koreksi_kainrusak WHERE '+wsatanggalefektif+'  '+
        ' GROUP BY no_roll) AS sakr ON sakr.no_roll=vs.no_roll  '+
        ' LEFT JOIN '+
        ' (SELECT SUM(berat) AS berat,SUM(nominal) AS nominal,no_roll FROM koreksi_kainrusak WHERE '+wtanggalefektif+' '+
        ' GROUP BY no_roll) AS kr ON kr.no_roll=vs.no_roll WHERE concat(vs.tahun,''-'',vs.bulan) = '''+tanggal+''' GROUP BY vs.roll_induk '+
        ' HAVING stokawal <> 0 OR nominalstokawal <> 0 OR satotalpenjualanbssegel <> 0 OR nominalpembelian <> 0 OR totalterimatransfer <> 0 OR nominalterimaretur <> 0 OR nominalpenjualan <> 0 OR totalpenjualantransfer <> 0 '+
        ' OR totalpenjualanbssegel <> 0 OR nominalretur <> 0 OR nominalkoreksi <> 0 OR nominalkainrusak <> 0 OR stokakhir <> 0 OR nominal <> 0 ');
    //    ShowMessage(qdatainduk.sql.Text);
        qstokperiode.Active:=True;
      end;
    end
  end
  else
  begin
    if (Pos('tahun',LowerCase(ComboBox9.Text)) > 0)  then
    begin
      qstokperiode.SQL.Clear;
      qstokperiode.SQL.Add('CALL stokperiode_baru_tahun('''+ComboBox8.Text+''') ');
      qstokperiode.ExecSQL;
    end
    else
    begin
      case ComboBox7.ItemIndex of
       0: bulan:='01';
       1: bulan:='02';
       2: bulan:='03';
       3: bulan:='04';
       4: bulan:='05';
       5: bulan:='06';
       6: bulan:='07';
       7: bulan:='08';
       8: bulan:='09';
       9: bulan:='10';
       10: bulan:='11';
       11: bulan:='12';
      end;
      tanggalawal:=combobox8.text+'-'+bulan+'-01';

      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('select DATE_FORMAT(LAST_DAY('''+tanggalawal+'''),''%d'') as tanggal');
      tabel.q1.Active:=True;
      tglakhir:=tabel.q1.fieldvalues['tanggal'];

      tanggal_akhir:=combobox8.text+'-'+bulan+'-'+tglakhir;

      qstokperiode.SQL.Clear;
      qstokperiode.SQL.Add('CALL stokperiode_baru('''+tanggalawal+''','''+tanggal_akhir+''') ');
      qstokperiode.ExecSQL;
    end;
  end;



end;

procedure Tflaporanperpriode.execView(dasar, tanggal: string);
var
  wtanggal,wsatanggal,wtanggalterima,wsatanggalterima:string;
begin
  if Pos('tahun',LowerCase(dasar)) > 0 then
  begin
    wsatanggal := 'DATE_FORMAT(tanggal, ''%Y'') < '''+tanggal+''' ';
    wsatanggalterima := 'DATE_FORMAT(tanggal_terima, ''%Y'') < '''+tanggal+''' ';

    wtanggal := 'DATE_FORMAT(tanggal, ''%Y'') = '''+tanggal+''' ';
    wtanggalterima := 'DATE_FORMAT(tanggal_terima, ''%Y'') = '''+tanggal+''' ';
  end
  else
  begin
    wsatanggal := 'DATE_FORMAT(tanggal, ''%Y-%m'') < '''+tanggal+''' ';
    wsatanggalterima := 'DATE_FORMAT(tanggal_terima, ''%Y-%m'') < '''+tanggal+''' ';

    wtanggal := 'DATE_FORMAT(tanggal, ''%Y-%m'') = '''+tanggal+''' ';
    wtanggalterima := 'DATE_FORMAT(tanggal_terima, ''%Y-%m'') = '''+tanggal+''' ';
  end;

  tabel.q1.SQL.Clear;
  tabel.q1.sql.Add(' CREATE OR REPLACE VIEW v_stokperioderoll AS SELECT ppn.terima_dari,ppn.berat_terima,tipe_kain, harga,tanggal_terima,ppn.no_roll AS no_roll,id_supplier,no_lokasi,IFNULL(dpn.roll_induk,ppn.no_roll) AS roll_induk, '+
  'nama_kain,jenis_Warna,replace(kode_spk,'','',''-'') as kode_spk,   '+
  'IFNULL(sapt.terima,0) AS saterima,                      '+
  'IFNULL(sapt.totalterima,0) AS satotalterima,                '+
  'IFNULL(satr.terimaretur,0) AS saterimaretur,            '+
  'IFNULL(satr.totalterimaretur,0) AS satotalterimaretur,        '+
  'IFNULL(sapnj.penjualan,0) AS sapenjualan,             '+
  'IFNULL(sapnj.totalpenjualan,0) AS satotalpenjualan,             '+
  'IFNULL(sapnjbs.penjualan,0) AS sapenjualanbssegel,             '+
  'IFNULL(sapnjbs.totalpenjualan,0) AS satotalpenjualanbssegel,             '+
  'IFNULL(sabr.beratretur,0) AS saretur,                   '+
  'IFNULL(sabr.totalretur,0) AS satotalretur,                   '+
  'IFNULL(sakrs.beratkoreksi,0) AS saberatkoreksi,           '+
  'IFNULL(sakrs.totalkoreksi,0) AS satotalkoreksi,           '+
  '(IFNULL(sapt.terima,0)+IFNULL(saptrs.terima,0)+IFNULL(satr.terimaretur,0))-(IFNULL(sapnj.penjualan,0)+IFNULL(sapnjrs.penjualan,0)+IFNULL(sabr.beratretur,0)+IFNULL(sakrs.beratkoreksi,0)) AS stokawal,  '+
  '(IFNULL(sapt.totalterima,0)+IFNULL(saptrs.totalterima,0)+IFNULL(satr.totalterimaretur,0))-(IFNULL(sapnj.totalpenjualan,0)+IFNULL(sapnjrs.totalpenjualan,0)+IFNULL(sabr.totalretur,0)+IFNULL(sakrs.totalkoreksi,0)) AS totalstokawal,  '+
  'IFNULL(pt.terima,0) AS terima,                                                                                                                     '+
  'IFNULL(pt.totalterima,0) AS totalterima,                                                                                                                     '+
  'IFNULL(ptrs.terima,0) AS terimatransfer,                                                                                                                     '+
  'IFNULL(ptrs.totalterima,0) AS totalterimatransfer,                                                                                                                     '+
  'IFNULL(tr.terimaretur,0) AS terimaretur,                                                                                                           '+
  'IFNULL(tr.totalterimaretur,0) AS totalterimaretur, '+
  'IFNULL(tr2.totalterimareturnonhpp,0) AS totalterimareturnonhpp, '+
  'IFNULL(pnj.penjualan,0) AS penjualan,           '+
  'IFNULL(pnj.totalpenjualan,0) AS totalpenjualan, '+
  'IFNULL(pnjrs.penjualan,0) AS penjualantransfer,           '+
  'IFNULL(pnjrs.totalpenjualan,0) AS totalpenjualantransfer, '+
  'IFNULL(pnj2.totalpenjualan,0) AS totalpenjualannonhpp, '+
  'IFNULL(pnjbs.penjualan,0) AS penjualanbssegel,             '+
  'IFNULL(pnjbs.totalpenjualan,0) AS totalpenjualanbssegel,             '+

  'IFNULL(br.beratretur,0) AS retur,                                                                                                                          '+
  'IFNULL(br.totalretur,0) AS totalretur,  '+
  'IFNULL(krs.beratkoreksi,0) AS beratkoreksi,                                                                                                                '+
  'IFNULL(krs.totalkoreksi,0) AS totalberatkoreksi, '+
  '((IFNULL(sapt.terima,0)+IFNULL(saptrs.terima,0)+IFNULL(satr.terimaretur,0))-(IFNULL(sapnj.penjualan,0)+IFNULL(sapnjrs.penjualan,0)+IFNULL(sabr.beratretur,0)+IFNULL(sakrs.beratkoreksi,0))+          '+
  'IFNULL(pt.terima,0)+IFNULL(ptrs.terima,0)+IFNULL(tr.terimaretur,0))-(IFNULL(pnj.penjualan,0)+IFNULL(pnjrs.penjualan,0)+IFNULL(br.beratretur,0)+IFNULL(krs.beratkoreksi,0)) AS stokakhir,          '+

  '((IFNULL(sapt.totalterima,0)+IFNULL(saptrs.totalterima,0)+IFNULL(satr.totalterimaretur,0))-(IFNULL(sapnj.totalpenjualan,0)+IFNULL(sapnjrs.totalpenjualan,0)+IFNULL(sabr.totalretur,0)+IFNULL(sakrs.totalkoreksi,0))+          '+
  'IFNULL(pt.totalterima,0)+IFNULL(ptrs.totalterima,0)+IFNULL(tr.totalterimaretur,0))-(IFNULL(pnj.totalpenjualan,0)+IFNULL(pnjrs.totalpenjualan,0)+IFNULL(br.totalretur,0)+IFNULL(krs.totalkoreksi,0)) AS totalstokakhir          '+

  'FROM  perincian_penerimaanstok ppn join detail_penerimaanstok using(no_detail) join pembelian_kainstok pks using(no_terima)   LEFT JOIN data_pecahroll dpn ON dpn.roll2=ppn.no_roll '+
  'join kain k using(id_kain) join warna w using(id_Warna) '+

  'LEFT JOIN                                                                                                                                       '+
  '(SELECT ppn.no_roll AS no_roll,IFNULL(ppn.berat,0) AS terima,IFNULL(ppn.berat, 0)*harga as totalterima FROM detail_penerimaanstok dpk JOIN                                                '+
  'perincian_penerimaanstok ppn ON dpk.no_detail = ppn.no_detail JOIN pembelian_kainstok pk USING(no_terima) WHERE '+wsatanggalterima+' '+
  'and (pk.jenis_penerimaan=''PEMBELIAN'')  GROUP BY no_roll )                                                                                         '+
  'AS sapt ON sapt.no_roll=ppn.no_roll                                                                                                               '+
  'LEFT JOIN                                                                                                                                       '+
  '(SELECT ppn.no_roll AS no_roll,IFNULL(ppn.berat,0) AS terima,IFNULL(ppn.berat, 0)*harga as totalterima FROM detail_penerimaanstok dpk JOIN                                                '+
  'perincian_penerimaanstok ppn ON dpk.no_detail = ppn.no_detail JOIN pembelian_kainstok pk USING(no_terima) WHERE '+wsatanggalterima+' '+
  'and (pk.jenis_penerimaan=''TRANSFER STOK'')  GROUP BY no_roll )                                                                                         '+
  'AS saptrs ON saptrs.no_roll=ppn.no_roll                                                                                                               '+
  'LEFT JOIN                                                                                                                                        '+
  '(SELECT ppn.no_roll   AS no_roll,IFNULL(ppn.berat,0) AS terimaretur, '+
  ' IFNULL(ppn.berat, 0)*(select harga_beli from detail_pengeluaranstok dp join detail_returpenjualanstok dr on dp.no_detail=dr.no_Detailpenjualan  where dr.no_detail=dpk.no_detail) as totalterimaretur  '+
  'FROM detail_penerimaanstok dpk JOIN perincian_penerimaanstok ppn ON dpk.no_detail = ppn.no_detail                                                '+
  'JOIN pembelian_kainstok pk USING(no_terima) WHERE '+wsatanggalterima+' AND pk.jenis_penerimaan=''RETURAN''                         '+
  'GROUP BY ppn.no_roll)                                                                                                                              '+
  'AS satr ON satr.no_roll=ppn.no_roll                                                                                                                '+
  'LEFT JOIN                                                                                                                                          '+
  '(SELECT pps.no_roll,SUM(pps.berat) AS penjualan,SUM(pps.berat*(select harga from detail_penerimaanstok join perincian_penerimaanstok using(no_detail) where no_roll=pps.no_roll)) AS totalpenjualan    '+
  'FROM penjualan_kainstok pk JOIN detail_pengeluaranstok dp USING(no_pengeluaran) JOIN perincian_pengeluaranstok pps USING(no_detail) WHERE '+wsatanggal+' AND (pk.jenis_penerimaan=''PEMBELIAN'' or pk.jenis_penerimaan=''TRANSFER STOK'') AND penjualan_melalui=''TRANSAKSI''   '+
  'GROUP BY no_roll)                                                                                                                                 '+
  'AS sapnj ON sapnj.no_roll=ppn.no_roll                                                                                                            '+
  'LEFT JOIN                                                                                                                                          '+
  '(SELECT pps.no_roll,SUM(pps.berat) AS penjualan,SUM(pps.berat * harga) AS totalpenjualan    '+
  'FROM penjualan_kainstok pk JOIN detail_pengeluaranstok dp USING(no_pengeluaran) JOIN perincian_pengeluaranstok pps USING(no_detail) WHERE '+wsatanggal+' AND (pk.jenis_penerimaan=''PEMBELIAN'' or pk.jenis_penerimaan=''TRANSFER STOK'') AND penjualan_melalui=''PENJUALAN BS SEGEL''   '+
  'GROUP BY no_roll)                                                                                                                                 '+
  'AS sapnjbs ON sapnjbs.no_roll=ppn.no_roll                                                                                                            '+
  'LEFT JOIN                                                                                                                                          '+
  '(SELECT pps.no_roll,SUM(pps.berat) AS penjualan,SUM(pps.berat*(select harga from detail_penerimaanstok join perincian_penerimaanstok using(no_detail) where no_roll=pps.no_roll)) AS totalpenjualan    '+
  'FROM penjualan_kainstok pk JOIN detail_pengeluaranstok dp USING(no_pengeluaran) JOIN perincian_pengeluaranstok pps USING(no_detail) WHERE '+wsatanggal+' AND (pk.jenis_penerimaan=''PEMBELIAN'' or pk.jenis_penerimaan=''TRANSFER STOK'') AND penjualan_melalui=''TRANSFER STOK''   '+
  'GROUP BY no_roll)                                                                                                                                 '+
  'AS sapnjrs ON sapnjrs.no_roll=ppn.no_roll                                                                                                            '+
  'LEFT JOIN                                                                                                                                        '+
  '(SELECT pd2.no_roll,IFNULL(SUM(pd2.berat),0) AS beratretur,IFNULL(SUM(dp2.harga*pd2.berat),0) AS totalretur                                           '+
  'FROM perincian_detailreturpenerimaanstok pd2                                                                                                    '+
  'JOIN detail_returpembelianstok dr                                                                                                               '+
  ' ON pd2.no_detail=dr.no_detail JOIN  detail_penerimaanstok dp2 ON dp2.no_detail=dr.no_detailpenerimaan JOIN                                     '+
  ' retur_pembelianstok k2 USING(no_retur) WHERE '+wsatanggal+' GROUP BY no_roll)                                    '+
  ' AS sabr ON sabr.no_roll=ppn.no_roll                                                                                                           '+
  'LEFT JOIN                                                                                                                                      '+
  '(SELECT pps.no_roll,SUM(pps.berat) AS beratkoreksi,SUM(pps.berat*(select harga from detail_penerimaanstok join perincian_penerimaanstok using(no_detail) where no_roll=pps.no_roll)) AS totalkoreksi                                                         '+
  'FROM                                                                                                                                          '+
  'penjualan_kainstok pk JOIN detail_pengeluaranstok dp                                                                                          '+
  'USING(no_pengeluaran) JOIN perincian_pengeluaranstok pps USING(no_detail)                                                                     '+
  'WHERE '+wsatanggal+' AND                                                                                          '+
  '(pk.jenis_penerimaan=''PEMBELIAN'' or pk.jenis_penerimaan=''TRANSFER STOK'') AND penjualan_melalui!=''TRANSAKSI'' AND penjualan_melalui!=''KASIR'' AND penjualan_melalui!=''TRANSFER STOK'' '+
  'GROUP BY no_roll)                                                                                                                             '+
  'AS sakrs ON sakrs.no_roll=ppn.no_roll                                                                                                         '+

  'LEFT JOIN                                                                                                                                     '+
  '(SELECT ppn.no_roll AS no_roll,IFNULL(ppn.berat,0) AS terima,IFNULL(ppn.berat, 0)*harga as totalterima FROM detail_penerimaanstok dpk JOIN                                              '+
  'perincian_penerimaanstok ppn ON dpk.no_detail = ppn.no_detail JOIN pembelian_kainstok pk USING(no_terima) WHERE '+wtanggalterima+'  '+
  'AND (pk.jenis_penerimaan=''PEMBELIAN'')  GROUP BY no_roll )                                                                                         '+
  'AS pt ON pt.no_roll=ppn.no_roll                                                                                                                   '+
  'LEFT JOIN                                                                                                                                     '+
  '(SELECT ppn.no_roll AS no_roll,IFNULL(ppn.berat,0) AS terima,IFNULL(ppn.berat, 0)*harga as totalterima FROM detail_penerimaanstok dpk JOIN                                              '+
  'perincian_penerimaanstok ppn ON dpk.no_detail = ppn.no_detail JOIN pembelian_kainstok pk USING(no_terima) WHERE '+wtanggalterima+'  '+
  'AND (pk.jenis_penerimaan=''TRANSFER STOK'')  GROUP BY no_roll )                                                                                         '+
  'AS ptrs ON ptrs.no_roll=ppn.no_roll                                                                                                                   '+
  'LEFT JOIN                                                                                                                                         '+
  '(SELECT ppn.no_roll AS no_roll,IFNULL(ppn.berat,0) AS terimaretur, '+
  'IFNULL(ppn.berat, 0)*(select harga_beli from detail_pengeluaranstok dp join detail_returpenjualanstok dr on dp.no_detail=dr.no_Detailpenjualan  where dr.no_detail=dpk.no_detail) as totalterimaretur '+
  'FROM detail_penerimaanstok dpk JOIN perincian_penerimaanstok ppn ON dpk.no_detail = ppn.no_detail                                                '+
  'JOIN pembelian_kainstok pk USING(no_terima) WHERE '+wtanggalterima+' AND pk.jenis_penerimaan=''RETURAN''                          '+
  'GROUP BY ppn.no_roll) AS tr ON tr.no_roll=ppn.no_roll                                                                                              '+

  'LEFT JOIN                                                                                                                                         '+
  '(SELECT ppn.no_roll   AS no_roll,IFNULL(ppn.berat,0) AS terimaretur,IFNULL(ppn.berat, 0)*(select harga from detail_pengeluaranstok where no_detail=drp.no_detailpenjualan) as totalterimareturnonhpp                                  '+
  'FROM detail_penerimaanstok dpk JOIN perincian_penerimaanstok ppn ON dpk.no_detail = ppn.no_detail                                                 '+
  'JOIN pembelian_kainstok pk USING(no_terima) join detail_returpenjualanstok drp on drp.no_detail=dpk.no_detail WHERE '+wtanggalterima+' AND pk.jenis_penerimaan=''RETURAN''                          '+
  'GROUP BY ppn.no_roll) AS tr2 ON tr2.no_roll=ppn.no_roll                                                                                              '+

  'LEFT JOIN                                                                                                                                          '+
  '(SELECT pps.no_roll,SUM(pps.berat) AS penjualan,SUM(pps.berat*(select harga from detail_penerimaanstok join perincian_penerimaanstok using(no_detail) where no_roll=pps.no_roll)) AS totalpenjualan   '+
  'FROM penjualan_kainstok pk JOIN detail_pengeluaranstok dp USING(no_pengeluaran) JOIN perincian_pengeluaranstok pps USING(no_detail) WHERE '+wtanggal+' AND (pk.jenis_penerimaan=''PEMBELIAN'' or pk.jenis_penerimaan=''TRANSFER STOK'') AND penjualan_melalui=''TRANSAKSI''  '+
  'GROUP BY no_roll) AS pnj ON pnj.no_roll=ppn.no_roll                                                                                               '+
  'LEFT JOIN                                                                                                                                          '+
  '(SELECT pps.no_roll,SUM(pps.berat) AS penjualan,SUM(pps.berat * harga) AS totalpenjualan   '+
  'FROM penjualan_kainstok pk JOIN detail_pengeluaranstok dp USING(no_pengeluaran) JOIN perincian_pengeluaranstok pps USING(no_detail) WHERE '+wtanggal+' AND (pk.jenis_penerimaan=''PEMBELIAN'' or pk.jenis_penerimaan=''TRANSFER STOK'') AND penjualan_melalui=''PENJUALAN BS SEGEL''  '+
  'GROUP BY no_roll) AS pnjbs ON pnjbs.no_roll=ppn.no_roll                                                                                               '+
  'LEFT JOIN                                                                                                                                          '+
  '(SELECT pps.no_roll,SUM(pps.berat) AS penjualan,SUM(pps.berat*(select harga from detail_penerimaanstok join perincian_penerimaanstok using(no_detail) where no_roll=pps.no_roll)) AS totalpenjualan   '+
  'FROM penjualan_kainstok pk JOIN detail_pengeluaranstok dp USING(no_pengeluaran) JOIN perincian_pengeluaranstok pps USING(no_detail) WHERE '+wtanggal+' AND (pk.jenis_penerimaan=''PEMBELIAN'' or pk.jenis_penerimaan=''TRANSFER STOK'') AND penjualan_melalui=''TRANSFER STOK''  '+
  'GROUP BY no_roll) AS pnjrs ON pnjrs.no_roll=ppn.no_roll                                                                                               '+
  'LEFT JOIN                                                                                                                                          '+
  '(SELECT pps.no_roll,SUM(pps.berat) AS penjualan,SUM(pps.berat*dp.harga) AS totalpenjualan   '+
  'FROM penjualan_kainstok pk JOIN detail_pengeluaranstok dp USING(no_pengeluaran) JOIN perincian_pengeluaranstok pps USING(no_detail) WHERE '+wtanggal+' AND (pk.jenis_penerimaan=''PEMBELIAN'' or pk.jenis_penerimaan=''TRANSFER STOK'') AND penjualan_melalui=''TRANSAKSI''  '+
  'GROUP BY no_roll) AS pnj2 ON pnj2.no_roll=ppn.no_roll                                                                                               '+

  'LEFT JOIN                                                                                                                                         '+
  '(SELECT pd2.no_roll,IFNULL(SUM(pd2.berat),0) AS beratretur,IFNULL(SUM(dp2.harga*pd2.berat),0) AS totalretur                                             '+
  'FROM perincian_detailreturpenerimaanstok pd2                                                                                                       '+
  'JOIN detail_returpembelianstok dr                                                                                                                  '+
  ' ON pd2.no_detail=dr.no_detail JOIN  detail_penerimaanstok dp2 ON dp2.no_detail=dr.no_detailpenerimaan JOIN                                        '+
  ' retur_pembelianstok k2 USING(no_retur) WHERE '+wtanggal+' GROUP BY no_roll) AS br ON br.no_roll=ppn.no_roll         '+
  'LEFT JOIN                                                                                                                                          '+
  '(SELECT pps.no_roll,SUM(pps.berat) AS beratkoreksi,SUM(pps.berat*(select harga from detail_penerimaanstok join perincian_penerimaanstok using(no_detail) where no_roll=pps.no_roll)) AS totalkoreksi    '+
  'FROM                                                                                                                                               '+
  'penjualan_kainstok pk JOIN detail_pengeluaranstok dp                                                                                               '+
  'USING(no_pengeluaran) JOIN perincian_pengeluaranstok pps USING(no_detail)                                                                          '+
  'WHERE '+wtanggal+' AND                                                                                             '+
  '(pk.jenis_penerimaan=''PEMBELIAN'' or pk.jenis_penerimaan=''TRANSFER STOK'') AND penjualan_melalui!=''TRANSAKSI'' AND penjualan_melalui!=''KASIR''  AND penjualan_melalui!=''TRANSFER STOK''       '+
  'GROUP BY no_roll) AS krs ON krs.no_roll=ppn.no_roll  '+
  'GROUP BY ppn.no_roll   ');
//  ' GROUP BY ppn.no_roll '+
//  ' HAVING stokawal <> 0 OR sapenjualanbssegel <> 0 OR terima <> 0 OR terimatransfer <> 0 OR terimaretur <> 0 OR penjualan <> 0 '+
//  ' OR penjualantransfer <> 0  OR penjualanbssegel <> 0 OR retur <> 0 OR beratkoreksi <> 0 OR  stokakhir <> 0 ');
  // ShowMessage(tabel.q1.SQL.Text);
//  ShowMessage('a');
   tabel.q1.ExecSQL;
//   ShowMessage('b');
end;

procedure Tflaporanperpriode.FormShow(Sender: TObject);
begin
  dtanggal.Date := now();

  cxTabSheet1.Enabled := True;
  cxTabSheet3.Enabled := True;

  cxTabSheet5.Enabled := False;

  if (tabel.server.Server = '192.168.10.10') then
  begin
    cxTabSheet1.Enabled := False;
    cxTabSheet3.Enabled := False;

    cxTabSheet5.Enabled := True;
  end;
end;

function Tflaporanperpriode.convertMonthNametoIndex(bulan: string): string;
begin
  if bulan = 'Januari' then
    Result := '01'
  else if bulan = 'Februari' then
    Result := '02'
  else if bulan = 'Maret' then
    Result := '03'
  else if bulan = 'April' then
    Result := '04'
  else if bulan = 'Mei' then
    Result := '05'
  else if bulan = 'Juni' then
    Result := '06'
  else if bulan = 'Juli' then
    Result := '07'
  else if bulan = 'Agustus' then
    Result := '08'
  else if bulan = 'September' then
    Result := '09'
  else if bulan = 'Oktober' then
    Result := '10'
  else if bulan = 'November' then
    Result := '11'
  else if bulan = 'Desember' then
    Result := '12'
  else
    Result := '00';
end;

procedure Tflaporanperpriode.cdasarChange(Sender: TObject);
begin
  if pos('tahun',LowerCase(cdasar.Text)) > 0 then
  begin
//    ComboBox3.Left := ComboBox3.Left - ComboBox4.Width - 8;
//    button5.Left := button5.Left - ComboBox4.Width - 8;
    ComboBox3.Left := 8;
    button5.Left := 160;
    ComboBox4.Visible:=false;
  end
  else
  begin
//    ComboBox3.Left := ComboBox3.Left + ComboBox4.Width + 8;
//    button5.Left := button5.Left + ComboBox4.Width + 8;
    ComboBox3.Left := 160;
    button5.Left := 320;
    ComboBox4.Visible:=true;
  end;
end;

end.
