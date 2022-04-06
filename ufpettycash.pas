unit ufpettycash;

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
  cxDBData, dxGDIPlusClasses, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, cxClasses,
  DBAccess, Uni, MemDS, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls, ShellAPI,   ComObj,
  cxTextEdit, Vcl.Menus;

type
  Tfpettycash = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    qdata: TUniQuery;
    dsdata: TUniDataSource;
    cxGrid1DBTableView1tanggal_cetak: TcxGridDBColumn;
    cxGrid1DBTableView1id_transaksi: TcxGridDBColumn;
    cxGrid1DBTableView1no_transaksi: TcxGridDBColumn;
    cxGrid1DBTableView1penerima: TcxGridDBColumn;
    cxGrid1DBTableView1catatan: TcxGridDBColumn;
    cxGrid1DBTableView1debit: TcxGridDBColumn;
    cxGrid1DBTableView1kredit: TcxGridDBColumn;
    cxGrid1DBTableView1saldo: TcxGridDBColumn;
    Panel4: TPanel;
    Label1: TLabel;
    lsaldo: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    Panel5: TPanel;
    SpeedButton1: TSpeedButton;
    qdatatanggal: TDateTimeField;
    qdataid_transaksi: TStringField;
    qdatano_transaksi: TStringField;
    qdatapenerima: TStringField;
    qdatacatatan: TStringField;
    qdatadebit: TFloatField;
    qdatakredit: TFloatField;
    qdatasaldo: TFloatField;
    Panel7: TPanel;
    Panel8: TPanel;
    Label4: TLabel;
    Panel6: TPanel;
    Image1: TImage;
    Panel9: TPanel;
    Panel10: TPanel;
    SpeedButton2: TSpeedButton;
    Panel11: TPanel;
    Panel12: TPanel;
    Label7: TLabel;
    Panel14: TPanel;
    SpeedButton3: TSpeedButton;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    qtopup: TUniQuery;
    qtopupid_transaksi: TStringField;
    qtopuptanggal: TDateTimeField;
    qtopupdebit: TFloatField;
    qtopupsts: TStringField;
    qtopupnama: TStringField;
    dstopup: TUniDataSource;
    cxGridDBTableView1tanggal: TcxGridDBColumn;
    cxGridDBTableView1debit: TcxGridDBColumn;
    cxGridDBTableView1sts: TcxGridDBColumn;
    cxGridDBTableView1nama: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    C1: TMenuItem;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    qtopupstatus: TIntegerField;
    Label6: TLabel;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Label8: TLabel;
    lsaldosupir: TLabel;
    Panel18: TPanel;
    Panel13: TPanel;
    qsupir: TUniQuery;
    DateTimeField1: TDateTimeField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    dsqsupir: TUniDataSource;
    cxGridDBTableView2tanggal: TcxGridDBColumn;
    cxGridDBTableView2id_transaksi: TcxGridDBColumn;
    cxGridDBTableView2no_transaksi: TcxGridDBColumn;
    cxGridDBTableView2penerima: TcxGridDBColumn;
    cxGridDBTableView2catatan: TcxGridDBColumn;
    cxGridDBTableView2debit: TcxGridDBColumn;
    cxGridDBTableView2kredit: TcxGridDBColumn;
    cxGridDBTableView2saldo: TcxGridDBColumn;
    Panel19: TPanel;
    SpeedButton4: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure cxGridDBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure FormResize(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
    function generateNoTransaksi():string;
    procedure onResize();
  public
    { Public declarations }
  end;

var
  fpettycash: Tfpettycash;

implementation

{$R *.dfm}

uses uftabel;

procedure Tfpettycash.C1Click(Sender: TObject);
begin
  if messagedlg('Cancel Top-Up Petty Cash Admin Pengiriman Cabang '+UpperCase(vcabang)+' Sebesar '+qtopupdebit.DisplayText+'?',mtconfirmation,[mbyes,mbno],0)=mryes then
  begin
    try
      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('select id_transaksi from a_uangsupir where id_transaksi='''+qtopupid_transaksi.Text+''' and ( `status`=3 or `status`=4) ');
      tabel.q1.Open;
      if tabel.q1.RecordCount = 0 then
      begin
        ShowMessage('Petty Cash sudah di konfirmasi, silahkan refresh data ');
        SpeedButton2Click(Sender);
      end
      else
      begin
        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('START TRANSACTION');
        tabel.q1.ExecSQL;

        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('delete from a_uangsupir where id_transaksi='''+qtopupid_transaksi.Text+''' ');
        tabel.q1.ExecSQL;

        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('COMMIT');
        tabel.q1.ExecSQL;

        ShowMessage('Sukses');
        SpeedButton2Click(Sender);
      end;

    except on e:Exception do
    begin
      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('ROLLBACK');
      tabel.q1.ExecSQL;

      ShowMessage('Error : '+e.Message);
    end;
    end;
  end;
end;

procedure Tfpettycash.cxGridDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
//  if Sender.DataController.GetValue(AViewInfo.GridRecord.RecordIndex, 0) = 4 then
//  begin
//    if (AViewInfo.Selected) and (Screen.ActiveControl = Sender.Site) then
//    begin
//      ACanvas.Brush.Color := clSkyBlue;
//      ACanvas.Font.Color := clBlack;
//    end
//    else
//    begin
//      ACanvas.Brush.Color := clRed;
//      ACanvas.Font.Color := clBlack;
//
//    end;
//  end;
end;

procedure Tfpettycash.FormResize(Sender: TObject);
begin
  onResize();
end;

procedure Tfpettycash.FormShow(Sender: TObject);
begin
  onResize();

  Panel3.Caption := 'Petty Cash '+vcabang;

  DateTimePicker1.Date := Now();
  DateTimePicker2.Date := Now();

  SpeedButton1Click(nil);
  SpeedButton2Click(Sender);
end;

function Tfpettycash.generateNoTransaksi:string;
var
newkd,kode,tglx,kd,potkd,st,tanggalawal,newkd2,kodeverifikasi:String;
 i,n:integer;
begin
  kode:='TC';

  tabel.q1.SQL.Clear;
  tabel.q1.SQL.Add('select DATE_FORMAT(CURDATE(),''%d%m%y'') ');
  tabel.q1.open;
  tglx := tabel.q1.fields[0].Text;

  tabel.q1.SQL.Clear;
  tabel.q1.SQL.Add('select right(id_transaksi,3) + 1 nourut from a_uangsupir where substr(id_transaksi,1,2)=''TC'' and substr(id_transaksi,3,6)=date_format(curdate(),''%d%m%y'') order by nourut desc limit 1');
  tabel.q1.open;
  if  tabel.q1.RecordCount > 0 then begin
    kd:=tabel.q1.Fields[0].Text;

    case length(kd) of
    1 : newkd:=kode+tglx + '00'+kd;
    2 : newkd:=kode+tglx + '0'+kd;
    3 : newkd:=kode+tglx + kd;
    end;
  end
  else
    newkd := 'TC'+tglx+'001';

  Result:=newkd;
end;

procedure Tfpettycash.Image1Click(Sender: TObject);
var
  i, x: integer;
  XlApp, XlBook, XlSheet: Variant;
  str: string;
begin
  if cxGrid1DBTableView1.DataController.DataSource.DataSet.RecordCount <> 0 then
  begin
    try
      XlApp := CreateOleObject('Excel.Application');
      XlBook := XlApp.WorkBooks.Add;
      XlSheet := XlBook.worksheets.add;

      XlSheet.cells[1, 1].value := 'Laporan Petty Cash';
      XlSheet.cells[1, cxGrid1DBTableView1.ColumnCount + 3].value := 'Laporan Kas Supir';

      for i := 0 to cxGrid1DBTableView1.ColumnCount - 1 do
      begin
        XlSheet.cells[3, i + 1].value := cxGrid1DBTableView1.Columns[i].Caption;
      end;
      for i := 0 to cxGridDBTableView2.ColumnCount - 1 do
      begin
        XlSheet.cells[3, cxGrid1DBTableView1.ColumnCount + 2 + i + 1].value := cxGridDBTableView2.Columns[i].Caption;
      end;

      qdata.First;
      x := 3; //inisialisasi untuk menampilkan no urut
      while not qdata.Eof do
      begin
        XlSheet.cells[x + 1, 1].value := x;
        for i := 0 to cxGrid1DBTableView1.ColumnCount - 1 do
        begin
          XlSheet.cells[x + 1, i + 1].value := qdata.FieldByName(cxGrid1DBTableView1.Columns[i].DataBinding.FieldName).DisplayText;
        end;
        qdata.Next;
        inc(x);
      end;

      qsupir.First;
      x := 3; //inisialisasi untuk menampilkan no urut
      while not qsupir.Eof do
      begin
        XlSheet.cells[x + 1, 1].value := x;
        for i := 0 to cxGridDBTableView2.ColumnCount - 1 do
        begin
          XlSheet.cells[x + 1, cxGrid1DBTableView1.ColumnCount + 2 + i + 1].value := qsupir.FieldByName(cxGridDBTableView2.Columns[i].DataBinding.FieldName).DisplayText;
        end;
        qsupir.Next;
        inc(x);
      end;
      XlApp.visible := true; //menampilkan dalam MS. Excel\</p>
    except

    end;

  end;
end;

procedure Tfpettycash.onResize;
begin
  Panel14.Left := Panel18.Width div 2 - Panel14.Width  - 20;
  Panel19.Left := Panel18.Width div 2  ;
end;

procedure Tfpettycash.SpeedButton1Click(Sender: TObject);
var
  t2,t3:string;
begin

  tabel.q1.SQL.Clear;
  tabel.q1.SQL.Add('CALL sp_get_data_petty_cash(CURDATE(),CURDATE(),''SALDO PETTY'') ');
  tabel.q1.open;
  if tabel.q1.RecordCount > 0 then
  begin
    tabel.q1.Last;
    lsaldo.Caption := 'Rp. ' + formatcurr(',0',tabel.q1.FieldValues['saldo']);
  end
  else lsaldo.Caption := 'Rp. 0';

  tabel.q1.SQL.Clear;
  tabel.q1.SQL.Add('CALL sp_get_data_petty_cash(curdate(),CURDATE(),''SALDO SUPIR'') ');
  tabel.q1.open;
  if tabel.q1.RecordCount > 0 then
  begin
    tabel.q1.Last;
    lsaldosupir.Caption := 'Rp. ' + formatcurr(',0',tabel.q1.FieldValues['saldo']);
  end
  else lsaldosupir.Caption := 'Rp. 0';


  t2:=FormatDateTime('yyyy-mm-dd',DateTimePicker1.Date);
  t3:=FormatDateTime('yyyy-mm-dd',DateTimePicker2.Date);

  qdata.SQL.Clear;
  qdata.SQL.Add('call sp_get_data_petty_cash('''+ t2+''','''+ t3+''',''PETTY'') ');
  qdata.Active := False;
  qdata.Active:= True;

  qsupir.SQL.Clear;
  qsupir.SQL.Add('call sp_get_data_petty_cash('''+ t2+''','''+ t3+''',''SUPIR'') ');
  qsupir.Active := False;
  qsupir.Active:= True;
end;

procedure Tfpettycash.SpeedButton2Click(Sender: TObject);
begin
  qtopup.Active := false;
  qtopup.Active := True;
end;

procedure Tfpettycash.SpeedButton3Click(Sender: TObject);
var
  pesan : string;
begin
  if qtopup.RecordCount > 0 then begin
    pesan:='Yakin menolak konfirmasi top-up petty cash? ';
    if messagedlg(pesan,mtconfirmation,[mbyes,mbno],0)=mryes then
    begin
      tabel.q1.sql.clear;
      tabel.q1.sql.add('update a_uangsupir set status=4 where id_transaksi='''+ qtopupid_transaksi.Text +''' ');
      tabel.q1.ExecSQL;
    end;
  end;

  SpeedButton1Click(nil);
  SpeedButton2Click(nil);
end;

procedure Tfpettycash.SpeedButton4Click(Sender: TObject);
var
  pesan : string;
  saldokas : Real;
begin
  if qtopup.RecordCount > 0 then begin
    pesan:='Pastikan besar nominal Top-UP sudah sesuai dengan uang yang admin terima, nominal sudah sesuai? ';
    if messagedlg(pesan,mtconfirmation,[mbyes,mbno],0)=mryes then
    begin
      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('CALL sp_get_data_petty_cash(curdate(),CURDATE(),''SALDO PETTY'') ');
      tabel.q1.open;
      if tabel.q1.RecordCount > 0 then
      begin
        tabel.q1.Last;
        saldokas := tabel.q1.FieldValues['saldo'];
      end else begin
        ShowMessage('Data Gagal Disimpan!');
        ShowMessage('Saldo Petty Cash Tidak Ditemukan');
        Exit;
      end;

      tabel.q1.sql.clear;
      tabel.q1.sql.add('update a_uangsupir set status=2,penerima='''+ uppercase(v_namakaryawan) +''' where id_transaksi='''+ qtopupid_transaksi.Text +''' ');
      tabel.q1.ExecSQL;

      tabel.q1.sql.clear;
      tabel.q1.sql.add('update a_saldo_pettycash set nominal = nominal + '+ FloatToStr(qtopupdebit.value) +' ');
      tabel.q1.ExecSQL;

      saldokas := saldokas + qtopupdebit.Value;

      tabel.q1.SQL.Clear;
      tabel.q1.sql.Add('SELECT table_name FROM `information_schema`.`COLUMNS`	WHERE table_schema=''muliaabadi_baru'' and table_name=''a_detailuangsupir'' AND column_name IN (''saldo'')');
      tabel.q1.Open;
      if tabel.q1.RecordCount > 0 then
      begin
        tabel.q1.sql.clear;
        tabel.q1.sql.add('update a_detailuangsupir set saldo = '''+ FloatToStr(saldokas) +''', tanggal = now() where id_transaksi='''+ qtopupid_transaksi.Text +''' ');
        tabel.q1.ExecSQL;
      end;
    end;
  end;

  SpeedButton1Click(nil);
  SpeedButton2Click(nil);
end;

end.
