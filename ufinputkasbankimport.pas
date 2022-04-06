unit ufinputkasbankimport;

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
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, DBAccess, Uni, MemDS, cxMemo,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  Tfinputkasbankimport = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    tcabang: TEdit;
    tkodetran: TEdit;
    Label3: TLabel;
    tjumlah: TEdit;
    Label4: TLabel;
    tmutasi: TcxComboBox;
    Label5: TLabel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    qdata: TUniQuery;
    qdsdata: TUniDataSource;
    qdataid_transaksi: TIntegerField;
    qdatatanggal: TDateField;
    qdatasesi: TIntegerField;
    qdataketerangan: TStringField;
    qdatacabang: TStringField;
    qdatamutasi: TStringField;
    qdatajumlah: TFloatField;
    qdatasaldo_akhir: TFloatField;
    qdatastatus_pakai: TStringField;
    qdatastatus_tanggal: TStringField;
    qdatano_urut: TIntegerField;
    qdatakode_kas: TIntegerField;
    qdatakode_transaction: TStringField;
    qdataketerangan2: TStringField;
    cxGrid1DBTableView1tanggal: TcxGridDBColumn;
    cxGrid1DBTableView1sesi: TcxGridDBColumn;
    cxGrid1DBTableView1keterangan: TcxGridDBColumn;
    cxGrid1DBTableView1cabang: TcxGridDBColumn;
    cxGrid1DBTableView1mutasi: TcxGridDBColumn;
    cxGrid1DBTableView1jumlah: TcxGridDBColumn;
    cxGrid1DBTableView1saldo_akhir: TcxGridDBColumn;
    cxGrid1DBTableView1status_pakai: TcxGridDBColumn;
    cxGrid1DBTableView1status_tanggal: TcxGridDBColumn;
    cxGrid1DBTableView1kode_transaction: TcxGridDBColumn;
    cxGrid1DBTableView1keterangan2: TcxGridDBColumn;
    Panel2: TPanel;
    tsaldo: TEdit;
    Label6: TLabel;
    tket1: TcxMemo;
    Label7: TLabel;
    tket2: TcxMemo;
    Label8: TLabel;
    bsimpan: TButton;
    bhapus: TButton;
    bbatal: TButton;
    Button4: TButton;
    procedure bbatalClick(Sender: TObject);
    procedure bersih;
    procedure Button4Click(Sender: TObject);
    procedure bsimpanClick(Sender: TObject);
    procedure bhapusClick(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure tcabangKeyPress(Sender: TObject; var Key: Char);
    procedure tmutasiKeyPress(Sender: TObject; var Key: Char);
    procedure tkodetranKeyPress(Sender: TObject; var Key: Char);
    procedure tjumlahKeyPress(Sender: TObject; var Key: Char);
    procedure tsaldoKeyPress(Sender: TObject; var Key: Char);
    procedure tket1KeyPress(Sender: TObject; var Key: Char);
    procedure tket2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  finputkasbankimport: Tfinputkasbankimport;
  idtransaksi:string;

implementation

{$R *.dfm}

uses uftabel, ufmenuutama;

procedure Tfinputkasbankimport.bbatalClick(Sender: TObject);
begin
  bersih;
end;

procedure Tfinputkasbankimport.bersih;
begin
  tcabang.Clear;
  tmutasi.Clear;

  tkodetran.Clear;
  tjumlah.Text := '0';
  tsaldo.Text := '0';
  tket1.Text := '';
  tket2.Text := '';
  idtransaksi := '';

  qdata.SQL.Clear;
  qdata.SQL.Add('select * from kas_bank_import where kode_kas='''+v_kdkas+''' ');
  qdata.Open;

  qdata.Active := false;
  qdata.Active := true;

  bhapus.Enabled := false;
end;

procedure Tfinputkasbankimport.bhapusClick(Sender: TObject);
var pesan:string;
begin
  try
    pesan := 'Apakah anda yakin akan menghapus data ini ?';
    if MessageDlg(pesan, mtConfirmation,[mbYes, mbNo],0) = mrYes then
    begin
      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('delete from kas_bank_import where id_transaksi='''+idtransaksi+'''');
      tabel.q1.ExecSQL;

      ShowMessage('Data berhasil dihapus');
      bersih;
    end;

  finally

  end;
end;

procedure Tfinputkasbankimport.bsimpanClick(Sender: TObject);
var
  nourut:Integer;
begin
  if idtransaksi = '' then
  begin
    tabel.q1.SQL.Clear;
    tabel.q1.SQL.Add('select ifnull(max(no_urut),0) + 1 as nourut from kas_bank_import');
    tabel.q1.Open;
    nourut := tabel.q1.FieldValues['nourut'];

    tabel.q1.SQL.Clear;
    tabel.q1.SQL.Add('insert into kas_bank_import values(0,'''+FormatDateTime('yyyy-MM-dd',now)+''', 0, '''+tket1.Text+''', '''+tcabang.Text+''', '+
                    ' '''+tmutasi.Text+''', '''+tjumlah.Text+''', '''+tsaldo.Text+''', ''BELUM TERPAKAI'', ''ADA TANGGAL'', '''+IntToStr(nourut)+''', '''+v_kdkas+''', '''+tkodetran.Text+''', '''+tket2.Text+''',''MANUAL'')');
    tabel.q1.ExecSQL;

    ShowMessage('Data berhasil di tambah');
  end
  else
  begin
    tabel.q1.SQL.Clear;
    tabel.q1.SQL.Add('update kas_bank_import set tanggal='''+FormatDateTime('yyyy-MM-dd',now)+''', keterangan='''+tket1.Text+''', cabang='''+tcabang.Text+''',  mutasi='''+tmutasi.Text+''', jumlah='''+tjumlah.Text+''', '+
                    'saldo_akhir='''+tsaldo.Text+''', kode_transaction='''+tkodetran.Text+''', keterangan2='''+tket2.Text+''' where id_transaksi='''+idtransaksi+'''');
    tabel.q1.ExecSQL;

    ShowMessage('Data berhasil di edit');
  end;
  bersih;
end;

procedure Tfinputkasbankimport.Button4Click(Sender: TObject);
begin
  Close;
end;

procedure Tfinputkasbankimport.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if qdata.RecordCount <> 0 then
  begin
    idtransaksi := qdataid_transaksi.Text;
    tcabang.Text := qdatacabang.Value;
    tmutasi.Text := qdatamutasi.Value;

    tkodetran.Text := qdatakode_transaction.Value;
    tjumlah.Text := qdatajumlah.Text;
    tsaldo.Text := qdatasaldo_akhir.Text;
    tket1.Text := qdataketerangan.Value;
    tket2.Text := qdataketerangan2.Value;

    bhapus.Enabled := true;
  end;
end;

procedure Tfinputkasbankimport.tcabangKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then begin
   tmutasi.SetFocus;
  end;
end;

procedure Tfinputkasbankimport.tjumlahKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then begin
    tsaldo.SetFocus;
  end;
end;

procedure Tfinputkasbankimport.tket1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then begin
    tket2.SetFocus;
  end;
end;

procedure Tfinputkasbankimport.tket2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then begin
    bsimpanClick(nil);
  end;
end;

procedure Tfinputkasbankimport.tkodetranKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then begin
    tjumlah.SetFocus;
  end;
end;

procedure Tfinputkasbankimport.tmutasiKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then begin
    tkodetran.SetFocus;
  end;
end;

procedure Tfinputkasbankimport.tsaldoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then begin
    tket1.SetFocus;
  end;
end;

end.
