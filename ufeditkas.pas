unit ufeditkas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxContainer, cxEdit, Vcl.StdCtrls, Vcl.ExtCtrls,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxListBox, Vcl.ComCtrls,
  dxSkinTheBezier, cxCustomListBox;

type
  Tfeditkas = class(TForm)
    GroupBox12: TGroupBox;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    tterima: TEdit;
    mcatatan: TMemo;
    dtanggal: TDateTimePicker;
    ComboBox1: TComboBox;
    tperkiraan: TEdit;
    tjumlah: TEdit;
    cxListBox2: TcxListBox;
    tkas: TcxComboBox;
    tacc: TcxComboBox;
    Panel10: TPanel;
    Button12: TButton;
    Panel1: TPanel;
    procedure Button12Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure tperkiraanChange(Sender: TObject);
    procedure cxListBox2DblClick(Sender: TObject);
    procedure cxListBox2KeyPress(Sender: TObject; var Key: Char);
    procedure tperkiraanKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tperkiraanKeyPress(Sender: TObject; var Key: Char);
    procedure tjumlahChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    jmledit:real;
    notransaksi:string;
    jumlah:string;
    tgk:string
  end;

var
  feditkas: Tfeditkas;


implementation

{$R *.dfm}

uses ufmenuutama, uftabel;

procedure Tfeditkas.Button12Click(Sender: TObject);
var kodekas,kodeperkiraan,tanggal,srupiah,status:String;
newkd,kode,tgl,bln,thn,tglx,kd,potkd,st,tanggalawal:String;
 i,n,nourut:integer; jml:real;
begin
  srupiah := tjumlah.text;
