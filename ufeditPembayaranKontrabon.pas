unit ufeditPembayaranKontrabon;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2010Black, Vcl.Buttons, Vcl.ExtCtrls, cxTextEdit, Vcl.StdCtrls;

type
  TfeditPembayaranKontrabon = class(TForm)
    Label1: TLabel;
    lbNoPenjualan: TLabel;
    lbCustomer: TLabel;
    Label4: TLabel;
    lbEkspedisi: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    tongkir: TcxTextEdit;
    Label8: TLabel;
    tasuransi: TcxTextEdit;
    Panel25: TPanel;
    SpeedButton7: TSpeedButton;
    lbResi: TLabel;
    Label3: TLabel;
    procedure SpeedButton7Click(Sender: TObject);
    procedure tongkirKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tongkirPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var
      idcustomer,noorder,nomuat,jenisEdit,jenisAsuransi:string;
      ongkirSebelum,asuransiSebelum:Real;
      kontrabon:boolean;
  end;

var
  feditPembayaranKontrabon: TfeditPembayaranKontrabon;
  statusSimpan:boolean;

implementation

uses
  uftabel, ufmenuutama, ufInfoEditPembayaranKontrabon;

{$R *.dfm}

procedure TfeditPembayaranKontrabon.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  key: Word;
begin
  if SpeedButton7.Enabled = true then
  begin
    if jenisEdit = 'NON KONTRABON' then
      fmenuutama.SpeedButton10Click(nil)
    else
    begin
      if (tabel.qjurnalkotrabon.Locate('no_order',noorder,[]) = True) and (statusSimpan = true) then
      begin
        tabel.q1.SQL.Clear;
