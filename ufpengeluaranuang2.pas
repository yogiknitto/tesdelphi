unit ufpengeluaranuang2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  sPanel;

type
  Tfpengeluaranuang = class(TForm)
    sGradientPanel1: TsGradientPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    tnama: TEdit;
    tsaldo: TEdit;
    trek: TEdit;
    tcatatan: TEdit;
    sGradientPanel2: TsGradientPanel;
    BitBtn1: TBitBtn;
    cbkas: TComboBox;
    BitBtn2: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure cbkasDropDown(Sender: TObject);
    procedure trekKeyPress(Sender: TObject; var Key: Char);
    procedure cbkasKeyPress(Sender: TObject; var Key: Char);
    procedure tcatatanKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fpengeluaranuang: Tfpengeluaranuang;

implementation

{$R *.dfm}

uses uftabel;

procedure Tfpengeluaranuang.BitBtn1Click(Sender: TObject);
var v_idcustomer,no,jmluang,nominal,srupiah,kodekas,notransfer:string; nomi:real;
begin
 tabel.q1.SQL.Clear;
 tabel.q1.SQL.Add('select * from customer where nama='''+tnama.Text+''' ');
 tabel.q1.Active:=True;
 if tabel.q1.recordcount=0 then begin

ShowMessage('Customer tidak terdaftar di database!');
Exit;
 end;
  v_idcustomer:=tabel.q1.FieldValues['id_customer'];
  tabel.q1.SQL.Clear;
 tabel.q1.SQL.Add('select * from kas_bank where nama_kas='''+cbkas.Text+''' ');
 tabel.q1.Active:=True;
 if tabel.q1.recordcount=0 then begin

ShowMessage('Kas Bank tidak terdaftar di database!');
Exit;
 end;
 kodekas:=tabel.q1.FieldValues['kode_kas'];



 tabel.q1.SQL.Clear;
 tabel.q1.SQL.Add('select * from v_saldocustomer where id_customer='''+v_idcustomer+''' and jml_uang!=0 ');
 tabel.q1.Active:=True;
 if tabel.q1.RecordCount = 0 then begin
  ShowMessage('Saldo customer sudah habis silahkan cek kembali!');
  tabel.qsaldopiutang.Active:=false;
  tabel.qsaldopiutang.Active:=true;


  Close;
  exit;
 end;
 srupiah := tsaldo.text;
 srupiah := stringreplace(sRupiah,',','',[rfreplaceall,rfignorecase]);
 srupiah := stringreplace(srupiah,'.','',[rfreplaceall,rfignorecase]);
 nomi:=StrToFloat(srupiah);
 nomi:=nomi*-1;

  tabel.q2.SQL.Clear;
  tabel.q2.SQL.Add('START TRANSACTION');
  tabel.q2.ExecSQL;

  tabel.q2.SQL.Clear;
  tabel.q2.SQL.Add('insert into n_piutanglainlain values(0,now(),'''+floattostr(nomi)+''','''+trek.Text+''','''','''+kodekas+''','''+tcatatan.Text+''','''+v_idkaryawan+''','''+v_idcustomer+''') ');
  tabel.q2.ExecSQL;

  tabel.q2.SQL.Clear;
  tabel.q2.SQL.Add('select max(no) as id from n_piutanglainlain ');
  tabel.q2.Active:=True;
  notransfer:=tabel.q2.FieldValues['id'];

 tabel.q1.First;
 while not tabel.q1.Eof do begin
    no:=tabel.q1.FieldValues['no'];
    jmluang:=tabel.q1.FieldValues['jml_uang'];

    tabel.q2.SQL.Clear;
    tabel.q2.SQL.Add('insert into n_detailpiutanglainlain values(0,'''+notransfer+''','''+no+''','''+jmluang+''') ');
    tabel.q2.ExecSQL;

   tabel.q1.Next;
 end;
  tabel.q2.SQL.Clear;
  tabel.q2.SQL.Add('COMMIT');
  tabel.q2.ExecSQL;
  tabel.qsaldopiutang.Active:=false;
  tabel.qsaldopiutang.Active:=True;
  tabel.qdetailsaldopiutang.Active:=false;
  tabel.qsaldopiutang.Active:=True;
 ShowMessage('Data berhasil di transfer!');
 close;

end;

procedure Tfpengeluaranuang.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure Tfpengeluaranuang.cbkasDropDown(Sender: TObject);
begin
tabel.q1.SQL.Clear;
tabel.q1.SQL.Add('select * from kas_bank where status_rekening=''BANK''');
tabel.q1.Active:=true;
if not(tabel.q1.Eof) and (tabel.q1.Bof) then begin
cbkas.Items.Clear;
tabel.q1.First;
while not tabel.q1.Eof do
begin
cbkas.Items.Append(tabel.q1.FieldValues['nama_kas']);
tabel.q1.Next;

 end;

end;
end;

procedure Tfpengeluaranuang.cbkasKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then begin
   tcatatan.SetFocus;
end;
end;

procedure Tfpengeluaranuang.tcatatanKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then begin
   BitBtn1Click(nil);
end;
end;

procedure Tfpengeluaranuang.trekKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then begin
   cbkas.SetFocus;
end;
end;

end.
