unit uflepassalahtransfer;

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
  cxDBData, Vcl.StdCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, DBAccess, Uni, MemDS, System.IOUtils;

type
  Tflepassalahtransfer = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    qdata: TUniQuery;
    qdatano: TIntegerField;
    qdatano_order: TStringField;
    qdataatas_nama: TStringField;
    qdatabank: TStringField;
    qdatajumlah_uang: TFloatField;
    qdatatanggal_transfer: TDateTimeField;
    qdatastatus: TIntegerField;
    qdatakode_kas: TIntegerField;
    qdataid_karyawan: TIntegerField;
    qdatano_konfirmasi: TIntegerField;
    qdatastatus_verifikasi: TStringField;
    qdatanominal: TFloatField;
    qdataketerangan: TStringField;
    qdatamenit: TFloatField;
    qdatausername: TStringField;
    dsdata: TUniDataSource;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Button1: TButton;
    Button2: TButton;
    qcekkonfirmasi: TUniQuery;
    palasan: TPanel;
    Label2: TLabel;
    malasan: TMemo;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
    procedure pemasanganotomatis;
  public
    { Public declarations }
  end;

var
  flepassalahtransfer: Tflepassalahtransfer;
  ck_no_order, ck_nama, ck_no_detail, ck_bank, ck_jmluang,ck_alamatfhoto,
  ck_no_detailasli, ck_jenisorder : string;

implementation

{$R *.dfm}

uses uftabel;

procedure Tflepassalahtransfer.pemasanganotomatis;
var
  no_detailkonfirmasi : string;
  nofhoto2,apath2,sto2,stotal,tfhoto : string;
  alamat,lokasi,namafhoto,alamat2,lokasi2,namafhoto2,statusbayar : string;
begin

