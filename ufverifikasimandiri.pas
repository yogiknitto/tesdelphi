unit ufverifikasimandiri;

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
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, DBAccess, Uni, MemDS, cxCheckBox, dxSkinTheBezier,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  Tfverifikasimandiri = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel2: TPanel;
    qdata: TUniQuery;
    dsqdata: TUniDataSource;
    qdataid_transaksi: TIntegerField;
    qdatasesi: TIntegerField;
    qdataketerangan: TStringField;
    qdatacabang: TStringField;
    qdatamutasi: TStringField;
    qdatajumlah: TFloatField;
    qdatasaldo_akhir: TFloatField;
    qdatano_rekening: TStringField;
    qdatabank: TStringField;
    qdataatas_nama: TStringField;
    qdatasts: TStringField;
    cxGrid1DBTableView1id_transaksi: TcxGridDBColumn;
    cxGrid1DBTableView1tanggal: TcxGridDBColumn;
    cxGrid1DBTableView1keterangan: TcxGridDBColumn;
    cxGrid1DBTableView1mutasi: TcxGridDBColumn;
    cxGrid1DBTableView1jumlah: TcxGridDBColumn;
    cxGrid1DBTableView1no_rekening: TcxGridDBColumn;
    cxGrid1DBTableView1bank: TcxGridDBColumn;
    cxGrid1DBTableView1sts: TcxGridDBColumn;
    Button1: TButton;
    Label2: TLabel;
    Edit1: TEdit;
    Button2: TButton;
    Button3: TButton;
    qdatastssama: TFloatField;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    Label3: TLabel;
    Edit2: TEdit;
    qdatapilihan: TLargeintField;
    qdatatanggal: TDateTimeField;
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fverifikasimandiri: Tfverifikasimandiri;
  v_kodekasmandiri:string;

implementation

{$R *.dfm}

uses uftabel;

procedure Tfverifikasimandiri.Button1Click(Sender: TObject);
var pesan,sts,idtransaksi:string;
begin
 pesan:='Apakah anda yakin akan menghapus transaksi ?  ';
             if messagedlg(pesan,mtconfirmation,[mbyes,mbno],0)=mryes then
             begin
