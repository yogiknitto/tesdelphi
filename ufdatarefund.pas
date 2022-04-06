unit ufdatarefund;

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
  cxClasses, cxGridCustomView, cxGrid, ExtCtrls, StdCtrls, frxClass,  printers,
  frxDBSet, frxChBox,jpeg, Buttons, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  Tfdatarefund = class(TForm)
    Panel1: TPanel;
    qdata: TUniQuery;
    dsqdata: TUniDataSource;
    qdatano_refund: TStringField;
    qdatatanggal: TDateTimeField;
    qdatano_penjualan: TStringField;
    qdataid_customer: TIntegerField;
    qdatatanggal_pembelian: TDateField;
    qdatatanggal_transfer: TDateField;
    qdatajenis: TStringField;
    qdataatas_nama: TStringField;
    qdatano_rek_ac: TStringField;
    qdataalasan: TStringField;
    qdatanominal: TStringField;
    qdatajumlah_kembali: TFloatField;
    qdatatotal_beli: TFloatField;
    qdatakode_kas: TIntegerField;
    qdatamengajukan: TStringField;
    qdatadiperiksa: TStringField;
    qdatamenyetujui: TStringField;
    qdataid_user: TIntegerField;
    qdatanama: TStringField;
    qdatanama_kas: TStringField;
    qdatastatus: TIntegerField;
    qdatano_trx: TIntegerField;
    qdatatgl_transfer: TDateField;
    qdatanominal_transfer: TFloatField;
    GroupBox1: TGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1no_refund: TcxGridDBColumn;
    cxGrid1DBTableView1tanggal: TcxGridDBColumn;
    cxGrid1DBTableView1nama: TcxGridDBColumn;
    cxGrid1DBTableView1atas_nama: TcxGridDBColumn;
    cxGrid1DBTableView1no_rek_ac: TcxGridDBColumn;
    cxGrid1DBTableView1alasan: TcxGridDBColumn;
    cxGrid1DBTableView1jumlah_kembali: TcxGridDBColumn;
    cxGrid1DBTableView1nominal_transfer: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Panel3: TPanel;
    qsudah: TUniQuery;
    dsqsudah: TUniDataSource;
    cxGridDBTableView1no_refund: TcxGridDBColumn;
    cxGridDBTableView1tanggal: TcxGridDBColumn;
    cxGridDBTableView1atas_nama: TcxGridDBColumn;
    cxGridDBTableView1no_rek_ac: TcxGridDBColumn;
    cxGridDBTableView1alasan: TcxGridDBColumn;
    cxGridDBTableView1jumlah_kembali: TcxGridDBColumn;
    cxGridDBTableView1nama: TcxGridDBColumn;
    cxGridDBTableView1nominal_transfer: TcxGridDBColumn;
    Panel4: TPanel;
    Button1: TButton;
    Button2: TButton;
    frxReport1: TfrxReport;
    qreport: TUniQuery;
    qreportno_refund: TStringField;
    qreporttanggal: TDateTimeField;
    qreportno_penjualan: TStringField;
    qreportid_customer: TIntegerField;
    qreporttanggal_pembelian: TDateField;
    qreporttanggal_transfer: TDateField;
    qreportjenis: TStringField;
    qreportatas_nama: TStringField;
    qreportno_rek_ac: TStringField;
    qreportalasan: TStringField;
    qreportjumlah_kembali: TFloatField;
    qreporttotal_beli: TFloatField;
    qreportkode_kas: TIntegerField;
    qreportmengajukan: TStringField;
    qreportdiperiksa: TStringField;
    qreportmenyetujui: TStringField;
    qreportid_user: TIntegerField;
    qreportnominal: TStringField;
    qreportnama: TStringField;
    qreportno_rekening: TStringField;
    qreportktp: TStringField;
    qreportfaktur: TStringField;
    qreporttransfer: TStringField;
    qreportss: TStringField;
    qreportstatus: TIntegerField;
    qreportno_trx: TIntegerField;
    qreporttgl_transfer: TDateField;
    qreportnominal_transfer: TFloatField;
    frxDBDataset1: TfrxDBDataset;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    Panel5: TPanel;
    Button3: TButton;
    qreportketerangan: TStringField;
    PrintDialog1: TPrintDialog;
    qreportfktp: TStringField;
    qreportffaktur: TStringField;
    qreportfss: TStringField;
    qreportftransfer: TStringField;
    SpeedButton3: TSpeedButton;
    Edit8: TEdit;
    Label37: TLabel;
    Edit1: TEdit;
    Label1: TLabel;
    Button4: TButton;
    qreporttgl_beli: TStringField;
    qreporttotretur: TFloatField;
    Button5: TButton;
    qsudahno_refund: TStringField;
    qsudahtanggal: TDateTimeField;
    qsudahno_penjualan: TStringField;
    qsudahid_customer: TIntegerField;
    qsudahtanggal_pembelian: TDateField;
    qsudahtanggal_transfer: TDateField;
    qsudahjenis: TStringField;
    qsudahatas_nama: TStringField;
    qsudahno_rek_ac: TStringField;
    qsudahalasan: TStringField;
    qsudahnominal: TStringField;
    qsudahjumlah_kembali: TFloatField;
    qsudahtotal_beli: TFloatField;
    qsudahkode_kas: TIntegerField;
    qsudahmengajukan: TStringField;
    qsudahdiperiksa: TStringField;
    qsudahmenyetujui: TStringField;
    qsudahid_user: TIntegerField;
    qsudahstatus: TIntegerField;
    qsudahno_trx: TIntegerField;
    qsudahtgl_transfer: TDateField;
    qsudahnominal_transfer: TFloatField;
    qsudahnama: TStringField;
    qsudahnama_kas: TStringField;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frxReport1GetValue(const VarName: String;
      var Value: Variant);
    procedure Button3Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure qdataAfterScroll(DataSet: TDataSet);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
    procedure print(norefund:string);
    procedure generate();
  public
    vnorefund,vnotransaksi:string;
    { Public declarations }
  end;

