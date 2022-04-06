unit ufbiayaadmin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, DBAccess, Uni,
  MemDS, Vcl.StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
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
  cxNavigator, cxDataControllerConditionalFormattingRulesManagerDialog,
  cxDBData, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, Vcl.ComCtrls;

type
  Tfbiayaadmin = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    tjenis: TEdit;
    Label1: TLabel;
    Button1: TButton;
    qdata: TUniQuery;
    dsdata: TUniDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    qdataid: TIntegerField;
    qdatajenis: TStringField;
    qdatabiaya: TFloatField;
    qdatatipe: TStringField;
    qdatatgl_efektif: TDateTimeField;
    cxGrid1DBTableView1jenis: TcxGridDBColumn;
    cxGrid1DBTableView1biaya: TcxGridDBColumn;
    cxGrid1DBTableView1tipe: TcxGridDBColumn;
    cxGrid1DBTableView1tgl_efektif: TcxGridDBColumn;
    tbiaya: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cbtipe: TcxComboBox;
    Label5: TLabel;
    dt1: TDateTimePicker;
    Edit2: TEdit;
    Edit1: TEdit;
    Panel3: TPanel;
    Button2: TButton;
    procedure tjenisKeyPress(Sender: TObject; var Key: Char);
    procedure cbtipeKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbiayaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fbiayaadmin: Tfbiayaadmin;
  vstssimpan,vbjenis,vid,vbtipe:string;

implementation

{$R *.dfm}

uses uftabel;

procedure Tfbiayaadmin.Button1Click(Sender: TObject);
var
  tanggalspesifik,pesan,tanggal,sbiaya,namakas,namakasadmin : string;
