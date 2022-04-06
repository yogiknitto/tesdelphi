unit ufsaldocustomer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, DBAccess, Uni, MemDS,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Buttons, dxSkinTheBezier,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  Tfsaldocustomer = class(TForm)
    Panel1: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel2: TPanel;
    qdata: TUniQuery;
    dsqdata: TUniDataSource;
    qdatano: TIntegerField;
    qdataid_customer: TIntegerField;
    qdatabank: TStringField;
    qdatanama: TStringField;
    qdatajml_uang: TFloatField;
    cxGrid1DBTableView1no: TcxGridDBColumn;
    cxGrid1DBTableView1bank: TcxGridDBColumn;
    cxGrid1DBTableView1nama: TcxGridDBColumn;
    cxGrid1DBTableView1jml_uang: TcxGridDBColumn;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fsaldocustomer: Tfsaldocustomer;

implementation

{$R *.dfm}

uses uftabel, ufmenuutama;

procedure Tfsaldocustomer.BitBtn1Click(Sender: TObject);
var totalbayar,admin:string; totbayar,adm:Real;
begin

      fmenuutama.vpembayaran.Open;
      fmenuutama.vpembayaran.Append;
      fmenuutama.vpembayaranjenis_pembayaran.Value:='TT';
      fmenuutama.vpembayaranid_jenispembayar.Value:='';
      fmenuutama.vpembayaranjumlah_uang.Value:=qdata.FieldValues['jml_uang'];
      fmenuutama.vpembayaranadm.value:=0;
      fmenuutama.vpembayarannama_bank.Value:=qdata.FieldValues['bank'];
      fmenuutama.vpembayarantotal.Value:=qdata.FieldValues['jml_uang'];
      fmenuutama.vpembayaranno_transaksi.Value:=qdata.FieldValues['no'];
      fmenuutama.vpembayaran.Post;

      totalbayar := fmenuutama.cxGrid2DBTableView1.DataController.Summary.FooterSummaryTexts[0];
      totalbayar := stringreplace(totalbayar,',','',[rfreplaceall,rfignorecase]);
      totalbayar := stringreplace(totalbayar,'.','',[rfreplaceall,rfignorecase]);
      totbayar:=StrToFloat(totalbayar);
      admin := fmenuutama.cxGrid2DBTableView1.DataController.Summary.FooterSummaryTexts[1];
      admin := stringreplace(admin,',','',[rfreplaceall,rfignorecase]);
      admin := stringreplace(admin,'.','',[rfreplaceall,rfignorecase]);
      adm:=StrToFloat(admin);
      v_totalbayar:=totbayar;
       fmenuutama.hitung;
      close;
end;

end.
