unit ufimporttransaksiolshop;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
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
  cxDBData, cxCheckBox, MemDS, VirtualTable, Vcl.StdCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses, comobj,
  Excel2010, cxGridCustomView, cxGrid, Vcl.ExtCtrls, Vcl.Buttons, Vcl.Grids, Vcl.ComCtrls,
  DBAccess, Uni;

type
  Tfimporttransaksiolshop = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Button2: TButton;
    Button4: TButton;
    OpenDialog1: TOpenDialog;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Panel3: TPanel;
    Edit1: TEdit;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    cbpilihan: TComboBox;
    Button1: TButton;
    qdata: TUniQuery;
    qdsdata: TUniDataSource;
    qdatano_pesanan: TStringField;
    qdatano_resi: TStringField;
    qdatatanggal_bayar: TDateTimeField;
    qdataongkir: TFloatField;
    qdatatotal_bayar: TFloatField;
    qdataperkiraan_ongkir: TFloatField;
    qdatausername_pembeli: TStringField;
    qdatapembeli: TStringField;
    qdatajenis_olshop: TStringField;
    qdataid_user: TIntegerField;
    cxGrid1DBTableView1no_pesanan: TcxGridDBColumn;
    cxGrid1DBTableView1no_resi: TcxGridDBColumn;
    cxGrid1DBTableView1tanggal_bayar: TcxGridDBColumn;
    cxGrid1DBTableView1ongkir: TcxGridDBColumn;
    cxGrid1DBTableView1total_bayar: TcxGridDBColumn;
    cxGrid1DBTableView1perkiraan_ongkir: TcxGridDBColumn;
    cxGrid1DBTableView1username_pembeli: TcxGridDBColumn;
    cxGrid1DBTableView1pembeli: TcxGridDBColumn;
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure bacaexcel(SheetIndex: integer);
  end;

var
  fimporttransaksiolshop: Tfimporttransaksiolshop;

implementation

uses
  ufimportolshop, uftabel;

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

function getsum(var1, var2: string): string;
var
  srupiah, s: string;
  irupiah: currency;
begin
  srupiah := var1;
  srupiah := stringreplace(srupiah, ',', '', [rfreplaceall, rfignorecase]);
  srupiah := stringreplace(srupiah, '.', '', [rfreplaceall, rfignorecase]);

  s := var2;
  s := stringreplace(s, ',', '', [rfreplaceall, rfignorecase]);
  s := stringreplace(s, '.', '', [rfreplaceall, rfignorecase]);

  var1 := FloatToStr(strtofloat(srupiah) + strtofloat(s));

  srupiah := var1;
  srupiah := stringreplace(srupiah, ',', '', [rfreplaceall, rfignorecase]);
  srupiah := stringreplace(srupiah, '.', '', [rfreplaceall, rfignorecase]);
  irupiah := strtocurrdef(srupiah, 0);

  Result := formatcurr(',0', irupiah);
end;

function editsaparator(var1: string): string;
var
  irupiah: currency;
begin
  var1 := stringreplace(var1, ',', '', [rfreplaceall, rfignorecase]);
  var1 := stringreplace(var1, '.', '', [rfreplaceall, rfignorecase]);
  irupiah := strtocurrdef(var1, 0);
  Result := formatcurr(',0', irupiah);
end;

function hapussaparator(var1: string): string;
begin
  var1 := stringreplace(var1, ',', '', [rfreplaceall, rfignorecase]);
  var1 := stringreplace(var1, '.', '', [rfreplaceall, rfignorecase]);
  Result := var1;
end;

procedure Tfimporttransaksiolshop.bacaexcel(SheetIndex: integer);
var
  Xlapp1, Sheet: Variant;
  i, MaxRow, MaxCol, x, y, c, b: integer;
  Temp, Lokasi, tgl, bln, thn, tanggal, tgl2, val, val2: string;
//  Baris                 :TListItem;
  kata: TstringList;
  fs: TFormatSettings;
  hargab, hargaa, total, totaldiskon, diskondpenjual, diskondshop, ongkir, totalbayar, perkiraanongkir, nama, nopesanan: string;
  nopesanansebelum, srupiah, s, uname,noresi: string;
  irupiah: currency;
