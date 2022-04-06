unit ufperbedaanorder;

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
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, DBAccess, Uni, MemDS, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  Tfperbedaanorder = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Panel3: TPanel;
    qasli: TUniQuery;
    qsementara: TUniQuery;
    dsqasli: TUniDataSource;
    dsqsementara: TUniDataSource;
    qsementaranama_kain: TStringField;
    qsementarajenis_warna: TStringField;
    qsementaraharga: TFloatField;
    qsementaraberat: TFloatField;
    qsementarasubtotal: TFloatField;
    qaslinama_kain: TStringField;
    qaslijenis_warna: TStringField;
    qasliharga: TFloatField;
    qasliberat: TFloatField;
    qaslisubtotal: TFloatField;
    cxGrid1DBTableView1nama_kain: TcxGridDBColumn;
    cxGrid1DBTableView1jenis_warna: TcxGridDBColumn;
    cxGrid1DBTableView1harga: TcxGridDBColumn;
    cxGrid1DBTableView1berat: TcxGridDBColumn;
    cxGrid1DBTableView1subtotal: TcxGridDBColumn;
    cxGridDBTableView1nama_kain: TcxGridDBColumn;
    cxGridDBTableView1jenis_warna: TcxGridDBColumn;
    cxGridDBTableView1harga: TcxGridDBColumn;
    cxGridDBTableView1berat: TcxGridDBColumn;
    cxGridDBTableView1subtotal: TcxGridDBColumn;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fperbedaanorder: Tfperbedaanorder;

implementation

{$R *.dfm}

uses uftabel, ufmenuutama;

procedure Tfperbedaanorder.Button1Click(Sender: TObject);
begin
v_statustombol:='enabled';
close;
end;

procedure Tfperbedaanorder.Button2Click(Sender: TObject);
begin
close;
end;

end.
