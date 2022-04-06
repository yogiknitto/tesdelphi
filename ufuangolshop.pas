unit ufuangolshop;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, Vcl.StdCtrls, cxButtons, Vcl.Buttons, sEdit,ComObj,
  cxControls, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, DBAccess, Uni, MemDS;

type
  Tfuangolshop = class(TForm)
    Panel1: TPanel;
    op: TOpenDialog;
    Panel2: TPanel;
    sEdit1: TsEdit;
    SpeedButton1: TSpeedButton;
    cxButton2: TcxButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    qdata: TUniQuery;
    dsdata: TUniDataSource;
    cxButton1: TcxButton;
    qdatatanggal: TDateField;
    qdatacustomer_code_sap: TStringField;
    qdatanama: TStringField;
    qdatajmlknitto: TFloatField;
    qdatajmlsap: TFloatField;
    qdataselisih: TFloatField;
    cxGrid1DBTableView1tanggal: TcxGridDBColumn;
    cxGrid1DBTableView1customer_code_sap: TcxGridDBColumn;
    cxGrid1DBTableView1nama: TcxGridDBColumn;
    cxGrid1DBTableView1jmlknitto: TcxGridDBColumn;
    cxGrid1DBTableView1jmlsap: TcxGridDBColumn;
    cxGrid1DBTableView1selisih: TcxGridDBColumn;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    qdata2: TUniQuery;
    dsqdata2: TUniDataSource;
    qdata2tanggal: TDateField;
    qdata2customer_code_sap: TStringField;
    qdata2nama: TStringField;
    qdata2jmlknitto: TFloatField;
    qdata2jmlsap: TFloatField;
    qdata2selisih: TFloatField;
    cxGridDBTableView1tanggal: TcxGridDBColumn;
    cxGridDBTableView1customer_code_sap: TcxGridDBColumn;
    cxGridDBTableView1nama: TcxGridDBColumn;
    cxGridDBTableView1jmlknitto: TcxGridDBColumn;
    cxGridDBTableView1jmlsap: TcxGridDBColumn;
    cxGridDBTableView1selisih: TcxGridDBColumn;
    Button1: TButton;
    Button2: TButton;
    Label2: TLabel;
    ComboBox6: TComboBox;
    ComboBox5: TComboBox;
    Button3: TButton;
    qdataref_no: TStringField;
    qdatano: TIntegerField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ComboBox5DropDown(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     function convertMonthNametoIndex(bulan:string):string;
  end;

var
  fuangolshop: Tfuangolshop;

implementation

{$R *.dfm}

uses uftabel, ufdetailuangmasuk;


function Tfuangolshop.convertMonthNametoIndex(bulan: string): string;
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

procedure Tfuangolshop.Button1Click(Sender: TObject);
begin
;
end;

procedure Tfuangolshop.Button2Click(Sender: TObject);
var
  idcustomer,urutan,refno,nokasir:String;
begin
  qdata.First;
  while not qdata.eof do begin
    if qdataselisih.AsFloat > 0 then begin
      refno:=qdataref_no.Value;
      nokasir:=IntToStr(qdatano.Value);
      tabel.q2.SQL.Clear;
      tabel.q2.SQL.Add('SELECT urutan FROM sinkronisasi_data WHERE tabel=''konfirmasi_pembayaran'' and ref_no='''+refno+''' ');
      tabel.q2.Active:=True;
      if tabel.q2.RecordCount > 0 then begin
        urutan:=tabel.q2.FieldValues['urutan'];

        tabel.q2.SQL.Clear;
        tabel.q2.SQL.Add('update sinkronisasi_progres set status_sync=''BARU'' where urutan='''+urutan+'''  ');
        tabel.q2.ExecSQL;
      end else begin
        tabel.q2.SQL.Clear;
        tabel.q2.SQL.Add('SELECT CONCAT((SELECT branch FROM data_cabang),''_'',IFNULL(op.id_customer,IFNULL(c.id_customer,sp.id_customer)),''_'',df.no) AS revkode ' +
        ' FROM `detail_konfirmasipembayaran` df ' +
        ' LEFT JOIN order_pembelian op USING(no_order) ' +
        ' LEFT JOIN customer c ON c.nama=df.`no_order` ' +
        ' LEFT JOIN `s_penjualan_katalog` sp ON sp.no_penjualan=df.`no_order` WHERE `no`='''+ nokasir +''' ');
        tabel.q2.Active:=true;
        if tabel.q2.RecordCount > 0 then begin
          refno:=tabel.q2.FieldValues['revkode'];

          tabel.q2.SQL.Clear;
          tabel.q2.SQL.Add('CALL sinkronisasi_sap('''+ nokasir +''','''+ refno +''', ''konfirmasi_pembayaran'',''/saptemp/sinkterimauang'',@rest_sinkronisasisap)  ');
          tabel.q2.ExecSQL;
        end;
      end;
    end;
  qdata.Next;
  end;
  ShowMessage('Sukses');

end;

procedure Tfuangolshop.Button3Click(Sender: TObject);
var periode:String;
begin
periode:=combobox5.Text+'-'+convertMonthNametoIndex(ComboBox6.Text);

qdata.SQL.Clear;
qdata.SQL.Add('SELECT dt.no,dt.tanggal,dt.customer_code_sap,dt.nama,dt.jml AS jmlknitto,IFNULL(ds.jml,0) AS jmlsap,(dt.jml - IFNULL(ds.jml,0)) AS selisih,IFNULL(ref_no,''-'') AS ref_no '+
'FROM (SELECT dk.no,DATE(dk.tanggal_transfer) AS tanggal,c.customer_code_sap,c.`nama`,SUM(dk.jumlah_uang) AS jml '+
'FROM `detail_konfirmasipembayaran` dk  '+
'JOIN `uang_customer` uc ON uc.`id_konfirmasi`=dk.`no`    '+
'JOIN customer c ON c.`id_customer`=uc.`id_customer`       '+
'WHERE DATE_FORMAT(dk.tanggal_transfer, ''%Y-%m'') ='''+periode+''' AND   '+
'((LCASE(TRIM(SUBSTRING_INDEX(dk.bank, ''#'', -1))) = ''tokopedia'') OR   '+
'(LCASE(TRIM(SUBSTRING_INDEX(dk.bank, ''#'', -1))) = ''shopee''))   '+
'GROUP BY DATE(dk.tanggal_transfer),c.customer_code_sap) dt  '+
'LEFT JOIN  '+
'(SELECT tanggal,customer_code_sap,nama,SUM(nominal) AS jml,ref_no    '+
'FROM `a_sap_arinvoice` WHERE sts=''INCOMING PAYMENT OLSHOP'' AND SUBSTR(customer_code_sap,1,1) = ''C''  '+
'AND DATE_FORMAT(tanggal, ''%Y-%m'') ='''+periode+''' and cabang=(select branch from data_cabang)   '+
'GROUP BY tanggal,customer_code_sap) ds   '+
'ON dt.tanggal=ds.tanggal AND dt.customer_code_sap=ds.customer_code_sap');
qdata.Active:=True;

qdata2.SQL.Clear;
qdata2.SQL.Add('SELECT ds.tanggal,ds.customer_code_sap,ds.nama,IFNULL(dt.jml,0) AS jmlknitto, '+
'IFNULL(ds.jml,0) AS jmlsap,(IFNULL(dt.jml,0) - IFNULL(ds.jml,0)) AS selisih  '+
'FROM (SELECT tanggal,customer_code_sap,nama,SUM(nominal) AS jml        '+
'FROM `a_sap_arinvoice`                                               '+
'WHERE sts=''INCOMING PAYMENT OLSHOP'' AND SUBSTR(customer_code_sap,1,1) = ''C''  '+
'AND DATE_FORMAT(tanggal, ''%Y-%m'') ='''+periode+'''  and cabang=(select branch from data_cabang)                 '+
'GROUP BY tanggal,customer_code_sap) ds                            '+
'LEFT JOIN                                                          '+
'(SELECT DATE(dk.tanggal_transfer) AS tanggal,c.customer_code_sap,c.`nama`,SUM(dk.jumlah_uang) AS jml '+
'FROM `detail_konfirmasipembayaran` dk                     '+
'JOIN `uang_customer` uc ON uc.`id_konfirmasi`=dk.`no`       '+
'JOIN customer c ON c.`id_customer`=uc.`id_customer`           '+
'WHERE DATE_FORMAT(dk.tanggal_transfer, ''%Y-%m'') ='''+periode+''' '+
'AND ((LCASE(TRIM(SUBSTRING_INDEX(dk.bank, ''#'', -1))) = ''tokopedia'') OR  '+
'(LCASE(TRIM(SUBSTRING_INDEX(dk.bank, ''#'', -1))) = ''shopee''))      '+
'GROUP BY DATE(dk.tanggal_transfer),c.customer_code_sap) dt     '+
'ON dt.tanggal=ds.tanggal AND dt.customer_code_sap=ds.customer_code_sap  '+
'WHERE dt.customer_code_sap IS NULL ');
qdata2.Active:=True;

end;

procedure Tfuangolshop.ComboBox5DropDown(Sender: TObject);
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

procedure Tfuangolshop.cxButton1Click(Sender: TObject);
begin
  Button3Click(nil);

  sedit1.text := '';
end;

procedure Tfuangolshop.cxButton2Click(Sender: TObject);
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
  tabel.q1.SQL.Add('delete from `a_sap_arinvoice` where sts=''INCOMING PAYMENT OLSHOP'' ');
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
//        nominal := trim(Sheet.Cells.Item[x, 10]);
//      end;

      if (nama <> '') and (nominal <> '') then begin
        no_transaksi := ref_no;

//        tabel.q1.SQL.Clear;
//        tabel.q1.SQL.Add('select id from a_sap_arinvoice where ref_no='''+ ref_no +''' and ref_no<>''catatan'' and sts=''INCOMING PAYMENT'' ');
//        tabel.q1.Open;
//        if tabel.q1.RecordCount = 0 then begin
          tabel.q1.SQL.Clear;
          tabel.q1.SQL.Add('insert into a_sap_arinvoice values(null,'''+ tanggal +''','''+ customer_code_sap +''','''+ nama +''','''+ nominal +''','''+ ref_no +''','''+ cabang +''','''+ no_transaksi +''',''INCOMING PAYMENT OLSHOP'') ');
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

procedure Tfuangolshop.FormShow(Sender: TObject);
begin
  sedit1.text:='';

  qdata.Active := False;
  qdata2.Active := False;
end;

procedure Tfuangolshop.SpeedButton1Click(Sender: TObject);
begin
  if op.Execute then
  sedit1.text:=op.FileName;
end;

end.
