unit ufaccperbaikanpembayaran;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, DBAccess, Uni, MemDS;

type
  Tfaccperbaikanpembayaran = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    Panel5: TPanel;
    SpeedButton1: TSpeedButton;
    Panel3: TPanel;
    Panel4: TPanel;
    SpeedButton2: TSpeedButton;
    GroupBox2: TGroupBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    qdata: TUniQuery;
    dsdata: TUniDataSource;
    qdataid: TIntegerField;
    qdatatanggal: TDateTimeField;
    qdatano_order: TStringField;
    qdatano_penjualan: TStringField;
    qdataalasan: TStringField;
    qdatastatus_acc: TStringField;
    qdatano_temp: TIntegerField;
    qdataid_user: TIntegerField;
    qdatausername: TStringField;
    qdatajenis_pembayaran: TStringField;
    qdatano_kartu: TStringField;
    qdatajumlah: TFloatField;
    qdataadm: TFloatField;
    qdatabank: TStringField;
    cxGrid1DBTableView1tanggal: TcxGridDBColumn;
    cxGrid1DBTableView1no_order: TcxGridDBColumn;
    cxGrid1DBTableView1no_penjualan: TcxGridDBColumn;
    cxGrid1DBTableView1alasan: TcxGridDBColumn;
    cxGrid1DBTableView1username: TcxGridDBColumn;
    cxGrid1DBTableView1jenis_pembayaran: TcxGridDBColumn;
    cxGrid1DBTableView1no_kartu: TcxGridDBColumn;
    cxGrid1DBTableView1jumlah: TcxGridDBColumn;
    cxGrid1DBTableView1adm: TcxGridDBColumn;
    cxGrid1DBTableView1bank: TcxGridDBColumn;
    Panel6: TPanel;
    SpeedButton5: TSpeedButton;
    qdatanama: TStringField;
    cxGrid1DBTableView1nama: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  faccperbaikanpembayaran: Tfaccperbaikanpembayaran;

implementation

{$R *.dfm}

uses uftabel;

procedure Tfaccperbaikanpembayaran.FormShow(Sender: TObject);
begin
  qdata.active := false;
  qdata.active := True;
end;

procedure Tfaccperbaikanpembayaran.SpeedButton1Click(Sender: TObject);
var
  noorder, pesan: string;