var
  fdatarefund: Tfdatarefund;
  nobb:string;

implementation

uses uftabel, ufdatahutanglainlain, ufmenuutama;

{$R *.dfm}

procedure Tfdatarefund.FormShow(Sender: TObject);
begin
  Button2Click(nil);
end;

procedure Tfdatarefund.Button1Click(Sender: TObject);
var ketlebih:string;
nourut,kdkasayatsilang:Integer;
list:TStringList;
begin
  if MessageDlg('Apakah anda yakin akan melakukan Approve dengan No Refund ' + qdatano_refund.Value + ' ? ', mtConfirmation,[mbYes,mbno],0) = mryes then
  begin
    try
      tabel.q1.sql.Clear;
      tabel.q1.SQL.Add('START TRANSACTION');
      tabel.q1.ExecSQL;

      tabel.q1.SQL.Clear;
      tabel.q1.sql.Add('insert into n_refund_approv values(0,now(),'''+qdatano_refund.Value+''','+v_idkaryawan+') ');
      tabel.q1.ExecSQL;

//      if (Trim(Edit8.Text) <> '') and (Trim(qdatano_penjualan.Text) <> '') then
//      begin
//        tabel.q1.SQL.Clear;
//        tabel.q1.SQL.Add(' SELECT kode_kas FROM kas_bank WHERE LOWER(TRIM(nama_kas)) =''ayat silang pt'' ');
//        tabel.q1.Open;
//        if tabel.q1.RecordCount > 0 then
//          kdkasayatsilang := tabel.q1.fields[0].AsInteger
//        else
//          kdkasayatsilang := 11;
//
//        tabel.q1.SQL.Clear;
//        tabel.q1.SQL.Add('select max(no_urut) as no from buku_besar ');
//        tabel.q1.Active:=true;
//        nourut:=tabel.q1.FieldValues['no']+1;
//
//        generate;
//        ketlebih:='U/REFUND A.N - '+qdatanama.Text;
//        tabel.q1.SQL.Clear;
//        tabel.q1.SQL.Add('insert into buku_besar values('''+nobb+''',now(),''PENGELUARAN'',''HUTANG LAIN-LAIN'','''','''','+IntToStr(kdkasayatsilang)+','''+FloatToStr(qdatajumlah_kembali.value)+''',112,'''+ketlebih+''',0,now(),'''+inttostr(nourut)+''') ');
//        tabel.q1.ExecSQL;
//
//        tabel.q1.sql.Clear;
//        tabel.q1.sql.Add('insert into fix_reportongkir values(0,'''+nobb+''','''+qdatanama.text+''','''+qdataid_customer.Text+''') ');
//        tabel.q1.ExecSQL;
//
//        tabel.q2.SQL.Clear;
//        tabel.q2.sql.Add('select max(id) from fix_reportongkir where no_transaksi='''+nobb+''' ');
//        tabel.q2.Open;
//
//        tabel.q1.SQL.Clear;
//        tabel.q1.SQL.Add('insert into fix_reportongkir_detail values(0,'''+tabel.q2.Fields[0].AsString+''','''+qdatano_refund.Text+''',112) ');
//        tabel.q1.ExecSQL;
//
//        tabel.q1.SQL.Clear;
//        tabel.q1.SQL.Add('insert into relasi_kasbank values(0,'''+edit8.Text+''','''+nobb+''',now(),'''+id_user2+''') ');
//        tabel.q1.ExecSQL;
//      end;

  //    ShowMessage('Berhasil di approve');

      if (Trim(Edit8.Text) <> '') and (Trim(qdatano_penjualan.Text) <> '') then
      begin
        tabel.q1.sql.Clear;
        tabel.q1.sql.Add('update  fix_reportongkir set id_customer=0 where no_transaksi='''+Trim(Edit8.Text)+''' ');
        tabel.q1.ExecSQL;
      end;

      print(qdatano_refund.Value);

      tabel.q1.sql.Clear;
      tabel.q1.SQL.Add('COMMIT');
      tabel.q1.ExecSQL;

      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('select TRIM(IFNULL(data,'''')) as data from konstanta where jenis = ''SAP AKUNTING BARU'' ');
      tabel.q1.Open;

      if (urlSAPCabang <> '') and (tabel.q1.RecordCount > 0) and (tabel.q1.Fields[0].Text <> '') then
      begin
        list := TStringList.Create;
        list.Add('no_refund='+qdatano_refund.Text);
        fmenuutama.SendRequest('POST',urlSAPCabang + tabel.q1.Fields[0].Text,nil,list,false);
      end;

      Button2Click(nil);

    except on e:exception do
    begin
      tabel.q1.sql.Clear;
      tabel.q1.SQL.Add('ROLLBACK');
      tabel.q1.ExecSQL;

      ShowMessage('Gagal. Error : '+e.Message);
    end;
    end;

  end;
