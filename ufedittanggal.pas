unit ufedittanggal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  Tfedittanggal = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    cxDateEdit1: TcxDateEdit;
    cxjam: TcxComboBox;
    cxmenit: TcxComboBox;
    procedure Button1Click(Sender: TObject);
    procedure cxmenitExit(Sender: TObject);
    procedure cxjamExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fedittanggal: Tfedittanggal;
  v_nokonfirmasi:string;

implementation

{$R *.dfm}

uses uftabel;

procedure Tfedittanggal.Button1Click(Sender: TObject);
begin
  tabel.q1.SQL.Clear;
  tabel.q1.SQL.Add('update detail_konfirmasipembayaran set tanggal_transfer='''+FormatDateTime('yyyy-mm-dd',cxDateEdit1.Date) + ' ' + cxjam.Text + ':' + cxmenit.Text + ':' +'00'' '+
  '  where no='''+tabel.qkonfirmasino.Text+'''  ');
  tabel.q1.ExecSQL;

  ShowMessage('Berhasil di edit');
  tabel.qkonfirmasi.Refresh;
  close;
end;

procedure Tfedittanggal.Button2Click(Sender: TObject);
begin
  close;
end;

procedure Tfedittanggal.cxjamExit(Sender: TObject);
begin
   if (StrToInt(cxjam.Text) < 0) or (StrToInt(cxjam.Text) > 24) then
  begin
    ShowMessage('Jam tidak boleh kurang dari 1 atau lebih dari 24 !');
    cxjam.SetFocus;
  end;
end;

procedure Tfedittanggal.cxmenitExit(Sender: TObject);
begin
  if (StrToInt(cxmenit.Text) < 0) or (StrToInt(cxmenit.Text) > 60) then
  begin
    ShowMessage('Menit tidak boleh kurang dari 0 atau lebih dari 60 !');
    cxmenit.SetFocus;
  end;
end;

procedure Tfedittanggal.FormShow(Sender: TObject);
var i:Integer;
str:string;
begin
  cxjam.Properties.Items.Clear;
  cxmenit.Properties.Items.Clear;
  for i:=0 to 24 do
  begin
    if i < 10 then
    begin
      str := '0'+IntToStr(i);
    end
    else str := IntToStr(i);
    cxjam.Properties.Items.Add(str);
  end;

   for i:=0 to 60 do
  begin
    if i < 10 then
    begin
      str := '0'+IntToStr(i);
    end
    else str := IntToStr(i);
    cxmenit.Properties.Items.Add(str);
  end;

   cxjam.Text := Copy(tabel.qkonfirmasitanggal.Text, 11,2);
   cxmenit.Text := Copy(tabel.qkonfirmasitanggal.Text, 14,2);
end;

end.
