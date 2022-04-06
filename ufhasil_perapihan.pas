unit ufhasil_perapihan;

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
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB,
  cxDBData, Vcl.StdCtrls, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, DBAccess,
  Uni, MemDS, Vcl.ExtCtrls, ResizeKit, Vcl.ComCtrls;

type
  Tfhasil_perapihan = class(TForm)
    Panel1: TPanel;
    qhasil_perapihan: TUniQuery;
    Uhasil_perapihan: TUniDataSource;
    qhasil_perapihanno_transaksi: TStringField;
    qhasil_perapihantanggal: TDateField;
    qhasil_perapihanjenis: TStringField;
    qhasil_perapihandari: TStringField;
    qhasil_perapihannocg: TStringField;
    qhasil_perapihanbankcg: TStringField;
    qhasil_perapihankode_kas: TIntegerField;
    qhasil_perapihanjumlah: TFloatField;
    qhasil_perapihankode_perkiraan: TIntegerField;
    qhasil_perapihanketerangan: TStringField;
    qhasil_perapihanstatus: TIntegerField;
    qhasil_perapihantanggal_cair: TDateField;
    qhasil_perapihanno_urut: TIntegerField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1no_transaksi: TcxGridDBColumn;
    cxGrid1DBTableView1tanggal: TcxGridDBColumn;
    cxGrid1DBTableView1jenis: TcxGridDBColumn;
    cxGrid1DBTableView1dari: TcxGridDBColumn;
    cxGrid1DBTableView1nocg: TcxGridDBColumn;
    cxGrid1DBTableView1bankcg: TcxGridDBColumn;
    cxGrid1DBTableView1kode_kas: TcxGridDBColumn;
    cxGrid1DBTableView1jumlah: TcxGridDBColumn;
    cxGrid1DBTableView1kode_perkiraan: TcxGridDBColumn;
    cxGrid1DBTableView1keterangan: TcxGridDBColumn;
    cxGrid1DBTableView1status: TcxGridDBColumn;
    cxGrid1DBTableView1tanggal_cair: TcxGridDBColumn;
    cxGrid1DBTableView1no_urut: TcxGridDBColumn;
    Label1: TLabel;
    Button1: TButton;
    ResizeKit1: TResizeKit;
    Button2: TButton;
    Edit1: TEdit;
    Label2: TLabel;
    ProgressBar1: TProgressBar;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fhasil_perapihan: Tfhasil_perapihan;

implementation

uses
  uftabel, ufhasil_pemasangan;

{$R *.dfm}

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


procedure Tfhasil_perapihan.Button1Click(Sender: TObject);
var kata:TStringList;
  i:integer;
  ABookmarks: array of TBookmark;
  AFocusedRecord: TcxCustomGridRecord;
  aidi:string;
begin
   if cxGrid1DBTableView1.Controller.SelectedRowCount = 0 then
  begin
    ShowMessage('Tidak ada data yang dipilih !');
    Exit;
  end else
  begin
   if MessageDlg('Apakah anda sudah yakin akan memasangkannya ?', mtInformation,[mbYes,mbNo],0) = mrYes then
   begin
    ProgressBar1.Visible := True;
    ProgressBar1.Position := 0;
    ProgressBar1.Update;

    tabel.q5.SQL.Clear;
    tabel.q5.SQL.Add('START TRANSACTION');
    tabel.q5.ExecSQL;

     ABookmarks := nil;
     SetLength(ABookmarks,cxGrid1DBTableView1.Controller.SelectedRecordCount);
     AFocusedRecord := cxGrid1DBTableView1.Controller.FocusedRecord;
    try
     for I := 0 to cxGrid1DBTableView1.Controller.SelectedRecordCount -1 do
     begin
      cxGrid1DBTableView1.Controller.SelectedRecords[I].Focused := true;
      ABookmarks[I] := cxGrid1DBTableView1.DataController.DataSet.GetBookmark;

//     tabel.q2.SQL.Clear;
//     tabel.q2.SQL.Add('SELECT * FROM buku_besar LEFT JOIN relasi_buku_besar USING(no_transaksi) '+
//     'WHERE dari=''HUTANG LAIN-LAIN'' AND keterangan LIKE ''%#%'' AND id IS NULL');
//     tabel.q2.Open;

//     tabel.q2.First;
//     ProgressBar1.Max := tabel.q2.RecordCount;
//     while not tabel.q2.Eof do
//     begin
      kata := TstringList.Create;

      split(qhasil_perapihanketerangan.Value,'#',kata);

      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('select max(id) from relasi_buku_besar');
      tabel.q1.Open;

       if tabel.q1.Fields[0].AsInteger <> 0 then
       begin
        aidi := IntToStr(tabel.q1.Fields[0].AsInteger+1);
       end else
       begin
         aidi := '1';
       end;

      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('insert into relasi_buku_besar values ('''+aidi+''', '+
      ''''+qhasil_perapihanno_transaksi.AsString+''', '+
      ''''+Trim(kata[1])+''' )');
      tabel.q1.ExecSQL;

//      tabel.q2.Next;

//      ProgressBar1.Position := tabel.q2.RecNo;
//      ProgressBar1.Update;
//     end;
     end;
//
     AFocusedRecord.Focused := True;
    except
     on E : Exception do
     begin
       ShowMessage(E.ClassName+' xxxxx : '+E.Message);

       tabel.q5.SQL.Clear;
       tabel.q5.SQL.Add('ROLLBACK');
       tabel.q5.ExecSQL;

       Exit;
     end;
    end;

     tabel.q5.SQL.Clear;
     tabel.q5.SQL.Add('COMMIT');
     tabel.q5.ExecSQL;

     qhasil_perapihan.Active := False;
     qhasil_perapihan.Active := True;

     ShowMessage('Data berhasil di pasangkan !');

//     ProgressBar1.Position := 0;
//     ProgressBar1.Update;
//     ProgressBar1.Visible := False;
   end;

  end;

end;

procedure Tfhasil_perapihan.Button2Click(Sender: TObject);
begin
 fhasil_pemasangan.ShowModal;
end;

procedure Tfhasil_perapihan.Edit1Change(Sender: TObject);
begin
 qhasil_perapihan.SQL.Clear;
 qhasil_perapihan.SQL.Add('SELECT * FROM buku_besar LEFT JOIN relasi_buku_besar USING(no_transaksi) WHERE '+
 'dari=''HUTANG LAIN-LAIN'' AND keterangan LIKE ''%#%'' AND id IS NULL '+
 'AND no_transaksi like ''%'+edit1.text+'%'' ');
 qhasil_perapihan.ExecSQL;
end;

procedure Tfhasil_perapihan.FormShow(Sender: TObject);
begin
 qhasil_perapihan.Active := False;
 qhasil_perapihan.Active := True;

 Edit1.Text := '';
end;

end.
