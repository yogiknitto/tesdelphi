unit ufrefund;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, frxClass, frxDBSet, DB, MemDS,
  DBAccess, Uni, frxChBox;

type
  Tfrefund = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    tjumlah: TEdit;
    tnorek: TEdit;
    Label2: TLabel;
    tatasnama: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    talasan: TComboBox;
    gbalasan: TGroupBox;
    malasan: TMemo;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    label8: TLabel;
    tcustomer: TEdit;
    tnopenjualan: TEdit;
    tjenis: TComboBox;
    ttotal: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    tbank: TEdit;
    GroupBox4: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    tmengajukan: TEdit;
    tdiperiksa: TEdit;
    Label14: TLabel;
    Label15: TLabel;
    ttglbeli: TDateTimePicker;
    ttgltransfer: TDateTimePicker;
    Button1: TButton;
    Button2: TButton;
    ListBox1: TListBox;
    ListBox2: TListBox;
    ListBox3: TListBox;
    Label16: TLabel;
    tnominal: TEdit;
    Label17: TLabel;
    Label18: TLabel;
    tjawab: TEdit;
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
    frxDBDataset1: TfrxDBDataset;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    qreportnominal: TStringField;
    Button3: TButton;
    qreportnama: TStringField;
    qreportno_rekening: TStringField;
    Button4: TButton;
    Button51: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    lktp: TLabel;
    lfaktur: TLabel;
    lss: TLabel;
    ltransfer: TLabel;
    OpenDialog1: TOpenDialog;
    qreportktp: TStringField;
    qreportfaktur: TStringField;
    qreporttransfer: TStringField;
    qreportss: TStringField;
    ListBox4: TListBox;
    ListBox5: TListBox;
    ListBox6: TListBox;
    Button5: TButton;
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tjumlahChange(Sender: TObject);
    procedure tcustomerChange(Sender: TObject);
    procedure tnopenjualanChange(Sender: TObject);
    procedure ttotalChange(Sender: TObject);
    procedure talasanChange(Sender: TObject);
    procedure tjumlahKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tnorekKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tatasnamaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure talasanKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tcustomerKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tnopenjualanKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tjenisKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tbankKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ttglbeliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ttgltransferKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ttotalKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tmengajukanKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tdiperiksaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure tbankChange(Sender: TObject);
    procedure ListBox1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ListBox1DblClick(Sender: TObject);
    procedure ListBox2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ListBox2DblClick(Sender: TObject);
    procedure ListBox3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ListBox3DblClick(Sender: TObject);
    procedure malasanKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tjawabKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure frxReport1GetValue(const VarName: String;
      var Value: Variant);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button51Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure tmengajukanChange(Sender: TObject);
    procedure tdiperiksaChange(Sender: TObject);
    procedure tjawabChange(Sender: TObject);
    procedure ListBox4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ListBox5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ListBox6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ListBox6DblClick(Sender: TObject);
    procedure ListBox5DblClick(Sender: TObject);
    procedure ListBox4DblClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
    procedure bersih();
    procedure formatuang(edit: TEdit);
    function generate():string;
  public
    { Public declarations }
     procedure print(norefund:string);
  end;

var
  frefund: Tfrefund;
  vnorefund:string;
  vktp,vfaktur,vtransfer,vss:string;

implementation

uses
  uftabel, Math, ufdatarefund, StrUtils, ufdatafhotorefund;

{$R *.dfm}

function terbilang(dNumber: Extended): string;
const
 aNum: array[1..9] of String = ('satu', 'dua', 'tiga', 'empat', 'lima', 'enam', 'tujuh', 'delapan', 'sembilan');
 aUnit: array[1..5] of String = ('trilyun', 'milyar', 'juta', 'ribu', '');
var
 iCount, iDigit1, iDigit2, iDigit3: Integer;
 sNum2Str, s3Digit, sWord: string;
begin
 
Result := '';
 if (dNumber=0) then Exit;
 sNum2Str:=Copy(Format('%18.2f', [dNumber]), 1, 15);
 for ICount:=1 to 5 do
 begin
 s3Digit:=Copy(sNum2Str, iCount*3-2, 3);
 if (StrToIntDef(s3Digit, 0)<>0) then
 begin
 sWord:='';
 iDigit1:=StrToIntDef(Copy(s3Digit, 1, 1), 0);
 iDigit2:=StrToIntDef(Copy(s3Digit, 2, 1), 0);
 iDigit3:=StrToIntDef(Copy(s3Digit, 3, 1), 0);
 case iDigit1 of
 2..9: sWord:=sWord+aNum[iDigit1]+' ratus ';
 1: sWord:=sWord+'seratus ';
 end; { case }
 
