unit ufhasil_pemasangan;

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
  cxDBData, Vcl.StdCtrls, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, DBAccess,
  Uni, MemDS, Vcl.ExtCtrls;

type
  Tfhasil_pemasangan = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    qhasilpasang: TUniQuery;
    Uhasilpasang: TUniDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    qhasilpasangid: TIntegerField;
    qhasilpasangno_transaksi: TStringField;
    qhasilpasangnama: TStringField;
    cxGrid1DBTableView1id: TcxGridDBColumn;
    cxGrid1DBTableView1no_transaksi: TcxGridDBColumn;
    cxGrid1DBTableView1nama: TcxGridDBColumn;
    Button1: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
    id : string;
  public
    { Public declarations }
  end;

var
  fhasil_pemasangan: Tfhasil_pemasangan;

implementation

uses
  uftabel, ufhasil_perapihan;

{$R *.dfm}

procedure Tfhasil_pemasangan.Button1Click(Sender: TObject);
begin
 if id = '' then
 begin
  ShowMessage('Silahkan pilih data yang akan dihapus !');
  Exit;
 end;

 if MessageDlg('Apakahandayakin akan menghapus notransaksi '''+qhasilpasangno_transaksi.AsString+''' dengan nama '''+qhasilpasangnama.Value+''' ?',mtInformation,[mbYes,mbNo],0) =mrYes then
 begin
   tabel.q1.SQL.Clear;
   tabel.q1.SQL.Add('delete from relasi_buku_besar where id = '''+id+''' ');
   tabel.q1.ExecSQL;

   qhasilpasang.Active := False;
   qhasilpasang.Active := True;

   fhasil_perapihan.qhasil_perapihan.Active := False;
   fhasil_perapihan.qhasil_perapihan.Active := True;

    id := '';

   ShowMessage('Data berhasil dihapus !');
 end;

end;

procedure Tfhasil_pemasangan.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
 id := qhasilpasangid.AsString;
end;

procedure Tfhasil_pemasangan.Edit1Change(Sender: TObject);
begin
 qhasilpasang.SQL.Clear;
 qhasilpasang.SQL.Add('select * from relasi_buku_besar '+
 'WHERE no_transaksi like ''%'+edit1.Text+'%'' or nama like ''%'+edit1.Text+'%'' ');
 qhasilpasang.ExecSQL;
end;

procedure Tfhasil_pemasangan.FormShow(Sender: TObject);
begin
 qhasilpasang.Active := False;
 qhasilpasang.Active :=True;

 id := '';
 Edit1.Text := '';
end;

end.
