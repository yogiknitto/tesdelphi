unit ufimportolshop;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
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
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, Vcl.StdCtrls, Vcl.ExtCtrls, MemDS, VirtualTable,comobj, cxCheckBox,
  Vcl.Buttons, dxSkinTheBezier,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  Tfimportolshop = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Button2: TButton;
    Label2: TLabel;
    Edit1: TEdit;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    OpenDialog1: TOpenDialog;
    vt: TVirtualTable;
    dsvt: TDataSource;
    vtdate: TStringField;
    vtnominal: TFloatField;
    cxGrid1DBTableView1date: TcxGridDBColumn;
    cxGrid1DBTableView1nominal: TcxGridDBColumn;
    cxGrid1DBTableView1saldo: TcxGridDBColumn;
    Button1: TButton;
    Button4: TButton;
    cxGrid1DBTableView1pilihan: TcxGridDBColumn;
    vtno_invoice: TStringField;
    cxGrid1DBTableView1no_invoice: TcxGridDBColumn;
    vtpemotongan: TFloatField;
    vttotal: TFloatField;
    cxGrid1DBTableView1total: TcxGridDBColumn;
    Button5: TButton;
    vtstatus: TStringField;
    cxGrid1DBTableView1status: TcxGridDBColumn;
    vtpilihan: TStringField;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    cbpilihan: TComboBox;
    Label4: TLabel;
    vtpotong: TVirtualTable;
    vtpotongdate: TStringField;
    vtpotongnominal: TFloatField;
    vtpotongno_invoice: TStringField;
    vtpotongpemotongan: TFloatField;
    vtpotongtotal: TFloatField;
    vtpotongstatus: TStringField;
    vtpotongpilihan: TStringField;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbpilihanChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     procedure bacaexcel(SheetIndex:integer);
  end;

var
  fimportolshop: Tfimportolshop;

implementation

{$R *.dfm}

uses uftabel;

procedure Split(aValue : string; aDelimiter : Char; Result : TStrings);
    var
      X : Integer;
      S : string;
    begin
      if Result = nil then Result := TStringList.Create;
      Result.Clear;
      S := '';
      for X:=1 to Length(aValue) do begin
        if aValue[X] <> aDelimiter then
          S:=S + aValue[X]
        else begin
          Result.Add(S);
          S := '';
        end;
      end;
      if S <> '' then Result.Add(S);
    end;


procedure Tfimportolshop.bacaexcel(SheetIndex:integer);
Var
  Xlapp1, Sheet         :Variant ;
  i, MaxRow, MaxCol,x,y,c,b :integer ;
  Temp,Lokasi,tgl,bln,thn,tanggal,tgl2,val,val2 ,str          :string;
//  Baris                 :TListItem;
kata: TstringList;
total,potong:real;
begin


  kata := TstringList.Create;
  Lokasi  := OpenDialog1.FileName;
  XLApp1  := CreateOleObject('excel.application');
  XLApp1.Workbooks.open(Lokasi) ;
  Sheet   := XLApp1.WorkSheets[SheetIndex] ;
  MaxRow  := Sheet.Usedrange.EntireRow.count ;
  MaxCol  := sheet.Usedrange.EntireColumn.count;

   val2:=Sheet.Cells.Item[1,1];
   if (val2='Rekening Koran - Shopee Indonesia') and (cbpilihan.Text<>'SHOPEE')  then begin
     ShowMessage('Format yang di import untuk shopee silahkan pilih jenis online shop menjadi shopee');
     Exit;
   end;

  if cbpilihan.Text='SHOPEE' then begin
        vt.Open;
        vt.Clear;
         b:=0;

      for x:=8 to MaxRow do
        begin

          if  copy(Sheet.Cells.Item[x,1],1,2)='' then begin
            Exit;
          end;

          if Pos('.csv',Edit1.Text) > 0 then
          begin