case iDigit2 of
 2..9: sWord:=sWord+aNum[iDigit2]+' puluh ';
 1: case iDigit3 of
 2..9: sWord:=sWord+aNum[iDigit3]+' belas ';
 1: sWord:=sWord+'sebelas ';
 0: sWord:=sWord+'sepuluh ';
 end; { case }
 end; { case }
 
if (iDigit2<>1) then
 case iDigit3 of
 2..9: sWord:=sWord + aNum[iDigit3] + ' ';
 1: if (iCount=4) and ((iDigit1+iDigit2)=0) then
 sWord:=sWord+'se'
 else
 sWord:=sWord+'satu ';
 end;
 Result:=Result+sWord+aUnit[iCount]+' ';
 end;
end;
while Result[Length(Result)]=' ' do
SetLength(Result, Length(Result)-1);
end;

procedure Tfrefund.bersih;
begin
  tjumlah.Text := '0';
  tnorek.Text := '';
  tatasnama.Text := '';
  talasan.ItemIndex := -1;
  gbalasan.Visible := false;
  malasan.Clear;
  tnominal.Text := '';

  tcustomer.Text := '';
  tnopenjualan.Text := '';
  tjenis.ItemIndex := -1;
  tbank.Text := '';
  ttglbeli.DateTime := Now();
  ttgltransfer.DateTime := Now();
  ttotal.Text := '0';

  tmengajukan.Text := '';
  tdiperiksa.Text := '';
  tjawab.Text := '';

  tjumlah.Color := clYellow;
  ttotal.Color := clYellow;

  GroupBox1.Enabled := True;
  GroupBox3.Enabled := True;
  GroupBox4.Enabled := True;
  Button1.Caption := 'Submit';
  Button2.Caption := 'Reset';
  Button4.Visible := False;
  Button5.Visible := False;

  lktp.Caption := '';
  lfaktur.Caption := '';
  ltransfer.Caption := '';
  lss.Caption := '';

  vktp := '';
  vfaktur := '';
  vtransfer := '';
  vss := '';
  
  tjumlah.SetFocus;
end;

procedure Tfrefund.Button2Click(Sender: TObject);
begin
  bersih();
end;

procedure Tfrefund.formatuang(edit: TEdit);
var
  sRupiah: string;
  iRupiah: Currency;
begin
  sRupiah := edit.Text;
  sRupiah := StringReplace(sRupiah, ',', '', [rfReplaceAll, rfIgnoreCase]); // hilangkan char koma , pemisah //ribuan selain IDR
  sRupiah := StringReplace(sRupiah, '.', '', [rfReplaceAll, rfIgnoreCase]); //remove char titik .    pemisah //ribuan IDR
  iRupiah := StrToCurrDef(sRupiah, 0); // convert srupiah ke currency

  edit.Text := FormatCurr('#,###', iRupiah);
  edit.SelStart := length(edit.text);
end;

procedure Tfrefund.FormShow(Sender: TObject);
begin
  Button2Click(nil);
end;

procedure Tfrefund.tjumlahChange(Sender: TObject);
var jml:string;
begin
  formatuang(tjumlah);
  jml := StringReplace(tjumlah.Text, ',', '', [rfReplaceAll, rfIgnoreCase]);
  if (tjumlah.Text = '')  then
  begin
    tjumlah.Text := '0';
    tnominal.Text := '';
  end
  else if (tjumlah.Text = '0') then
    tnominal.Text := ''
  else
    tnominal.Text :='( '+ terbilang(StrToFloatDef(jml,0)) +' rupiah )';
end;

procedure Tfrefund.tcustomerChange(Sender: TObject);
var
  kode: string;