//        tabel.q1.SQL.Add('SELECT op.id_customer,mo.tanggal,mo.no_muat,ro.no_penjualan,no_resi,dp.no_detail AS detail,op.no_order,c.nama,exspedisi '+
//        ' ,IF(ongkir_sesudah IS NOT NULL,ongkir_sesudah,IFNULL(dk.jumlah, 0)-IFNULL(dks.jumlah, 0)) AS ongkir '+
//        ' ,IF(asuransi_sesudah IS NOT NULL,asuransi_sesudah,IFNULL(dks.jumlah,0)) AS asuransi '+
//        ' ,IF(jenis_pembayaran_asuransi = ''MEMAKAI KONTRABON'',IF(ongkir_sesudah IS NOT NULL,ongkir_sesudah + asuransi_sesudah,IFNULL(dk.jumlah,0)) '+
//        ' ,IF(ongkir_sesudah IS NOT NULL,ongkir_sesudah ,IFNULL(dk.jumlah, 0)-IFNULL(dks.jumlah, 0))) AS total '+
//        ' ,IFNULL(vedit.no_penjualan,'''') AS edit '+
//        ' ,IFNULL(IF(jenis_pembayaran_asuransi = ''MEMAKAI KONTRABON'',(IFNULL(nt.ongkir,0) + IFNULL(nt.asuransi,0)) - IF(ongkir_sesudah IS NOT NULL,ongkir_sesudah + asuransi_sesudah,IFNULL(dk.jumlah,0)) '+
//        ' ,IFNULL(nt.ongkir,0) - ongkir_sesudah),0) AS selisih '+
//        ' ,ongkir_sesudah,asuransi_sesudah '+
//        ' ,jenis_pembayaran_asuransi,ek.tipe_pembayaran,IFNULL(pph,'''') AS pph,''False'' as pilihan '+
//        ' FROM order_pembelian op JOIN customer c USING(id_customer) JOIN detail_muat dp                                                                   '+
//        ' ON dp.no_pengeluaran=op.no_order JOIN muat_orderan mo ON mo.`no_muat`=dp.`no_muat` JOIN relasi_orderdanpenjualan ro ON ro.no_order=op.no_order  '+
//        ' LEFT JOIN ongkir okr ON okr.no_transaksi=ro.no_penjualan                                                                                     '+
//        ' LEFT JOIN ekspedisi ek ON ek.nama=op.exspedisi                                                                                                '+
//        ' LEFT JOIN (SELECT no_order,jumlah FROM detail_pengeluaranongkir dpl GROUP BY no_order) AS dk ON dk.no_order=op.no_order                      '+
//        ' LEFT JOIN (SELECT no_order,asuransi_versi_exspedisi AS jumlah FROM a_asuransiversi_exspedisi dps GROUP BY no_order) AS dks  ON dks.no_order = op.no_order '+
//        ' LEFT JOIN fhoto_resi fr ON op.no_order=fr.no_order LEFT JOIN n_temp_kasir nt ON op.no_order=nt.no_order '+
//        ' LEFT JOIN (SELECT id,no_penjualan,ongkir_sebelum,asuransi_sebelum,ongkir_sesudah,asuransi_sesudah FROM n_pembayaran_ekspedisi_edit n '+
//        ' WHERE id = (SELECT MAX(id) AS id FROM n_pembayaran_ekspedisi_edit WHERE no_penjualan=n.`no_penjualan` AND `status`=0) GROUP BY no_penjualan) AS vedit ON ro.no_penjualan=vedit.no_penjualan '+
//        ' WHERE op.no_order='''+noorder+''' '+
//        ' UNION                                                                                                                                        '+
//        ' SELECT op.id_customer,mo.tanggal,mo.no_muat,op.no_penjualan,no_resi,dp.no_detail AS detail,op.no_penjualan,c.nama,ekspedisi AS exspedisi '+
//        ' ,IF(ongkir_sesudah IS NOT NULL,ongkir_sesudah,IFNULL(dk.jumlah, 0)-IFNULL(dks.jumlah, 0)) AS ongkir '+
//        ' ,IF(asuransi_sesudah IS NOT NULL,asuransi_sesudah,IFNULL(dks.jumlah,0)) AS asuransi '+
//        ' ,IF(jenis_pembayaran_asuransi = ''MEMAKAI KONTRABON'',IF(ongkir_sesudah IS NOT NULL,ongkir_sesudah + asuransi_sesudah,IFNULL(dk.jumlah,0)) '+
//        ' ,IF(ongkir_sesudah IS NOT NULL,ongkir_sesudah ,IFNULL(dk.jumlah, 0)-IFNULL(dks.jumlah, 0))) AS total '+
//        ' ,IFNULL(vedit.no_penjualan,'''') AS edit '+
//        ' ,IFNULL(IF(jenis_pembayaran_asuransi = ''MEMAKAI KONTRABON'',(IFNULL(nt.ongkir,0) + IFNULL(nt.asuransi,0)) - IF(ongkir_sesudah IS NOT NULL,ongkir_sesudah + asuransi_sesudah,IFNULL(dk.jumlah,0)) '+
//        ' ,IFNULL(nt.ongkir,0) - ongkir_sesudah),0) AS selisih '+
//        ' ,ongkir_sesudah,asuransi_sesudah '+
//        ' ,jenis_pembayaran_asuransi,IFNULL(ek.tipe_pembayaran,'''') AS tipe_pembayaran,IFNULL(pph,'''') AS pph,''False'' as pilihan  '+
//        ' FROM s_penjualan_katalog op JOIN customer c USING(id_customer) JOIN detail_muat dp  ON dp.no_pengeluaran=op.no_penjualan                       '+
//        ' JOIN muat_orderan mo ON mo.`no_muat`=dp.`no_muat`                                                                                            '+
//        ' LEFT JOIN ongkir okr ON okr.no_transaksi=op.no_penjualan                                                                                      '+
//        ' LEFT JOIN ekspedisi ek ON ek.nama=op.ekspedisi                                                                                                '+
//        ' LEFT JOIN (SELECT no_order,jumlah FROM detail_pengeluaranongkir dpl GROUP BY no_order) AS dk ON dk.no_order=op.no_penjualan                  '+
//        ' LEFT JOIN (SELECT no_order,asuransi_versi_exspedisi AS jumlah FROM a_asuransiversi_exspedisi dps GROUP BY no_order) AS dks ON dks.no_order = op.no_penjualan '+
//        ' LEFT JOIN fhoto_resi fr ON op.no_penjualan=fr.no_order LEFT JOIN n_temp_kasir nt ON op.no_penjualan=nt.no_order '+
//        ' LEFT JOIN (SELECT id,no_penjualan,ongkir_sebelum,asuransi_sebelum,ongkir_sesudah,asuransi_sesudah FROM n_pembayaran_ekspedisi_edit n '+
//        ' WHERE id = (SELECT MAX(id) AS id FROM n_pembayaran_ekspedisi_edit WHERE no_penjualan=n.`no_penjualan` AND `status`=0) GROUP BY no_penjualan) AS vedit ON op.no_penjualan=vedit.no_penjualan '+
//        ' WHERE  op.no_penjualan='''+noorder+'''  ');
        tabel.q1.SQL.Add('CALL sp_get_data_pembayaran_kontrabon('''','''+noorder+''')');
        tabel.q1.open;
        if tabel.q1.RecordCount > 0 then
        begin
          if tabel.qjurnalkotrabonpilihan.Text = 'True' then
          begin
            with fmenuutama do
            begin
              vtotalkontrabon := vtotalkontrabon - tabel.qjurnalkotrabontotal.Value;
              vtotalkontrabon := vtotalkontrabon + tabel.q1.FieldValues['total'];
              ttagihancentang.Text := FloatToStr(vtotalkontrabon);
              key := 0;
              ttagihaneksKeyUp(ttagihancentang,key,[]);
            end;
          end;

          tabel.qjurnalkotrabon.edit;
          tabel.qjurnalkotrabonedit.Value := tabel.q1.FieldValues['no_penjualan'];
          tabel.qjurnalkotrabonongkir.Value := tabel.q1.FieldValues['ongkir'];
          tabel.qjurnalkotrabonasuransi.Value := tabel.q1.FieldValues['asuransi'];
          tabel.qjurnalkotrabonongkir_sesudah.Value := tabel.q1.FieldValues['ongkir_sesudah'];
          tabel.qjurnalkotrabonasuransi_sesudah.Value := tabel.q1.FieldValues['asuransi_sesudah'];
          tabel.qjurnalkotrabontotal.Value := tabel.q1.FieldValues['total'];
          tabel.qjurnalkotrabonselisih.Value := tabel.q1.FieldValues['selisih'];
          tabel.qjurnalkotrabon.Post;
        end;
      end;

//      fmenuutama.SpeedButton7Click(nil);
    end;
  end;
end;

procedure TfeditPembayaranKontrabon.FormShow(Sender: TObject);
var
  key: Word;
begin
  key := 0;
  tongkirKeyUp(tongkir,key,[]);
  tongkirKeyUp(tasuransi,key,[]);

//  Self.Caption := jenisAsuransi + ' === '+jenisEdit;
  tongkir.Enabled := true;
  tasuransi.Enabled := True;
  if jenisAsuransi = 'DIPISAH' then
  begin
    if jenisEdit = 'NON KONTRABON' then
      tongkir.Enabled := false
    else
      tasuransi.Enabled := false;
  end;


  statusSimpan := false;
end;

procedure TfeditPembayaranKontrabon.SpeedButton7Click(Sender: TObject);
var
  ongkir,asuransi,total,status,refNoAr,refNoAp,endPointAr,endPointAp,namaTabel,selisih,besarkecil,noEdit:string;
begin
  try
    if MessageDlg('Apakah anda yakin akan mengedit data '+lbNoPenjualan.Caption+' ? ',mtWarning,[mbYes,mbno],0)=mrYes then
    begin
      status := '0';

      ongkir := tongkir.text;
      ongkir := stringreplace(ongkir,',','',[rfreplaceall,rfignorecase]);

      asuransi := tasuransi.text;
      asuransi := stringreplace(asuransi,',','',[rfreplaceall,rfignorecase]);

      total := FloatToStr(StrToFloat(ongkir) + StrToFloat(asuransi));


      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('START TRANSACTION');
      tabel.q1.ExecSQL;

      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('insert into n_pembayaran_ekspedisi_edit (no_penjualan,id_customer,ekspedisi,jenis,ongkir_sebelum,asuransi_sebelum,ongkir_sesudah,asuransi_sesudah,id_user,status) '+
      ' values('''+lbNoPenjualan.Caption+''','+idcustomer+','''+lbEkspedisi.Caption+''','''+jenisEdit+''','+FloatToStr(ongkirSebelum)+','+FloatToStr(asuransiSebelum)+','+ongkir+','+asuransi+','+v_idkaryawan+','+status+' ) ');
      tabel.q1.ExecSQL;

      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('select max(id) from n_pembayaran_ekspedisi_edit where no_penjualan='''+lbNoPenjualan.Caption+''' ');
      tabel.q1.Open;
      if tabel.q1.RecordCount = 0 then
        noEdit :='0'
      else
        noEdit := tabel.q1.Fields[0].Text;

      if jenisEdit = 'NON KONTRABON' then
      begin
        status := '1';

        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('update detail_pengeluaranongkir set jumlah='+total+' where no_order='''+noorder+''' ');
        tabel.q1.ExecSQL;

        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('update a_asuransiversi_exspedisi set asuransi_versi_exspedisi='+asuransi+' where no_order='''+noorder+''' ');
        tabel.q1.ExecSQL;

        refNoAr := vcabangbranch +'_'+noorder+'_RevisiEstimasiOngkir';

        tabel.q1.SQL.Clear;
        tabel.q1.SQL.Add('select id from sinkronisasi_data where ref_no like '''+refNoAr+'%'' ');
        tabel.q1.Open;
        if tabel.q1.RecordCount = 0 then
          refNoAr := refNoAr + '1'
        else
          refNoAr := refNoAr + IntToStr(tabel.q1.RecordCount + 1);

        // jika total sesudah lebih besar dari total sebelum edit maka POST A/R invoice dan A/P invoice
        if (StrToFloat(ongkir) + StrToFloat(asuransi)) > (ongkirSebelum + asuransiSebelum) then
        begin
          selisih := FloatToStr((StrToFloat(ongkir) + StrToFloat(asuransi)) - (ongkirSebelum + asuransiSebelum));

          endPointAr := '/saptemp/sinkarinvoiceongkir';
          endPointAp := '/saptemp/sinkinvoiceongkir';
          namaTabel := 'detail_pengeluaranongkir_lebih';

          refNoAp := vcabangbranch +'_'+nomuat+'_'+lbEkspedisi.Caption+'_RevisiOngkirNonKontraBon';

          tabel.q1.SQL.Clear;
          tabel.q1.SQL.Add('select s.id from sinkronisasi_data s JOIN sinkronisasi_progres USING(urutan) JOIN sinkronisasi_masterapi USING(id_jenis) '+
          ' where web_service='''+endPointAp+''' and ref_no like '''+refNoAp+'%'' ');
          tabel.q1.Open;
          if tabel.q1.RecordCount = 0 then
            refNoAp := refNoAp + '1'
          else
            refNoAp := refNoAp + IntToStr(tabel.q1.RecordCount + 1);

          if StrToFloat(selisih) <> 0 then
          begin
            // POST A/P
