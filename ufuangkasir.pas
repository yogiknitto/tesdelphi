unit ufuangkasir;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinOffice2010Black,
  cxControls, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB,
  cxDBData, DBAccess, Uni, MemDS, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,ComObj,
  Vcl.StdCtrls, cxButtons, sEdit, Vcl.Buttons, Vcl.ExtCtrls, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue;

type
  Tfuangkasir = class(TForm)
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
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1tanggal: TcxGridDBColumn;
    cxGridDBTableView1customer_code_sap: TcxGridDBColumn;
    cxGridDBTableView1nama: TcxGridDBColumn;
    cxGridDBTableView1jmlknitto: TcxGridDBColumn;
    cxGridDBTableView1jmlsap: TcxGridDBColumn;
    cxGridDBTableView1selisih: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Button1: TButton;
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
    qdatatanggal: TDateTimeField;
    qdatacustomer_code_sap: TStringField;
    qdatanama: TStringField;
    qdatano_order: TStringField;
    qdataref_no: TStringField;
    qdatajumlah: TFloatField;
    qdatanominalsap: TFloatField;
    qdataselisih: TFloatField;
    cxGrid1DBTableView1tanggal: TcxGridDBColumn;
    cxGrid1DBTableView1customer_code_sap: TcxGridDBColumn;
    cxGrid1DBTableView1nama: TcxGridDBColumn;
    cxGrid1DBTableView1no_order: TcxGridDBColumn;
    cxGrid1DBTableView1ref_no: TcxGridDBColumn;
    cxGrid1DBTableView1jumlah: TcxGridDBColumn;
    cxGrid1DBTableView1nominalsap: TcxGridDBColumn;
    cxGrid1DBTableView1selisih: TcxGridDBColumn;
    qdatanokasir: TIntegerField;
    procedure cxButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ComboBox5DropDown(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     function convertMonthNametoIndex(bulan:string):string;
  end;

var
  fuangkasir: Tfuangkasir;

implementation

{$R *.dfm}

uses uftabel;


function Tfuangkasir.convertMonthNametoIndex(bulan: string): string;
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

procedure Tfuangkasir.Button2Click(Sender: TObject);
var
  idcustomer,idkonfirmasi,urutan,refno,periode,nokasir:String;
begin
  periode:=combobox5.Text+'-'+convertMonthNametoIndex(ComboBox6.Text);
  qdata.First;
  while not qdata.eof do begin
    if qdataselisih.AsFloat > 0 then begin
         refno:=qdataref_no.Value;
         nokasir:=IntToStr(qdatanokasir.Value);
        tabel.q2.SQL.Clear;
        tabel.q2.SQL.Add('SELECT urutan FROM sinkronisasi_data JOIN sinkronisasi_progres USING(urutan) '+
        ' WHERE tabel=''Konfirmasi_pembayaran'' and ref_no='''+idkonfirmasi+''' ');
        tabel.q2.Active:=True;
        if tabel.q2.RecordCount > 0 then begin
          urutan:=tabel.q2.FieldValues['urutan'];

          tabel.q2.SQL.Clear;
          tabel.q2.SQL.Add('update sinkronisasi_progres set status_sync=''BARU'' where urutan='''+urutan+'''  ');
          tabel.q2.ExecSQL;
        end else begin
          tabel.q2.SQL.Clear;
          tabel.q2.SQL.Add('SELECT CONCAT(no_order,''_'',df.no) AS revkode ' +
          ' FROM `n_temp_kasirdetail` df ' +
          ' WHERE `no`='''+ nokasir +''' ');
          tabel.q2.Active:=true;
          if tabel.q2.RecordCount > 0 then begin
            refno:=tabel.q2.FieldValues['revkode'];

            tabel.q2.SQL.Clear;
            tabel.q2.SQL.Add('CALL sinkronisasi_sap('''+ nokasir +''','''+ refno +''', ''terimauang_kasir'',''/saptemp/sinkrterimauanginvoice'',@rest_sinkronisasisap)  ');
            tabel.q2.ExecSQL;
          end;
        end;

    end;
  qdata.Next;
  end;
  ShowMessage('Sukses');

end;

procedure Tfuangkasir.Button3Click(Sender: TObject);
var periode:String;
begin
periode:=combobox5.Text+'-'+convertMonthNametoIndex(ComboBox6.Text);

qdata.SQL.Clear;
qdata.SQL.Add('SELECT nt.no as nokasir,nt.tanggal,customer_code_sap,nama,no_order,sd.`ref_no`,(nt.jumlah-IFNULL(ak.nominal,0)) as jumlah,IFNULL(ks.nominal,0) AS nominalsap,(nt.jumlah-IFNULL(ak.nominal,0)) - IFNULL(ks.nominal, 0) AS selisih '+
' FROM n_temp_kasirdetail nt '+
' LEFT JOIN junct_kembaliankasir jk ON jk.id_kasir=nt.no '+
' LEFT JOIN a_kembalian ak ON ak.no=jk.id_kembalian     '+
' LEFT JOIN (SELECT * FROM sinkronisasi_data WHERE `tabel`=''terimauang_kasir'') sd ON nt.no=sd.no_transaksi '+
' LEFT JOIN `a_sap_arinvoice` ks ON ks.`ref_no`=sd.`ref_no`  '+
' WHERE jenis_pembayaran=''CASH'' AND SUBSTR(nt.tanggal,1,7)='''+periode+''' ');
qdata.Active:=True;

//qdata2.SQL.Clear;
//qdata2.SQL.Add('SELECT ds.tanggal,ds.customer_code_sap,ds.nama,IFNULL(dt.jml,0) AS jmlknitto, '+
//'IFNULL(ds.jml,0) AS jmlsap,(IFNULL(dt.jml,0) - IFNULL(ds.jml,0)) AS selisih  '+
//'FROM (SELECT tanggal,customer_code_sap,nama,SUM(nominal) AS jml        '+
//'FROM `a_sap_arinvoice`                                               '+
//'WHERE sts=''INCOMING PAYMENT'' AND SUBSTR(customer_code_sap,1,1) = ''C''  '+
//'AND DATE_FORMAT(tanggal, ''%Y-%m'') ='''+periode+'''                   '+
//'GROUP BY tanggal,customer_code_sap) ds                            '+
//'LEFT JOIN                                                          '+
//'(SELECT DATE(dk.tanggal_transfer) AS tanggal,c.customer_code_sap,c.`nama`,SUM(dk.jumlah_uang) AS jml '+
//'FROM `detail_konfirmasipembayaran` dk                     '+
//'JOIN `uang_customer` uc ON uc.`id_konfirmasi`=dk.`no`       '+
//'JOIN customer c ON c.`id_customer`=uc.`id_customer`           '+
//'WHERE DATE_FORMAT(dk.tanggal_transfer, ''%Y-%m'') ='''+periode+''' '+
//'AND ((LCASE(TRIM(SUBSTRING_INDEX(dk.bank, ''#'', -1))) = ''bca'') OR  '+
//'(LCASE(TRIM(SUBSTRING_INDEX(dk.bank, ''#'', -1))) = ''mandiri'') OR  '+
//'(LCASE(TRIM(SUBSTRING_INDEX(dk.bank, ''#'', -1))) = ''bri''))      '+
//'GROUP BY DATE(dk.tanggal_transfer),c.customer_code_sap) dt     '+
//'ON dt.tanggal=ds.tanggal AND dt.customer_code_sap=ds.customer_code_sap  '+
//'WHERE dt.customer_code_sap IS NULL ');
//qdata2.Active:=True;

end;

procedure Tfuangkasir.ComboBox5DropDown(Sender: TObject);
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

procedure Tfuangkasir.cxButton2Click(Sender: TObject);
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
  tabel.q1.SQL.Add('delete from `a_sap_arinvoice` where sts=''CASH'' ');
  tabel.q1.ExecSQL;

  Xlapp1 := CreateOleObject('excel.application');
  Xlapp1.Workbooks.open(sEdit1.text);
  Sheet := Xlapp1.WorkSheets[1];
  MaxRow := Sheet.Usedrange.EntireRow.count;
  MaxCol := Sheet.Usedrange.EntireColumn.count;


  try
    for x := 3 to MaxRow do
    begin


      tanggal := trim(Sheet.Cells.Item[x, 1]);
      tanggalpaten := tanggal;
      tanggal := copy(tanggal,7,4)+'-'+copy(tanggal,4,2)+'-'+copy(tanggal,1,2);
      customer_code_sap := trim(Sheet.Cells.Item[x, 7]);
      nama := trim(Sheet.Cells.Item[x, 8]);
      nominal := trim(Sheet.Cells.Item[x, 9]);
      ref_no := trim(Sheet.Cells.Item[x, 6]);
      cabang := copy(ref_no,1,3);

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
          tabel.q1.SQL.Add('insert into a_sap_arinvoice values(null,'''+ tanggal +''','''+ customer_code_sap +''','''+ nama +''','''+ nominal +''','''+ ref_no +''','''+ cabang +''','''+ no_transaksi +''',''CASH'') ');
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

procedure Tfuangkasir.SpeedButton1Click(Sender: TObject);
begin
  if op.Execute then
  sedit1.text:=op.FileName;
end;

end.
