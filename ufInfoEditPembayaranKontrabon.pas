unit ufInfoEditPembayaranKontrabon;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinOffice2010Black, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, DBAccess, Uni, MemDS, VirtualTable;

type
  TfInfoEditPembayaranKontrabon = class(TForm)
    Panel25: TPanel;
    SpeedButton7: TSpeedButton;
    Label1: TLabel;
    vtsapkontrabon: TVirtualTable;
    vtsapkontrabondescription: TStringField;
    vtsapkontrabonglakun: TStringField;
    vtsapkontrabontax: TStringField;
    vtsapkontrabonwtax: TStringField;
    vtsapkontrabontotal: TStringField;
    vtsapkontrabonblanket: TStringField;
    vtsapkontrabonqty: TStringField;
    vtsapkontrabonprice: TStringField;
    vtsapkontrabonlongdescription: TStringField;
    dsvtsapkontrabon: TUniDataSource;
    cxGrid34: TcxGrid;
    cxGrid34DBTableView1: TcxGridDBTableView;
    cxGrid34DBTableView1description: TcxGridDBColumn;
    cxGrid34DBTableView1glakun: TcxGridDBColumn;
    cxGrid34DBTableView1tax: TcxGridDBColumn;
    cxGrid34DBTableView1wtax: TcxGridDBColumn;
    cxGrid34DBTableView1total: TcxGridDBColumn;
    cxGrid34DBTableView1longdescription: TcxGridDBColumn;
    cxGrid34Level1: TcxGridLevel;
    vtsapkontrabonglakunname: TStringField;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var
      noorder,vselisih,vformatSelisih,vbesarkecil,vekspedisi:string;
  end;

var
  fInfoEditPembayaranKontrabon: TfInfoEditPembayaranKontrabon;

implementation

uses
  uftabel, ufmenuutama;

{$R *.dfm}

procedure TfInfoEditPembayaranKontrabon.FormShow(Sender: TObject);
begin
  if vbesarkecil = 'besar' then
  begin
    label1.Caption := 'Nilai tagihan lebih kecil dari sebelumnya, buat dokumen A/R Credit Memo, A/P Credit Memo dan Incoming Payment '+
                    ' untuk ekspedisi '+vekspedisi+' di SAP sebesar Rp. '+vformatSelisih;
    SpeedButton7.Caption := 'COPY UNTUK A/R CR. MEMO';
    SpeedButton1.Caption := 'COPY UNTUK A/P CR. MEMO / IN. Payment';
  end
  else
  begin
    label1.Caption := 'Nilai tagihan lebih besar dari sebelumnya, buat dokumen A/R Invoice, A/P Invoice dan Outgoing Payment '+
                    ' untuk ekspedisi '+vekspedisi+' di SAP sebesar Rp. '+vformatSelisih;
    SpeedButton7.Caption := 'COPY UNTUK A/R INVOICE';
    SpeedButton1.Caption := 'COPY UNTUK A/P INVOICE / OUT. Payment';
  end;
end;

procedure TfInfoEditPembayaranKontrabon.SpeedButton1Click(Sender: TObject);
var
  glakun,glnamaakun:string;