//              if qdatasts.Value='FIX' then begin
//               ShowMessage('Data yang sudah di import atau (FIX) tidak bisa di hapus!');
//               Exit;
//
//              end;
              qdata.First;
              while not qdata.Eof do begin
                 if (qdatapilihan.Value=1) and (qdatasts.Value='BATCH') then begin

                  idtransaksi:=IntToStr(qdataid_transaksi.Value);
                  tabel.q1.SQL.Clear;
                  tabel.q1.SQL.Add('delete from kas_bank_batch where id_transaksi='''+idtransaksi+''' ');
                  tabel.q1.ExecSQL;

                 end;
              qdata.Next;
              end;


               ShowMessage('Data berhasil di hapus');
               qdata.Active:=false;
               qdata.Active:=True;




             end;
end;

procedure Tfverifikasimandiri.Button2Click(Sender: TObject);
var saldoawal,debit,credit,saldoakhir,creditfix,debitfix:real;    srupiah:string;  h:Integer;
var tanggal,keterangan,cabang,mutasi,jumlah,nourut,idtransaksi,statuspending,kodetf:string;
begin
  if Edit1.Text='' then begin
   ShowMessage('Silahkan isi nominal saldo akhir!');
   Exit;
  end;
  tabel.q1.SQL.Clear;
  tabel.q1.SQL.Add('select saldo_awal from  saldo_awalkasbank where kode_kas='''+v_kodekasmandiri+'''  ');
  tabel.q1.Active:=True;
  if tabel.q1.RecordCount =0 then begin
   saldoawal:=0;
  end else begin
   saldoawal:=tabel.q1.FieldValues['saldo_awal'];
  end;
   tabel.q1.SQL.Clear;
   tabel.q1.SQL.Add('select ifnull(sum(jumlah),0) as totalcredit from kas_bank_import  where mutasi=''CR'' and kode_kas='''+v_kodekasmandiri+'''  ');
   tabel.q1.Active:=True;
   if tabel.q1.RecordCount > 0 then begin
    creditfix:=tabel.q1.FieldValues['totalcredit'];
   end else begin
    creditfix:=0;
   end;


   tabel.q1.SQL.Clear;
   tabel.q1.SQL.Add('select ifnull(sum(jumlah),0) as totaldebit from kas_bank_import  where mutasi=''DB'' and kode_kas='''+v_kodekasmandiri+'''  ');
   tabel.q1.Active:=True;
    if tabel.q1.RecordCount > 0 then begin
   debitfix:=tabel.q1.FieldValues['totaldebit'];
   end else begin
    debitfix:=0;
   end;



   tabel.q1.SQL.Clear;
   tabel.q1.SQL.Add('select ifnull(sum(jumlah),0) as totalcredit from kas_bank_batch  where mutasi=''CR'' and kode_kas='''+v_kodekasmandiri+'''  ');
   tabel.q1.Active:=True;
   credit:=tabel.q1.FieldValues['totalcredit'];

   tabel.q1.SQL.Clear;
   tabel.q1.SQL.Add('select ifnull(sum(jumlah),0) as totaldebit from kas_bank_batch  where mutasi=''DB'' and kode_kas='''+v_kodekasmandiri+'''  ');
//   ShowMessage(tabel.q1.SQL.Text);
   tabel.q1.Active:=True;
   debit:=tabel.q1.FieldValues['totaldebit'];

   saldoakhir:=saldoawal+((credit+creditfix)-(debit+debitfix));

    srupiah := edit1.text;
    srupiah := stringreplace(sRupiah,',','',[rfreplaceall,rfignorecase]);
    srupiah := stringreplace(srupiah,'.','',[rfreplaceall,rfignorecase]);

    if (Edit2.Text<>'') and (Edit2.Text<>'0')  then begin
      srupiah:=srupiah+'.'+edit2.Text;
    end;

//    ShowMessage('saldo awal'+FloatToStr(saldoawal));
//
//    ShowMessage('Credit fix :'+FloatToStr(creditfix));
//
//    ShowMessage('Debit fix :'+FloatToStr(debitfix));
//
//    ShowMessage('Credit  :'+FloatToStr(credit));
//
//    ShowMessage('Debit  :'+FloatToStr(debit));

   // ShowMessage(FloatToStr(StrToFloat(srupiah)));

    ShowMessage(FloatToStr(saldoakhir) );
    ShowMessage(FloatToStr(StrToFloat(srupiah)));

   if FloatToStr(saldoakhir)<>FloatToStr(StrToFloat(srupiah)) then begin
     ShowMessage('Saldo Akhir salah silahkan cek kembali importan kas bank!');
     Exit;
   end;

      tabel.q2.SQL.Clear;
      tabel.q2.sql.Add('select * from kas_bank_batch where status_pakai=''BELUM TERPAKAI'' and  kode_kas='''+v_kodekasmandiri+''' ');
      tabel.q2.Active:=True;
      tabel.q2.First;

      h:=0;
      while not tabel.q2.Eof  do begin
        tanggal:=formatdatetime('yyyy-mm-dd hh:mm:ss',tabel.q2.FieldValues['tanggal']);
        keterangan:=tabel.q2.FieldValues['keterangan'];
        cabang:=tabel.q2.FieldValues['cabang'];
        mutasi:=tabel.q2.FieldValues['mutasi'];
        jumlah:=tabel.q2.FieldValues['jumlah'];
        saldoakhir:=tabel.q2.FieldValues['saldo_akhir'];
        idtransaksi:=tabel.q2.FieldValues['id_transaksi'];
        statuspending:=tabel.q2.FieldValues['status_tanggal'];

        tabel.q1.SQL.Clear;
        tabel.q1.sql.Add('select ifnull(max(no_urut),0)+1 as no from  kas_bank_import where kode_kas='''+v_kodekasmandiri+''' ');
        tabel.q1.Active:=True;
        nourut:=tabel.q1.FieldValues['no'];


        tabel.q1.SQL.Clear;
        tabel.q1.sql.Add('SELECT TRIM(regex_replace('''+keterangan+''',''[^0-9]'','' '')) AS kodetf ');
        tabel.q1.Active:=True;
        kodetf:=tabel.q1.FieldValues['kodetf'];

       tabel.q1.SQL.Clear;
       tabel.q1.sql.Add('insert into kas_bank_import values(0,'''+tanggal+''',''0'','''+keterangan+''','''+cabang+''','''+mutasi+''','''+jumlah+''',0,''BELUM TERPAKAI'','''+statuspending+''','''+nourut+''','''+v_kodekasmandiri+''',''0'','''',''IMPORT'','''+kodetf+''',null) ');
       tabel.q1.ExecSQL;

//       tabel.q1.SQL.Clear;
//       tabel.q1.sql.Add('delete from kas_bank_batch where id_transaksi='''+idtransaksi+''' ');
//       tabel.q1.ExecSQL;

        h:=h+1;
       tabel.q2.Next;
      end;
     tabel.q1.SQL.Clear;
     tabel.q1.sql.Add('COMMIT');
     tabel.q1.ExecSQL;

     tabel.q1.SQL.Clear;
     tabel.q1.SQL.Add('call sp_urutkan_kasbank('+v_kodekasmandiri+')');
     tabel.q1.ExecSQL;

     ShowMessage('Data berhasil di import sebanyak '+inttostr(h)+'');
     close;


end;

procedure Tfverifikasimandiri.Button3Click(Sender: TObject);
begin
close;
end;

procedure Tfverifikasimandiri.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if Sender.DataController.GetValue(AViewInfo.GridRecord.RecordIndex, 8) <> '0' then
  begin

    if (AViewInfo.Selected) and (Screen.ActiveControl = Sender.Site) then
    begin
      ACanvas.Brush.Color := clSkyBlue;
      ACanvas.Font.Color := clBlack;
    end
    else
    begin
      ACanvas.Brush.Color := clGreen;
      ACanvas.Font.Color := clWhite;

    end;
  end;
end;

procedure Tfverifikasimandiri.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then begin
    Edit2.SetFocus;
  end;
end;

procedure Tfverifikasimandiri.Edit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
srupiah :string;
irupiah :currency;
begin

srupiah := edit1.text;
srupiah := stringreplace(sRupiah,',','',[rfreplaceall,rfignorecase]);
srupiah := stringreplace(srupiah,'.','',[rfreplaceall,rfignorecase]);
irupiah := strtocurrdef(srupiah,0);

edit1.text := formatcurr('#,##',irupiah);
edit1.selstart := length(edit1.text);
end;

procedure Tfverifikasimandiri.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
 if Key=#13 then begin
    Button2Click(nil);
  end;
  If not (((Key >= #48) and // Kode ASCII untuk '0'
(Key <= #57)) or // Kode ASCII untuk '9'
(Key = #8)) // Kode ASCII untuk 'BACKSPACE'
then Key := #0; // Kode ASCII untuk 'NULL'

end;

procedure Tfverifikasimandiri.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

tabel.q1.SQL.Clear;
tabel.q1.sql.Add('select * from kas_bank_batch where kode_kas='''+v_kodekasmandiri+''' ');
tabel.q1.Active:=True;
  if tabel.q1.RecordCount > 0 then begin
     tabel.q1.SQL.Clear;
     tabel.q1.sql.Add('delete from kas_bank_batch where kode_kas='''+v_kodekasmandiri+'''  ');
     tabel.q1.ExecSQL;
  end;
  tabel.qrekeningkoran.Active:=false;
  tabel.qrekeningkoran.Active:=true;
end;

procedure Tfverifikasimandiri.FormShow(Sender: TObject);
begin
 qdata.sql.Clear;
 qdata.SQL.Add('SELECT id_transaksi,tanggal,sesi,kb.keterangan,cabang,mutasi,jumlah,saldo_akhir,no_rekening,bank,atas_nama,''FIX'' AS sts,0 AS stssama,0 AS pilihan      '+
  'FROM kas_bank_import kb JOIN kas_bank USING(kode_kas) WHERE kode_kas='''+v_kodekasmandiri+'''     '+
  'AND tanggal>=(SELECT MIN(tanggal) FROM kas_bank_batch WHERE kode_kas='''+v_kodekasmandiri+''') '+
  'UNION SELECT id_transaksi,tanggal,sesi,kb.keterangan,cabang,mutasi,kb.jumlah,saldo_akhir,no_rekening,bank,atas_nama,''BATCH'' AS sts,IFNULL(kn.jumlah,0) AS stssama,if(kn.jumlah is null ,0,1) AS pilihan '+
  'FROM kas_bank_batch kb JOIN kas_bank USING(kode_kas) LEFT JOIN (SELECT jumlah   '+
  'FROM kas_bank_import kb JOIN kas_bank USING(kode_kas) WHERE kode_kas='''+v_kodekasmandiri+'''   '+
  'AND tanggal>=(SELECT MIN(tanggal) FROM kas_bank_batch WHERE kode_kas='+v_kodekasmandiri+')) AS kn ON kn.jumlah=kb.jumlah WHERE kode_kas='''+v_kodekasmandiri+'''');
  qdata.Active:=True;
//  ShowMessage(qdata);
end;

end.