try
  qcekkonfirmasi.SQL.Clear;
  qcekkonfirmasi.SQL.Add('START TRANSACTION');
  qcekkonfirmasi.ExecSQL;

    qcekkonfirmasi.SQL.Clear;
    qcekkonfirmasi.SQL.Add('INSERT INTO detail_konfirmasipembayaran                                                                          '+
    '(SELECT NULL,no_order,atas_nama,bank,jumlah_uang,tanggal_transfer,status,kode_kas,id_karyawan,no_konfirmasi,''BELUM DI VERIFIKASI'',nominal,keterangan    '+
    'FROM a_tempdetail_konfirmasipembayaran where no='''+ ck_no_detail +''' ) ');
    qcekkonfirmasi.ExecSQL;

    qcekkonfirmasi.SQL.Clear;
    qcekkonfirmasi.SQL.Add('select max(no) as no from detail_konfirmasipembayaran ');
    qcekkonfirmasi.Active:=True;
    no_detailkonfirmasi:=qcekkonfirmasi.FieldValues['no'];
    ck_no_detailasli := no_detailkonfirmasi;

    qcekkonfirmasi.SQL.Clear;
    qcekkonfirmasi.SQL.Add('SELECT SUM(jumlah_uang) AS jumlah_uang FROM `detail_konfirmasipembayaran` where no_order='''+ ck_no_order +''' GROUP BY no_order ');
    qcekkonfirmasi.Active:=True;
    stotal := qcekkonfirmasi.FieldValues['jumlah_uang'];

    qcekkonfirmasi.SQL.Clear;
    qcekkonfirmasi.SQL.Add('select * from konfirmasi_pembayaran where no_order='''+ ck_no_order +''' ');
    qcekkonfirmasi.Active:=true;
    if qcekkonfirmasi.RecordCount = 0 then begin
      qcekkonfirmasi.SQL.Clear;
      qcekkonfirmasi.SQL.Add('INSERT INTO konfirmasi_pembayaran                                             '+
      '(SELECT NULL,no_order,atas_nama,'''+ stotal +''',tanggal,''BELUM DI VERIFIKASI'',tanggal_input,bank   '+
      'FROM a_tempkonfirmasi_pembayaran where no_order='''+ ck_no_order +''' )');
      qcekkonfirmasi.ExecSQL;
    end else begin
      qcekkonfirmasi.SQL.Clear;
      qcekkonfirmasi.SQL.Add('update  konfirmasi_pembayaran set jumlah_uang='''+stotal+''',status_verifikasi=''BELUM DI VERIFIKASI'' where no_order='''+ck_no_order+''' ');
      qcekkonfirmasi.ExecSQL;
    end;

    qcekkonfirmasi.SQL.Clear;
    qcekkonfirmasi.SQL.Add('select * from alamat_fhoto where kategori=''TT''  ');
    qcekkonfirmasi.Active:=true;
    alamat2:=qcekkonfirmasi.FieldValues['nama'];
    namafhoto2:=no_detailkonfirmasi+'.JPG';
    sto2:=alamat2+namafhoto2;

    try
      if FileExists(sto2) then begin
        TFile.Delete(sto2);
      end;
    except

    end;

    qcekkonfirmasi.SQL.Clear;
    qcekkonfirmasi.SQL.Add('select * from alamat_fhoto where kategori=''TEMPTT''  ');
    qcekkonfirmasi.Active:=true;
    alamat:=qcekkonfirmasi.FieldValues['nama'];

    lokasi:=alamat+ck_alamatfhoto;
    namafhoto:=lokasi;

    qcekkonfirmasi.SQL.Clear;
    qcekkonfirmasi.SQL.Add('select * from alamat_fhoto where kategori=''VTT''  ');
    qcekkonfirmasi.Active:=true;
    alamat2:=qcekkonfirmasi.FieldValues['nama'];

    lokasi2:=alamat2+ck_alamatfhoto;
    namafhoto2:=lokasi2;

    try
      if FileExists(namafhoto) then begin
        tfhoto:=namafhoto;
      end else begin
        if FileExists(namafhoto2) then begin
          tfhoto:=namafhoto2;
        end else begin
          tfhoto:='';
        end;
      end;
    except

    end;


    try
      if fileexists(tfhoto) then begin
        TFile.Move(tfhoto,sto2);
      end;
    except

    end;

    if ck_jenisorder <> 'KT' then begin
      qcekkonfirmasi.SQL.Clear;
      qcekkonfirmasi.SQL.Add('SELECT * from order_pembelian where no_order='''+ck_no_order+''' ');
      qcekkonfirmasi.Active:=True;
      statusbayar:=qcekkonfirmasi.FieldValues['status_bayar'];

      if statusbayar = 'BELUM DI BAYAR' then
      begin
        qcekkonfirmasi.SQL.Clear;
        qcekkonfirmasi.SQL.Add('update order_pembelian  set status_bayar=''SUDAH DIBAYAR'' where no_order=''' + ck_no_order + ''' ');
        qcekkonfirmasi.ExecSQL;
      end;
    end;

  qcekkonfirmasi.SQL.Clear;
  qcekkonfirmasi.SQL.Add('COMMIT');
  qcekkonfirmasi.ExecSQL;

except on e:exception do
begin
  showmessage(' Error : ' + e.message);
  qcekkonfirmasi.SQL.Clear;
  qcekkonfirmasi.SQL.Add('Rollback');
  qcekkonfirmasi.ExecSQL;

  qcekkonfirmasi.SQL.Clear;
  qcekkonfirmasi.SQL.Add('update a_tempdetail_konfirmasipembayaran set status_verifikasi=''BELUM DI VERIFIKASI'' where no='''+ck_no_detail+''' ');
  qcekkonfirmasi.ExecSQL;
end;
end;

end;


procedure Tflepassalahtransfer.Button1Click(Sender: TObject);
begin
  qdata.Active := False;
  qdata.Active := True;
end;

procedure Tflepassalahtransfer.Button2Click(Sender: TObject);
begin
  palasan.Visible := True;
  malasan.Text := '';
end;


procedure Tflepassalahtransfer.Button3Click(Sender: TObject);
var
  pesan : string;
begin
  if Trim(malasan.Text) = '' then
  begin
    ShowMessage('alasan pembatalan harus di isi');
    Exit;
  end;

  pesan := 'Apakah anda yakin akan melepaskan order ini ? ';
  if messagedlg(pesan, mtconfirmation, [mbyes, mbno], 0) = mryes then
  begin
    try

      qcekkonfirmasi.SQL.Clear;
      qcekkonfirmasi.SQL.Add('START TRANSACTION');
      qcekkonfirmasi.ExecSQL;

        ck_no_order := qdatano_order.Value;
        ck_nama := qdataatas_nama.Value;
        ck_no_detail := qdatano.AsString;
        ck_bank := qdatabank.Value;
        ck_jmluang := qdatajumlah_uang.AsString;

        ck_jenisorder := copy(ck_no_order,1,2);

        qcekkonfirmasi.SQL.Clear;
        qcekkonfirmasi.SQL.Add('SELECT * FROM `a_tempfhoto_konfirmasi` WHERE no_detail=''' + ck_no_detail + ''' ');
        qcekkonfirmasi.Active := true;

        if qcekkonfirmasi.RecordCount > 0 then
        begin
          ck_alamatfhoto := qcekkonfirmasi.FieldValues['fhoto'];

          qcekkonfirmasi.SQL.Clear;
          qcekkonfirmasi.SQL.Add('SELECT * FROM `a_tempdetail_konfirmasipembayaran` WHERE no='''+ qdatano.AsString +''' and status_verifikasi=''SUDAH DI VERIFIKASI'' ');
          qcekkonfirmasi.Active:=true;
          if qcekkonfirmasi.RecordCount > 0 then begin
            qcekkonfirmasi.SQL.Clear;
            qcekkonfirmasi.SQL.Add('Rollback');
            qcekkonfirmasi.ExecSQL;
            ShowMessage('Ada perubahan data harap cek kembali');
            Close;
            exit;
          end;

          qcekkonfirmasi.SQL.Clear;
          qcekkonfirmasi.SQL.Add('update a_tempdetail_konfirmasipembayaran set status_verifikasi=''SUDAH DI VERIFIKASI AKUNTING'' where no=''' + ck_no_detail + ''' ');
          qcekkonfirmasi.ExecSQL;

          pemasanganotomatis;
        end;

        qcekkonfirmasi.SQL.Clear;
        qcekkonfirmasi.SQL.Add('SELECT * FROM `a_tempdetail_konfirmasipembayaran` WHERE no='''+ qdatano.AsString +''' and status_verifikasi=''SUDAH DI VERIFIKASI'' ');
        qcekkonfirmasi.Active:=true;
        if qcekkonfirmasi.RecordCount > 0 then begin
          qcekkonfirmasi.SQL.Clear;
          qcekkonfirmasi.SQL.Add('Rollback');
          qcekkonfirmasi.ExecSQL;
          ShowMessage('Ada perubahan data harap cek kembali');
          Close;
          exit;
        end;

        qcekkonfirmasi.SQL.Clear;
        qcekkonfirmasi.SQL.Add('insert into a_historylepas_akunting values(null,'''+ck_no_order+''',now(),'''+v_idkaryawan+''','''+malasan.Text+''') ');
        qcekkonfirmasi.ExecSQL;

        qcekkonfirmasi.SQL.Clear;
        qcekkonfirmasi.SQL.Add('SELECT * FROM `a_tempdetail_konfirmasipembayaran` WHERE no='''+ qdatano.AsString +''' and status_verifikasi=''SUDAH DI VERIFIKASI'' ');
        qcekkonfirmasi.Active:=true;
        if qcekkonfirmasi.RecordCount > 0 then begin
          qcekkonfirmasi.SQL.Clear;
          qcekkonfirmasi.SQL.Add('Rollback');
          qcekkonfirmasi.ExecSQL;
          ShowMessage('Ada perubahan data harap cek kembali');
          Close;
          exit;
        end;

        qcekkonfirmasi.SQL.Clear;
        qcekkonfirmasi.SQL.Add('COMMIT');
        qcekkonfirmasi.ExecSQL;

        Button1Click(nil);

        ShowMessage('Data Konfirmasi Berhasil Di lepaskan');

        palasan.Visible := False;
        malasan.Text := '';
    except on e:exception do
    begin
      showmessage(' Error : ' + e.message);
      qcekkonfirmasi.SQL.Clear;
      qcekkonfirmasi.SQL.Add('COMMIT');
      qcekkonfirmasi.ExecSQL;
    end;
    end;
  end;
end;


procedure Tflepassalahtransfer.Button4Click(Sender: TObject);
begin
  palasan.Visible := False;
  malasan.Text := '';
end;

procedure Tflepassalahtransfer.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qdata.Active := False;
end;

procedure Tflepassalahtransfer.FormShow(Sender: TObject);
begin
  palasan.Visible := False;
  malasan.Text := '';

  qdata.Active := False;
  qdata.Active := True;
end;

end.