//            tabel.q1.SQL.Clear;
//            tabel.q1.SQL.Add('CALL sinkronisasi_sap('''+nomuat+''','''+refNoAp+''','''+namaTabel+''','''+endPointAp+''',@out_msg)');
//            tabel.q1.ExecSQL;
////            ShowMessage(tabel.q1.SQL.Text);
//
//            tabel.q1.SQL.Clear;
//            tabel.q1.SQL.Add('select @out_msg as pesan');
//            tabel.q1.open;
//
//            if tabel.q1.FieldValues['pesan'] <> 'sukses' then
//            begin
//              tabel.q1.SQL.Clear;
//              tabel.q1.SQL.Add('ROLLBACK');
//              tabel.q1.ExecSQL;
//
//              ShowMessage('Terjadi kesalahan : '+tabel.q1.FieldByName('pesan').Text);
//              Exit;
//            end;

//            tabel.q1.SQL.Clear;
//            tabel.q1.SQL.Add('CALL sinkronisasi_sap('''+nomuat+''','''+refNoAp+''','''+namaTabel+''','''+endPointAp+''',@out_msg)');
//            tabel.q1.ExecSQL;
////            ShowMessage(tabel.q1.SQL.Text);
//
//            tabel.q1.SQL.Clear;
//            tabel.q1.SQL.Add('select @out_msg as pesan');
//            tabel.q1.open;
//
//            if tabel.q1.FieldValues['pesan'] <> 'sukses' then
//            begin
//              tabel.q1.SQL.Clear;
//              tabel.q1.SQL.Add('ROLLBACK');
//              tabel.q1.ExecSQL;
//
//              ShowMessage('Terjadi kesalahan : '+tabel.q1.FieldByName('pesan').Text);
//              Exit;
//            end;


            // Outgoing Payment
