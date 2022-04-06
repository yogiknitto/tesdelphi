unit ufdatapemasangan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics, cxControls,
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
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB,
  cxDBData, DBAccess, Uni, MemDS, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Vcl.StdCtrls;

type
  Tfdatapemasangan = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    qdata: TUniQuery;
    dsdata: TUniDataSource;
    qdatano: TIntegerField;
    qdatano_order: TStringField;
    qdataatas_nama: TStringField;
    qdatabank: TStringField;
    qdatajumlah_uang: TFloatField;
    qdatatanggal_transfer: TDateTimeField;
    qdatastatus: TIntegerField;
    qdatakode_kas: TIntegerField;
    qdataid_karyawan: TIntegerField;
    qdatano_konfirmasi: TIntegerField;
    qdatastatus_verifikasi: TStringField;
    qdatanominal: TFloatField;
    qdataketerangan: TStringField;
    cxGrid1DBTableView1no_order: TcxGridDBColumn;
    cxGrid1DBTableView1atas_nama: TcxGridDBColumn;
    cxGrid1DBTableView1bank: TcxGridDBColumn;
    cxGrid1DBTableView1jumlah_uang: TcxGridDBColumn;
    cxGrid1DBTableView1tanggal_transfer: TcxGridDBColumn;
    qdatamenit: TFloatField;
    cxGrid1DBTableView1menit: TcxGridDBColumn;
    Timer1: TTimer;
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fdatapemasangan: Tfdatapemasangan;

implementation

{$R *.dfm}

uses uftabel;

procedure Tfdatapemasangan.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  RowColor: TBrush;
  waktu:real;
begin

waktu := Sender.DataController.GetValue(AViewInfo.GridRecord.RecordIndex, 5);

  if waktu>20 then begin
    if (AViewInfo.Selected) and (Screen.ActiveControl = Sender.Site) then
    begin
      ACanvas.Brush.Color := clSkyBlue;
      ACanvas.Font.Color := clBlack;
    end
    else
    begin
      Acanvas.Brush.Color := clRed;
      ACanvas.Font.Color := clBlack;
    end;
  end else begin
    if (AViewInfo.Selected) and (Screen.ActiveControl = Sender.Site) then
    begin
      ACanvas.Brush.Color := clSkyBlue;
      ACanvas.Font.Color := clBlack;
    end
    else
    begin
      Acanvas.Brush.Color := clWhite;
      ACanvas.Font.Color := clBlack;
    end;
  end;
end;

procedure Tfdatapemasangan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Timer1.Enabled := False;
end;

procedure Tfdatapemasangan.FormShow(Sender: TObject);
begin
  qdata.Active := False;

  qdata.SQL.Clear;
  qdata.SQL.Add('SELECT atk.*,TIME_TO_SEC(TIMEDIFF(NOW(),atk.tanggal_transfer))/60 AS menit FROM `a_tempdetail_konfirmasipembayaran`atk WHERE status_verifikasi=''BELUM DI VERIFIKASI'' ');
  qdata.Active:=true;

  Timer1.Enabled := True;
end;

procedure Tfdatapemasangan.Timer1Timer(Sender: TObject);
begin
  qdata.Active:=False;
  qdata.Active:=True;
end;

end.
