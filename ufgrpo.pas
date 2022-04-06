unit ufgrpo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinOffice2010Black,
  cxControls, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB,
  cxDBData, DBAccess, Uni, MemDS, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Vcl.StdCtrls, cxButtons, sEdit, Vcl.Buttons, Vcl.ExtCtrls,comobj;

type
  Tfgrpo = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    Label2: TLabel;
    sEdit1: TsEdit;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    ComboBox6: TComboBox;
    ComboBox5: TComboBox;
    Button3: TButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Button2: TButton;
    op: TOpenDialog;
    qdata: TUniQuery;
    dsdata: TUniDataSource;
    qdata2: TUniQuery;
    qdata2tanggal: TDateField;
    qdata2customer_code_sap: TStringField;
    qdata2nama: TStringField;
    qdata2jmlknitto: TFloatField;
    qdata2jmlsap: TFloatField;
    qdata2selisih: TFloatField;
    dsqdata2: TUniDataSource;
    qdatano_terima: TStringField;
    qdatatanggal_terima: TDateField;
    qdatano_sj: TStringField;
    qdatano_po: TStringField;
    qdatanama: TStringField;
    qdatatotal: TFloatField;
    qdatanominal: TFloatField;
    qdataselisih: TFloatField;
    cxGrid1DBTableView1no_terima: TcxGridDBColumn;
    cxGrid1DBTableView1tanggal_terima: TcxGridDBColumn;
    cxGrid1DBTableView1no_sj: TcxGridDBColumn;
    cxGrid1DBTableView1no_po: TcxGridDBColumn;
    cxGrid1DBTableView1nama: TcxGridDBColumn;
    cxGrid1DBTableView1total: TcxGridDBColumn;
    cxGrid1DBTableView1nominal: TcxGridDBColumn;
    cxGrid1DBTableView1selisih: TcxGridDBColumn;
    procedure SpeedButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ComboBox5DropDown(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     function convertMonthNametoIndex(bulan:string):string;
  end;

var
  fgrpo: Tfgrpo;

implementation

{$R *.dfm}

uses uftabel;

procedure Tfgrpo.ComboBox5DropDown(Sender: TObject);
var tanggal,tahun,perbandingan:string;
begin
tabel.q1.SQL.Clear;
tabel.q1.SQL.Add('select distinct(DATE_FORMAT(tanggal_terima,''%Y'')) as tanggal_terima from pembelian_kainstok order by tanggal_terima');
tabel.q1.Active:=true;
perbandingan:='0000';
if not(tabel.q1.Eof) and (tabel.q1.Bof) then begin
TComboBox(Sender).Items.Clear;
tabel.q1.First;
while not tabel.q1.Eof do
begin
tanggal:=tabel.q1.FieldValues['tanggal_terima'];
tahun:=copy(tanggal,1,4);
if tahun=perbandingan then begin

end else begin
TComboBox(Sender).Items.Append(tahun);
perbandingan:=tahun;
end;
tabel.q1.Next;

 end;
  end;

end;

function Tfgrpo.convertMonthNametoIndex(bulan: string): string;
begin
  if bulan = 'Januari' then
    Result := '01'
  else if bulan = 'Februari' then
    Result := '02'
  else if bulan = 'Maret' then
    Result := '03'
  else if bulan = 'April' then
    Result := '04'
  else if bulan = 'Mei' then
    Result := '05'
  else if bulan = 'Juni' then
    Result := '06'
  else if bulan = 'Juli' then
    Result := '07'
  else if bulan = 'Agustus' then
    Result := '08'
  else if bulan = 'September' then
    Result := '09'
  else if bulan = 'Oktober' then
    Result := '10'
  else if bulan = 'November' then
    Result := '11'
  else if bulan = 'Desember' then
    Result := '12'
  else
    Result := '00';
end;

procedure Tfgrpo.Button2Click(Sender: TObject);
var
  idcustomer,idkonfirmasi,urutan,refno,periode,nokasir:String;
begin
  periode:=combobox5.Text+'-'+convertMonthNametoIndex(ComboBox6.Text);
  qdata.First;
  while not qdata.eof do begin
    if qdataselisih.AsFloat > 0 then begin
//         refno:=qdataref_no.Value;
//         nokasir:=IntToStr(qdatanokasir.Value);
//        tabel.q2.SQL.Clear;
//        tabel.q2.SQL.Add('SELECT urutan FROM sinkronisasi_data JOIN sinkronisasi_progres USING(urutan) '+
//        ' WHERE (tabel=''penerimaan_kainkhusus'' or tabel=''penerimaan_kain'') and ref_no='''+idkonfirmasi+''' ');
//        tabel.q2.Active:=True;
//        if tabel.q2.RecordCount > 0 then begin
//          urutan:=tabel.q2.FieldValues['urutan'];
//
//          tabel.q2.SQL.Clear;
//          tabel.q2.SQL.Add('update sinkronisasi_progres set status_sync=''BARU'' where urutan='''+urutan+'''  ');
//          tabel.q2.ExecSQL;
//        end else begin
////          tabel.q2.SQL.Clear;
////          tabel.q2.SQL.Add('SELECT CONCAT(no_order,''_'',df.no) AS revkode ' +
////          ' FROM `n_temp_kasirdetail` df ' +
////          ' WHERE `no`='''+ nokasir +''' ');
////          tabel.q2.Active:=true;
////          if tabel.q2.RecordCount > 0 then begin
////            refno:=tabel.q2.FieldValues['revkode'];
////
////            tabel.q2.SQL.Clear;
////            tabel.q2.SQL.Add('CALL sinkronisasi_sap('''+ nokasir +''','''+ refno +''', ''terimauang_kasir'',''/saptemp/sinkrterimauanginvoice'',@rest_sinkronisasisap)  ');
////            tabel.q2.ExecSQL;
////          end;
//        end;

    end;
  qdata.Next;
  end;
  ShowMessage('Sukses');

end;

procedure Tfgrpo.Button3Click(Sender: TObject);
var periode:String;
begin
periode:=combobox5.Text+'-'+convertMonthNametoIndex(ComboBox6.Text);
qdata.SQL.Clear;
qdata.SQL.Add('SELECT no_terima,tanggal_terima,no_sj,no_po,s.nama,SUM(dpptotal + ppntotal) AS total,ifnull(nominal,0) as nominal,ifnull(SUM(dpptotal + ppntotal)-ifnull(nominal,0),0) AS selisih '+
'FROM penerimaan_kain pk2 JOIN detail_penerimaankain dp USING (no_terima) JOIN dpp_penerimaankain dpp ON dpp.id = dp.no_detail  '+
'JOIN supplier s USING (id_supplier)                                                                                              '+
'LEFT JOIN a_sap_arinvoice  ap ON ap.no_transaksi=CONCAT(pk2.`no_terima`,'' - '',no_sj)                                               '+
'WHERE SUBSTR(tanggal_terima,1,7)='''+periode+'''                                                                                     '+
'AND pk2.jenis_kain = ''WARNA'' AND dp.jenis_penerimaan = ''PEMBELIAN'' GROUP BY no_terima                                                  '+
'UNION                                                                                                                                    '+
'SELECT no_terima,tanggal_terima,no_sj,no_po,s.nama,SUM(dpptotal + ppntotal) AS total,ifnull(nominal,0) as nominal,ifnull(SUM(dpptotal + ppntotal)-ifnull(nominal,0),0) AS selisih   '+
'FROM pembelian_kainstok pk JOIN detail_penerimaanstok dp USING (no_terima) JOIN dpp_penerimaanstok dpp                                   '+
'ON dpp.id = dp.no_detail JOIN supplier s USING (id_supplier)                                                                              '+
'LEFT JOIN a_sap_arinvoice  ap ON ap.no_transaksi=CONCAT(pk.`no_terima`,'' - '',no_sj)                                                        '+
'WHERE SUBSTR(tanggal_terima,1,7)='''+periode+''' AND pk.jenis_kain = ''WARNA''                                                                '+
'AND dp.jenis_penerimaan = ''PEMBELIAN'' GROUP BY no_terima ORDER BY tanggal_terima,no_terima   ');
qdata.Active:=True;

end;

procedure Tfgrpo.cxButton2Click(Sender: TObject);
var
  Xlapp1, Sheet: Variant;
  f1, kata:TStringList;
  MaxRow, MaxCol, x: integer;
  tanggal, customer_code_sap, nama, nominal, ref_no, cabang,no_transaksi,tanggalpaten : string;
begin
  if sedit1.text = '' then
  begin
    ShowMessage('Silahkan filih file yang akan di import');
    Exit;
  end;

//  try
//    f1 := TStringList.Create;
//    f1.LoadFromFile(sEdit1.text);
//  except
//    ShowMessage('File tidak bisa di akses karena sedang di buka oleh program lain silahkan tutup terlebih dahulu!');
//    Exit;
//  end;
  tabel.q1.SQL.Clear;
  tabel.q1.SQL.Add('delete from `a_sap_arinvoice` where sts=''GRPO'' ');
  tabel.q1.ExecSQL;

  Xlapp1 := CreateOleObject('excel.application');
  Xlapp1.Workbooks.open(sEdit1.text);
  Sheet := Xlapp1.WorkSheets[1];
  MaxRow := Sheet.Usedrange.EntireRow.count;
  MaxCol := Sheet.Usedrange.EntireColumn.count;


  try
    for x := 2 to MaxRow do
    begin


      tanggal := trim(Sheet.Cells.Item[x, 11]);
      tanggalpaten := tanggal;
      tanggal := copy(tanggal,7,4)+'-'+copy(tanggal,4,2)+'-'+copy(tanggal,1,2);
      customer_code_sap := trim(Sheet.Cells.Item[x, 3]);
      nama := trim(Sheet.Cells.Item[x, 4]);
      nominal := trim(Sheet.Cells.Item[x, 7]);
      ref_no := trim(Sheet.Cells.Item[x, 5]);
      cabang := '';

//      if (Copy(ref_no,1,34) = 'Reverse Entry for Incoming Payment') then begin
//        nominal := trim(Sheet.Cells.Item[x, 9]);
//      end;

      if (nama <> '') and (nominal <> '') then begin
        no_transaksi := ref_no;

//        tabel.q1.SQL.Clear;
//        tabel.q1.SQL.Add('select id from a_sap_arinvoice where ref_no='''+ ref_no +''' and ref_no<>''catatan'' and sts=''INCOMING PAYMENT'' ');
//        tabel.q1.Open;
//
//        if tabel.q1.RecordCount = 0 then begin
          tabel.q1.SQL.Clear;
          tabel.q1.SQL.Add('insert into a_sap_arinvoice values(null,'''+ tanggal +''','''+ customer_code_sap +''','''+ nama +''','''+ nominal +''','''+ ref_no +''','''+ cabang +''','''+ no_transaksi +''',''GRPO'') ');
          tabel.q1.ExecSQL;

//        end else begin
//          tabel.q1.SQL.Clear;
//          tabel.q1.SQL.Add('update a_sap_arinvoice set tanggal='''+ tanggal +''',customer_code_sap='''+ customer_code_sap +''',nama='''+ nama +''', ' +
//          ' nominal='''+ nominal +''',cabang='''+ cabang +''',sts='''+ sts +''' where ref_no='''+ref_no+''' ');
//          tabel.q1.ExecSQL;
//        end;
      end;
    end;

    ShowMessage('Data berhasil diimport');

    qdata.Active := False;
    qdata.Active := True;
  except
  on e: exception do
  begin
    showmessage('Terjadi Kesalahan!. Error : ' + e.message);
    ShowMessage(tanggalpaten);
    ShowMessage(tanggal);
  end;
  end;

end;

procedure Tfgrpo.SpeedButton1Click(Sender: TObject);
begin
  if op.Execute then
  sedit1.text:=op.FileName;
end;

end.
