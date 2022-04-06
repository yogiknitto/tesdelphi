unit ufdataarinvoice;

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
  Tfdataarinvoice = class(TForm)
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
    Label2: TLabel;
    ComboBox6: TComboBox;
    ComboBox5: TComboBox;
    Button1: TButton;
    qdatano_pengeluaran: TStringField;
    qdatano_order: TStringField;
    qdataref_no: TStringField;
    qdatanominalknitto: TFloatField;
    qdatanominalsap: TFloatField;
    qdataselisih: TFloatField;
    cxGrid1DBTableView1no_pengeluaran: TcxGridDBColumn;
    cxGrid1DBTableView1no_order: TcxGridDBColumn;
    cxGrid1DBTableView1ref_no: TcxGridDBColumn;
    cxGrid1DBTableView1nominalknitto: TcxGridDBColumn;
    cxGrid1DBTableView1nominalsap: TcxGridDBColumn;
    cxGrid1DBTableView1selisih: TcxGridDBColumn;
    Button2: TButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure ComboBox5DropDown(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function convertMonthNametoIndex(bulan:string):string;
  end;

var
  fdataarinvoice: Tfdataarinvoice;

implementation

{$R *.dfm}

uses uftabel;

function Tfdataarinvoice.convertMonthNametoIndex(bulan: string): string;
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

procedure Tfdataarinvoice.Button1Click(Sender: TObject);
var periode:String;
begin
  periode:=combobox5.Text+'-'+convertMonthNametoIndex(ComboBox6.Text);
  qdata.SQL.Clear;
  qdata.SQL.Add('SELECT pk.`no_pengeluaran`,ro.`no_order`,IFNULL(sd.`ref_no`,''-'') AS ref_no, ' +
  ' ((ntk.`tagihan_kain` / (apk.ppn + 1)) + (ntk.`katalog` / (apk.ppn + 1))) AS nominalknitto, ' +
  ' IFNULL(asa.`nominal`,0) AS nominalsap,((ntk.`tagihan_kain` / (apk.ppn + 1)) + (ntk.`katalog` / (apk.ppn + 1))) - IFNULL(asa.`nominal`,0) AS selisih   ' +
  ' FROM `penjualan_kainstok` pk                               ' +
  ' JOIN `relasi_orderdanpenjualan` ro ON ro.`no_penjualan`=pk.`no_pengeluaran`  ' +
  ' JOIN `n_temp_kasir` ntk ON ntk.`no_order`=ro.`no_order`        ' +
  ' JOIN `a_ppn_kasir` apk ON ntk.`no_order`=apk.`no_order`       ' +
  ' LEFT JOIN `sinkronisasi_data` sd ON sd.`no_transaksi`=pk.`no_pengeluaran`    ' +
  ' LEFT JOIN `a_sap_arinvoice` asa ON asa.`ref_no`=sd.`ref_no` ' +
  ' WHERE DATE_FORMAT(pk.tanggal, ''%Y-%m'') ='''+periode+'''   ' +
  ' GROUP BY pk.`no_pengeluaran`                                 ' +
  ' UNION                                                        ' +
  ' SELECT spk.`no_penjualan` AS `no_pengeluaran`,spk.`no_penjualan` AS `no_order`,IFNULL(sd.`ref_no`,''-'') AS ref_no,   ' +
  ' (ntk.`tagihan_kain` / (apk.ppn + 1)) AS nominalknitto,                 ' +
  ' IFNULL(asa.`nominal`,0) AS nominalsap,(ntk.`tagihan_kain` / (apk.ppn + 1)) - IFNULL(asa.`nominal`,0) AS selisih     ' +
  ' FROM `s_penjualan_katalog` spk        ' +
  ' JOIN `n_temp_kasir` ntk ON ntk.`no_order`=spk.`no_penjualan`   ' +
  ' JOIN `a_ppn_kasir` apk ON apk.`no_order`=ntk.`no_order`    ' +
  ' LEFT JOIN `sinkronisasi_data` sd ON sd.`no_transaksi`=spk.`no_penjualan`     ' +
  ' LEFT JOIN `a_sap_arinvoice` asa ON asa.`ref_no`=sd.`ref_no`  ' +
  ' WHERE DATE_FORMAT(spk.tanggal, ''%Y-%m'') ='''+periode+'''  ' +
  ' GROUP BY spk.`no_penjualan`            ' +
  ' UNION                           ' +
  ' SELECT pk.`no_pengeluaran` AS `no_pengeluaran`,pk.`no_pengeluaran` AS `no_order`,IFNULL(sd.`ref_no`,''-'') AS ref_no,   ' +
  ' dp.nominal AS nominalknitto,  ' +
  ' IFNULL(asa.`nominal`,0) AS nominalsap,dp.nominal - IFNULL(asa.`nominal`,0)AS selisih    ' +
  ' FROM `pengeluaran_kain` pk ' +
  ' JOIN (SELECT dp.`no_pengeluaran`,SUM(dpp.`dpptotal_jual`) AS nominal FROM detail_pengeluarankain dp    ' +
  ' JOIN `dpp_pengeluarankain` dpp ON dpp.`id`=dp.`no_detail` ' +
  ' GROUP BY dp.`no_pengeluaran`) dp ON pk.no_pengeluaran=dp.no_pengeluaran   ' +
  ' LEFT JOIN `sinkronisasi_data` sd ON sd.`no_transaksi`=pk.`no_pengeluaran`   ' +
  ' LEFT JOIN `a_sap_arinvoice` asa ON asa.`ref_no`=sd.`ref_no`       ' +
  ' WHERE DATE_FORMAT(pk.tanggal_kirim, ''%Y-%m'') ='''+periode+'''     ' +
  ' GROUP BY pk.`no_pengeluaran`  ' +
  ' UNION                           ' +
  ' SELECT pk.`no_pengeluaran` AS `no_pengeluaran`,pk.`no_pengeluaran` AS `no_order`,IFNULL(sd.`ref_no`,''-'') AS ref_no, ' +
  ' dp.nominal AS nominalknitto,                                                      ' +
  ' IFNULL(asa.`nominal`,0) AS nominalsap,dp.nominal - IFNULL(asa.`nominal`,0) AS selisih ' +
  ' FROM `penjualan_kainstok` pk                                                       ' +
  ' JOIN (SELECT dp.`no_pengeluaran`,SUM(dpp.`dpptotal_jual`) AS nominal FROM detail_pengeluaranstok dp ' +
  ' JOIN `dpp_pengeluaranstok` dpp ON dpp.`id`=dp.`no_detail`   ' +
  ' GROUP BY dp.`no_pengeluaran`) dp ON pk.no_pengeluaran=dp.no_pengeluaran  ' +
  ' LEFT JOIN `sinkronisasi_data` sd ON sd.`no_transaksi`=pk.`no_pengeluaran`  ' +
  ' LEFT JOIN `a_sap_arinvoice` asa ON asa.`ref_no`=sd.`ref_no`       ' +
  ' WHERE DATE_FORMAT(pk.tanggal, ''%Y-%m'') ='''+periode+'''  and pk.penjualan_melalui=''PENJUALAN BS SEGEL''     ' +
  ' GROUP BY pk.`no_pengeluaran`');
  qdata.Active:=True;
end;

procedure Tfdataarinvoice.Button2Click(Sender: TObject);
var
  urutan, branch, tabelsap : string;
begin
  if qdata.RecordCount > 0 then begin
    tabel.q2.SQL.Clear;
    tabel.q2.SQL.Add('select branch from data_cabang ');
    tabel.q2.Active:=True;
    if tabel.q2.RecordCount > 0 then begin
      branch:=tabel.q2.FieldValues['branch'] + '_';
    end else begin
      branch:='';
    end;

    qdata.First;
    while not qdata.Eof do begin
      if (qdatanominalsap.AsFloat = 0) and (qdatanominalknitto.AsFloat > 0) then begin
        if qdataref_no.AsString = '-' then begin
          if Copy(qdatano_order.AsString,1,2) = 'KT' then begin
            tabelsap :=  'penjualankatalog';
          end else if Copy(qdatano_order.AsString,1,2) = 'KL' then begin
            tabelsap :=  'penjualankhusus';
          end else begin
            tabelsap :=  'penjualankain';
          end;

          tabel.q2.SQL.Clear;
          tabel.q2.SQL.Add('CALL sinkronisasi_sap('''+ qdatano_pengeluaran.Value +''', '+
          ' concat('''+ branch +''','''+ qdatano_order.Value +''',''_PenjualanDagang''), '+
          ' '''+ tabelsap +''',''/saptemp/sinkcetakfaktur_kain'',@rest_sinkronisasisap)  ');
          tabel.q2.ExecSQL;
        end else begin
          tabel.q2.SQL.Clear;
          tabel.q2.SQL.Add('SELECT urutan FROM `sinkronisasi_data` WHERE ref_no='''+ qdataref_no.AsString +''' ');
          tabel.q2.Active:=True;
          if tabel.q2.RecordCount>0 then begin
            urutan:=tabel.q2.FieldValues['urutan'];

            tabel.q2.SQL.Clear;
            tabel.q2.SQL.Add('update sinkronisasi_progres set status_sync=''BARU'' where urutan='''+urutan+'''  ');
            ShowMessage(tabel.q2.SQL.Text);
            tabel.q2.ExecSQL;
          end;
        end;
      end;
    qdata.Next;
    end;

    qdata.Active := False;
    qdata.Active := True;

    ShowMessage('Data Berhasil Diperbaiki');
  end else begin
    ShowMessage('Data Kosong');
  end;
end;

procedure Tfdataarinvoice.ComboBox5DropDown(Sender: TObject);
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

procedure Tfdataarinvoice.cxButton1Click(Sender: TObject);
begin
  Button1Click(nil);

  sedit1.text := '';
end;

procedure Tfdataarinvoice.cxButton2Click(Sender: TObject);
var
  Xlapp1, Sheet: Variant;
  f1, kata:TStringList;
  MaxRow, MaxCol, x: integer;
  tanggal, customer_code_sap, nama, nominal, ref_no, cabang,no_transaksi,tanggalpaten, sts : string;
Begin
  if sedit1.text = '' then
  begin
    ShowMessage('Silahkan filih file yang akan di import');
    Exit;
  end;

  try
    f1 := TStringList.Create;
    f1.LoadFromFile(sEdit1.text);
  except
    ShowMessage('File tidak bisa di akses karena sedang di buka oleh program lain silahkan tutup terlebih dahulu!');
    Exit;
  end;

  Xlapp1 := CreateOleObject('excel.application');
  Xlapp1.Workbooks.open(sEdit1.text);
  Sheet := Xlapp1.WorkSheets[1];
  MaxRow := Sheet.Usedrange.EntireRow.count;
  MaxCol := Sheet.Usedrange.EntireColumn.count;

  try
    for x := 3 to MaxRow do
    begin
      sts := 'arinvoice';

      tanggal := trim(Sheet.Cells.Item[x, 1]);
      tanggalpaten := tanggal;
      tanggal := copy(tanggal,7,4)+'-'+copy(tanggal,4,2)+'-'+copy(tanggal,1,2);
      customer_code_sap := trim(Sheet.Cells.Item[x, 7]);
      nama := trim(Sheet.Cells.Item[x, 8]);
      nominal := trim(Sheet.Cells.Item[x, 10]);
      ref_no := trim(Sheet.Cells.Item[x, 16]);
      cabang := trim(Sheet.Cells.Item[x, 12]);
      if nama <> '' then begin


        if nominal = '' then begin
          nominal := trim(Sheet.Cells.Item[x, 9]);

          if nominal = '' then begin
            nominal := '0';
          end else begin
            sts := 'creditmemo';
          end;
        end;

        no_transaksi := ref_no;

        if Length(no_transaksi) > 12 then begin
          if copy(no_transaksi,5,2) = 'KT' then begin
            no_transaksi := copy(no_transaksi,5,12);
          end else begin
            no_transaksi := copy(no_transaksi,5,11);
          end;
        end;

        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('select id from a_sap_arinvoice where ref_no='''+ ref_no +''' ');
        tabel.q1.Open;
        if tabel.q1.RecordCount = 0 then begin
          tabel.q1.SQL.Clear;
          tabel.q1.SQL.Add('insert into a_sap_arinvoice values(null,'''+ tanggal +''','''+ customer_code_sap +''','''+ nama +''','''+ nominal +''','''+ ref_no +''','''+ cabang +''','''+ no_transaksi +''','''+ sts +''') ');
          tabel.q1.ExecSQL;
//        end else begin
//          tabel.q1.SQL.Clear;
//          tabel.q1.SQL.Add('update a_sap_arinvoice set tanggal='''+ tanggal +''',customer_code_sap='''+ customer_code_sap +''',nama='''+ nama +''', ' +
//          ' nominal='''+ nominal +''',cabang='''+ cabang +''',sts='''+ sts +''' where ref_no='''+ref_no+''' ');
//          tabel.q1.ExecSQL;
        end;
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

procedure Tfdataarinvoice.FormShow(Sender: TObject);
begin
  qdata.Active := False;

  sedit1.text:='';
end;

procedure Tfdataarinvoice.SpeedButton1Click(Sender: TObject);
begin
  if op.Execute then
  sedit1.text:=op.FileName;
end;

end.