begin
  ListBox1.Top := GroupBox3.Top + tcustomer.Top + tcustomer.Height;
  ListBox1.Left := tcustomer.Left;
  listbox1.Items.Clear;
  listbox1.Height := 0;
  if (tcustomer.Text <> '') then
  begin
    kode := trim(tcustomer.Text) + '%';
    tabel.q1.SQL.Clear;
    tabel.q1.SQL.Add('select nama from customer where nama like ''' + kode + ''' limit 10  ');
    tabel.q1.Active := true;
    while not tabel.q1.Eof do
    begin
      listbox1.Height := 75;
      listbox1.Items.Append(tabel.q1.FieldValues['nama']);
      tabel.q1.Next;
    end;
  end;
end;

procedure Tfrefund.tnopenjualanChange(Sender: TObject);
var
  kode: string;
begin
  ListBox2.Top := GroupBox3.Top + tnopenjualan.Top + tnopenjualan.Height;
  ListBox2.Left := tnopenjualan.Left;
  ListBox2.Items.Clear;
  ListBox2.Height := 0;
  if (tnopenjualan.Text <> '') then
  begin
    kode := trim(tnopenjualan.Text) + '%';
    tabel.q1.SQL.Clear;
    tabel.q1.SQL.Add('SELECT no_pengeluaran FROM penjualan_kainstok WHERE penjualan_melalui=''TRANSAKSI'' and no_pengeluaran like ''' + kode + ''' order by no_pengeluaran desc limit 10  ');
    tabel.q1.Active := true;
    while not tabel.q1.Eof do
    begin
      ListBox2.Height := 75;
      ListBox2.Items.Append(tabel.q1.FieldValues['no_pengeluaran']);
      tabel.q1.Next;
    end;
  end;
end;

procedure Tfrefund.ttotalChange(Sender: TObject);
begin
  formatuang(ttotal);
  if ttotal.Text = '' then
    ttotal.Text := '0';
end;

procedure Tfrefund.talasanChange(Sender: TObject);
begin
  if Trim(talasan.Text) = 'ALASAN LAIN ...' then
    gbalasan.Visible := True
  else
    gbalasan.Visible := False;
end;

procedure Tfrefund.tjumlahKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_return then
    tnorek.SetFocus;

end;

procedure Tfrefund.tnorekKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_return then
    tatasnama.SetFocus;
end;

procedure Tfrefund.tatasnamaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_return then
    talasan.SetFocus;
end;

procedure Tfrefund.talasanKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_return then
  begin
    if Trim(talasan.Text) = 'ALASAN LAIN ...' then
      malasan.SetFocus
    else
      tcustomer.SetFocus;
  end;
end;

procedure Tfrefund.tcustomerKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  tes: string;
begin
  tes := Chr(Key) + ' - ' + IntToStr(Key);
  if tes = '( - 40' then
  begin
    if listbox1.Height <> 0 then
    begin
      listbox1.SetFocus;
      listbox1.Selected[0] := true;
    end;
  end;
  
  if Key=vk_return then
    tnopenjualan.SetFocus;
end;

procedure Tfrefund.tnopenjualanKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  tes: string;
begin
  tes := Chr(Key) + ' - ' + IntToStr(Key);
  if tes = '( - 40' then
  begin
    if listbox2.Height <> 0 then
    begin
      listbox2.SetFocus;
      listbox2.Selected[0] := true;
    end;
  end;

  if Key=vk_return then
    tjenis.SetFocus;
end;

procedure Tfrefund.tjenisKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_return then
    tbank.SetFocus;
end;

procedure Tfrefund.tbankKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  tes: string;
begin
  tes := Chr(Key) + ' - ' + IntToStr(Key);
  if tes = '( - 40' then
  begin
    if listbox3.Height <> 0 then
    begin
      listbox3.SetFocus;
      listbox3.Selected[0] := true;
    end;
  end;

  if Key=vk_return then
    ttglbeli.SetFocus;
end;

procedure Tfrefund.ttglbeliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_return then
    ttgltransfer.SetFocus;
end;

procedure Tfrefund.ttgltransferKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_return then
    ttotal.SetFocus;
end;

procedure Tfrefund.ttotalKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_return then
    tmengajukan.SetFocus;
end;

procedure Tfrefund.tmengajukanKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  tes: string;
begin
  tes := Chr(Key) + ' - ' + IntToStr(Key);
  if tes = '( - 40' then
  begin
    if listbox4.Height <> 0 then
    begin
      listbox4.SetFocus;
      listbox4.Selected[0] := true;
    end;
  end;

  if Key = vk_return then
    tdiperiksa.SetFocus;
end;

procedure Tfrefund.tdiperiksaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  tes: string;
begin
  tes := Chr(Key) + ' - ' + IntToStr(Key);
  if tes = '( - 40' then
  begin
    if listbox5.Height <> 0 then
    begin
      listbox5.SetFocus;
      listbox5.Selected[0] := true;
    end;
  end;

  if Key = vk_return then
    tjawab.SetFocus;
end;

procedure Tfrefund.Button1Click(Sender: TObject);
var idcus,kodekas,tglbeli,tgltransfer,alasan,jumlah,total:string;
alamatfhoto,filenamektp,filenamefaktur,filenametransfer,filenamess:string;
begin
  if Button1.Caption = 'Print' then
  Begin
    print(vnorefund);
    Exit;
  end;

  if (Trim(tjumlah.Text) ='') or (trim(tjumlah.Text) ='0') then
  begin
    ShowMessage('Silahkan isi Jumlah yang dikembalikan ! ');
    tjumlah.SetFocus;
  end
  else if Trim(tnorek.Text) ='' then
  begin
    ShowMessage('Silahkan isi No Rek A/C pembayaran ! ');
    tnorek.SetFocus;
  end
  else if Trim(tatasnama.Text) ='' then
  begin
    ShowMessage('Silahkan isi Atas nama rekening ! ');
    tatasnama.SetFocus;
  end
  else if Trim(talasan.Text) ='' then
  begin
    ShowMessage('Silahkan isi Alasan pengembalian ! ');
    talasan.SetFocus;
  end
  else if (Trim(talasan.Text) = 'ALASAN LAIN ...') and (Trim(malasan.Text) ='') then
  begin
    ShowMessage('Silahkan isi Alasan lainnya ! ');
    malasan.SetFocus;
  end
  else if Trim(tcustomer.Text) ='' then
  begin
    ShowMessage('Silahkan isi Alasan pengembalian ! ');
    talasan.SetFocus;
  end
  else if ((Trim(talasan.Text) = 'DOUBLE TRANSFER') or (Trim(talasan.Text) = 'KELEBIHAN TRANSFER')) and (Trim(tnopenjualan.Text) ='') then
  begin
    ShowMessage('Silahkan isi No Penjualan ! ');
    tnopenjualan.SetFocus;
  end
  else if ((Trim(talasan.Text) = 'DOUBLE TRANSFER') or (Trim(talasan.Text) = 'KELEBIHAN TRANSFER')) and ((Trim(ttotal.Text) ='') or (trim(ttotal.Text) ='0')) then
  begin
    ShowMessage('Silahkan isi Total Pembelian ! ');
    ttotal.SetFocus;
  end
  else if Trim(tjenis.Text) ='' then
  begin
    ShowMessage('Silahkan isi Jenis transaksi ! ');
    tjenis.SetFocus;
  end
  else if Trim(tbank.Text) ='' then
  begin
    ShowMessage('Silahkan isi Bank penerima ! ');
    tbank.SetFocus;
  end
  else if Trim(tmengajukan.Text) ='' then
  begin
    ShowMessage('Silahkan isi yang mengajukan ! ');
    tmengajukan.SetFocus;
  end
  else if Trim(tdiperiksa.Text) ='' then
  begin
    ShowMessage('Silahkan isi diperiksa oleh ! ');
    tdiperiksa.SetFocus;
  end
  else if Trim(tjawab.Text) ='' then
  begin
    ShowMessage('Silahkan isi Penanggung jawab ! ');
    tjawab.SetFocus;
  end
  else if vktp ='' then
  begin
    ShowMessage('Silahkan upload fhoto KTP ! ');
    Button51.SetFocus;
  end
  else if ((Trim(talasan.Text) = 'DOUBLE TRANSFER') or (Trim(talasan.Text) = 'KELEBIHAN TRANSFER')) and (vfaktur='') then
  begin
    ShowMessage('Silahkan upload fhoto Faktur ! ');
    Button6.SetFocus;
  end
  else if vtransfer ='' then
  begin
    ShowMessage('Silahkan upload fhoto Bukti Transfer ! ');
    Button7.SetFocus;
  end
  else if vss ='' then
  begin
    ShowMessage('Silahkan upload fhoto SS WA / Email ! ');
    Button8.SetFocus;
  end
  else
  begin
    tglbeli := FormatDateTime('yyyy-MM-dd',ttglbeli.DateTime);
    tgltransfer := FormatDateTime('yyyy-MM-dd',ttgltransfer.DateTime);

    if Trim(talasan.Text) = 'ALASAN LAIN ...' then
      alasan := malasan.Text
    else
      alasan := talasan.Text;

    jumlah := StringReplace(tjumlah.Text, ',', '', [rfReplaceAll, rfIgnoreCase]);
    total := StringReplace(ttotal.Text, ',', '', [rfReplaceAll, rfIgnoreCase]);

    tabel.q1.SQL.Clear;
    tabel.q1.SQL.Add('select id_customer from customer where nama='''+tcustomer.Text+''' ');
    tabel.q1.Open;
    if tabel.q1.RecordCount = 0 then
    begin
      ShowMessage('Customer tidak terdaftar di sistem ! ');
      tcustomer.SetFocus;
      exit;
    end
    else
      idcus := tabel.q1.Fields[0].Text;

    if (Trim(talasan.Text) = 'DOUBLE TRANSFER') or (Trim(talasan.Text) = 'KELEBIHAN TRANSFER') then
    begin
      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('select no_pengeluaran from penjualan_kainstok where no_pengeluaran='''+tnopenjualan.Text+''' and id_customer='+idcus+' ');
      tabel.q1.Open;
      if tabel.q1.RecordCount = 0 then
      begin
        ShowMessage('No Penjualan ' + tnopenjualan.Text + ' bukan untuk customer '+tcustomer.Text);
        tnopenjualan.SetFocus;
        Exit;
      end;
    end;

    tabel.q1.SQL.Clear;
    tabel.q1.SQL.Add('select * from kas_bank where nama_kas='''+tbank.Text+'''  ');
    tabel.q1.Active:=true;
    if tabel.q1.RecordCount = 0 then begin
      showmessage('Bank penerima tidak terdaftar di sistem !');
      tbank.SetFocus;
      Exit;
    end
    else
      kodekas:=tabel.q1.FieldValues['kode_kas'];

    tabel.q1.SQL.Clear;
    tabel.q1.SQL.Add('select nama from `user` where nama='''+tmengajukan.Text+''' ');
    tabel.q1.Open;
    if tabel.q1.RecordCount = 0 then
    begin
      ShowMessage('Data user yang mengajukan tidak terdaftar di sistem ! ');
      tmengajukan.SetFocus;
      exit;
    end;

    tabel.q1.SQL.Clear;
    tabel.q1.SQL.Add('select nama from `user` where nama='''+tdiperiksa.Text+''' ');
    tabel.q1.Open;
    if tabel.q1.RecordCount = 0 then
    begin
      ShowMessage('Data user yang memeriksa tidak terdaftar di sistem ! ');
      tdiperiksa.SetFocus;
      exit;
    end;

    tabel.q1.SQL.Clear;
    tabel.q1.SQL.Add('select nama from `user` where nama='''+tjawab.Text+''' ');
    tabel.q1.Open;
    if tabel.q1.RecordCount = 0 then
    begin
      ShowMessage('Data user yang bertanggung jawab tidak terdaftar di sistem ! ');
      tjawab.SetFocus;
      exit;
    end;

    tabel.q1.SQL.Clear;
    tabel.q1.SQL.Add('SELECT nama FROM alamat_fhoto WHERE kategori=''REFUND'' ');
    tabel.q1.Open;
    if tabel.q1.RecordCount = 0 then
    begin
      ShowMessage('Alamat file untuk refund belum terdaftar, silahkan hubungi bagian IT! ');
      Exit;
    end
    else
      alamatfhoto := tabel.q1.Fields[0].Text;


    if MessageDlg('Apakah anda yakin data tersebut sudah benar ? ',mtConfirmation,[mbYes,mbNo],1)=mryes then
    begin
      vnorefund := generate;

      filenamektp := vnorefund + '_KTP' + Copy(vktp,lastdelimiter('.',vktp),Length(vktp));
      filenamefaktur := vnorefund + '_FAKTUR' + Copy(vktp,lastdelimiter('.',vfaktur),Length(vfaktur));
      filenametransfer := vnorefund + '_TRANSFER' + Copy(vktp,lastdelimiter('.',vtransfer),Length(vtransfer));
      filenamess := vnorefund + '_SS' + Copy(vktp,lastdelimiter('.',vss),Length(vss));

      try
        tabel.q1.sql.clear;
        tabel.q1.sql.Add('START TRANSACTION');
        tabel.q1.ExecSQL;

        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('insert into n_refund values('''+vnorefund+''',now(),'''+tnopenjualan.Text+''','+idcus+','''+tglbeli+''','''+tgltransfer+''' '+
        ' ,'''+tjenis.Text+''','''+tatasnama.Text+''','''+tnorek.Text+''','''+alasan+''','''+tnominal.Text+''','+jumlah+','+total+','+kodekas+' '+
        ' ,'''+tmengajukan.Text+''','''+tdiperiksa.Text+''','''+tjawab.Text+''','+id_user2+' )');
        tabel.q1.ExecSQL;

        tabel.q1.sql.Clear;
        tabel.q1.SQL.Add('insert into n_refund_file values(0,'''+vnorefund+''','''+filenamektp+''','''+filenamefaktur+''','''+filenametransfer+''','''+filenamess+''') ');
        tabel.q1.ExecSQL;

        CopyFile(PAnsiChar(vktp), PAnsiChar(alamatfhoto + filenamektp), False);
        if (Trim(talasan.Text) = 'DOUBLE TRANSFER') or (Trim(talasan.Text) = 'KELEBIHAN TRANSFER') then
          CopyFile(PAnsiChar(vfaktur), PAnsiChar(alamatfhoto + filenamefaktur), False);
        CopyFile(PAnsiChar(vtransfer), PAnsiChar(alamatfhoto + filenametransfer), False);
        CopyFile(PAnsiChar(vss), PAnsiChar(alamatfhoto + filenamess), False);

        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('COMMIT');
        tabel.q1.ExecSQL;

        print(vnorefund);

        bersih();

      except on e:exception do
      begin
        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('ROLLBACK');
        tabel.q1.ExecSQL;

        ShowMessage('Gagal, Error : '+e.Message);
      end;
      end;
    end;
  end;

end;

procedure Tfrefund.tbankChange(Sender: TObject);
var
  kode: string;
begin
  ListBox3.Top := GroupBox3.Top + tbank.Top + tbank.Height;
  ListBox3.Left := tbank.Left;
  ListBox3.Items.Clear;
  ListBox3.Height := 0;
  if (tbank.Text <> '') then
  begin
    kode := '%' + trim(tbank.Text) + '%';
    tabel.q1.SQL.Clear;
    tabel.q1.SQL.Add('select nama_kas from kas_bank where nama_kas like ''' + kode + '''   ');
    tabel.q1.Active := true;
    while not tabel.q1.Eof do
    begin
      ListBox3.Height := 75;
      ListBox3.Items.Append(tabel.q1.FieldValues['nama_kas']);
      tabel.q1.Next;
    end;
  end;
end;

procedure Tfrefund.ListBox1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_return then
  begin
    tcustomer.Text := ListBox1.Items.Strings[ListBox1.ItemIndex];
    listbox1.Height := 0;
    tnopenjualan.SetFocus;
  end;
end;

procedure Tfrefund.ListBox1DblClick(Sender: TObject);
begin
  tcustomer.Text := ListBox1.Items.Strings[ListBox1.ItemIndex];
  listbox1.Height := 0;
  tnopenjualan.SetFocus;
end;

procedure Tfrefund.ListBox2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_return then
  begin
    tnopenjualan.Text := ListBox2.Items.Strings[ListBox2.ItemIndex];
    ListBox2.Height := 0;
    tjenis.SetFocus;
  end;
end;

procedure Tfrefund.ListBox2DblClick(Sender: TObject);
begin
  tnopenjualan.Text := ListBox2.Items.Strings[ListBox2.ItemIndex];
  ListBox2.Height := 0;
  tjenis.SetFocus;
end;

procedure Tfrefund.ListBox3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_return then
  begin
    tbank.Text := ListBox3.Items.Strings[ListBox3.ItemIndex];
    ListBox3.Height := 0;
    ttglbeli.SetFocus;
  end;
end;

procedure Tfrefund.ListBox3DblClick(Sender: TObject);
begin
  tbank.Text := ListBox3.Items.Strings[ListBox3.ItemIndex];
  ListBox3.Height := 0;
  ttglbeli.SetFocus;
end;

procedure Tfrefund.malasanKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_return then
    tcustomer.SetFocus;
end;

function Tfrefund.generate: string;
var no,tgl:string;
n:Integer;
begin
  tgl := FormatDateTime('ddmmyy',Now());

  tabel.q1.SQL.Clear;
  tabel.q1.SQL.Add('SELECT RIGHT(no_refund,3) AS NO FROM n_refund WHERE CONCAT(SUBSTR(no_refund,3,2),SUBSTR(no_refund,5,2),SUBSTR(no_refund,7,2))=DATE_FORMAT(CURDATE(),''%d%m%y'') order by no_refund desc limit 1 ');
  tabel.q1.Open;

  if tabel.q1.RecordCount = 0 then
    Result := 'KU'+tgl+'001'
  else
  begin
    no := tabel.q1.Fields[0].Text;
    n:=strtoint(no)+1;
    case Length(IntToStr(n)) of
      1 : Result := 'KU'+ tgl + '00'+inttostr(n);
      2 : Result := 'KU'+ tgl + '0'+inttostr(n);
      3 : Result := 'KU'+ tgl + ''+inttostr(n);
    end;
  end;
end;

procedure Tfrefund.tjawabKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  tes: string;
begin
  tes := Chr(Key) + ' - ' + IntToStr(Key);
  if tes = '( - 40' then
  begin
    if listbox6.Height <> 0 then
    begin
      listbox6.SetFocus;
      listbox6.Selected[0] := true;
    end;
  end;

  if Key = vk_return then
    button1Click(nil);
end;

procedure Tfrefund.frxReport1GetValue(const VarName: String;
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

procedure Tfrefund.print(norefund:string);
var
  checkbox:TfrxCheckBoxView;
begin
  qreport.SQL.Clear;
  qreport.SQL.Add('SELECT n.*,nama,no_rekening,IFNULL(filename_ktp,'''') AS ktp,IFNULL(filename_faktur,'''')AS faktur,IFNULL(filename_transfer,'''')AS transfer,IFNULL(filename_ss,'''') AS ss '+
  ' FROM n_refund n JOIN customer c USING(id_customer) JOIN kas_bank ks USING(kode_kas) LEFT JOIN n_refund_file nr USING(no_refund)  where no_refund='''+norefund+''' ');
  qreport.Active:=true;

  frxReport1.LoadFromFile(valamatreport + 'cetakrefund.fr3');
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
    checkbox := frxReport1.FindObject('c6') as TfrxCheckBoxView;
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

  frxReport1.ShowReport();
end;

procedure Tfrefund.Button3Click(Sender: TObject);
begin
  fdatarefund.ShowModal;
end;

procedure Tfrefund.Button4Click(Sender: TObject);
var filenamektp,filenamefaktur,filenametransfer,filenamess,alamatfhoto:string;
begin
  tabel.q1.SQL.Clear;
  tabel.q1.SQL.Add('SELECT nama FROM alamat_fhoto WHERE kategori=''REFUND'' ');
  tabel.q1.Open;
  if tabel.q1.RecordCount = 0 then
  begin
    ShowMessage('Alamat file untuk refund belum terdaftar, silahkan hubungi bagian IT! ');
    Exit;
  end
  else
    alamatfhoto := tabel.q1.Fields[0].Text;

  if MessageDlg('Apakah anda yakin akan menghapus data tersebut? ',mtConfirmation,[mbYes,mbNo],1)=mryes then
  begin
    try
      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('START TRANSACTION');
      tabel.q1.ExecSQL;

      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('INSERT INTO n_refund_histori SELECT 0,n.*,NOW(),'+id_user2+' FROM n_refund n WHERE no_refund='''+vnorefund+''' ');
      tabel.q1.ExecSQL;

      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('delete from n_refund where no_refund='''+vnorefund+''' ');
      tabel.q1.ExecSQL;

      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('select * from n_refund_file where no_refund='''+vnorefund+''' ');
      tabel.q1.open;
      if tabel.q1.RecordCount > 0 then
      begin
        filenamektp := alamatfhoto + tabel.q1.FieldValues['filename_ktp'];
        filenamefaktur := alamatfhoto + tabel.q1.FieldValues['filename_faktur'];
        filenametransfer := alamatfhoto + tabel.q1.FieldValues['filename_transfer'];
        filenamess := alamatfhoto + tabel.q1.FieldValues['filename_ss'];

        if fileexists(filenamektp) then
          DeleteFile(filenamektp);
        if fileexists(filenamefaktur) then
          DeleteFile(filenamefaktur);
        if fileexists(filenametransfer) then
          DeleteFile(filenametransfer);
        if fileexists(filenamess) then
          DeleteFile(filenamess);
      end;

      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('COMMIT');
      tabel.q1.ExecSQL;

      ShowMessage('Berhasil dihapus');
      Button2Click(nil);


    except on e:exception do
    begin
      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('ROLLBACK');
      tabel.q1.ExecSQL;

      ShowMessage('Gagal. Error : '+e.Message);
    end;
    end;
  end;
end;

procedure Tfrefund.Button51Click(Sender: TObject);
begin
  OpenDialog1.Filter := 'File gambar|*.jpg;*.jpeg;*.png;*.bmp';
  if OpenDialog1.Execute then
  begin
    lktp.caption := '...'+RightStr(OpenDialog1.filename,10);
    vktp := OpenDialog1.filename;
  end
  else
  begin
    lktp.Caption := '';
    vktp := '';
  end;
end;

procedure Tfrefund.Button6Click(Sender: TObject);
begin
  OpenDialog1.Filter := 'File gambar|*.jpg;*.jpeg;*.png;*.bmp';
  if OpenDialog1.Execute then
  begin
    lfaktur.caption := '...'+RightStr(OpenDialog1.filename,10);
    vfaktur := OpenDialog1.filename;
  end
  else
  begin
    lfaktur.Caption := '';
    vfaktur := '';
  end;
end;

procedure Tfrefund.Button7Click(Sender: TObject);
begin
  OpenDialog1.Filter := 'File gambar|*.jpg;*.jpeg;*.png;*.bmp';
  if OpenDialog1.Execute then
  begin
    ltransfer.caption := '...'+RightStr(OpenDialog1.filename,10);
    vtransfer := OpenDialog1.filename;
  end
  else
  begin
    ltransfer.Caption := '';
    vtransfer := '';
  end;
end;

procedure Tfrefund.Button8Click(Sender: TObject);
begin
  OpenDialog1.Filter := 'File gambar|*.jpg;*.jpeg;*.png;*.bmp';
  if OpenDialog1.Execute then
  begin
    lss.caption := '...'+RightStr(OpenDialog1.filename,10);
    vss := OpenDialog1.filename;
  end
  else
  begin
    lss.Caption := '';
    vss := '';
  end;
end;

procedure Tfrefund.tmengajukanChange(Sender: TObject);
var
  kode: string;
begin
  listbox4.Top := tmengajukan.Top + tmengajukan.Height;
  listbox4.Left := tmengajukan.Left;
  listbox4.Items.Clear;
  listbox4.Height := 0;
  if (tmengajukan.Text <> '') then
  begin
    kode := '%' + trim(tmengajukan.Text) + '%';
    tabel.q1.SQL.Clear;
    tabel.q1.SQL.Add('SELECT nama FROM `user` WHERE LEVEL=''admin'' and  nama like ''' + kode + ''' ORDER BY nama limit 10  ');
    tabel.q1.Active := true;
    while not tabel.q1.Eof do
    begin
      listbox4.Height := 75;
      listbox4.Items.Append(tabel.q1.FieldValues['nama']);
      tabel.q1.Next;
    end;
  end;
end;

procedure Tfrefund.tdiperiksaChange(Sender: TObject);
var
  kode: string;
begin
  listbox5.Top := tdiperiksa.Top + tdiperiksa.Height;
  listbox5.Left := tdiperiksa.Left;
  listbox5.Items.Clear;
  listbox5.Height := 0;
  if (tdiperiksa.Text <> '') then
  begin
    kode := '%' + trim(tdiperiksa.Text) + '%';
    tabel.q1.SQL.Clear;
    tabel.q1.SQL.Add('SELECT nama FROM `user` WHERE (LEVEL like ''%supervisor%'') and  nama like ''' + kode + ''' ORDER BY nama limit 10  ');
    tabel.q1.Active := true;
    while not tabel.q1.Eof do
    begin
      listbox5.Height := 75;
      listbox5.Items.Append(tabel.q1.FieldValues['nama']);
      tabel.q1.Next;
    end;
  end;
end;

procedure Tfrefund.tjawabChange(Sender: TObject);
var
  kode: string;
begin
  listbox6.Top := tjawab.Top + tjawab.Height;
  listbox6.Left := tjawab.Left;
  listbox6.Items.Clear;
  listbox6.Height := 0;
  if (tjawab.Text <> '') then
  begin
    kode := '%' + trim(tjawab.Text) + '%';
    tabel.q1.SQL.Clear;
    tabel.q1.SQL.Add('SELECT nama FROM `user` WHERE (LEVEL like ''%supervisor%'') and  nama like ''' + kode + ''' ORDER BY nama limit 10  ');
    tabel.q1.Active := true;
    while not tabel.q1.Eof do
    begin
      listbox6.Height := 75;
      listbox6.Items.Append(tabel.q1.FieldValues['nama']);
      tabel.q1.Next;
    end;
  end;
end;

procedure Tfrefund.ListBox4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_return then
  begin
    tmengajukan.Text := ListBox4.Items.Strings[ListBox4.ItemIndex];
    ListBox4.Height := 0;
    tdiperiksa.SetFocus;
  end;
end;

procedure Tfrefund.ListBox5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_return then
  begin
    tdiperiksa.Text := ListBox5.Items.Strings[ListBox5.ItemIndex];
    ListBox5.Height := 0;
    tjawab.SetFocus;
  end;
end;

procedure Tfrefund.ListBox6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_return then
  begin
    tjawab.Text := ListBox6.Items.Strings[ListBox6.ItemIndex];
    ListBox6.Height := 0;
  end;
end;

procedure Tfrefund.ListBox6DblClick(Sender: TObject);
begin
  tjawab.Text := ListBox6.Items.Strings[ListBox6.ItemIndex];
  ListBox6.Height := 0;
end;

procedure Tfrefund.ListBox5DblClick(Sender: TObject);
begin
  tdiperiksa.Text := ListBox5.Items.Strings[ListBox5.ItemIndex];
  ListBox5.Height := 0;
  tjawab.SetFocus;
end;

procedure Tfrefund.ListBox4DblClick(Sender: TObject);
begin
  tmengajukan.Text := ListBox4.Items.Strings[ListBox4.ItemIndex];
  ListBox4.Height := 0;
  tdiperiksa.SetFocus;
end;

procedure Tfrefund.Button5Click(Sender: TObject);
var filenamektp,filenamefaktur,filenametransfer,filenamess,alamatfhoto:string;
begin
  tabel.q1.SQL.Clear;
  tabel.q1.SQL.Add('SELECT nama FROM alamat_fhoto WHERE kategori=''REFUND'' ');
  tabel.q1.Open;
  if tabel.q1.RecordCount = 0 then
  begin
    ShowMessage('Alamat file untuk refund belum terdaftar, silahkan hubungi bagian IT! ');
    Exit;
  end
  else
    alamatfhoto := tabel.q1.Fields[0].Text;

  tabel.q1.SQL.Clear;
  tabel.q1.SQL.Add('select * from n_refund_file where no_refund='''+vnorefund+''' ');
  tabel.q1.open;
  if tabel.q1.RecordCount > 0 then
  begin
    filenamektp := alamatfhoto + tabel.q1.FieldValues['filename_ktp'];
    filenamefaktur := alamatfhoto + tabel.q1.FieldValues['filename_faktur'];
    filenametransfer := alamatfhoto + tabel.q1.FieldValues['filename_transfer'];
    filenamess := alamatfhoto + tabel.q1.FieldValues['filename_ss'];
  end;

  with fdatafhotorefund do
  begin
    tampilktp(filenamektp);
    tampilfaktur(filenamefaktur);
    tampiltransfer(filenametransfer);
    tampilss(filenamess);

    ShowModal;
  end;
end;

end.

