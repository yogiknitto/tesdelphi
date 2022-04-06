unit ufpemasanganmanual;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  Tfpemasanganmanual = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Label2: TLabel;
    trekening: TEdit;
    Label3: TLabel;
    tbank: TEdit;
    Label4: TLabel;
    tnominal: TEdit;
    Label5: TLabel;
    mket: TMemo;
    Label6: TLabel;
    cbkategori: TComboBox;
    Label7: TLabel;
    mcat: TMemo;
    Button1: TButton;
    Button2: TButton;
    procedure cbkategoriDropDown(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  v_idrekening:string;
  fpemasanganmanual: Tfpemasanganmanual;

implementation

{$R *.dfm}

uses uftabel;

procedure Tfpemasanganmanual.Button1Click(Sender: TObject);
var nominal,srupiah:string;
begin
  if cbkategori.Text='' then begin
    ShowMessage('kategori harus diisi!');
    Exit;
  end;

  if mcat.Text='' then begin
    ShowMessage('catatan harus diisi!');
    Exit;
  end;
   srupiah := tnominal.Text;
   srupiah := stringreplace(sRupiah,',','',[rfreplaceall,rfignorecase]);
//   srupiah := stringreplace(srupiah,'.','',[rfreplaceall,rfignorecase]);


  tabel.q1.SQL.Clear;
  tabel.q1.SQL.Add('insert into y_pemasanganmanual values(null,'''+v_idrekening+''','''+cbkategori.Text+''','''+mcat.Text+''',now(),'''+srupiah+''','''+v_idkaryawan+''')');
  tabel.q1.ExecSQL;
   ShowMessage('Pemasangan berhasil');
   tabel.qrekeningkoran.Active:=false;
   tabel.qrekeningkoran.Active:=True;

  close;
end;

procedure Tfpemasanganmanual.Button2Click(Sender: TObject);
begin
close;
end;

procedure Tfpemasanganmanual.cbkategoriDropDown(Sender: TObject);
begin
tabel.q1.SQL.Clear;
tabel.q1.SQL.Add('select jenis as id from y_kategoripemasanganmanual ');
tabel.q1.Active:=true;
if not(tabel.q1.Eof) and (tabel.q1.Bof) then begin
  cbkategori.Items.Clear;
  tabel.q1.First;
  while not tabel.q1.Eof do
  begin
    cbkategori.Items.Append(tabel.q1.FieldValues['id']);
    tabel.q1.Next;
  end;
end;
end;

procedure Tfpemasanganmanual.FormShow(Sender: TObject);
begin
mcat.Clear;
cbkategori.ItemIndex:=-1;
end;

end.
