unit uftambahkonfirmasi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  Vcl.Mask, sMaskEdit, sCustomComboEdit, sToolEdit, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxCalendar, Vcl.Buttons,System.JSON;

type
  Tftambahkonfirmasi = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    tnama: TEdit;
    Label2: TLabel;
    ttgl: TcxDateEdit;
    tjam: TcxComboBox;
    tmenit: TcxComboBox;
    Label3: TLabel;
    Label4: TLabel;
    tatas: TEdit;
    Label5: TLabel;
    tbank: TcxComboBox;
    tjml: TEdit;
    Label6: TLabel;
    tket: TMemo;
    Label7: TLabel;
    Panel5: TPanel;
    SpeedButton1: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure tjmlKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure bersih;
  public
    { Public declarations }
  end;

var
  ftambahkonfirmasi: Tftambahkonfirmasi;
  idcustomer, v_konfirmasi_id_customer: string;

implementation

uses
  uftabel, ufcaricustomer_dp;

{$R *.dfm}

procedure Split(aValue: string; aDelimiter: Char; Result: TStrings);
var
  X: Integer;
  S: string;
begin
  if Result = nil then
    Result := TStringList.Create;
  Result.Clear;
  S := '';
  for X := 1 to Length(aValue) do
  begin
    if aValue[X] <> aDelimiter then
      S := S + aValue[X]
    else
    begin
      Result.Add(S);
      S := '';
    end;
  end;
  if S <> '' then
    Result.Add(S);
end;

procedure Tftambahkonfirmasi.bersih;
begin
  v_konfirmasi_id_customer := '';
  tnama.Clear;
  tnama.Text := '';
  tatas.Text := '';
  tbank.Text := '';
  tjml.Text := '0';
  tket.Text := '';
end;

procedure Tftambahkonfirmasi.Button1Click(Sender: TObject);
var
  nokonfirmasi, kode_kas: string;
  stotal, srupiah, tanggal, nokasbank, statusdata, nodetail, v_stssap: string;
  kata: TstringList;
  status:string;
  jso: TJSONObject;