//            tabel.q1.SQL.Clear;
//            tabel.q1.SQL.Add('CALL sinkronisasi_sap('''+nomuat+''','''+refNoAp+''','''+namaTabel+''',''/saptemp/sinkpaymentongkir'',@out_msg)');
//            tabel.q1.ExecSQL;
////            ShowMessage(tabel.q1.SQL.Text);
//
//            tabel.q1.SQL.Clear;
//            tabel.q1.SQL.Add('select @out_msg as pesan');
//            tabel.q1.open;
//
//            if tabel.q1.FieldValues['pesan'] <> 'sukses' then
//            begin
//              tabel.q1.SQL.Clear;
//              tabel.q1.SQL.Add('ROLLBACK');
//              tabel.q1.ExecSQL;
//
//              ShowMessage('Terjadi kesalahan : '+tabel.q1.FieldByName('pesan').Text);
//              Exit;
//            end;
          end;
        end
        else // jika total sesudah lebih kecil dari total sebelum edit maka POST A/R cr.memo dan copy A/P cr.memo
        begin
          selisih := FloatToStr((ongkirSebelum + asuransiSebelum) - (StrToFloat(ongkir) + StrToFloat(asuransi)) );

          endPointAr := '/saptemp/sinkcreditmemoongkir';
          endPointAp := 'copy';
          namaTabel := 'detail_pengeluaranongkir_kurang';

          if StrToFloat(selisih) <> 0 then
          begin
            refNoAp := vcabangbranch +'_'+nomuat+'_'+lbEkspedisi.Caption+'_RevisiOngkirNonKontraBon';

            tabel.q1.SQL.Clear;
            tabel.q1.SQL.Add('select s.id from sinkronisasi_data s JOIN sinkronisasi_progres USING(urutan) JOIN sinkronisasi_masterapi USING(id_jenis) '+
            ' where web_service=''/saptemp/sinkterimauang'' and ref_no like '''+refNoAp+'%'' ');
            tabel.q1.Open;
            if tabel.q1.RecordCount = 0 then
              refNoAp := refNoAp + '1'
            else
              refNoAp := refNoAp + IntToStr(tabel.q1.RecordCount + 1);

            // Incoming Payment