begin
  tabel.q1.SQL.Clear;
  tabel.q1.SQL.Add('select * from perkiraan_sap where upper(trim(jenis_perkiraan))=''CREDIT MEMO'' and upper(trim(nama_perkiraan))=''SELISIH ONGKIR'' ');
  tabel.q1.Open;
  if tabel.q1.RecordCount > 0 then
  begin
    glakun := tabel.q1.FieldByName('no_perkiraan').Text;
    glnamaakun := tabel.q1.FieldByName('nama_perkiraan').Text;
  end
  else
  begin
    glakun := '';
    glnamaakun := '';
  end;



  tabel.q1.SQL.Clear;
  tabel.q1.SQL.Add('SELECT IF(no_resi IS NOT NULL,CONCAT(op.no_order,'' - '',no_resi),op.no_order) AS description,group_tax '+
  ' ,CONCAT(''IDR '',FORMAT(IF(jenis_pembayaran_asuransi = ''MEMAKAI KONTRABON'',IFNULL(dk.jumlah,0),IFNULL(dk.jumlah, 0)-IFNULL(dks.jumlah, 0)),2,''de_DE'')) AS total '+
  ' ,FORMAT(IFNULL(berat_resi,0),2,''de_DE'') AS qty,FORMAT(IFNULL(IF(jenis_pembayaran_asuransi = ''MEMAKAI KONTRABON'',IFNULL(dk.jumlah,0),IFNULL(dk.jumlah, 0)-IFNULL(dks.jumlah, 0))/ berat_resi,0),2,''de_DE'') AS price'+
  ' FROM order_pembelian op JOIN customer c USING(id_customer) JOIN detail_muat dp                                                                   '+
  ' ON dp.no_pengeluaran=op.no_order JOIN muat_orderan mo ON mo.`no_muat`=dp.`no_muat` JOIN relasi_orderdanpenjualan ro ON ro.no_order=op.no_order  '+
  ' LEFT JOIN ongkir okr ON okr.no_transaksi=ro.no_penjualan                                                                                     '+
  ' LEFT JOIN ekspedisi ek ON ek.nama=op.exspedisi                                                                                                '+
  ' LEFT JOIN (SELECT no_order,jumlah,berat_resi FROM detail_pengeluaranongkir dpl GROUP BY no_order) AS dk ON dk.no_order=op.no_order                      '+
  ' LEFT JOIN (SELECT no_order,asuransi_versi_exspedisi AS jumlah FROM a_asuransiversi_exspedisi dps GROUP BY no_order) AS dks  ON dks.no_order = op.no_order '+
  ' LEFT JOIN fhoto_resi fr ON op.no_order=fr.no_order   '+
  ' WHERE op.no_order='''+noorder+''' '+
  ' UNION                                                                                                                                        '+
  ' SELECT IF(no_resi IS NOT NULL,CONCAT(op.no_penjualan,'' - '',no_resi),op.no_penjualan) AS description,group_tax '+
  ' ,CONCAT(''IDR '',FORMAT(IF(jenis_pembayaran_asuransi = ''MEMAKAI KONTRABON'',IFNULL(dk.jumlah,0),IFNULL(dk.jumlah, 0)-IFNULL(dks.jumlah, 0)),2,''de_DE'')) AS total '+
  ' ,FORMAT(IFNULL(berat_resi,0),2,''de_DE'') AS qty,FORMAT(IFNULL(IF(jenis_pembayaran_asuransi = ''MEMAKAI KONTRABON'',IFNULL(dk.jumlah,0),IFNULL(dk.jumlah, 0)-IFNULL(dks.jumlah, 0))/ berat_resi,0),2,''de_DE'') AS price'+
  ' FROM s_penjualan_katalog op JOIN customer c USING(id_customer) JOIN detail_muat dp  ON dp.no_pengeluaran=op.no_penjualan                       '+
  ' JOIN muat_orderan mo ON mo.`no_muat`=dp.`no_muat`                                                                                            '+
  ' LEFT JOIN ongkir okr ON okr.no_transaksi=op.no_penjualan                                                                                      '+
  ' LEFT JOIN ekspedisi ek ON ek.nama=op.ekspedisi                                                                                                '+
  ' LEFT JOIN (SELECT no_order,jumlah,berat_resi FROM detail_pengeluaranongkir dpl GROUP BY no_order) AS dk ON dk.no_order=op.no_penjualan                  '+
  ' LEFT JOIN (SELECT no_order,asuransi_versi_exspedisi AS jumlah FROM a_asuransiversi_exspedisi dps GROUP BY no_order) AS dks ON dks.no_order = op.no_penjualan '+
  ' LEFT JOIN fhoto_resi fr ON op.no_penjualan=fr.no_order   '+
  ' WHERE op.no_penjualan='''+noorder+''' ');
  tabel.q1.open;

  vtsapkontrabon.Active := false;
  vtsapkontrabon.Active := True;
  vtsapkontrabon.Clear;

  tabel.q1.First;
  while not tabel.q1.Eof do
  begin
    vtsapkontrabon.Append;

    vtsapkontrabondescription.Text := tabel.q1.FieldByName('description').Text;
    vtsapkontrabonglakun.Text := fmenuutama.tkutip.Text + glakun;
    vtsapkontrabonglakunname.Text := glnamaakun;
    vtsapkontrabontax.Text := tabel.q1.FieldByName('group_tax').Text;
    vtsapkontrabonwtax.Text := 'No';
//    vtsapkontrabontotal.Text := tabel.q1.FieldByName('selisih').Text;
    vtsapkontrabontotal.Text := vselisih;
    vtsapkontrabonblanket.Text := '';
//    vtsapkontrabonqty.Text := tabel.q1.FieldByName('qty').Text;
    vtsapkontrabonqty.Text := '0';
//    vtsapkontrabonprice.Text := tabel.q1.FieldByName('price').Text;
    vtsapkontrabonprice.Text := '0';
    vtsapkontrabonlongdescription.Text := tabel.q1.FieldByName('description').Text;

    vtsapkontrabon.Post;

    tabel.q1.Next;
  end;

  TcxGridDBTableView(cxGrid34.FocusedView).CopyToClipboard(True);
  fmenuutama.changeStatusBar('Sukses','Data Berhasil Tercopy...',clTeal,clTeal);
  ShowMessage('Data Berhasil Tercopy');
end;

procedure TfInfoEditPembayaranKontrabon.SpeedButton7Click(Sender: TObject);
var
  glakun,glnamaakun,desc:string;
begin
  tabel.q1.SQL.Clear;
  tabel.q1.SQL.Add('select * from perkiraan_sap where upper(trim(jenis_perkiraan))=''CREDIT MEMO'' and upper(trim(nama_perkiraan))=''SELISIH ONGKIR'' ');
  tabel.q1.Open;
  if tabel.q1.RecordCount > 0 then
  begin
    glakun := tabel.q1.FieldByName('no_perkiraan').Text;
    glnamaakun := tabel.q1.FieldByName('nama_perkiraan').Text;
  end
  else
  begin
    glakun := '';
    glnamaakun := '';
  end;

  if vbesarkecil = 'besar' then
    desc := 'Kurang Estimasi Ongkir'
  else
    desc := 'Lebih Estimasi Ongkir';

  desc := desc + ' - ' + vekspedisi;

  tabel.q1.SQL.Clear;
  tabel.q1.SQL.Add('SELECT '''+desc+''' AS description,group_tax '+
  ' ,CONCAT(''IDR '',FORMAT(IF(jenis_pembayaran_asuransi = ''MEMAKAI KONTRABON'',IFNULL(dk.jumlah,0),IFNULL(dk.jumlah, 0)-IFNULL(dks.jumlah, 0)),2,''de_DE'')) AS total '+
  ' ,FORMAT(IFNULL(berat_resi,0),2,''de_DE'') AS qty,FORMAT(IFNULL(IF(jenis_pembayaran_asuransi = ''MEMAKAI KONTRABON'',IFNULL(dk.jumlah,0),IFNULL(dk.jumlah, 0)-IFNULL(dks.jumlah, 0))/ berat_resi,0),2,''de_DE'') AS price'+
  ' FROM order_pembelian op JOIN customer c USING(id_customer) JOIN detail_muat dp                                                                   '+
  ' ON dp.no_pengeluaran=op.no_order JOIN muat_orderan mo ON mo.`no_muat`=dp.`no_muat` JOIN relasi_orderdanpenjualan ro ON ro.no_order=op.no_order  '+
  ' LEFT JOIN ongkir okr ON okr.no_transaksi=ro.no_penjualan                                                                                     '+
  ' LEFT JOIN ekspedisi ek ON ek.nama=op.exspedisi                                                                                                '+
  ' LEFT JOIN (SELECT no_order,jumlah,berat_resi FROM detail_pengeluaranongkir dpl GROUP BY no_order) AS dk ON dk.no_order=op.no_order                      '+
  ' LEFT JOIN (SELECT no_order,asuransi_versi_exspedisi AS jumlah FROM a_asuransiversi_exspedisi dps GROUP BY no_order) AS dks  ON dks.no_order = op.no_order '+
  ' LEFT JOIN fhoto_resi fr ON op.no_order=fr.no_order   '+
  ' WHERE op.no_order='''+noorder+''' '+
  ' UNION                                                                                                                                        '+
  ' SELECT '''+desc+''' AS description,group_tax '+
  ' ,CONCAT(''IDR '',FORMAT(IF(jenis_pembayaran_asuransi = ''MEMAKAI KONTRABON'',IFNULL(dk.jumlah,0),IFNULL(dk.jumlah, 0)-IFNULL(dks.jumlah, 0)),2,''de_DE'')) AS total '+
  ' ,FORMAT(IFNULL(berat_resi,0),2,''de_DE'') AS qty,FORMAT(IFNULL(IF(jenis_pembayaran_asuransi = ''MEMAKAI KONTRABON'',IFNULL(dk.jumlah,0),IFNULL(dk.jumlah, 0)-IFNULL(dks.jumlah, 0))/ berat_resi,0),2,''de_DE'') AS price'+
  ' FROM s_penjualan_katalog op JOIN customer c USING(id_customer) JOIN detail_muat dp  ON dp.no_pengeluaran=op.no_penjualan                       '+
  ' JOIN muat_orderan mo ON mo.`no_muat`=dp.`no_muat`                                                                                            '+
  ' LEFT JOIN ongkir okr ON okr.no_transaksi=op.no_penjualan                                                                                      '+
  ' LEFT JOIN ekspedisi ek ON ek.nama=op.ekspedisi                                                                                                '+
  ' LEFT JOIN (SELECT no_order,jumlah,berat_resi FROM detail_pengeluaranongkir dpl GROUP BY no_order) AS dk ON dk.no_order=op.no_penjualan                  '+
  ' LEFT JOIN (SELECT no_order,asuransi_versi_exspedisi AS jumlah FROM a_asuransiversi_exspedisi dps GROUP BY no_order) AS dks ON dks.no_order = op.no_penjualan '+
  ' LEFT JOIN fhoto_resi fr ON op.no_penjualan=fr.no_order   '+
  ' WHERE op.no_penjualan='''+noorder+''' ');
  tabel.q1.open;

  vtsapkontrabon.Active := false;
  vtsapkontrabon.Active := True;
  vtsapkontrabon.Clear;

  tabel.q1.First;
  while not tabel.q1.Eof do
  begin
    vtsapkontrabon.Append;

    vtsapkontrabondescription.Text := tabel.q1.FieldByName('description').Text;
    vtsapkontrabonglakun.Text := fmenuutama.tkutip.Text + glakun;
    vtsapkontrabonglakunname.Text := glnamaakun;
    vtsapkontrabontax.Text := tabel.q1.FieldByName('group_tax').Text;
    vtsapkontrabonwtax.Text := 'No';
//    vtsapkontrabontotal.Text := tabel.q1.FieldByName('selisih').Text;
    vtsapkontrabontotal.Text := vselisih;
    vtsapkontrabonblanket.Text := '';
//    vtsapkontrabonqty.Text := tabel.q1.FieldByName('qty').Text;
    vtsapkontrabonqty.Text := '0';
//    vtsapkontrabonprice.Text := tabel.q1.FieldByName('price').Text;
    vtsapkontrabonprice.Text := '0';
    vtsapkontrabonlongdescription.Text := tabel.q1.FieldByName('description').Text;

    vtsapkontrabon.Post;

    tabel.q1.Next;
  end;

  TcxGridDBTableView(cxGrid34.FocusedView).CopyToClipboard(True);
  fmenuutama.changeStatusBar('Sukses','Data Berhasil Tercopy...',clTeal,clTeal);
  ShowMessage('Data Berhasil Tercopy');
end;

end.