begin
  kata := TstringList.Create;

  if tnama.Text = '' then
  begin
    ShowMessage('Silahkan isi Nama Customer');
    Exit;
  end;

  if ttgl.Text = '' then
  begin
    ShowMessage('Silahkan isi Tanggal');
    ttgl.SetFocus;
    Exit;
  end;

  if tjam.Text = '' then
  begin
    ShowMessage('Silahkan isi Jam');
    tjam.SetFocus;
    Exit;
  end;

  if tmenit.Text = '' then
  begin
    ShowMessage('Silahkan isi Menit');
    tmenit.SetFocus;
    Exit;
  end;

  if tbank.Text = '' then
  begin
    ShowMessage('Silahkan isi jenis Bank');
    tbank.SetFocus;
    Exit;
  end;

  if (tjml.Text = '') or (tjml.Text = '0') then
  begin
    ShowMessage('Silahkan isi Jumlah Uang');
    tjml.SetFocus;
    Exit;
  end;

  tabel.q1.SQL.Clear;
  tabel.q1.SQL.Add('select * from customer where id_customer='''+ v_konfirmasi_id_customer +''' and nama='''+ tnama.Text +''' ');
  tabel.q1.Open;
  if tabel.q1.RecordCount = 0 then
  begin
    ShowMessage('Data customer tidak sesuai silahkan pilih ulang customer');
    Exit;
  end;

  try
    split(tbank.Text, '#', kata);
    tabel.q1.SQL.Clear;
    tabel.q1.SQL.Add('select * from kas_bank where no_rekening=''' + kata[0] + ''' ');
    tabel.q1.Active := True;
    kode_kas := tabel.q1.FieldValues['kode_kas'];

    tanggal := FormatDateTime('yyyy-mm-dd', ttgl.Date) + ' ' + tjam.Text + ':' + tmenit.Text + ':00';

    if tjml.Text <> '0' then
    begin
      srupiah := tjml.text;
      srupiah := stringreplace(srupiah, ',', '', [rfreplaceall, rfignorecase]);
      srupiah := stringreplace(srupiah, '.', '', [rfreplaceall, rfignorecase]);
    end
    else
    begin
      srupiah := '0';
    end;

    stotal := floattostr(StrToFloat(srupiah));

    tabel.q1.SQL.Clear;
    tabel.q1.SQL.Add('select * FROM kas_bank_import kbi LEFT JOIN uang_customer uc ON uc.no_kasbank=kbi.`id_transaksi` WHERE uc.`no_kasbank` IS NULL '+
    ' and date(tanggal) = date('''+ tanggal +''') and jumlah='+stotal+' and id_transaksi not in (select no_kasbank from a_kasbank_temp) and kbi.kode_kas='''+kode_kas+''' and mutasi=''CR'' ');
    tabel.q1.Open;
    if tabel.q1.RecordCount <> 0 then
    begin
      nokasbank := tabel.q1.FieldByName('id_transaksi').AsString;

      if tabel.q1.RecordCount = 1 then
        statusdata:='MUNGKIN TEPAT'
      else statusdata:='DATA DOUBLE';

      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('insert into a_kasbank_temp values(0,'''+v_konfirmasi_id_customer+''','''+nokasbank+''','''') ');
      tabel.q1.ExecSQL;

      ShowMessage('Data berhasil di pasangkan dengan rekening koran');
    end
    else
    begin
      ShowMessage(tabel.q1.SQL.Text);
      ShowMessage('Data Kas Bank Tidak Ditemukan');
      Exit;
    end;

    tabel.q1.SQL.Clear;
    tabel.q1.Sql.Add('START TRANSACTION');
    tabel.q1.ExecSQL;

      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('insert into konfirmasi_pembayaran values(0,'''+tnama.Text+''',''' + tatas.Text + ''',''' + stotal + ''',''' + tanggal + ''',''SUDAH DI VERIFIKASI'',now(),'''')');
      tabel.q1.ExecSQL;

      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('select max(no) as no from konfirmasi_pembayaran ');
      tabel.q1.Active := True;
      nokonfirmasi := tabel.q1.FieldValues['no'];

      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('insert into detail_konfirmasipembayaran values(0,''' + tnama.Text + ''',''' + tatas.Text + ''',''' + tbank.Text + ''',''' + stotal + ''',''' + tanggal + ''',0,''' + kode_kas + ''',''' + v_idkaryawan + ''',''' + nokonfirmasi + ''',''BELUM DI VERIFIKASI'',0,''' + tket.Text + ''' )');
      tabel.q1.ExecSQL;

      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('select max(no) as no from detail_konfirmasipembayaran ');
      tabel.q1.Active:=True;
      nodetail:=tabel.q1.FieldValues['no'];

      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('insert into uang_customer values(0,'''+nokasbank+''','''+v_konfirmasi_id_customer+''','+stotal+','''+tanggal+''','''+v_idkaryawan+''','''+nokasbank+''',''LUNAS'',''TRANSFER'',8,'''','''+kode_kas+''','''') ');
      tabel.q1.ExecSQL;

      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('insert into y_relasi_konfirmasidanmutasi values(0,'''+nodetail+''','''+nokasbank+''',now(),'''+v_idkaryawan+''') ');
      tabel.q1.ExecSQL;

      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('insert into n_status_pemasangan values(0,'''+nokasbank+''','''+nodetail+''','''+ statusdata +''') ');
      tabel.q1.ExecSQL;

      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('SELECT data FROM `konstanta` WHERE jenis=''SAP AKUNTING BARU'' and data=''saptemp/terimauang'' ');
      tabel.q1.Active:=true;
      if tabel.q1.RecordCount = 0 then begin
        try
          v_t_lst := TStringList.Create;
          v_t_mem := TStringStream.Create;

          tabel.q1.SQL.Clear;
          tabel.q1.SQL.Add('SELECT CONCAT((SELECT branch FROM data_cabang),''_'',IFNULL(op.id_customer,IFNULL(c.id_customer,sp.id_customer)),''_'',df.no) AS revkode ' +
          ' FROM `detail_konfirmasipembayaran` df ' +
          ' LEFT JOIN order_pembelian op USING(no_order) ' +
          ' LEFT JOIN customer c ON c.nama=df.`no_order` ' +
          ' LEFT JOIN `s_penjualan_katalog` sp ON sp.no_penjualan=df.`no_order` WHERE `no`='''+ nodetail +''' ');
          tabel.q1.Active:=true;
          if tabel.q1.RecordCount = 0 then begin
            ShowMessage('DATA SAP GAGAL');
            tabel.q1.SQL.Clear;
            tabel.q1.SQL.Add('ROLLBACK');
            tabel.q1.ExecSQL;
            Exit;
          end;

          v_t_lst.Add('no_detailkonfirmasi=' + nodetail);
          v_t_lst.Add('rev_no=' + tabel.q1.FieldValues['revkode']);

          v_t_url := urlSAPCabang + 'saptemp/terimauang';

          tabel.generalpostservicetotabel;

          jso := TJSONObject.ParseJSONValue(v_t_str_global) as TJSONObject;
          jso := jso.GetValue('values') as TJSONObject;
          status := jso.GetValue('message').Value;

          if LowerCase(status) = 'sukses' then begin
            v_stssap := 'SUKSES';
          end else begin
            v_stssap := 'GAGAL';
          end;
        except
          v_stssap := 'GAGAL';
        end;
      end else begin
        v_stssap := 'SUKSES';
      end;

      if v_stssap = 'GAGAL' then begin
        ShowMessage('SAP GAGAL');
        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('ROLLBACK');
        tabel.q1.ExecSQL;
        Exit;
      end;

    tabel.q1.SQL.Clear;
    tabel.q1.Sql.Add('COMMIT');
    tabel.q1.ExecSQL;

    ShowMessage('Berhasil');
    bersih;
  except
    on e: Exception do
    begin
      tabel.q1.SQL.Clear;
      tabel.q1.Sql.Add('ROLLBACK');
      tabel.q1.ExecSQL;
      ShowMessage('Gagal Konfirmasi. Error : ' + e.Message);
    end;
  end;
end;

procedure Tftambahkonfirmasi.tjmlKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  srupiah: string;
  irupiah: currency;
begin
//if Copy(tjml.Text,1,1)='0' then begin

//end else begin
  srupiah := tjml.text;
  srupiah := stringreplace(srupiah, ',', '', [rfreplaceall, rfignorecase]);
  srupiah := stringreplace(srupiah, '.', '', [rfreplaceall, rfignorecase]);
  irupiah := strtocurrdef(srupiah, 0);

  tjml.text := formatcurr('#,###', irupiah);
  tjml.selstart := length(tjml.text);
//end;
end;

procedure Tftambahkonfirmasi.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  v_konfirmasi_id_customer := '';
end;

procedure Tftambahkonfirmasi.FormCreate(Sender: TObject);
var
  i: Integer;
  jam: string;
begin
  tjam.Properties.Items.Clear;
  for i := 1 to 24 do
  begin
    if i > 9 then
      jam := IntToStr(i)
    else
      jam := '0' + IntToStr(i);

    tjam.Properties.Items.Add(jam);
  end;

  tmenit.Properties.Items.Clear;
  for i := 0 to 60 do
  begin
    if i > 9 then
      jam := IntToStr(i)
    else
      jam := '0' + IntToStr(i);

    tmenit.Properties.Items.Add(jam);
  end;

  tabel.q1.SQL.Clear;
  tabel.q1.SQL.Add('select concat(no_rekening,'' # '',atas_nama,'' # '',bank) as id from kas_bank where keterangan=''PEMBAYARAN CUSTOMER'' or keterangan=''ONLINE SHOP''  ');
  tabel.q1.Active := true;
  tbank.Properties.Items.Clear;
  tabel.q1.First;
  while not tabel.q1.Eof do
  begin
    tbank.Properties.Items.add(tabel.q1.FieldValues['id']);
    tabel.q1.Next;

  end;
end;

procedure Tftambahkonfirmasi.FormShow(Sender: TObject);
begin
  bersih;
end;

procedure Tftambahkonfirmasi.SpeedButton1Click(Sender: TObject);
begin
  fcaricustomer_dp.showmodal
end;

end.