begin

  kata := TstringList.Create;
  Lokasi := OpenDialog1.FileName;
  Xlapp1 := CreateOleObject('excel.application');
  Xlapp1.Workbooks.open(Lokasi);
  Sheet := Xlapp1.WorkSheets[SheetIndex];
  MaxRow := Sheet.Usedrange.EntireRow.count;
  MaxCol := Sheet.Usedrange.EntireColumn.count;

  val2 := Sheet.Cells.Item[1, 1];
  if cbpilihan.Text = 'SHOPEE' then
  begin
    if  (Trim(Sheet.Cells.Item[1, 1]) <> 'No. Pesanan') then
    begin
      ShowMessage('File tersebut bukan file Shopee');
      exit;
    end;


    b := 0;

    for x := 2 to MaxRow do
    begin

      if b = 0 then
      begin
        b := 1;
      end;

//          tgl:=copy(Sheet.Cells.Item[x,10],1,2);
//          bln:=copy(Sheet.Cells.Item[x,10],4,2);
//          thn:=copy(Sheet.Cells.Item[x,10],7,4);
      tanggal := Trim(Sheet.Cells.Item[x, 10]);
      if (tanggal <> '') and (tanggal <> '-') then
        tanggal := tanggal + ':00'
      else
        tanggal := '';
      if nopesanan <> '' then
        nopesanansebelum := nopesanan;
      nopesanan := trim(Sheet.Cells.Item[x, 1]);

//          ShowMessage(nopesanan + ' = ' + nopesanansebelum);
      if nopesanan = '' then
      begin
//        hargab := getsum(hargab, Copy(Sheet.Cells.Item[x, 15], 4, Length(Sheet.Cells.Item[x, 15])));
//        hargaa := getsum(hargaa, Copy(Sheet.Cells.Item[x, 16], 4, Length(Sheet.Cells.Item[x, 16])));
//        total := getsum(total, Copy(Sheet.Cells.Item[x, 18], 4, Length(Sheet.Cells.Item[x, 18])));
//        totaldiskon := getsum(totaldiskon, Copy(Sheet.Cells.Item[x, 19], 4, Length(Sheet.Cells.Item[x, 19])));
//        diskondpenjual := getsum(diskondpenjual, Copy(Sheet.Cells.Item[x, 20], 4, Length(Sheet.Cells.Item[x, 20])));
//        diskondshop := getsum(diskondshop, Copy(Sheet.Cells.Item[x, 21], 4, Length(Sheet.Cells.Item[x, 21])));
//        ongkir := getsum(ongkir, Copy(Sheet.Cells.Item[x, 32], 4, Length(Sheet.Cells.Item[x, 32])));
//        totalbayar := getsum(totalbayar, Copy(Sheet.Cells.Item[x, 33], 4, Length(Sheet.Cells.Item[x, 33])));
//        perkiraanongkir := getsum(perkiraanongkir, Copy(Sheet.Cells.Item[x, 34], 4, Length(Sheet.Cells.Item[x, 34])));
      end
      else
      begin
        hargab := editsaparator(Copy(Sheet.Cells.Item[x, 15], 4, Length(Sheet.Cells.Item[x, 15])));
        hargaa := editsaparator(Copy(Sheet.Cells.Item[x, 16], 4, Length(Sheet.Cells.Item[x, 16])));
        total := editsaparator(Copy(Sheet.Cells.Item[x, 18], 4, Length(Sheet.Cells.Item[x, 18])));
        totaldiskon := editsaparator(Copy(Sheet.Cells.Item[x, 19], 4, Length(Sheet.Cells.Item[x, 19])));
        diskondpenjual := editsaparator(Copy(Sheet.Cells.Item[x, 20], 4, Length(Sheet.Cells.Item[x, 20])));
        diskondshop := editsaparator(Copy(Sheet.Cells.Item[x, 21], 4, Length(Sheet.Cells.Item[x, 21])));
        ongkir := editsaparator(Copy(Sheet.Cells.Item[x, 32], 4, Length(Sheet.Cells.Item[x, 32])));
        totalbayar := editsaparator(Copy(Sheet.Cells.Item[x, 33], 4, Length(Sheet.Cells.Item[x, 33])));
        perkiraanongkir := editsaparator(Copy(Sheet.Cells.Item[x, 34], 4, Length(Sheet.Cells.Item[x, 34])));
      end;

      nama := ((Sheet.Cells.Item[x, 38]));
      uname := ((Sheet.Cells.Item[x, 37]));
      noresi := Sheet.Cells.Item[x, 4];