begin
  if qdata.RecordCount = 0 then begin
    ShowMessage('Tidak Ada Data yang Dapat di Pilih');
    Exit;
  end;

  noorder := qdatano_order.Value;

  pesan:='Apakah Anda Yakin Akan Menolak Approve Untuk Perbaikan Pembayaran Order '+ qdatano_order.value +' ? ';
  if messagedlg(pesan,mtconfirmation,[mbyes,mbno],0)=mryes then
  begin
    tabel.q1.SQL.Clear;
    tabel.q1.SQL.Add('update `a_accperbaikan_pembayaran` set status_acc=''ACC DI TOLAK'' WHERE no_order='''+noorder+''' ');
    tabel.q1.ExecSQL;

    tabel.q1.SQL.Clear;
    tabel.q1.SQL.Add('insert into a_approveperbaikan_pembayaran values(null,'''+noorder+''',now(),'''+v_idkaryawan+''',''ACC DI TOLAK'','''+ qdataid.AsString +''')');
    tabel.q1.ExecSQL;

    ShowMessage('Approve di Tolak');

    qdata.active := false;
    qdata.active := True;

    if qdata.RecordCount = 0 then begin
      close;
    end;
  end;
end;

procedure Tfaccperbaikanpembayaran.SpeedButton2Click(Sender: TObject);
var
  noorder, jenis, nopenjualan_batal,pesan,no_detail,jumlahuang: string;
begin
  if qdata.RecordCount = 0 then begin
    ShowMessage('Tidak Ada Data yang Dapat di Pilih');
    Exit;
  end;

  noorder := qdatano_order.Value;

  pesan:='Apakah Anda Yakin Akan Melakukan Approve Untuk Perbaikan Pembayaran Order '+ qdatano_order.value +' ? ';
  if messagedlg(pesan,mtconfirmation,[mbyes,mbno],0)=mryes then
  begin
    tabel.q1.SQL.Clear;
    tabel.q1.SQL.Add('START TRANSACTION');
    tabel.q1.ExecSQL;

      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('select * from relasi_orderdanpenjualan where no_order='''+noorder+''' and no_penjualan!='''' order by no desc limit 1 ');
      tabel.q1.Active:=True;
      if tabel.q1.RecordCount >0 then begin
        nopenjualan_batal:=tabel.q1.FieldValues['no_penjualan'];
      end;

      try
        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('select * from a_asuransi_order where no_order='''+noorder+''' ');
        tabel.q1.Active:=True;
        if tabel.q1.RecordCount > 0 then begin
          tabel.q1.SQL.Clear;
          tabel.q1.SQL.Add('update a_asuransi_order set jumlah_asuransi=0.0 where no_order='''+noorder+'''  ');
          tabel.q1.ExecSQL;
        end;
      except

      end;

      try
        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('select * from a_kembalian where no_penjualan='''+noorder+''' ');
        tabel.q1.Active:=True;
        if tabel.q1.RecordCount > 0 then begin
          tabel.q1.SQL.Clear;
          tabel.q1.SQL.Add('delete from a_kembalian where no_penjualan='''+noorder+'''  ');
          tabel.q1.ExecSQL;
        end;
      except

      end;

      try
        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('select * from detail_konfirmasipembayaran where no_order='''+noorder+''' ');
        tabel.q1.Active:=True;
        if tabel.q1.RecordCount > 0 then begin

          tabel.q1.SQL.Clear;
          tabel.q1.SQL.Add('SELECT (SUM(jumlah_uang) + SUM(nominal))  AS jumlahuang FROM `detail_konfirmasipembayaran` WHERE no_order='''+noorder+''' GROUP BY no_order ');
          tabel.q1.Active:=True;

          jumlahuang := tabel.q1.FieldValues['jumlah_uang'];

          tabel.q1.SQL.Clear;
          tabel.q1.SQL.Add('update konfirmasi_pembayaran set jumlah_uang='''+ jumlahuang +''' where no_order='''+noorder+'''  ');
          tabel.q1.ExecSQL;

        end else begin

          tabel.q1.SQL.Clear;
          tabel.q1.SQL.Add('delete from konfirmasi_pembayaran where no_order='''+noorder+'''  ');
          tabel.q1.ExecSQL;

        end;
      except

      end;

      try
        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('select * from penjualan_kainstok where no_pengeluaran='''+nopenjualan_batal+'''  ');
        tabel.q1.Active:=True;
        if tabel.q1.RecordCount >0 then begin
          tabel.q1.SQL.Clear;
          tabel.q1.SQL.Add('update penjualan_kainstok set catatan='''',status=0 where no_pengeluaran='''+nopenjualan_batal+'''  ');
          tabel.q1.ExecSQL;
        end;
      except

      end;

      try
        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('select * from a_temp_uangcustomer where no_order='''+noorder+''' and status_pemasangan=''SUDAH DIPASANGKAN'' ');
        tabel.q1.Active:=true;
        if tabel.q1.RecordCount > 0 then
        begin
          tabel.q1.SQL.Clear;
          tabel.q1.SQL.Add('update a_temp_uangcustomer set status_pemasangan=''BELUM DIPASANGKAN'' where no_order=''' + noorder + ''' ');
          tabel.q1.ExecSQL;
        end;
      except

      end;

      try
        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('select * from piutang where no_piutang='''+nopenjualan_batal+''' ');
        tabel.q1.Active:=true;
        if tabel.q1.RecordCount > 0 then begin
          tabel.q1.SQL.Clear;
          tabel.q1.SQL.Add('delete from piutang where no_piutang='''+nopenjualan_batal+''' ');
          tabel.q1.ExecSQL;

          tabel.q1.SQL.Clear;
          tabel.q1.SQL.Add('delete from perincian_piutang where no_jual='''+nopenjualan_batal+''' ');
          tabel.q1.ExecSQL;
        end;
      except

      end;

      try
        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('select * from kode_verifikasipenjualan where no_penjualan='''+nopenjualan_batal+'''  ');
        tabel.q1.Active:=True;
        if tabel.q1.RecordCount >0 then begin
          tabel.q1.SQL.Clear;
          tabel.q1.SQL.Add('delete from kode_verifikasipenjualan where no_penjualan='''+nopenjualan_batal+''' ');
          tabel.q1.ExecSQL;

        end;
      except

      end;

      try
        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('select * from ongkir where no_transaksi='''+nopenjualan_batal+'''  ');
        tabel.q1.Active:=True;
        if tabel.q1.RecordCount >0 then begin
          tabel.q1.SQL.Clear;
          tabel.q1.SQL.Add('delete from ongkir where no_transaksi='''+nopenjualan_batal+'''  ');
          tabel.q1.ExecSQL;
        end;
      except

      end;

      try
        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('select * from faktur_lainlain where no_order='''+nopenjualan_batal+'''  ');
        tabel.q1.Active:=True;
        if tabel.q1.RecordCount >0 then begin
          tabel.q1.SQL.Clear;
          tabel.q1.SQL.Add('delete from faktur_lainlain where no_order='''+nopenjualan_batal+'''  ');
          tabel.q1.ExecSQL;

        end;
      except

      end;

      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('insert into a_batal_faktur values(null,'''+noorder+''',now(),'''+v_idkaryawan+''',0)');
      tabel.q1.ExecSQL;

      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('update order_pembelian set status_order=''SIAP KIRIM''  where no_order='''+noorder+''' ');
      tabel.q1.ExecSQL;

      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('update `a_accperbaikan_pembayaran` set status_acc=''SUDAH DI ACC'' WHERE no_order='''+noorder+''' ');
      tabel.q1.ExecSQL;

      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('insert into a_approveperbaikan_pembayaran values(null,'''+noorder+''',now(),'''+v_idkaryawan+''',''SUDAH DI ACC'','''+ qdataid.AsString +''')');
      tabel.q1.ExecSQL;

      ShowMessage('Data Berhasil Di Approve');

      qdata.active := false;
      qdata.active := True;

      if qdata.RecordCount = 0 then begin
        close;
      end;

    tabel.q1.SQL.Clear;
    tabel.q1.SQL.Add('COMMIT');
    tabel.q1.ExecSQL;
  end;
end;

procedure Tfaccperbaikanpembayaran.SpeedButton5Click(Sender: TObject);
begin
  qdata.active := false;
  qdata.active := True;
end;

end.
