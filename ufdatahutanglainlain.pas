unit ufdatahutanglainlain;

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
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, DBAccess, Uni, MemDS, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, ExtCtrls, StdCtrls, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  Tfdatahutanglainlain = class(TForm)
    Panel1: TPanel;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel2: TPanel;
    qdata: TUniQuery;
    dsqdata: TUniDataSource;
    qdatano_transaksi: TStringField;
    qdatatanggal: TDateField;
    qdatajenis: TStringField;
    qdatadari: TStringField;
    qdatanocg: TStringField;
    qdatabankcg: TStringField;
    qdatakode_kas: TIntegerField;
    qdatajumlah: TFloatField;
    qdatakode_perkiraan: TIntegerField;
    qdataketerangan: TStringField;
    qdatastatus: TIntegerField;
    qdatatanggal_cair: TDateField;
    qdatano_urut: TIntegerField;
    qdataid: TIntegerField;
    qdatanama: TStringField;
    qdataid_customer: TIntegerField;
    cxGrid1DBTableView2no_transaksi: TcxGridDBColumn;
    cxGrid1DBTableView2tanggal: TcxGridDBColumn;
    cxGrid1DBTableView2dari: TcxGridDBColumn;
    cxGrid1DBTableView2jumlah: TcxGridDBColumn;
    cxGrid1DBTableView2keterangan: TcxGridDBColumn;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
      stsmasuk:string;
    { Public declarations }
  end;

var
  fdatahutanglainlain: Tfdatahutanglainlain;

implementation

uses
  uftabel, ufdatarefund;

{$R *.dfm}

procedure Tfdatahutanglainlain.Button1Click(Sender: TObject);
begin
  if stsmasuk='refund' then
  begin
    fdatarefund.Edit8.Text:=qdatano_transaksi.Value;
    fdatarefund.Edit1.Text := fdatarefund.qdatano_refund.Text;
    fdatarefund.vnotransaksi:=qdatano_transaksi.Value;
    fdatarefund.vnorefund := fdatarefund.qdatano_refund.Text;
  end;
//  else
//    fpembayaranpiutang.Edit8.Text:=qdatano_transaksi.Value;
close;
end;

procedure Tfdatahutanglainlain.Button2Click(Sender: TObject);
begin
//  ftransaksikas.Show;
//  ftransaksikas.filtergridhutanglainlain(qdatadari.Value,qdataketerangan.Value,qdatajumlah.Text);
end;

end.