//            val:=Sheet.Cells.Item[x,y];
      if nopesanan <> '' then
      begin
        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('select no_pesanan from temp_transaksi_olshop where no_pesanan=''' + nopesanan + ''' ');
        tabel.q1.Open;

        if tanggal='' then
        begin
          if tabel.q1.RecordCount = 0 then
          begin
            tabel.q1.SQL.Clear;
            tabel.q1.SQL.Add('insert into temp_transaksi_olshop values(''' + nopesanan + ''', '''+noresi+''', (NULL), '''+hapussaparator(ongkir)+''', '''+hapussaparator(totalbayar)+''', '+
            ' '''+hapussaparator(perkiraanongkir)+''', '''+uname+''', '''+nama+''', '''+cbpilihan.Text+''', '''+v_idkaryawan+''' ) ');
            tabel.q1.ExecSQL;
          end
          else
          begin
            tabel.q1.SQL.Clear;
            tabel.q1.SQL.Add('update temp_transaksi_olshop set no_resi='''+noresi+''', tanggal_bayar=(NULL), ongkir='''+hapussaparator(ongkir)+''', total_bayar='''+hapussaparator(totalbayar)+''' , '+
            ' perkiraan_ongkir='''+hapussaparator(perkiraanongkir)+''', username_pembeli='''+uname+''', pembeli='''+nama+''' where no_pesanan='''+nopesanan+''' ');
            tabel.q1.ExecSQL;
          end;
        end
        else
        begin

          if tabel.q1.RecordCount = 0 then
          begin
            tabel.q1.SQL.Clear;
            tabel.q1.SQL.Add('insert into temp_transaksi_olshop values(''' + nopesanan + ''', '''+noresi+''', '''+tanggal+''', '''+hapussaparator(ongkir)+''', '''+hapussaparator(totalbayar)+''', '+
            ' '''+hapussaparator(perkiraanongkir)+''', '''+uname+''', '''+nama+''', '''+cbpilihan.Text+''', '''+v_idkaryawan+''' ) ');
            tabel.q1.ExecSQL;
          end
          else
          begin
            tabel.q1.SQL.Clear;
            tabel.q1.SQL.Add('update temp_transaksi_olshop set no_resi='''+noresi+''', tanggal_bayar='''+tanggal+''', ongkir='''+hapussaparator(ongkir)+''', total_bayar='''+hapussaparator(totalbayar)+''' , '+
            ' perkiraan_ongkir='''+hapussaparator(perkiraanongkir)+''', username_pembeli='''+uname+''', pembeli='''+nama+''' where no_pesanan='''+nopesanan+''' ');
            tabel.q1.ExecSQL;
          end;
        end;

        qdata.SQL.Clear;
        qdata.SQL.Add('select * from temp_transaksi_olshop where id_user='''+v_idkaryawan+''' and jenis_olshop='''+cbpilihan.Text+''' ');
        if qdata.Active = false then qdata.Active:=true;
        qdata.RefreshRecord;

//        vt.Append;
//        vtno_pesanan.Value := nopesanan;
//        vtno_resi.Value := noresi;
//        vttgl_bayar.Value := tanggal;
//        vtharga_bdiskon.Value := hargab;
//        vtharga_adiskon.Value := hargaa;
//        vttotal.Value := total;
//        vttotal_diskon.Value := totaldiskon;
//        vtdiskon_dpenjual.Value := diskondpenjual;
//        vtdiskon_dshop.Value := diskondshop;
//        vtongkir.Value := ongkir;
//        vttotal_bayar.Value := totalbayar;
//        vtperkiraan_ongkir.Value := perkiraanongkir;
//        vtnama.Value := nama;
//        vtusername.Value := uname;
//        vt.post;
      end
      else
      begin
//        vt.Locate('no_pesanan', nopesanansebelum, []);
//        vt.Edit;
//        vtharga_bdiskon.Value := hargab;
//        vt.Post;
      end;

    end;
  end
  else
  begin
    if  (Trim(Sheet.Cells.Item[4, 2]) <> 'Invoice') then
    begin
      ShowMessage('File tersebut bukan file Tokopedia');
      exit;
    end;


    b := 0;

    for x := 5 to MaxRow do
    begin

      if b = 0 then
      begin
        b := 1;
      end;


      tanggal := Trim(Sheet.Cells.Item[x, 3]);
      if (tanggal <> '') and (tanggal <> '-') then
      begin
        tanggal := tanggal;
        tgl:=copy(tanggal,1,2);
        bln:=copy(tanggal,4,2);
        thn:=copy(tanggal,7,4);
        tanggal := thn +'-' + bln +'-' + tgl + ' ' + Copy(tanggal,12,length(tanggal));
      end
      else
        tanggal := '';
      if nopesanan <> '' then
        nopesanansebelum := nopesanan;
      nopesanan := trim(Sheet.Cells.Item[x, 2]);
//          ShowMessage(nopesanan + ' = ' + nopesanansebelum);
      if nopesanan = '' then
      begin
//        hargab := getsum(hargab, Copy(Sheet.Cells.Item[x, 15], 4, Length(Sheet.Cells.Item[x, 15])));
//        hargaa := getsum(hargaa, Copy(Sheet.Cells.Item[x, 16], 4, Length(Sheet.Cells.Item[x, 16])));
//        total := getsum(total, Copy(Sheet.Cells.Item[x, 18], 4, Length(Sheet.Cells.Item[x, 18])));
//        totaldiskon := getsum(totaldiskon, Copy(Sheet.Cells.Item[x, 19], 4, Length(Sheet.Cells.Item[x, 19])));
//        diskondpenjual := getsum(diskondpenjual, Copy(Sheet.Cells.Item[x, 20], 4, Length(Sheet.Cells.Item[x, 20])));
//        diskondshop := getsum(diskondshop, Copy(Sheet.Cells.Item[x, 21], 4, Length(Sheet.Cells.Item[x, 21])));
//        ongkir := getsum(ongkir, Copy(Sheet.Cells.Item[x, 32], 4, Length(Sheet.Cells.Item[x, 32])));
//        totalbayar := getsum(totalbayar, Copy(Sheet.Cells.Item[x, 33], 4, Length(Sheet.Cells.Item[x, 33])));
//        perkiraanongkir := getsum(perkiraanongkir, Copy(Sheet.Cells.Item[x, 34], 4, Length(Sheet.Cells.Item[x, 34])));
      end
      else
      begin
        hargab := '0';
        hargaa := '0';
        total := '0';
        totaldiskon := '0';
        diskondpenjual := '0';
        diskondshop := '0';
        ongkir := editsaparator(Copy(Sheet.Cells.Item[x, 19], 4, Length(Sheet.Cells.Item[x, 19])));
        totalbayar := editsaparator(Copy(Sheet.Cells.Item[x, 20], 4, Length(Sheet.Cells.Item[x, 20])));
        perkiraanongkir := editsaparator(Copy(Sheet.Cells.Item[x, 17], 4, Length(Sheet.Cells.Item[x, 17])));
      end;

      nama := ((Sheet.Cells.Item[x, 11]));
      uname := ((Sheet.Cells.Item[x, 11]));
      noresi := '';

//            val:=Sheet.Cells.Item[x,y];
      if nopesanan <> '' then
      begin
        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('select no_pesanan from temp_transaksi_olshop where no_pesanan=''' + nopesanan + ''' ');
        tabel.q1.Open;

        if tanggal='' then
        begin
          if tabel.q1.RecordCount = 0 then
          begin
            tabel.q1.SQL.Clear;
            tabel.q1.SQL.Add('insert into temp_transaksi_olshop values(''' + nopesanan + ''', '''+noresi+''', (NULL), '''+hapussaparator(ongkir)+''', '''+hapussaparator(totalbayar)+''', '+
            ' '''+hapussaparator(perkiraanongkir)+''', '''+uname+''', '''+nama+''', '''+cbpilihan.Text+''', '''+v_idkaryawan+''' ) ');
            tabel.q1.ExecSQL;
          end
          else
          begin
            tabel.q1.SQL.Clear;
            tabel.q1.SQL.Add('update temp_transaksi_olshop set no_resi='''+noresi+''', tanggal_bayar=(NULL), ongkir='''+hapussaparator(ongkir)+''', total_bayar='''+hapussaparator(totalbayar)+''' , '+
            ' perkiraan_ongkir='''+hapussaparator(perkiraanongkir)+''', username_pembeli='''+uname+''', pembeli='''+nama+''' where no_pesanan='''+nopesanan+''' ');
            tabel.q1.ExecSQL;
          end;
        end
        else
        begin

          if tabel.q1.RecordCount = 0 then
          begin
            tabel.q1.SQL.Clear;
            tabel.q1.SQL.Add('insert into temp_transaksi_olshop values(''' + nopesanan + ''', '''+noresi+''', '''+tanggal+''', '''+hapussaparator(ongkir)+''', '''+hapussaparator(totalbayar)+''', '+
            ' '''+hapussaparator(perkiraanongkir)+''', '''+uname+''', '''+nama+''', '''+cbpilihan.Text+''', '''+v_idkaryawan+''' ) ');
            tabel.q1.ExecSQL;
          end
          else
          begin
            tabel.q1.SQL.Clear;
            tabel.q1.SQL.Add('update temp_transaksi_olshop set no_resi='''+noresi+''', tanggal_bayar='''+tanggal+''', ongkir='''+hapussaparator(ongkir)+''', total_bayar='''+hapussaparator(totalbayar)+''' , '+
            ' perkiraan_ongkir='''+hapussaparator(perkiraanongkir)+''', username_pembeli='''+uname+''', pembeli='''+nama+''' where no_pesanan='''+nopesanan+''' ');
            tabel.q1.ExecSQL;
          end;
        end;

        qdata.SQL.Clear;
        qdata.SQL.Add('select * from temp_transaksi_olshop where id_user='''+v_idkaryawan+''' and jenis_olshop='''+cbpilihan.Text+''' ');
        if qdata.Active = false then qdata.Active:=true;
        qdata.RefreshRecord;


//        vt.Append;
//        vtno_pesanan.Value := nopesanan;
//        vtno_resi.Value := noresi;
//        vttgl_bayar.Value := tanggal;
//        vtharga_bdiskon.Value := hargab;
//        vtharga_adiskon.Value := hargaa;
//        vttotal.Value := total;
//        vttotal_diskon.Value := totaldiskon;
//        vtdiskon_dpenjual.Value := diskondpenjual;
//        vtdiskon_dshop.Value := diskondshop;
//        vtongkir.Value := ongkir;
//        vttotal_bayar.Value := totalbayar;
//        vtperkiraan_ongkir.Value := perkiraanongkir;
//        vtnama.Value := nama;
//        vtusername.Value := uname;
//        vt.post;
      end
      else
      begin
//        vt.Locate('no_pesanan', nopesanansebelum, []);
//        vt.Edit;
//        vtharga_bdiskon.Value := hargab;
//        vt.Post;
      end;

    end;
  end;

  Xlapp1.Workbooks.Close;
end;

function Xls_To_StringGrid(AGrid: TStringGrid; AXLSFile: string): Boolean;
const
  xlCellTypeLastCell = $0000000B;
var
  XLApp, Sheet: OLEVariant;
  RangeMatrix: Variant;
  x, y, k, r: Integer;
begin
  Result := False;
  XLApp := CreateOleObject('Excel.Application');
  try
    XLApp.Visible := False;
    XLApp.Workbooks.Open(AXLSFile);

    Sheet := XLApp.Workbooks[ExtractFileName(AXLSFile)].WorkSheets[1];

    Sheet.Cells.SpecialCells(xlCellTypeLastCell, EmptyParam).Activate;
    x := XLApp.ActiveCell.Row;
    y := XLApp.ActiveCell.Column;

    AGrid.RowCount := x;
    AGrid.ColCount := y;

    RangeMatrix := XLApp.Range['A1', XLApp.Cells.Item[x, y]].Value;

    k := 1;
    repeat
      for r := 1 to y do
        AGrid.Cells[(r - 1), (k - 1)] := RangeMatrix[k, r];
      Inc(k, 1);
      AGrid.RowCount := k + 1;

    until k > x;
    RangeMatrix := Unassigned;
  finally

    if not VarIsEmpty(XLApp) then
    begin
      XLApp.Quit;
      XLApp := Unassigned;
      Sheet := Unassigned;
      Result := True;
    end;
  end;
end;

procedure Tfimporttransaksiolshop.Button1Click(Sender: TObject);
begin
  bacaexcel(1);
//if Xls_To_StringGrid(StringGrid1, Edit1.Text) then
// ShowMessage('Table has been exported!');
end;

procedure Tfimporttransaksiolshop.Button4Click(Sender: TObject);
begin
  if qdata.RecordCount = 0 then
    ShowMessage('Data kosong')
  else
  begin
    if MessageDlg('Apakah anda yakin akan menginport data tersebut ? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      qdata.First;
      while not qdata.Eof do
      begin

        try
          tabel.q1.SQL.Clear;
          tabel.q1.SQL.Add('START TRANSACTION');
          tabel.q1.ExecSQL;

//          if cbpilihan.Text = 'SHOPEE' then
//          begin

            if qdatatanggal_bayar.Text <> '' then
            begin
              tabel.q1.SQL.Clear;
              tabel.q1.SQL.Add('select no_pesanan from n_transaksi_olshop where no_pesanan=''' + qdatano_pesanan.Value + ''' ');
              tabel.q1.Open;

              if tabel.q1.RecordCount = 0 then
              begin
                tabel.q1.SQL.Clear;
                tabel.q1.SQL.Add('insert into n_transaksi_olshop values(''' + qdatano_pesanan.Value + ''', '''+qdatano_resi.Value+''', '''+formatdatetime('yyyy-MM-dd hh:mm:ss',qdatatanggal_bayar.Value)+''', '''+hapussaparator(qdataongkir.text)+''', '''+hapussaparator(qdatatotal_bayar.text)+''', '+
                ' '''+hapussaparator(qdataperkiraan_ongkir.text)+''', '''+qdatausername_pembeli.Value+''', '''+qdatapembeli.Value+''', '''+cbpilihan.Text+''' ) ');
                tabel.q1.ExecSQL;

                tabel.q1.SQL.Clear;
                tabel.q1.SQL.Add('delete from temp_transaksi_olshop where no_pesanan='''+qdatano_pesanan.Value+''' ');
                tabel.q1.ExecSQL;
              end
              else
              begin
                tabel.q1.SQL.Clear;
                tabel.q1.SQL.Add('update n_transaksi_olshop set no_resi='''+qdatano_resi.Value+''', tanggal_bayar='''+formatdatetime('yyyy-MM-dd hh:mm:ss',qdatatanggal_bayar.Value)+''', ongkir='''+hapussaparator(qdataongkir.text)+''', total_bayar='''+hapussaparator(qdatatotal_bayar.text)+''' , '+
                ' perkiraan_ongkir='''+hapussaparator(qdataperkiraan_ongkir.text)+''', username_pembeli='''+qdatausername_pembeli.Value+''', pembeli='''+qdatapembeli.Value+''' where no_pesanan='''+qdatano_pesanan.Value+''' ');
                tabel.q1.ExecSQL;

                tabel.q1.SQL.Clear;
                tabel.q1.SQL.Add('delete from temp_transaksi_olshop where no_pesanan='''+qdatano_pesanan.Value+''' ');
                tabel.q1.ExecSQL;
              end;
            end;

//          end;

          tabel.q1.SQL.Clear;
          tabel.q1.SQL.Add('COMMIT');
          tabel.q1.ExecSQL;
        except
          on e: Exception do
          begin
            tabel.q1.SQL.Clear;
            tabel.q1.SQL.Add('ROLLBACK');
            tabel.q1.ExecSQL;

            if MessageDlg('Data No Pesanan ' + UpperCase(qdatano_pesanan.Value) + ' gagal di import. Error : ' + e.Message + '. Lanjutkan ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
            begin

            end
            else
              Exit;

          end;
        end;

        qdata.Next;
      end;

      ShowMessage('Berhasil di import');
    end;
  end;

end;

procedure Tfimporttransaksiolshop.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  tabel.q1.SQL.Clear;
  tabel.q1.SQL.Add('select * from temp_transaksi_olshop where id_user='''+v_idkaryawan+''' ');
  tabel.q1.open;
  if tabel.q1.RecordCount <> 0 then
  begin
    tabel.q1.SQL.Clear;
    tabel.q1.SQL.Add('delete from temp_transaksi_olshop where id_user='''+v_idkaryawan+''' ');
    tabel.q1.ExecSQL;
  end;

end;

procedure Tfimporttransaksiolshop.FormShow(Sender: TObject);
begin
  qdata.Active:=false;
  Edit1.Text := '';
  cbpilihan.Text := '';
end;

procedure Tfimporttransaksiolshop.SpeedButton1Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    Edit1.Text := OpenDialog1.FileName;
  end;
end;

end.