begin
  if (Trim(tjenis.Text) = '') and (cbtipe.Text <> 'CASH')  then begin
    ShowMessage('jenis harus di isi');
    tjenis.SetFocus;
    Exit;
  end;

  if Trim(tbiaya.Text) = '' then begin
    ShowMessage('Biaya harus di isi');
    tbiaya.SetFocus;
    Exit;
  end;

  if Trim(cbtipe.Text) = '' then begin
    ShowMessage('Tipe harus di isi');
    cbtipe.SetFocus;
    Exit;
  end;

  namakas := tjenis.Text;
  namakasadmin := tjenis.Text;
  if (cbtipe.Text = 'CASH') then
  begin
    namakas := cbtipe.Text;
    namakasadmin := '';

    if vstssimpan <> 'edit' then
    begin
      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('select tipe from biaya_admin where tipe='''+cbtipe.Text+''' ');
      tabel.q1.Open;
      if tabel.q1.RecordCount > 0 then
      begin
        ShowMessage('Biaya admin dengan tipe '+cbtipe.Text+' sudah terdaftar');
        Exit;
      end;
    end;
  end;


  pesan := 'Apakah anda yakin data yang anda masukan sudah benar ? ';
  if messagedlg(pesan, mtconfirmation, [mbyes, mbno], 0) = mryes then
  begin
    try

      tanggal:=FormatDateTime('yyyy-mm-dd',dt1.Date)+' '+edit1.Text+':'+edit2.Text+':00';

      sbiaya := tbiaya.Text;

      sbiaya := floattostr(strtofloat(sbiaya) / 100);

      if vstssimpan ='edit' then
      begin
        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('select id from biaya_admin where id='+vid+' and jenis='''+vbjenis+''' ');
        tabel.q1.Open;
        if tabel.q1.RecordCount = 0 then
        begin
          ShowMessage('Ada kesalahan data, silahkan ulangi');
          Button2Click(nil);
          exit;
        end
        else
        begin
          tabel.q1.SQL.Clear;
          tabel.q1.SQL.Add('START TRANSACTION');
          tabel.q1.ExecSQL;

          tabel.q1.SQL.Clear;
          tabel.q1.SQL.Add('update biaya_admin set jenis='''+namakasadmin+''',biaya='+sbiaya+',tipe='''+cbtipe.Text+''',tgl_efektif='''+tanggal+''' '+
          ' where id='+vid+' and jenis='''+vbjenis+''' ');
          tabel.q1.ExecSQL;

          tabel.q1.SQL.Clear;
          tabel.q1.SQL.Add('select * from kas_bank where keterangan=''INTERNAL'' and nama_kas='''+vbjenis+''' and alamat='''+vbjenis+''' and no_rekening='''+vbjenis+''' and bank='''+vbjenis+''' '+
          ' and atas_nama='''+vbjenis+''' and status_rekening='''+vbtipe+'''');
          tabel.q1.ExecSQL;
          if tabel.q1.RecordCount > 0 then begin
            tabel.q1.SQL.Clear;
            tabel.q1.SQL.Add('update kas_bank set nama_kas='''+namakas+''',alamat='''+namakas+''',no_rekening='''+namakas+''',bank='''+namakas+''',atas_nama='''+namakas+''' '+
            ' ,status_rekening='''+cbtipe.Text+''' where keterangan=''INTERNAL'' and nama_kas='''+vbjenis+''' and alamat='''+vbjenis+''' and no_rekening='''+vbjenis+''' and bank='''+vbjenis+''' '+
            ' and atas_nama='''+vbjenis+''' and status_rekening='''+vbtipe+''' ');
            tabel.q1.ExecSQL;
          end else begin
            tabel.q1.SQL.Clear;
            tabel.q1.SQL.Add('insert into kas_bank values(null,''' + namakas + ''',''' + namakas + ''',''R'',''' + namakas + ''',''' + namakas + ''',''' + namakas + ''',''' + cbtipe.Text + ''',''INTERNAL'' )');
            tabel.q1.ExecSQL;
          end;
        end;
      end
      else
      begin
        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('START TRANSACTION');
        tabel.q1.ExecSQL;

        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('insert into biaya_admin values(null,''' + namakasadmin + ''', ''' + sbiaya + ''', '''+ cbtipe.Text +''', '''+ tanggal +''' )');
        tabel.q1.ExecSQL;

        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('select * from kas_bank where keterangan=''INTERNAL'' and nama_kas='''+namakas+'''  and bank='''+namakas+''' '+
        ' and atas_nama='''+namakas+''' and status_rekening='''+namakas+'''');
        tabel.q1.open;
        if tabel.q1.RecordCount = 0 then begin
          tabel.q1.SQL.Clear;
          tabel.q1.SQL.Add('insert into kas_bank values(null,''' + namakas + ''',''' + namakas + ''',''R'',''' + namakas + ''',''' + namakas + ''',''' + namakas + ''',''' + cbtipe.Text + ''',''INTERNAL'' )');
          tabel.q1.ExecSQL;
        end;
      end;

      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('COMMIT');
      tabel.q1.ExecSQL;

      ShowMessage('Data berhasil di simpan');

      Button2Click(nil);
    except
      on e: exception do
      begin
        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('Rollback');
        tabel.q1.ExecSQL;

        showmessage(' Error : ' + e.message);
      end;
    end;
  end;
end;

procedure Tfbiayaadmin.Button2Click(Sender: TObject);
var
  tanggalspesifik : string;
begin
  vstssimpan :='tambah';
  vbjenis := '';
  vid := '';
  tjenis.Text := '';
  tbiaya.Text := '';
  cbtipe.Text := '';

  dt1.Date:=Now;

  tanggalspesifik:=FormatDateTime('hh:mm:ss',Now());
  Edit1.Text:=copy(tanggalspesifik,1,2);
  Edit2.Text:=copy(tanggalspesifik,4,2);

  qdata.Active := False;
  qdata.Active := True;

  cxGrid1.Enabled:=True;
end;

procedure Tfbiayaadmin.cbtipeKeyPress(Sender: TObject; var Key: Char);
begin
  if ord(Key) = vk_return then
  begin
    cbtipe.SetFocus;
  end;
end;

procedure Tfbiayaadmin.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var tanggalspesifik:string;
begin
  if (qdatatipe.Text ='CC') or (qdatatipe.Text = 'DEBIT') or (qdatatipe.Text = 'CASH') then
  begin
    vstssimpan:='edit';
    vid := qdataid.Text;
    vbjenis := qdatajenis.Text;
    tjenis.Text := qdatajenis.Text;
    tbiaya.Text := floattostr(qdatabiaya.Value * 100);
    cbtipe.Text := qdatatipe.Text;
    vbtipe := qdatatipe.text;

    dt1.Date:=qdatatgl_efektif.Value;

    tanggalspesifik:=FormatDateTime('hh:mm:ss',qdatatgl_efektif.Value);
    Edit1.Text:=copy(tanggalspesifik,1,2);
    Edit2.Text:=copy(tanggalspesifik,4,2);

    cxGrid1.Enabled:=False;
  end
  else
    ShowMessage('Biaya admin yang bisa di edit hanya CC, DEBIT dan CASH');
end;

procedure Tfbiayaadmin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qdata.Active := False;
end;

procedure Tfbiayaadmin.FormShow(Sender: TObject);
var
  tanggalspesifik : string;
begin

  tjenis.Text := '';
  tbiaya.Text := '';
  cbtipe.Text := '';

  dt1.Date:=Now;

  tanggalspesifik:=FormatDateTime('hh:mm:ss',Now());
  Edit1.Text:=copy(tanggalspesifik,1,2);
  Edit2.Text:=copy(tanggalspesifik,4,2);

  qdata.Active := False;
  qdata.Active := True;
end;

procedure Tfbiayaadmin.tbiayaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  KeyChar: Char;
begin
  if ord(Key) = vk_return then
  begin
    cbtipe.SetFocus;
  end;

  if not (KeyChar in ['0'..'9', #190, #110, #8, #13]) then
  begin
    KeyChar := #0;
  end;
end;

procedure Tfbiayaadmin.tjenisKeyPress(Sender: TObject; var Key: Char);
begin
  if ord(Key) = vk_return then
  begin
    tbiaya.SetFocus;
  end;
end;

end.
