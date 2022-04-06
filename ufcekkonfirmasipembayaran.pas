unit ufcekkonfirmasipembayaran;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid;

type
  Tfcekkonfirmasipembayaran = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1no_order: TcxGridDBColumn;
    cxGrid1DBTableView1atas_nama: TcxGridDBColumn;
    cxGrid1DBTableView1bank: TcxGridDBColumn;
    cxGrid1DBTableView1jumlah_uang: TcxGridDBColumn;
    cxGrid1DBTableView1tanggal_transfer: TcxGridDBColumn;
    cxGrid1DBTableView1sts: TcxGridDBColumn;
    procedure Button2Click(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcekkonfirmasipembayaran: Tfcekkonfirmasipembayaran;

implementation

uses
  uftabel;

{$R *.dfm}

procedure Tfcekkonfirmasipembayaran.Button1Click(Sender: TObject);
begin
  if tabel.qcekkonfirmasists.Value = 'ADA' then ShowMessage('Data tidak bisa dihapus')
  else
  begin
    if MessageDlg('Apakah anda yakin akan menghapus konfirmasi pembayaran atas nama ' + UpperCase(tabel.qcekkonfirmasiatas_nama.Value) +' ?', mtConfirmation, [mbYes,mbNo],0)=mrYes then
    begin

      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('delete from detail_konfirmasipembayaran where no='''+ tabel.qcekkonfirmasino.Text+''' ');
      tabel.q1.ExecSQL;
      ShowMessage('Berhasil di hapus');
      tabel.qkonfirmasi.Refresh;
      close;
    end;
  end;
end;

procedure Tfcekkonfirmasipembayaran.Button2Click(Sender: TObject);
begin
  close;
end;

procedure Tfcekkonfirmasipembayaran.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
   if Sender.DataController.GetValue(AViewInfo.GridRecord.RecordIndex, 0) = 'ADA' then
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

end.
