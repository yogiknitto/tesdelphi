unit ufcekrekeningkoran;

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
  cxDBData, Vcl.StdCtrls, Vcl.Buttons, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid;

type
  Tfcekrekeningkoran = class(TForm)
    Panel1: TPanel;
    cxGrid6: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridLevel4: TcxGridLevel;
    cxGridDBTableView4id_transaksi: TcxGridDBColumn;
    cxGridDBTableView4tanggal: TcxGridDBColumn;
    cxGridDBTableView4keterangan: TcxGridDBColumn;
    cxGridDBTableView4keterangan2: TcxGridDBColumn;
    cxGridDBTableView4no_rekening: TcxGridDBColumn;
    cxGridDBTableView4bank: TcxGridDBColumn;
    cxGridDBTableView4sisa: TcxGridDBColumn;
    Panel2: TPanel;
    BitBtn15: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn15Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcekrekeningkoran: Tfcekrekeningkoran;

implementation

uses
  ufmenuutama, ufpemasanganmanual;

{$R *.dfm}

procedure Tfcekrekeningkoran.BitBtn15Click(Sender: TObject);
begin
fpemasanganmanual.trekening.Text:=fmenuutama.qcekrekkoranbeforeno_rekening.Value;
fpemasanganmanual.tbank.Text:=fmenuutama.qcekrekkoranbeforebank.Value;
fpemasanganmanual.tnominal.Text:=formatcurr('#,##',fmenuutama.qcekrekkoranbeforejumlah.Value);
fpemasanganmanual.mket.Lines.Clear;
fpemasanganmanual.mket.Lines.Add(fmenuutama.qcekrekkoranbeforeketerangan.Value);
v_idrekening:=IntToStr(fmenuutama.qcekrekkoranbeforeid_transaksi.Value);
fpemasanganmanual.ShowModal;
end;

procedure Tfcekrekeningkoran.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  fmenuutama.timercekrekkoranbefore.Enabled:=true;
end;

end.
