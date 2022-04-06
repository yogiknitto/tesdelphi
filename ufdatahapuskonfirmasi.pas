unit ufdatahapuskonfirmasi;

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
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  Tfdatahapuskonfirmasi = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1no_order: TcxGridDBColumn;
    cxGrid1DBTableView1nama: TcxGridDBColumn;
    cxGrid1DBTableView1atas_nama: TcxGridDBColumn;
    cxGrid1DBTableView1jumlah_uang: TcxGridDBColumn;
    cxGrid1DBTableView1tanggal: TcxGridDBColumn;
    cxGrid1DBTableView1bank: TcxGridDBColumn;
    cxGrid1DBTableView1admin: TcxGridDBColumn;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fdatahapuskonfirmasi: Tfdatahapuskonfirmasi;

implementation

uses
  uftabel;

{$R *.dfm}

procedure Tfdatahapuskonfirmasi.Button1Click(Sender: TObject);
begin
  if MessageDlg('Apakah anda yakin akan membatalakan penghapusan konfirmasi pembayaran ' + UpperCase(tabel.qhapuskonfirmasino_order.Value) +' atas nama ' + UpperCase(tabel.qhapuskonfirmasiatas_nama.Value) +' ?', mtConfirmation, [mbYes,mbNo],0)=mrYes then
  begin

    tabel.q1.SQL.Clear;
    tabel.q1.SQL.Add('delete from n_hapus_konfirmasi where no_konfirmasi='''+ tabel.qhapuskonfirmasinokonfirmasi.Text+''' ');
    tabel.q1.ExecSQL;
    ShowMessage('Berhasil di hapus');
    tabel.qhapuskonfirmasi.Refresh;
    tabel.qkonfirmasi.Refresh;
  end;
end;

procedure Tfdatahapuskonfirmasi.Button2Click(Sender: TObject);
begin
  close;
end;

procedure Tfdatahapuskonfirmasi.FormClick(Sender: TObject);
begin
  tabel.qkonfirmasi.Active:=false;
  tabel.qkonfirmasi.Active:=true;
end;

end.