//            tabel.q1.SQL.Clear;
//            tabel.q1.SQL.Add('CALL sinkronisasi_sap('''+nomuat+''','''+refNoAp+''','''+namaTabel+''',''/saptemp/sinkterimauang'',@out_msg)');
//            tabel.q1.ExecSQL;
//
//            tabel.q1.SQL.Clear;
//            tabel.q1.SQL.Add('select @out_msg as pesan');
//            tabel.q1.open;
//
//            if tabel.q1.FieldValues['pesan'] <> 'sukses' then
//            begin
//              tabel.q1.SQL.Clear;
//              tabel.q1.SQL.Add('ROLLBACK');
//              tabel.q1.ExecSQL;
//
//              ShowMessage('Terjadi kesalahan : '+tabel.q1.FieldByName('pesan').Text);
//              Exit;
//            end;
          end;
        end;

        if StrToFloat(selisih) <> 0 then
        begin
          // POST A/R
//          tabel.q1.SQL.Clear;
//          tabel.q1.SQL.Add('CALL sinkronisasi_sap('''+noorder+''','''+refNoAr+''','''+namaTabel+''','''+endPointAr+''',@out_msg)');
//          tabel.q1.ExecSQL;
////          ShowMessage(tabel.q1.SQL.Text);
//
//          tabel.q1.SQL.Clear;
//          tabel.q1.SQL.Add('select @out_msg as pesan');
//          tabel.q1.open;
//
//          if tabel.q1.FieldValues['pesan'] <> 'sukses' then
//          begin
//            tabel.q1.SQL.Clear;
//            tabel.q1.SQL.Add('ROLLBACK');
//            tabel.q1.ExecSQL;
//
//            ShowMessage('Terjadi kesalahan : '+tabel.q1.FieldByName('pesan').Text);
//            Exit;
//          end;
        end;

      end;



      tabel.q1.SQL.Clear;
      tabel.q1.SQL.Add('COMMIT');
      tabel.q1.ExecSQL;

      statusSimpan := true;

      if endPointAp <> 'copy' then
      begin
        ShowMessage('sukses');
        Self.close;
      end
      else
      begin