end;

procedure Tfdatarefund.Button2Click(Sender: TObject);
begin
  qdata.Active:=False;
  qdata.Active:=true;

  qsudah.Active := false;
  qsudah.Active := true;

  Edit1.Text := '';
  Edit8.Text := '';
end;

procedure Tfdatarefund.print(norefund: string);
var
  checkbox:TfrxCheckBoxView;
  frpicture:TfrxPictureView;
  MyRect: TRect;
    scale: Double;
    bmp:TBitmap;
    suksesfoto:boolean;
    JpegImg: TJpegImage;
begin
  qreport.SQL.Clear;
  qreport.SQL.Add('SELECT *,IF(TRIM(no_penjualan)='''',''-'',DATE_FORMAT(tanggal_pembelian,''%d %b %Y'')) AS tgl_beli, IF(RIGHT(ktp,4) = ''.jpg'' OR RIGHT(ktp,4) = ''.bmp'' OR RIGHT(ktp,5) = ''.jpeg'' OR RIGHT(ktp,4) = ''.png'' ,ktp,'''') AS fktp, '+
  ' IF(RIGHT(faktur,4) = ''.jpg'' OR RIGHT(faktur,4) = ''.bmp'' OR RIGHT(faktur,5) = ''.jpeg'' OR RIGHT(faktur,4) = ''.png'' ,faktur,'''') AS ffaktur, '+
  ' IF(RIGHT(ss,4) = ''.jpg'' OR RIGHT(ss,4) = ''.bmp'' OR RIGHT(ss,5) = ''.jpeg'' OR RIGHT(ss,4) = ''.png'' ,ss,'''') AS fss, '+
  ' IF(RIGHT(transfer,4) = ''.jpg'' OR RIGHT(transfer,4) = ''.bmp'' OR RIGHT(transfer,5) = ''.jpeg'' OR RIGHT(transfer,4) = ''.png'' ,transfer,'''') AS ftransfer '+
  ' FROM ( SELECT n.*,nama,no_rekening,CONCAT(alamatfhoto,IFNULL(filename_ktp,'''')) AS ktp,CONCAT(alamatfhoto,IFNULL(filename_faktur,'''')) AS faktur, '+
  ' CONCAT(alamatfhoto,IFNULL(filename_transfer,'''')) AS transfer,CONCAT(alamatfhoto,IFNULL(filename_ss,'''') )AS ss,IFNULL(nf.keterangan,'''') AS keterangan,IFNULL(totretur,0) AS totretur '+
  ' FROM n_refund n JOIN customer c USING(id_customer) JOIN kas_bank ks USING(kode_kas) LEFT JOIN n_refund_file nr USING(no_refund) left join n_refund_keterangan nf using(no_refund) '+
  ' JOIN (SELECT nama AS alamatfhoto FROM alamat_fhoto WHERE kategori=''REFUND'') AS valamat '+
  ' LEFT JOIN (SELECT jumlah_tagihan * -1 AS totretur,no_pengeluaran FROM perincian_piutang p JOIN retur_penjualanstok r ON r.no_terimaretur=p.no_jual '+
  ' WHERE jenis_hutang=''RETUR'') AS vr ON n.no_penjualan=vr.no_pengeluaran '+
  ' where no_refund='''+norefund+''') as v ');
  qreport.Active:=true;

  frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+ 'cetakrefund.fr3');
  frxReport1.PrepareReport;

  if (qreportalasan.Value = 'DOUBLE TRANSFER')  then
    checkbox := frxReport1.FindObject('cdouble') as TfrxCheckBoxView
  else if (qreportalasan.Value = 'SALAH TRANSFER TANPA PEMBELIAN')   then
    checkbox := frxReport1.FindObject('csalah') as TfrxCheckBoxView
  else if (qreportalasan.Value = 'KELEBIHAN TRANSFER')  then
    checkbox := frxReport1.FindObject('ckelebihan') as TfrxCheckBoxView
  else
    checkbox := frxReport1.FindObject('clain') as TfrxCheckBoxView;
  if (checkbox <> nil) then
    checkbox.Checked := true;

  if LowerCase(vcabang) = 'kebon jukut'   then
    checkbox := frxReport1.FindObject('ckej') as TfrxCheckBoxView
  else if LowerCase(vcabang) = 'yogya'   then
    checkbox := frxReport1.FindObject('cyog') as TfrxCheckBoxView
  else if LowerCase(vcabang) = 'semarang'   then
    checkbox := frxReport1.FindObject('csem') as TfrxCheckBoxView
  else
    checkbox := frxReport1.FindObject('chol') as TfrxCheckBoxView;
  if (checkbox <> nil) then
    checkbox.Checked := true;

  if LowerCase(qreportjenis.Value) = 'online'   then
    checkbox := frxReport1.FindObject('col') as TfrxCheckBoxView
  else
    checkbox := frxReport1.FindObject('cof') as TfrxCheckBoxView;
  if (checkbox <> nil) then
    checkbox.Checked := true;

  if StringReplace(qreportno_rekening.Value,'-','',[rfReplaceAll]) ='7773391515'   then
    checkbox := frxReport1.FindObject('c1') as TfrxCheckBoxView
  else if StringReplace(qreportno_rekening.Value,'-','',[rfReplaceAll]) ='7773303535'   then
    checkbox := frxReport1.FindObject('c2') as TfrxCheckBoxView
  else if StringReplace(qreportno_rekening.Value,'-','',[rfReplaceAll]) ='1320083151515'   then
    checkbox := frxReport1.FindObject('c3') as TfrxCheckBoxView
  else if StringReplace(qreportno_rekening.Value,'-','',[rfReplaceAll]) ='7773511162'   then
    checkbox := frxReport1.FindObject('c4') as TfrxCheckBoxView
  else if StringReplace(qreportno_rekening.Value,'-','',[rfReplaceAll]) ='1320060162162'   then
    checkbox := frxReport1.FindObject('c5') as TfrxCheckBoxView
  else if StringReplace(qreportno_rekening.Value,'-','',[rfReplaceAll]) ='1320057353535'   then
    checkbox := frxReport1.FindObject('c6') as TfrxCheckBoxView
  else if StringReplace(qreportno_rekening.Value,'-','',[rfReplaceAll]) ='7773777090'   then
    checkbox := frxReport1.FindObject('cbcahol') as TfrxCheckBoxView
  else if StringReplace(qreportno_rekening.Value,'-','',[rfReplaceAll]) ='040501001094301'   then
    checkbox := frxReport1.FindObject('cbriygy') as TfrxCheckBoxView
  else if StringReplace(qreportno_rekening.Value,'-','',[rfReplaceAll]) ='7773213030'   then
    checkbox := frxReport1.FindObject('cbcasem') as TfrxCheckBoxView
  else if StringReplace(qreportno_rekening.Value,'-','',[rfReplaceAll]) ='1320000903030'   then
    checkbox := frxReport1.FindObject('cmansem') as TfrxCheckBoxView;
  if (checkbox <> nil) then
    checkbox.Checked := true;

  if qreportktp.Text <> ''  then
  begin
    checkbox := frxReport1.FindObject('cktp') as TfrxCheckBoxView;
    if (checkbox <> nil) then
      checkbox.Checked := true;
  end;
  if qreportfaktur.Text <> ''  then
  begin
    checkbox := frxReport1.FindObject('cfaktur') as TfrxCheckBoxView;
    if (checkbox <> nil) then
      checkbox.Checked := true;
  end;
  if qreporttransfer.Text <> ''  then
  begin
    checkbox := frxReport1.FindObject('ctransfer') as TfrxCheckBoxView;
    if (checkbox <> nil) then
      checkbox.Checked := true;
  end;
  if qreportss.Text <> ''  then
  begin
    checkbox := frxReport1.FindObject('css') as TfrxCheckBoxView;
    if (checkbox <> nil) then
      checkbox.Checked := true;
  end;

  bmp := TBitmap.Create;
  JpegImg := TJPEGImage.Create;

  try
    bmp.LoadFromFile(qreportktp.Text);
    suksesfoto:=true;
  except
    try
      JpegImg.LoadFromFile(qreportktp.Text);
      suksesfoto:=true;
    except
      suksesfoto:=false;
    end;
  end;
  frpicture := frxReport1.FindObject('Picture2') as TfrxPictureView;
  if (frpicture <> nil) and (qreportfktp.Text <> '') and (suksesfoto) then
    frpicture.Picture.LoadFromFile(qreportfktp.Text);

  try
    bmp.LoadFromFile(qreportffaktur.Text);
    suksesfoto:=true;
  except
    try
      JpegImg.LoadFromFile(qreportffaktur.Text);
      suksesfoto:=true;
    except
      suksesfoto:=false;
    end;
  end;
  frpicture := frxReport1.FindObject('Picture3') as TfrxPictureView;
  if (frpicture <> nil) and (qreportffaktur.Text <> '') and (suksesfoto) then
    frpicture.Picture.LoadFromFile(qreportffaktur.Text);

  try
    bmp.LoadFromFile(qreportftransfer.Text);
    suksesfoto:=true;
  except
    try
      JpegImg.LoadFromFile(qreportftransfer.Text);
      suksesfoto:=true;
    except
      suksesfoto:=false;
    end;
  end;
  frpicture := frxReport1.FindObject('Picture4') as TfrxPictureView;
  if (frpicture <> nil) and (qreportftransfer.Text <> '') and (suksesfoto) then
    frpicture.Picture.LoadFromFile(qreportftransfer.Text);

  try
    bmp.LoadFromFile(qreportfss.Text);
    suksesfoto:=true;
  except
    try
      JpegImg.LoadFromFile(qreportfss.Text);
      suksesfoto:=true;
    except
      suksesfoto:=false;
    end;
  end;
  frpicture := frxReport1.FindObject('Picture5') as TfrxPictureView;
  if (frpicture <> nil) and (qreportfss.Text <> '') and (suksesfoto) then
    frpicture.Picture.LoadFromFile(qreportfss.Text);

//  bmp := TBitmap.Create;
//  bmp.LoadFromFile(qreportktp.Text);
//  if PrintDialog1.Execute then
//  begin
//    Printer.BeginDoc;
//    scale := Printer.PageWidth / bmp.Width;
//    ShowMessage(FloatToStr(scale));
//   { horizontal pixels, vertical pixels, bit depth 600 x 600 x 24}
//    MyRect.Left := 0;
//    MyRect.Top := 0;
//    MyRect.Right := trunc(bmp.Width * scale);
//    MyRect.Bottom := trunc(bmp.Height * scale);
//    Printer.Canvas.StretchDraw(MyRect, bmp);
//    Printer.EndDoc;
//  end;


  frxReport1.ShowReport();
end;

procedure Tfdatarefund.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  futama.Timer4.Enabled := True;
end;

procedure Tfdatarefund.frxReport1GetValue(const VarName: String;
  var Value: Variant);
begin
  if VarName = 'tglbuat' then
    Value := 'Tgl Pembuatan : ' + FormatDateTime('dd-MM-yyyy',qreporttanggal.Value);
  if VarName = 'noform' then
    Value := 'No Form : Form.Knitto.Adm.' + qreportno_refund.Value;
  if VarName = 'alasanlain' then
  begin

    if (qreportalasan.Value <> 'DOUBLE TRANSFER')
    and (qreportalasan.Value <> 'KELEBIHAN TRANSFER')
    and (qreportalasan.Value <> 'SALAH TRANSFER TANPA PEMBELIAN') then
      Value := qreportalasan.Value
    else
      Value := '';
  end;
  if VarName = 'mengajukan' then
    Value := 'Nama : '+ qreportmengajukan.Value;
  if VarName = 'diperiksa' then
    Value := 'Nama : '+ qreportdiperiksa.Value;
  if VarName = 'jawab' then
    Value := 'Nama : '+ qreportmenyetujui.Value;
end;

procedure Tfdatarefund.Button3Click(Sender: TObject);
begin
  print(qsudahno_refund.Value);
end;

procedure Tfdatarefund.SpeedButton3Click(Sender: TObject);
begin
  fdatahutanglainlain.stsmasuk:='refund';
  fdatahutanglainlain.qdata.sql.Clear;
  fdatahutanglainlain.qdata.sql.Add('SELECT * FROM buku_besar bb  JOIN fix_reportongkir fr on fr.no_transaksi=bb.no_transaksi '+
  ' left join relasi_kasbank rk on rk.kode_transaksipenerimaan=fr.no_transaksi where fr.nama='''+qdatanama.Text+''' and rk.id is null and jenis=''PENERIMAAN'' and dari=''HUTANG LAIN-LAIN'' '+
  ' ORDER BY bb.tanggal,bb.no_transaksi  ');
  fdatahutanglainlain.qdata.Active:=True;
//  ShowMessage(fdatahutanglainlain.qdata.sql.text);
  fdatahutanglainlain.Showmodal;
end;

procedure Tfdatarefund.generate;
var
newkd,kode,tgl,bln,thn,tglx,kd,potkd,st,tanggalawal:String;
i,n:integer;
begin
kode:='BB';
tgl:=datetostr(date);
tgl :='';
bln :='';
thn :='';

tanggalawal:=formatdatetime('dd/MM/yy',now);
tgl:=copy(tanggalawal,1,2);
bln:=copy(tanggalawal,4,2);
thn:=copy(tanggalawal,7,2);
tglx := tgl + bln + thn;
tabel.q1.SQL.Clear;
tabel.q1.SQL.Add('select no_transaksi from buku_besar where substr(no_transaksi,3,6)= ''' + FormatDateTime('dd',now) + FormatDateTime('mm',now) + formatDatetime('yy',now)+ ''' order by no_transaksi DESC limit 1');
tabel.q1.Active:=true;
if  tabel.q1.RecordCount > 0 then begin
kd:=tabel.q1.FieldValues['no_transaksi'];
potKd:=copy(kd,3,8);

for i:=9 to 11 do
st:=st+kd[i];
n:=strtoint(st)+1;
case length(inttostr(n)) of
1 : newkd:=kode+tglx + '00'+inttostr(n);
2 : newkd:=kode+tglx + '0'+inttostr(n);
3 : newkd:=kode+tglx + ''+inttostr(n);
end;

 end else begin
newkd:=kode+tglx + '001';
end;
nobb:=newkd;
end;

procedure Tfdatarefund.qdataAfterScroll(DataSet: TDataSet);
begin
  if not DataSet.ControlsDisabled then
  begin
    if qdatano_refund.Text <> vnorefund then
    begin
      Edit1.Text := '';
      Edit8.Text := '';
    end
    else
    begin
      edit1.Text := qdatano_refund.Text;
      Edit8.Text := vnotransaksi;
    end;
  end;
end;

procedure Tfdatarefund.Button4Click(Sender: TObject);
begin
  if MessageDlg('Apakah anda yakin akan membatalkan refund atas nama ' + UpperCase(qdataatas_nama.Text)+' ?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
  begin
//    try
      tabel.q1.sql.Clear;
      tabel.q1.sql.Add('select no_refund from n_refund_approv where no_refund='''+qdatano_refund.Text+''' ');
      tabel.q1.Open;
      if tabel.q1.RecordCount > 0 then
      begin
        ShowMessage('Ada kesalahan sistem, silahkan refresh data ');
        Button2Click(nil);
      end
      else
      begin

//        tabel.q1.sql.Clear;
//        tabel.q1.sql.Add('START TRANSACTION');
//        tabel.q1.ExecSQL;

        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('update n_refund set status = -1 where no_refund='''+qdatano_refund.Text+''' ');
        tabel.q1.ExecSQL;

//        tabel.q1.SQL.Clear;
//        tabel.q1.SQL.Add('COMMIT');
//        tabel.q1.ExecSQL;

        ShowMessage('Refund berhasil di batalkan');
        Button2Click(nil);
      end;
//    except on e:Exception do
//    begin
//      tabel.q1.SQL.Clear;
//      tabel.q1.SQL.Add('ROLLBACK');
//      tabel.q1.ExecSQL;
//
//      ShowMessage('Error : '+e.Message);
//    end;
//    end;
  end;
end;

procedure Tfdatarefund.Button5Click(Sender: TObject);
begin
  if MessageDlg('Apakah anda yakin akan membatalkan approve refund atas nama ' + UpperCase(qsudahatas_nama.Text)+' ?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
  begin
        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('delete from n_refund_approv where no_refund='''+qsudahno_refund.Text+''' ');
        tabel.q1.ExecSQL;

        ShowMessage('Approve Refund berhasil di batalkan');
        Button2Click(nil);
  end;
end;

end.
