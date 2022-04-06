unit ufcaricustomer_dp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, Vcl.StdCtrls,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, acPNG, Vcl.ExtCtrls, DBAccess, Uni, MemDS,
  dxSkinTheBezier, cxDataControllerConditionalFormattingRulesManagerDialog;

type
  Tfcaricustomer_dp = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Image3: TImage;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    tcustomer: TEdit;
    Panel3: TPanel;
    Button3: TButton;
    Button4: TButton;
    Button1: TButton;
    qdata: TUniQuery;
    qdataid_customer: TIntegerField;
    qdatanama: TStringField;
    qdatatelepon: TStringField;
    qdatafaximile: TStringField;
    qdataemail: TStringField;
    qdatacontact_person: TStringField;
    qdataalamat: TStringField;
    qdatastatus: TStringField;
    qdatanpwp: TStringField;
    qdatatermin: TIntegerField;
    qdatakredit_limit: TFloatField;
    qdataid_salesman: TIntegerField;
    qdataid_kategoricustomer: TIntegerField;
    qdataaktif: TIntegerField;
    qdatakota: TStringField;
    dsdata: TUniDataSource;
    cxGrid1DBTableView1nama: TcxGridDBColumn;
    cxGrid1DBTableView1telepon: TcxGridDBColumn;
    cxGrid1DBTableView1alamat: TcxGridDBColumn;
    qdatakode: TStringField;
    cxGrid1DBTableView1kode: TcxGridDBColumn;
    cxGrid1DBTableView1status: TcxGridDBColumn;
    procedure Button4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure tcustomerKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tcustomerKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcaricustomer_dp: Tfcaricustomer_dp;
  v_posisiform : string;

implementation

{$R *.dfm}

uses
  uftabel, uftambahkonfirmasi;

procedure Tfcaricustomer_dp.Button1Click(Sender: TObject);
var
  kode: string;
begin
  kode := '%' + trim(tcustomer.Text) + '%';
  qdata.SQL.Clear;
  qdata.SQL.Add('SELECT nkd.kode,c.* FROM customer c JOIN n_kodeunik_6digit nkd USING(id_customer) '+
  ' LEFT JOIN (SELECT cse.id_customer FROM customer_sap_exclusion cse JOIN  '+
  ' (SELECT nama_cabang FROM `data_cabang`) cb ON cse.kode_cabang=cb.nama_cabang) csd   '+
  ' ON c.`id_customer`=csd.id_customer    '+
  ' WHERE csd.id_customer IS NULL and nama like ''' + kode + ''' order by nama asc   ');
  qdata.Active := true;

  if qdata.RecordCount = 0 then
  begin
    qdata.SQL.Clear;
    qdata.SQL.Add('SELECT nkd.kode,c.* FROM customer c JOIN n_kodeunik_6digit nkd USING(id_customer) '+
    ' LEFT JOIN (SELECT cse.id_customer FROM customer_sap_exclusion cse JOIN  '+
    ' (SELECT nama_cabang FROM `data_cabang`) cb ON cse.kode_cabang=cb.nama_cabang) csd   '+
    ' ON c.`id_customer`=csd.id_customer    '+
    ' WHERE csd.id_customer IS NULL and telepon like ''' + kode + ''' order by nama asc   ');
    qdata.Active := true;
  end;

  cxGrid1.setfocus;
end;

procedure Tfcaricustomer_dp.Button3Click(Sender: TObject);
begin
  v_konfirmasi_id_customer := qdataid_customer.AsString;
  ftambahkonfirmasi.tnama.Text := qdatanama.Value;
  Close;
end;

procedure Tfcaricustomer_dp.Button4Click(Sender: TObject);
begin
  Close;
end;

procedure Tfcaricustomer_dp.FormShow(Sender: TObject);
begin
  tcustomer.text := '';
  tcustomer.setfocus;
  qdata.SQL.Clear;
  qdata.SQL.Add('SELECT nkd.kode,c.* FROM customer c JOIN n_kodeunik_6digit nkd USING(id_customer) '+
  ' LEFT JOIN (SELECT cse.id_customer FROM customer_sap_exclusion cse JOIN  '+
  ' (SELECT nama_cabang FROM `data_cabang`) cb ON cse.kode_cabang=cb.nama_cabang) csd   '+
  ' ON c.`id_customer`=csd.id_customer    '+
  ' WHERE csd.id_customer IS NULL and nama =''0000000''   ');
  qdata.Active := true;
end;

procedure Tfcaricustomer_dp.tcustomerKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_return then
  begin
    Button1Click(nil);
  end;
end;

procedure Tfcaricustomer_dp.tcustomerKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  nomorhprelasi, cek1 : string;
begin

  cek1 := Copy(Trim(tcustomer.Text), 1, 1);

  if (cek1 = '0') or (cek1 = '+') or (cek1 = '6') then
  begin
    nomorhprelasi := tcustomer.Text;

    nomorhprelasi := StringReplace(nomorhprelasi, '-', '', [rfReplaceAll, rfIgnoreCase]);
    nomorhprelasi := StringReplace(nomorhprelasi, '+', '', [rfReplaceAll, rfIgnoreCase]);
    nomorhprelasi := StringReplace(nomorhprelasi, ' ', '', [rfReplaceAll, rfIgnoreCase]);

    cek1 := Copy(nomorhprelasi, 1, 1);

    if (cek1 = '0') then
    begin
      delete(nomorhprelasi, 1, 1);
      nomorhprelasi := '' + nomorhprelasi;
    end else if (cek1 = '6') then begin
      delete(nomorhprelasi, 1, 2);
      nomorhprelasi := '' + nomorhprelasi;
    end;

    tcustomer.Text := nomorhprelasi;
  end;
end;

end.

