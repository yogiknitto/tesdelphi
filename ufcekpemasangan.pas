unit ufcekpemasangan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  Vcl.AxCtrls, cxGridTableView, cxGridDBTableView, cxGrid, DBAccess, Uni, MemDS,
  Jpeg, rImageZoom, Vcl.Menus, Vcl.ComCtrls;

type
  Tfcekpemasangan = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Button1: TButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    qdata: TUniQuery;
    dsqdata: TUniDataSource;
    Panel3: TPanel;
    rImageZoom1: TrImageZoom;
    GroupBox1: TGroupBox;
    Label68: TLabel;
    Label69: TLabel;
    Label4: TLabel;
    tgl1: TDateTimePicker;
    Button4: TButton;
    Panel14: TPanel;
    Panel8: TPanel;
    qdataid_transaksi: TIntegerField;
    qdatano: TIntegerField;
    qdatatanggal: TDateField;
    qdataketerangan: TStringField;
    qdatacabang: TStringField;
    qdatajumlah: TFloatField;
    qdatanama: TStringField;
    qdatasaldo_akhir: TFloatField;
    qdatamutasi: TStringField;
    qdatakredit: TFloatField;
    qdatadebet: TFloatField;
    qdatanodetailkonfirmasi: TIntegerField;
    qdatanorekening: TIntegerField;
    qdataSTATUS: TStringField;
    cxGrid1DBTableView1tanggal: TcxGridDBColumn;
    cxGrid1DBTableView1keterangan: TcxGridDBColumn;
    cxGrid1DBTableView1jumlah: TcxGridDBColumn;
    cxGrid1DBTableView1nama: TcxGridDBColumn;
    cxGrid1DBTableView1STATUS: TcxGridDBColumn;
    procedure Button2Click(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qdataAfterScroll(DataSet: TDataSet);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcekpemasangan: Tfcekpemasangan;
  v_alamattt: string;

implementation

uses
  uftabel, uffhoto;

{$R *.dfm}

procedure Tfcekpemasangan.Button1Click(Sender: TObject);
begin

  if MessageDlg('Apakah anda yakin akan melakukan verifikasi ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin

    tabel.q1.SQL.Clear;
    tabel.q1.SQL.Add('insert into n_verifikasi_pemasanganrek values(0,''' + qdatano.Text + ''',''' + qdataid_transaksi.Text + ''',''' + v_idkaryawan + ''') ');
    tabel.q1.ExecSQL;
    ShowMessage('Berhasil di verifikasi');
    qdata.Refresh;
    if qdata.RecordCount = 0 then
      close;
  end;
end;

procedure Tfcekpemasangan.Button2Click(Sender: TObject);
begin
  close;
end;

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

procedure Tfcekpemasangan.Button4Click(Sender: TObject);
var
  kata: TStringList;
  t1: string;
begin

  t1 := FormatDateTime('yyyy-mm-dd', tgl1.DateTime);

  qdata.SQL.Clear;
  qdata.SQL.Add('SELECT ks.id_transaksi,yr.no,ks.tanggal,ks.keterangan,ks.cabang,ks.jumlah,IFNULL(c.nama,IFNULL(c2.nama,ifnull(c3.nama,IFNULL(yp.keterangan,''-'')))) AS nama,ks.saldo_akhir '+
    ',mutasi,if(mutasi=''CR'',ks.jumlah,0) as kredit,if(mutasi=''DB'',ks.jumlah,0) as debet,d.no as nodetailkonfirmasi,ks.id_transaksi as norekening,IFNULL(nt.status, '''') AS STATUS '+
    'FROM kas_bank_import ks LEFT JOIN y_relasi_konfirmasidanmutasi yr ON id_transaksi=id_mutasi                      '+
    'LEFT JOIN detail_konfirmasipembayaran d ON id_konfirmasi=d.no LEFT JOIN order_pembelian op USING(no_order)     '+
    'LEFT JOIN customer c USING(id_customer)  '+
    'LEFT JOIN s_penjualan_katalog sp ON sp.no_penjualan=d.no_order '+
    'LEFT JOIN customer c2 ON c2.id_customer=sp.id_customer  '+
    'LEFT JOIN customer c3 on c3.nama=d.no_order '+
    'LEFT JOIN y_pemasanganmanual yp ON yp.id_rekeningkoran=ks.id_transaksi  '+
    ' LEFT JOIN n_status_pemasangan nt ON nt.no_kasbank=yr.id_mutasi AND nt.id_konfirmasi=yr.`id_konfirmasi`  '+
    ' JOIN (SELECT jumlah FROM (          '+
    ' SELECT COUNT(jumlah) AS jml ,ks.tanggal,jumlah   FROM kas_bank_import ks LEFT JOIN y_relasi_konfirmasidanmutasi yr ON id_transaksi=id_mutasi        '+
    '  LEFT JOIN detail_konfirmasipembayaran d ON id_konfirmasi=d.no LEFT JOIN order_pembelian op USING(no_order)      LEFT JOIN customer c USING(id_customer)   '+
    ' LEFT JOIN s_penjualan_katalog sp ON sp.no_penjualan=d.no_order    LEFT JOIN customer c2 ON c2.id_customer=sp.id_customer   LEFT JOIN customer c3 ON c3.nama=d.no_order  '+
    '  LEFT JOIN y_pemasanganmanual yp ON yp.id_rekeningkoran=ks.id_transaksi      LEFT JOIN n_status_pemasangan nt ON nt.no_kasbank=yr.id_mutasi AND nt.id_konfirmasi=yr.`id_konfirmasi`   '+
    '     WHERE ks.tanggal='''+t1+'''     GROUP BY ks.tanggal,jumlah HAVING jml > 1     ) AS dump) AS va ON ks.jumlah=va.jumlah '+
    'where ks.tanggal='''+t1+'''  '+
    ' GROUP BY ks.id_transaksi order by jumlah ');
  qdata.Active := True;
end;

procedure Tfcekpemasangan.cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if Sender.DataController.GetValue(AViewInfo.GridRecord.RecordIndex, 0) = 'TEPAT' then
  begin

    if (AViewInfo.Selected) and (Screen.ActiveControl = Sender.Site) then
    begin
      ACanvas.Brush.Color := clSkyBlue;
      ACanvas.Font.Color := clBlack;
    end
    else
    begin
      ACanvas.Brush.Color := clGreen;
      ACanvas.Font.Color := clWhite;

    end;

  end
  else
  begin
    if (AViewInfo.Selected) and (Screen.ActiveControl = Sender.Site) then
    begin
      ACanvas.Brush.Color := clSkyBlue;
      ACanvas.Font.Color := clBlack;
    end
    else
    begin
      ACanvas.Brush.Color := clYellow;
      ACanvas.Font.Color := clBlack;

    end;
  end;

end;

procedure Tfcekpemasangan.FormShow(Sender: TObject);
begin
  tgl1.DateTime := Now();

  tabel.q1.sql.clear;
  tabel.q1.sql.add('select nama from alamat_fhoto where kategori=''TT'' ');
  tabel.q1.open;
  v_alamattt := tabel.q1.fields[0].asstring;


  Button4Click(nil);
//  qdata.Active := false;
//  qdata.Active := True;
end;

procedure convertobmp(filename: TFileName);
var
  OleGraphic: TOleGraphic;
  fs: TFileStream;
  Source: TImage;
  BMP: TBitmap;
begin
  try
    OleGraphic := TOleGraphic.Create; //The magic class!

    fs := TFileStream.Create(filename, fmOpenRead or fmSharedenyNone);
    OleGraphic.LoadFromStream(fs);

    Source := Timage.Create(Nil);
    Source.Picture.Assign(OleGraphic);

    BMP := TBitmap.Create; //Converting to Bitmap
    BMP.Width := Source.Picture.Width;
    BMP.Height := Source.Picture.Height;
    BMP.Canvas.Draw(0, 0, Source.Picture.Graphic);

    fcekpemasangan.rImageZoom1.Picture.Bitmap := BMP; //Show the bitmap on form
    fcekpemasangan.rImageZoom1.Refresh;
    fs.Free;
    OleGraphic.Free;
    Source.Free;
    BMP.Free;
  finally

  end;

end;

procedure Tfcekpemasangan.qdataAfterScroll(DataSet: TDataSet);
var
  gambar: TMemorystream;
begin
  if not DataSet.ControlsDisabled then
  begin
    rImageZoom1.Picture := nil;
//    ffhoto.Close;
//    ShowMessage(qdatano.Text);
    if qdatano.text <> '' then
    begin
      try
  //     image3.Picture.LoadFromFile(v_alamattt + qverifikasinokonfirmasi.Text + '.bmp');
        convertobmp(v_alamattt + qdatano.Text + '.bmp');
        gambar := TMemorystream.Create;
        rImageZoom1.Picture.Graphic.SaveToStream(gambar);
        rImageZoom1.AutoFit := true;
  //      ffhoto.Show;
  //      Self.Activate;
  //      cxGrid1.SetFocus;
      except
        try
          rImageZoom1.Picture.LoadFromFile(v_alamattt + qdatano.Text + '.jpg');
          rImageZoom1.AutoFit := true;
  //        ffhoto.Show;
  //        Self.Activate;
  //        cxGrid1.SetFocus;
        except
  //        ffhoto.close;
        end;
      end;
    end;
  end;
end;

end.