//            tgl:=copy(Sheet.Cells.Item[x,1],4,2);
//            bln:=copy(Sheet.Cells.Item[x,1],1,2);
//            thn:=copy(Sheet.Cells.Item[x,1],7,4);
            str := Sheet.Cells.Item[x,1];
            tgl := copy(str,Pos('/',str) + 1,lastdelimiter('/',str) - 4);
            bln := copy(str,1,Pos('/',str) - 1);
            thn := copy(str,lastdelimiter('/',str) + 1,4);
          end
          else
          begin
            tgl:=copy(Sheet.Cells.Item[x,1],1,2);
            bln:=copy(Sheet.Cells.Item[x,1],4,2);
            thn:=copy(Sheet.Cells.Item[x,1],7,4);
          end;
          tanggal:=thn+'-'+bln+'-'+tgl;


          if b=0 then begin
            tabel.q1.sql.Clear;
            tabel.q1.SQL.Add('select * from kas_bank_import where tanggal='''+tanggal+''' and keterangan2=''SHOPEE''  ');
            tabel.q1.Active:=True;
             tabel.q1.First;
             while not tabel.q1.Eof do begin
             tgl2:=formatdatetime('yyyy-mm-dd',tabel.q1.FieldValues['tanggal']);

                 vt.Append;
                 vtdate.value:=tgl2;
                 vtnominal.Value:=tabel.q1.FieldValues['jumlah'];
                 vtpilihan.Value:='False';
                 vtno_invoice.Value:=tabel.q1.FieldValues['keterangan'];
                 vtpemotongan.Value:=0;
                 vtstatus.Value:='FIX';
                 vttotal.Value:=tabel.q1.FieldValues['jumlah'];
                 vt.post;

               tabel.q1.Next;
             end;
            b:=1;
          end;

           split(Sheet.Cells.Item[x,4],'#',kata);
           c:=kata.Count;

            val:=Sheet.Cells.Item[x,2];
           if (val='Saldo Penjual') or (LowerCase(Trim(val)) = 'penyesuaian oleh shopee') then begin

             vt.Append;
             vtdate.value:=tanggal;
             vtnominal.Value:=StrToFloat(Sheet.Cells.Item[x,3]);
             vtpilihan.Value:='False';
             vtno_invoice.Value:=kata[c-1];
             vtpemotongan.Value:=0;
             vtstatus.Value:='BATCH';
             vttotal.Value:=StrToFloat(Sheet.Cells.Item[x,3]);
             vt.post;
           end;






        end;
  end else begin

        vt.Open;
        vt.Clear;
        vtpotong.Open;
        vtpotong.Clear;
         b:=0;
        for x:=2 to MaxRow do
        begin

          if  copy(Sheet.Cells.Item[x,1],1,2)='' then begin
            Exit;
          end;
          tgl:=copy(Sheet.Cells.Item[x,1],9,2);
          bln:=copy(Sheet.Cells.Item[x,1],6,2);
          thn:=copy(Sheet.Cells.Item[x,1],1,4);
          tanggal:=thn+'-'+bln+'-'+tgl;

          if b=0 then begin
            tabel.q1.sql.Clear;
            tabel.q1.SQL.Add('select * from kas_bank_import where tanggal='''+tanggal+''' and keterangan2=''TOKOPEDIA''  ');
            tabel.q1.Active:=True;
             tabel.q1.First;
             while not tabel.q1.Eof do begin
             tgl2:=formatdatetime('yyyy-mm-dd',tabel.q1.FieldValues['tanggal']);

                 vt.Append;
                 vtdate.value:=tgl2;
                 vtnominal.Value:=tabel.q1.FieldValues['jumlah'];
                 vtpilihan.Value:='False';
                 vtno_invoice.Value:=tabel.q1.FieldValues['keterangan'];
                 vtpemotongan.Value:=0;
                 vtstatus.Value:='FIX';
                 vttotal.Value:=tabel.q1.FieldValues['jumlah'];
                 vt.post;

               tabel.q1.Next;
             end;
            b:=1;
          end;

           split(Sheet.Cells.Item[x,2],' ',kata);
           c:=kata.Count;
         //  ShowMessage(kata[c-1]);


         // vtsaldo.Value:=StrToFloat(Sheet.Cells.Item[x,4]);

         if (kata[0]='Transaksi') or (kata[0]='Pesanan') then begin
          total := StrToFloat(Sheet.Cells.Item[x,3]);
          potong := 0;

          with vtpotong do begin
            Filtered := false;
            Filter := 'no_invoice='+QuotedStr(kata[c-1]);
            Filtered := True;

            if RecordCount > 0 then
            begin
              while not Eof do
              begin
                total := total - vtpotongtotal.Value;
                potong := potong + vtpotongtotal.Value;

                Next;
              end;
            end;
          end;

          vt.Append;
           vtdate.value:=tanggal;
         //  vtketerangan.Value:=Sheet.Cells.Item[x,2];
           vtnominal.Value:=StrToFloat(Sheet.Cells.Item[x,3]);
           vtpilihan.Value:='False';
           vtno_invoice.Value:=kata[c-1];
           vtpemotongan.Value:= potong;
           vtstatus.Value:='BATCH';
           vttotal.Value:=total;
           vt.post;
         end
         else if (kata[0]='Pemotongan') and ((Pos('ongkir',LowerCase(Sheet.Cells.Item[x,2])) > 0) or (Pos('biaya',LowerCase(Sheet.Cells.Item[x,2])) > 0)) then
         begin
          //rubahan
           if vt.Locate('no_invoice',kata[c-1],[]) = True then begin
             vt.Locate('no_invoice',kata[c-1],[]);
             vt.Edit;
             vtpemotongan.Value:=StrToFloat(Sheet.Cells.Item[x,3]);
             vttotal.Value:=vttotal.Value-StrToFloat(Sheet.Cells.Item[x,3]);
             vt.Post;
           end
           else
           begin
            vtpotong.Append;
            vtpotongdate.value:=tanggal;
            //  vtpotongketerangan.Value:=Sheet.Cells.Item[x,2];
            vtpotongnominal.Value:=StrToFloat(Sheet.Cells.Item[x,3]);
            vtpotongpilihan.Value:='False';
            vtpotongno_invoice.Value:=kata[c-1];
            vtpotongpemotongan.Value:=0;
            vtpotongstatus.Value:='BATCH';
            vtpotongtotal.Value:=StrToFloat(Sheet.Cells.Item[x,3]);
            vtpotong.post;
           end;

         end else begin

         end;






        end;
  end;

 XLApp1.Workbooks.Close;
end;


procedure Tfimportolshop.Button1Click(Sender: TObject);
begin
bacaexcel(1);
cbpilihan.Enabled:=false;
end;

procedure Tfimportolshop.Button2Click(Sender: TObject);
begin
close;
end;

procedure Tfimportolshop.Button4Click(Sender: TObject);
var pesan:string; h,nourut:Integer;
tanggal,keterangan,cabang,mutasi,jumlah,saldoakhir,idtransaksi,statuspending,kodekas,kodetf:string;
begin
 pesan:='Apakah anda yakin Data sudah benar ?  ';
             if messagedlg(pesan,mtconfirmation,[mbyes,mbno],0)=mryes then
             begin
               h:=0;
                 tabel.q1.SQL.Clear;
                 tabel.q1.sql.Add('START TRANSACTION');
                 tabel.q1.ExecSQL;

                  tabel.q1.SQL.Clear;
                  tabel.q1.sql.Add('select kode_kas from kas_bank where bank='''+cbpilihan.Text+''' ');
                  tabel.q1.Active:=True;
                  kodekas:=tabel.q1.FieldValues['kode_kas'];

                  vt.First;
                while not vt.Eof  do begin
                  tanggal:=vtdate.Value;
                 // ShowMessage(tanggal);
                  keterangan:=vtno_invoice.Value;
                  cabang:='0';
                  mutasi:='CR';
                  jumlah:=FloatToStr(vttotal.Value);
                  saldoakhir:='0';

                  statuspending:='ADA TANGGAL';

                   tabel.q1.SQL.Clear;
                  tabel.q1.sql.Add('select * from  kas_bank_import where keterangan='''+keterangan+''' ');
                  tabel.q1.Active:=True;
                  if tabel.q1.RecordCount =0 then begin


                    tabel.q1.SQL.Clear;
                    tabel.q1.sql.Add('select ifnull(max(no_urut),0)+1 as no from  kas_bank_import where kode_kas='''+kodekas+''' ');
                    tabel.q1.Active:=True;
                    nourut:=tabel.q1.FieldValues['no'];

                      tabel.q1.SQL.Clear;
                    tabel.q1.sql.Add('SELECT TRIM(regex_replace('''+keterangan+''',''[^0-9]'','' '')) AS kodetf ');
                    tabel.q1.Active:=True;
                    kodetf:=tabel.q1.FieldValues['kodetf'];



                   tabel.q1.SQL.Clear;
                   tabel.q1.sql.Add('insert into kas_bank_import values(0,'''+tanggal+''',''0'','''+keterangan+''','''+cabang+''','''+mutasi+''','''+jumlah+''',0,''BELUM TERPAKAI'','''+statuspending+''','''+inttostr(nourut)+''','''+kodekas+''',''0'','''+cbpilihan.Text+''',''IMPORT'','''+kodetf+''',NULL) ');
                   tabel.q1.ExecSQL;

                  end;

                  h:=h+1;
                 vt.Next;
                end;

                 tabel.q1.SQL.Clear;
                 tabel.q1.sql.Add('COMMIT');
                 tabel.q1.ExecSQL;
                 cbpilihan.Enabled:=True;

                 ShowMessage('Data berhasil di import sebanyak '+inttostr(h)+'');
                 close;
             end;
end;

procedure Tfimportolshop.Button5Click(Sender: TObject);
var pesan,sts,idtransaksi:string;
begin
 pesan:='Apakah anda yakin akan menghapus transaksi ?  ';
             if messagedlg(pesan,mtconfirmation,[mbyes,mbno],0)=mryes then
             begin
//              if qdatasts.Value='FIX' then begin
//               ShowMessage('Data yang sudah di import atau (FIX) tidak bisa di hapus!');
//               Exit;
//
//              end;
              vt.Open;
              vt.First;
              while not vt.Eof do begin
              
                 if (vtpilihan.Value='True') and (vtstatus.Value='BATCH') then begin
                 // idtransaksi:=IntToStr(qdataid_transaksi.Value);

                    vt.Delete;
                   // vt.Post;
                   vt.Prior;
                 end;
               vt.Next;
              end;
             //  vt.Post;
               ShowMessage('Data berhasil di hapus');
               vt.Active:=false;
               vt.Active:=True;

end;
end;

procedure Tfimportolshop.cbpilihanChange(Sender: TObject);
var kodekas:string;
begin
 tabel.q1.SQL.Clear;
                  tabel.q1.sql.Add('select kode_kas from y_kasbankolshop where olshop='''+cbpilihan.Text+''' ');
                  tabel.q1.Active:=True;
                  kodekas:=tabel.q1.FieldValues['kode_kas'];

        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('select tanggal from kas_bank_import where tanggal!=''2010-01-01'' and kode_kas='''+kodekas+''' and keterangan2='''+cbpilihan.Text+''' order by tanggal desc limit 1 ');
        tabel.q1.Active:=True;
        if tabel.q1.RecordCount > 0 then begin
           Label4.Caption:='Tanggal Awal import :'+formatdatetime('yyyy-mm-dd',tabel.q1.FieldValues['tanggal']);
        end else begin
           Label4.Caption:='Tanggal Awal import : -';
        end;
end;

procedure Tfimportolshop.FormShow(Sender: TObject);
begin
cbpilihan.Enabled:=True;
vt.Open;
vt.Clear;
Edit1.Clear;
cbpilihan.ItemIndex:=-1;
end;

procedure Tfimportolshop.SpeedButton1Click(Sender: TObject);
begin
 if OpenDialog1.Execute then
  begin
    Edit1.Text:=OpenDialog1.FileName;
   end;
end;

end.