srupiah := stringreplace(sRupiah,',','',[rfreplaceall,rfignorecase]);
srupiah := stringreplace(srupiah,'.','',[rfreplaceall,rfignorecase]);
if ComboBox1.Text = '' then begin
        showmessage('Jenis harus diisi!');
        ComboBox1.SetFocus;
  end else if tterima.Text = '' then begin
        showmessage('Terima dari harus diisi!');
        tterima.SetFocus;
  end else if tkas.Text = '' then begin
        showmessage('Kas harus diisi!');
        tkas.SetFocus;
  end else if tperkiraan.Text = '' then begin
        showmessage('Perkiraan harus diisi!');
        tperkiraan.SetFocus;
  end else if tjumlah.Text = '' then begin
        showmessage('Jumlah harus diisi!');
        tjumlah.SetFocus;
  end else begin
    tabel.q1.SQL.Clear;
    tabel.q1.SQL.Add('select * from kas_bank where nama_kas='''+tkas.Text+''' ');
    tabel.q1.Active:=true;
    if tabel.q1.RecordCount = 0 then begin
    showmessage('Kas Bank tidak terdaftar didatabase!');
    tkas.SetFocus;
    end else begin
    kodekas:=tabel.q1.FieldValues['kode_kas'];
    tabel.q1.SQL.Clear;
    tabel.q1.SQL.Add('select * from perkiraan where nama_perkiraan ='''+tperkiraan.Text+''' ');
    tabel.q1.Active:=true;

      if tabel.q1.RecordCount = 0 then begin
      showmessage('Perkiraan tidak terdaftar didatabase!');
      tperkiraan.SetFocus;
      end else begin
       kodeperkiraan:=tabel.q1.FieldValues['kode_perkiraan'];
       tanggal:=formatdatetime('yyyy-mm-dd',dtanggal.Date);

       if tacc.text='BELUM DI ACC' then status:='0';

        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('select * from  n_kassementara  where no_transaksi='''+notransaksi+''' and jumlah='''+floattostr(jmledit)+''' ');
//        ShowMessage(tabel.q1.SQL.Text);
        tabel.q1.Active:=True;
        if tabel.q1.RecordCount > 0 then begin
          tabel.q1.SQL.Clear;
          tabel.q1.SQL.Add('update  n_kassementara set tanggal='''+tanggal+''',jenis='''+ComboBox1.Text+''',dari='''+tterima.Text+''',kode_kas='''+kodekas+''',jumlah='''+srupiah+''',kode_perkiraan='''+kodeperkiraan+''',keterangan='''+mcatatan.Text+''' where no_transaksi='''+notransaksi+''' ');
          tabel.q1.ExecSQL;
          showmessage('Data berhasil di update');
          fmenuutama.qpindahkas.Active:=false;
          fmenuutama.qpindahkas.Active:=true;
          fmenuutama.qpindahkas.Locate('tanggal',tgk,[]);
          Close;

        end else begin
           ShowMessage('Data gagal di edit silahkan hub bag it!');
           Exit;
        end;




      end;

    end;


  end;
end;

procedure Tfeditkas.ComboBox1Change(Sender: TObject);
begin
if ComboBox1.Text='PENERIMAAN' then begin
  label37.Caption:='Terima Dari';
end else begin
   label37.Caption:='Keluar Ke';
end;
end;

procedure Tfeditkas.cxListBox2DblClick(Sender: TObject);
begin
tperkiraan.Text:=cxListBox2.Items.Strings[cxListBox2.ItemIndex];
cxListBox2.Height:=0;
if tjumlah.Enabled=True then tjumlah.SetFocus;
end;

procedure Tfeditkas.cxListBox2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then begin
tperkiraan.Text:=cxListBox2.Items.Strings[cxListBox2.ItemIndex];
cxListBox2.Height:=0;
if tjumlah.Enabled=True then tjumlah.SetFocus;
end;
end;

procedure Tfeditkas.tjumlahChange(Sender: TObject);
var
srupiah :string;
irupiah :currency;
begin

srupiah := tjumlah.text;
srupiah := stringreplace(sRupiah,',','',[rfreplaceall,rfignorecase]);
srupiah := stringreplace(srupiah,'.','',[rfreplaceall,rfignorecase]);
irupiah := strtocurrdef(srupiah,0);

tjumlah.text := formatcurr(',0',irupiah);
tjumlah.selstart := length(tjumlah.text);
end;

procedure Tfeditkas.tperkiraanChange(Sender: TObject);
var kode:string;
begin

with tabel.q1 do
cxListBox2.Items.Clear;
cxListBox2.Height:=0;
if (tperkiraan.Text <> '') then
kode:='%'+trim(tperkiraan.Text)+'%';
tabel.q1.SQL.Clear;
tabel.q1.SQL.Add('select * from perkiraan  where nama_perkiraan like '''+kode+''' ');
tabel.q1.Active:=true;
while not tabel.q1.Eof do
begin
cxListBox2.Height:=75;
cxListBox2.Items.Append(tabel.q1.FieldValues['nama_perkiraan']);
tabel.q1.Next;

end;
end;

procedure Tfeditkas.tperkiraanKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var tes:string;
begin
  tes:=Chr(Key)+' - '+IntToStr(Key);
if tes ='( - 40' then begin
            if cxListBox2.Height <> 0 then begin
            cxListBox2.SetFocus;
            cxListBox2.Selected[0]:=true;
        end;

end;
end;

procedure Tfeditkas.tperkiraanKeyPress(Sender: TObject; var Key: Char);
var kode:String;
begin
if key=#13 then begin
kode:='%'+trim(tperkiraan.Text)+'%';
tabel.q1.SQL.Clear;
tabel.q1.SQL.Add('select * from perkiraan where nama_perkiraan = '''+kode+''' limit 1');
tabel.q1.Active:=true;
if tabel.q1.recordcount > 0 then begin
tkas.Text:=tabel.q1.FieldValues['nama_perkiraan'];
tjumlah.SetFocus;
cxListBox2.Height:=0;
end else begin
tabel.q1.SQL.Clear;
tabel.q1.SQL.Add('select * from perkiraan where nama_perkiraan like '''+kode+''' limit 1');
tabel.q1.Active:=true;
if tabel.q1.recordcount > 0 then begin
tkas.Text:=tabel.q1.FieldValues['nama_perkiraan'];
tjumlah.SetFocus;
cxListBox2.Height:=0;
end else begin
showmessage('Nama perkiraan tidak terdaftar didatabase!');
tperkiraan.SetFocus;
cxListBox2.Height:=0;
end;
end;
end;
end;

end.