//        if StrToFloat(selisih) <> 0 then
//        begin
//          with fInfoEditPembayaranKontrabon do
//          begin
//            noorder := self.noorder;
//            vselisih := selisih;
//
//            tabel.q1.SQL.Clear;
//            tabel.q1.SQL.Add('select FORMAT('+selisih+',0,''de_DE'') as selisih');
//            tabel.q1.Open;
//            selisih := tabel.q1.Fields[0].Text;
//
//            label1.Caption := 'Nilai tagihan lebih kecil dari sebelumnya, buat dokumen A/P Credit Memo '+
//                              ' untuk ekspedisi '+lbEkspedisi.Caption+' di SAP sebesar Rp. '+selisih;
//            Self.close;
//            ShowModal;
//          end;
//        end
//        else
//        begin
          ShowMessage('sukses');
          Self.close;
//        end;
      end;


//      if jenisEdit = 'NON KONTRABON' then
//      begin
//        tabel.q1.SQL.Clear;
//        tabel.q1.SQL.Add('update detail_pengeluaranongkir set jumlah='+total+' where no_order='''+noorder+''' ');
//        tabel.q1.ExecSQL;
//
//        tabel.q1.SQL.Clear;
//        tabel.q1.SQL.Add('update a_asuransiversi_exspedisi set asuransi_versi_exspedisi='+asuransi+' where no_order='''+noorder+''' ');
//        tabel.q1.ExecSQL;
//
//        // jika total sesudah lebih besar dari total sebelum edit maka POST A/R invoice dan A/P invoice
//        if (StrToFloat(ongkir) + StrToFloat(asuransi)) > (ongkirSebelum + asuransiSebelum) then
//        begin
//          selisih := FloatToStr((StrToFloat(ongkir) + StrToFloat(asuransi)) - (ongkirSebelum + asuransiSebelum));
//          besarkecil := 'besar';
//        end
//        else // jika total sesudah lebih kecil dari total sebelum edit maka POST A/R cr.memo dan copy A/P cr.memo
//        begin
//          selisih := FloatToStr((ongkirSebelum + asuransiSebelum) - (StrToFloat(ongkir) + StrToFloat(asuransi)) );
//          besarkecil := 'kecil';
//        end;
//
//        tabel.q1.SQL.Clear;
//        tabel.q1.SQL.Add('insert into n_pembayaran_ekspedisi_edit (no_penjualan,id_customer,ekspedisi,ongkir_sebelum,asuransi_sebelum,ongkir_sesudah,asuransi_sesudah,id_user,status) '+
//        ' values('''+lbNoPenjualan.Caption+''','+idcustomer+','''+lbEkspedisi.Caption+''','+FloatToStr(ongkirSebelum)+','+FloatToStr(asuransiSebelum)+','+ongkir+','+asuransi+','+v_idkaryawan+','+status+' ) ');
//        tabel.q1.ExecSQL;
//
//        tabel.q1.SQL.Clear;
//        tabel.q1.SQL.Add('COMMIT');
//        tabel.q1.ExecSQL;
//
//        statusSimpan := true;
//
//
//        if StrToFloat(selisih) <> 0 then
//        begin
//          with fInfoEditPembayaranKontrabon do
//          begin
//            noorder := self.noorder;
//            vselisih := selisih;
//            vbesarkecil := besarkecil;
//            vekspedisi := lbEkspedisi.Caption;
//
//            tabel.q1.SQL.Clear;
//            tabel.q1.SQL.Add('select FORMAT('+selisih+',0,''de_DE'') as selisih');
//            tabel.q1.Open;
//            selisih := tabel.q1.Fields[0].Text;
//            vformatSelisih := selisih;
//
//            Self.close;
//            ShowModal;
//          end;
//        end
//        else
//        begin
//          ShowMessage('sukses');
//          Self.close;
//        end;
//      end
//      else
//      begin
//        tabel.q1.SQL.Clear;
//        tabel.q1.SQL.Add('insert into n_pembayaran_ekspedisi_edit (no_penjualan,id_customer,ekspedisi,ongkir_sebelum,asuransi_sebelum,ongkir_sesudah,asuransi_sesudah,id_user,status) '+
//        ' values('''+lbNoPenjualan.Caption+''','+idcustomer+','''+lbEkspedisi.Caption+''','+FloatToStr(ongkirSebelum)+','+FloatToStr(asuransiSebelum)+','+ongkir+','+asuransi+','+v_idkaryawan+','+status+' ) ');
//        tabel.q1.ExecSQL;
//
//        tabel.q1.SQL.Clear;
//        tabel.q1.SQL.Add('COMMIT');
//        tabel.q1.ExecSQL;
//
//        statusSimpan := true;
//
//        ShowMessage('sukses');
//        Self.close;
//      end;
//
//
    end;
  except on e:Exception do
  begin
    tabel.q1.SQL.Clear;
    tabel.q1.SQL.Add('ROLLBACK');
    tabel.q1.ExecSQL;

    ShowMessage('Error : '+e.Message);
  end;
  end;
end;

procedure TfeditPembayaranKontrabon.tongkirKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
srupiah :string;
irupiah :currency;
begin
try
srupiah := TcxTextEdit(Sender).text;
srupiah := stringreplace(sRupiah,',','',[rfreplaceall,rfignorecase]);
irupiah := strtocurrdef(srupiah,0);

TcxTextEdit(Sender).text := formatcurr(',0',irupiah);
TcxTextEdit(Sender).selstart := length(TcxTextEdit(Sender).text);
except

end;
end;

procedure TfeditPembayaranKontrabon.tongkirPropertiesChange(Sender: TObject);
var
  ongkir,asuransi:string;
begin
try
  ongkir := tongkir.text;
  ongkir := stringreplace(ongkir,',','',[rfreplaceall,rfignorecase]);

  asuransi := tasuransi.text;
  asuransi := stringreplace(asuransi,',','',[rfreplaceall,rfignorecase]);

  if (StrToFloat(ongkir) <> ongkirSebelum) or (StrToFloat(asuransi) <> asuransiSebelum) then
    SpeedButton7.Enabled := True
  else
    SpeedButton7.Enabled := False;
except

end;
    end;

end.
