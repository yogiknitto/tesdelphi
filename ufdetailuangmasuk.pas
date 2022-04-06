unit ufdetailuangmasuk;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinOffice2010Black,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  MemDS, DBAccess, Uni, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Vcl.StdCtrls, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue;

type
  Tfdetailuangmasuk = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    qdata: TUniQuery;
    dsqdata: TUniDataSource;
    qdata2: TUniQuery;
    dsqdata2: TUniDataSource;
    Label1: TLabel;
    Label2: TLabel;
    qdatatanggal: TDateField;
    qdatacustomer_code_sap: TStringField;
    qdatanama: TStringField;
    qdatajml: TFloatField;
    cxGrid1DBTableView1tanggal: TcxGridDBColumn;
    cxGrid1DBTableView1customer_code_sap: TcxGridDBColumn;
    cxGrid1DBTableView1nama: TcxGridDBColumn;
    cxGrid1DBTableView1jml: TcxGridDBColumn;
    qdata2tanggal: TDateField;
    qdata2customer_code_sap: TStringField;
    qdata2nama: TStringField;
    qdata2jml: TFloatField;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    q3: TUniQuery;
    dsq3: TUniDataSource;
    q3urutan: TIntegerField;
    q3id: TIntegerField;
    q3tabel: TStringField;
    q3tanggal_input: TDateTimeField;
    q3no_transaksi: TStringField;
    q3ref_no: TStringField;
    q3id_jenis: TStringField;
    q3status_sync: TStringField;
    q3jenis_transaksi: TStringField;
    q3updatedate: TDateField;
    q3updatetime: TTimeField;
    cxGridDBTableView2urutan: TcxGridDBColumn;
    cxGridDBTableView2no_transaksi: TcxGridDBColumn;
    cxGridDBTableView2ref_no: TcxGridDBColumn;
    cxGridDBTableView2status_sync: TcxGridDBColumn;
    qdatano: TIntegerField;
    Button1: TButton;
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fdetailuangmasuk: Tfdetailuangmasuk;

implementation

uses
  uftabel;

{$R *.dfm}

procedure Tfdetailuangmasuk.Button1Click(Sender: TObject);
var notransaksi:string;
begin
notransaksi:=IntToStr(qdatano.Value);
q3.SQL.Clear;
q3.SQL.Add('SELECT * FROM sinkronisasi_data JOIN sinkronisasi_progres USING(urutan) '+
' WHERE tabel=''Konfirmasi_pembayaran'' and no_transaksi='''+notransaksi+''' ');
q3.Active:=True;

end;

procedure Tfdetailuangmasuk.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var notransaksi:string;
begin
notransaksi:=IntToStr(qdatano.Value);
q3.SQL.Clear;
q3.SQL.Add('SELECT * FROM sinkronisasi_data JOIN sinkronisasi_progres USING(urutan) '+
' WHERE tabel=''Konfirmasi_pembayaran'' and no_transaksi='''+notransaksi+''' ');
q3.Active:=True;

end;

end.
