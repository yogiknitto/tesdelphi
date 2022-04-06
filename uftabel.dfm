object tabel: Ttabel
  OldCreateOrder = False
  Height = 594
  Width = 1081
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 32
    Top = 72
  end
  object server: TUniConnection
    ProviderName = 'MySQL'
    Port = 3306
    Database = 'muliaabadi_baru'
    Username = 'penjualan'
    Server = '192.168.31.3'
    Connected = True
    Left = 23
    Top = 23
    EncryptedPassword = '92FFCBFFA0FF94FF91FF96FFCEFF8BFFCFFFCFFF90FF'
  end
  object q1: TUniQuery
    Connection = server
    Left = 88
    Top = 16
  end
  object q2: TUniQuery
    Connection = server
    Left = 120
    Top = 16
  end
  object qfakturasli: TUniQuery
    Connection = server
    SQL.Strings = (
      
        'SELECT op.no_order,id_customer,c.nama AS customer,u.nama AS admi' +
        'n,id_user,gh.jm AS jml,op.tanggal,'
      'jenis,jenis_pengiriman,exspedisi,penanggung'
      
        'FROM order_pembelian op LEFT JOIN order_siappacking os ON os.no_' +
        'order=op.no_order'
      
        'JOIN customer c USING(id_customer) JOIN user u ON u.id_user=op.i' +
        'd_karyawan'
      
        'LEFT JOIN (SELECT opb.no_order,IFNULL(jml,0) AS jm FROM order_pe' +
        'mbelian opb LEFT JOIN '
      
        '(SELECT no_order,IFNULL(COUNT(no_detail),0) AS jml FROM detail_o' +
        'rder WHERE dikerjakan!='#39'SIAP KIRIM'#39' GROUP BY no_order )'
      
        'AS gb ON gb.no_order=opb.no_order) AS gh ON gh.no_order=op.no_or' +
        'der'
      'WHERE'
      ''
      
        ' (ifnull(os.status,4)!=0) AND  ((status_order = '#39'SIAP KIRIM'#39' OR ' +
        'status_order='#39'SELESAI'#39') AND '
      
        ' ( status_bayar = '#39'SUDAH DIBAYAR'#39' OR status_bayar = '#39'SKIP'#39'  OR s' +
        'tatus_bayar = '#39'BAYAR DI TOKO'#39' ))'
      '  OR ('
      '    status_order = '#39'SIAP CETAK FAKTUR SEMENTARA'#39
      '    AND jm = 0'
      '    AND ('
      '      status_bayar = '#39'SUDAH DIBAYAR'#39
      '      OR status_bayar = '#39'SKIP'#39
      '      OR status_bayar = '#39'BAYAR DI TOKO'#39
      '    )'
      '  )')
    AfterScroll = qfakturasliAfterScroll
    Left = 195
    Top = 22
    object qfakturaslino_order: TStringField
      FieldName = 'no_order'
      Required = True
      Size = 50
    end
    object qfakturasliid_customer: TIntegerField
      FieldName = 'id_customer'
      Required = True
    end
    object qfakturaslicustomer: TStringField
      FieldName = 'customer'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object qfakturasliadmin: TStringField
      FieldName = 'admin'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object qfakturasliid_user: TIntegerField
      FieldName = 'id_user'
      ReadOnly = True
    end
    object qfakturaslijml: TLargeintField
      FieldName = 'jml'
      ReadOnly = True
    end
    object qfakturaslitanggal: TDateTimeField
      FieldName = 'tanggal'
    end
    object qfakturaslijenis: TStringField
      FieldName = 'jenis'
      Size = 25
    end
    object qfakturaslijenis_pengiriman: TStringField
      FieldName = 'jenis_pengiriman'
      Required = True
      Size = 100
    end
    object qfakturasliexspedisi: TStringField
      FieldName = 'exspedisi'
      Required = True
      Size = 100
    end
    object qfakturaslipenanggung: TStringField
      FieldName = 'penanggung'
      Required = True
      Size = 50
    end
  end
  object dsfakturasli: TUniDataSource
    DataSet = qfakturasli
    Left = 267
    Top = 30
  end
  object qdetailpenjualan: TUniQuery
    Connection = server
    SQL.Strings = (
      
        'select  no_pengeluaran,no_order,concat(no_pengeluaran,kualitas,i' +
        'd_warna,id_kain,gramasi,lebar,mesin,harga) as relasi,sum(dpk.rol' +
        'l) as roll,'
      'sum(dpk.berat)  as berat'
      
        ',kualitas,id_warna,id_kain,dpk.no_detail,dpk.jenis_kain as body,' +
        'mesin,gramasi, '
      
        'lebar,nama_kain,jenis_warna,pk.jenis_kain as jenis, kode_spk,har' +
        'ga as hargaasli'
      
        ',harga/1.1 as subtotal,harga/1.1 as harga,sum(dpk.berat)*harga a' +
        's total,'
      'concat(nama_kain,'#39' - '#39',jenis_Warna) as identitas'
      
        'from detail_pengeluaranstok dpk join penjualan_kainstok pk using' +
        '(no_pengeluaran) join kain k using(id_kain) '
      
        'join warna w using(id_warna) join relasi_orderdanpenjualan ro on' +
        ' ro.no_penjualan=pk.no_pengeluaran group by no_detail')
    MasterSource = dsfakturasli
    MasterFields = 'no_order'
    DetailFields = 'no_order'
    Left = 353
    Top = 22
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'no_order'
        Value = nil
      end>
    object qdetailpenjualanno_pengeluaran: TStringField
      FieldName = 'no_pengeluaran'
      Required = True
      Size = 15
    end
    object qdetailpenjualanrelasi: TStringField
      FieldName = 'relasi'
      ReadOnly = True
      Size = 154
    end
    object qdetailpenjualanroll: TFloatField
      FieldName = 'roll'
      ReadOnly = True
    end
    object qdetailpenjualanberat: TFloatField
      FieldName = 'berat'
      ReadOnly = True
    end
    object qdetailpenjualankualitas: TStringField
      FieldName = 'kualitas'
      Required = True
      Size = 15
    end
    object qdetailpenjualanid_warna: TIntegerField
      FieldName = 'id_warna'
      Required = True
    end
    object qdetailpenjualanid_kain: TIntegerField
      FieldName = 'id_kain'
      Required = True
    end
    object qdetailpenjualanno_detail: TIntegerField
      FieldName = 'no_detail'
    end
    object qdetailpenjualanbody: TStringField
      FieldName = 'body'
      Required = True
      Size = 25
    end
    object qdetailpenjualanmesin: TStringField
      FieldName = 'mesin'
      Required = True
      Size = 25
    end
    object qdetailpenjualangramasi: TStringField
      FieldName = 'gramasi'
      Required = True
      Size = 25
    end
    object qdetailpenjualanlebar: TStringField
      FieldName = 'lebar'
      Required = True
      Size = 25
    end
    object qdetailpenjualannama_kain: TStringField
      FieldName = 'nama_kain'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object qdetailpenjualanjenis_warna: TStringField
      FieldName = 'jenis_warna'
      ReadOnly = True
      Required = True
      Size = 75
    end
    object qdetailpenjualanjenis: TStringField
      FieldName = 'jenis'
      ReadOnly = True
      Required = True
      Size = 25
    end
    object qdetailpenjualankode_spk: TStringField
      FieldName = 'kode_spk'
      Required = True
      Size = 25
    end
    object qdetailpenjualanhargaasli: TFloatField
      FieldName = 'hargaasli'
      Required = True
      DisplayFormat = '#,#0.;(#,#0.);#,#0'
    end
    object qdetailpenjualansubtotal: TFloatField
      FieldName = 'subtotal'
      ReadOnly = True
      DisplayFormat = '#,#0.;(#,#0.);#,#0'
    end
    object qdetailpenjualanharga: TFloatField
      FieldName = 'harga'
      ReadOnly = True
      DisplayFormat = '#,#0.;(#,#0.);#,#0'
    end
    object qdetailpenjualantotal: TFloatField
      FieldName = 'total'
      ReadOnly = True
      DisplayFormat = '#,#0.;(#,#0.);#,#0'
    end
    object qdetailpenjualanidentitas: TStringField
      FieldName = 'identitas'
      ReadOnly = True
      Size = 178
    end
    object qdetailpenjualanno_order: TStringField
      FieldName = 'no_order'
      ReadOnly = True
      Size = 100
    end
  end
  object dsqdetailpenjualan: TUniDataSource
    DataSet = qdetailpenjualan
    Left = 459
    Top = 22
  end
  object qkonfirmasi: TUniQuery
    Connection = server
    SQL.Strings = (
      
        'SELECT kp.no AS NO,kp.no AS nokonfirmasi,kp.no_order,IFNULL(c.na' +
        'ma,c2.nama) AS nama,atas_nama,jumlah_uang,kp.tanggal_transfer AS' +
        ' tanggal,bank,u.nama AS admin,'
      
        'IFNULL(ca.`catatan`,'#39#39') AS catatan,npo.`no_pesanan`,kp.`id_karya' +
        'wan` AS id_user_konfirmasi FROM '
      
        'detail_konfirmasipembayaran kp LEFT JOIN order_pembelian op USIN' +
        'G(no_order) LEFT  JOIN customer c ON c.id_customer=op.id_custome' +
        'r'
      'LEFT JOIN user u ON u.`id_user`=op.id_karyawan'
      
        'LEFT JOIN y_relasi_konfirmasidanmutasi yr ON yr.id_konfirmasi=kp' +
        '.no'
      'LEFT JOIN catatan_admin ca ON op.no_order=ca.`no_order`'
      'LEFT JOIN n_pemasangan_olshop npo ON kp.no_order=npo.no_order'
      'LEFT JOIN s_penjualan_katalog sp ON sp.no_penjualan=kp.no_order'
      'LEFT JOIN customer c2 ON c2.id_customer=sp.id_customer'
      
        'WHERE yr.no IS NULL AND kp.tanggal_transfer >=(SELECT tanggal FR' +
        'OM tgl_awalkonfirmasi) AND jumlah_uang !=0'
      
        'AND kp.no NOT IN (SELECT no_konfirmasi FROM n_hapus_konfirmasi) ' +
        'ORDER BY kp.tanggal_transfer ASC')
    FilterOptions = [foCaseInsensitive]
    Left = 748
    Top = 137
    object qkonfirmasino_order: TStringField
      FieldName = 'no_order'
      Size = 50
    end
    object qkonfirmasinama: TStringField
      FieldName = 'nama'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object qkonfirmasiatas_nama: TStringField
      FieldName = 'atas_nama'
      Size = 150
    end
    object qkonfirmasijumlah_uang: TFloatField
      FieldName = 'jumlah_uang'
      DisplayFormat = '#,#0.;(#,#0.);#,#0'
    end
    object qkonfirmasitanggal: TDateTimeField
      FieldName = 'tanggal'
    end
    object qkonfirmasinokonfirmasi: TIntegerField
      FieldName = 'nokonfirmasi'
    end
    object qkonfirmasibank: TStringField
      FieldName = 'bank'
      Size = 100
    end
    object qkonfirmasiadmin: TStringField
      FieldName = 'admin'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object qkonfirmasino: TIntegerField
      FieldName = 'no'
    end
    object qkonfirmasicatatan: TStringField
      FieldName = 'catatan'
      ReadOnly = True
      Required = True
      Size = 500
    end
    object qkonfirmasino_pesanan: TStringField
      FieldName = 'no_pesanan'
      ReadOnly = True
      Size = 255
    end
    object qkonfirmasiid_user_konfirmasi: TIntegerField
      FieldName = 'id_user_konfirmasi'
    end
  end
  object dsqkonfirmasi: TUniDataSource
    DataSet = qkonfirmasi
    Left = 563
    Top = 21
  end
  object qrekeningkoran: TUniQuery
    Connection = server
    SQL.Strings = (
      
        'SELECT kbi.id_transaksi,kbi.tanggal,kbi.keterangan,kbi.keteranga' +
        'n2,kbi.jumlah,no_rekening,bank,kbi.jumlah-IFNULL(uc.jml,0) AS si' +
        'sa,'
      'IF(status_tanggal='#39'PENDING'#39','#39'PENDING'#39',tanggal) AS tanggal_sts '
      
        ' FROM kas_bank_import kbi JOIN kas_bank kb ON kb.kode_kas=kbi.ko' +
        'de_kas LEFT JOIN '
      
        '(SELECT no_kasbank,SUM(jumlah_uang) AS jml FROM uang_customer GR' +
        'OUP BY no_kasbank) AS  '
      'uc ON uc.no_kasbank=kbi.id_transaksi'
      
        'LEFT JOIN y_pemasanganmanual yp ON yp.id_rekeningkoran=kbi.id_tr' +
        'ansaksi'
      
        'WHERE  mutasi='#39'CR'#39' AND ((kbi.tanggal >= (SELECT tanggal FROM tgl' +
        '_awalkonfirmasi)) '
      
        'OR (SUBSTR(kbi.tanggal,1,10) = '#39'2010-01-01'#39'))  AND yp.id_rekenin' +
        'gkoran IS NULL GROUP BY id_transaksi HAVING sisa >0 ORDER BY sis' +
        'a')
    Left = 40
    Top = 216
    object qrekeningkoranid_transaksi: TIntegerField
      FieldName = 'id_transaksi'
    end
    object qrekeningkorantanggal: TDateField
      FieldName = 'tanggal'
      Required = True
    end
    object qrekeningkoranketerangan: TStringField
      FieldName = 'keterangan'
      Required = True
      Size = 250
    end
    object qrekeningkoranketerangan2: TStringField
      FieldName = 'keterangan2'
      Size = 250
    end
    object qrekeningkoransisa: TFloatField
      FieldName = 'sisa'
      ReadOnly = True
      Required = True
      DisplayFormat = ',0.00'
    end
    object qrekeningkorantanggal_sts: TStringField
      FieldName = 'tanggal_sts'
      ReadOnly = True
      Required = True
      Size = 10
    end
    object qrekeningkoranno_rekening: TStringField
      FieldName = 'no_rekening'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object qrekeningkoranbank: TStringField
      FieldName = 'bank'
      ReadOnly = True
      Required = True
      Size = 25
    end
    object qrekeningkoranjumlah: TFloatField
      FieldName = 'jumlah'
      Required = True
      DisplayFormat = ',0.00'
    end
  end
  object dsqrekeningkoran: TUniDataSource
    DataSet = qrekeningkoran
    Left = 48
    Top = 168
  end
  object vt1: TVirtualTable
    Left = 360
    Top = 87
    Data = {04000000000000000000}
    object vt1data: TStringField
      FieldName = 'data'
      Size = 100
    end
    object vt1isidata: TStringField
      FieldName = 'isidata'
      Size = 100
    end
  end
  object dsvt1: TDataSource
    DataSet = vt1
    Left = 400
    Top = 79
  end
  object qpenjualan: TUniQuery
    Connection = server
    SQL.Strings = (
      'select catatan,pk.tanggal,no_pengeluaran,'
      'pk.jenis_kain,c.nama as customer,supir,no_mobil,no_sj'
      'from penjualan_kainstok pk join customer c using(id_customer)'
      
        'where jenis_penerimaan='#39'PEMBELIAN'#39'  and penjualan_melalui='#39'TRANS' +
        'AKSI'#39' '
      'order by pk.tanggal desc,no_pengeluaran desc limit 1000')
    Left = 712
    Top = 7
    object qpenjualancatatan: TStringField
      FieldName = 'catatan'
      Required = True
      Size = 250
    end
    object qpenjualantanggal: TDateField
      FieldName = 'tanggal'
      Required = True
    end
    object qpenjualanno_pengeluaran: TStringField
      FieldName = 'no_pengeluaran'
      Required = True
      Size = 25
    end
    object qpenjualanjenis_kain: TStringField
      FieldName = 'jenis_kain'
      Required = True
      Size = 25
    end
    object qpenjualancustomer: TStringField
      FieldName = 'customer'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object qpenjualansupir: TStringField
      FieldName = 'supir'
      Required = True
      Size = 50
    end
    object qpenjualanno_mobil: TStringField
      FieldName = 'no_mobil'
      Required = True
      Size = 10
    end
    object qpenjualanno_sj: TStringField
      FieldName = 'no_sj'
      Required = True
      Size = 50
    end
  end
  object dsqpenjualan: TUniDataSource
    DataSet = qpenjualan
    Left = 760
    Top = 55
  end
  object qdetailpenjualan2: TUniQuery
    Connection = server
    SQL.Strings = (
      
        'select  no_pengeluaran,concat(no_pengeluaran,kualitas,id_warna,i' +
        'd_kain,gramasi,lebar,mesin,harga) as relasi,sum(dpk.roll) as rol' +
        'l,'
      'sum(dpk.berat)  as berat'
      
        ',kualitas,id_warna,id_kain,dpk.no_detail,dpk.jenis_kain as body,' +
        'mesin,gramasi, '
      
        'lebar,nama_kain,jenis_warna,pk.jenis_kain as jenis, kode_spk,har' +
        'ga as hargaasli'
      
        ',harga/1.1 as subtotal,harga/1.1 as harga,sum(dpk.berat)*harga a' +
        's total,'
      'concat(nama_kain,'#39' - '#39',jenis_Warna) as identitas'
      
        'from detail_pengeluaranstok dpk join penjualan_kainstok pk using' +
        '(no_pengeluaran) join kain k using(id_kain) '
      'join warna w using(id_warna)')
    Left = 556
    Top = 245
    object StringField1: TStringField
      FieldName = 'no_pengeluaran'
      Required = True
      Size = 15
    end
    object StringField2: TStringField
      FieldName = 'relasi'
      ReadOnly = True
      Size = 154
    end
    object FloatField1: TFloatField
      FieldName = 'roll'
      ReadOnly = True
    end
    object FloatField2: TFloatField
      FieldName = 'berat'
      ReadOnly = True
    end
    object StringField3: TStringField
      FieldName = 'kualitas'
      Required = True
      Size = 15
    end
    object IntegerField1: TIntegerField
      FieldName = 'id_warna'
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'id_kain'
      Required = True
    end
    object IntegerField3: TIntegerField
      FieldName = 'no_detail'
    end
    object StringField4: TStringField
      FieldName = 'body'
      Required = True
      Size = 25
    end
    object StringField5: TStringField
      FieldName = 'mesin'
      Required = True
      Size = 25
    end
    object StringField6: TStringField
      FieldName = 'gramasi'
      Required = True
      Size = 25
    end
    object StringField7: TStringField
      FieldName = 'lebar'
      Required = True
      Size = 25
    end
    object StringField8: TStringField
      FieldName = 'nama_kain'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object StringField9: TStringField
      FieldName = 'jenis_warna'
      ReadOnly = True
      Required = True
      Size = 75
    end
    object StringField10: TStringField
      FieldName = 'jenis'
      ReadOnly = True
      Required = True
      Size = 25
    end
    object StringField11: TStringField
      FieldName = 'kode_spk'
      Required = True
      Size = 25
    end
    object FloatField3: TFloatField
      FieldName = 'hargaasli'
      Required = True
      DisplayFormat = '#,#0.;(#,#0.);#,#0'
    end
    object FloatField4: TFloatField
      FieldName = 'subtotal'
      ReadOnly = True
      DisplayFormat = '#,#0.;(#,#0.);#,#0'
    end
    object FloatField5: TFloatField
      FieldName = 'harga'
      ReadOnly = True
      DisplayFormat = '#,#0.;(#,#0.);#,#0'
    end
    object FloatField6: TFloatField
      FieldName = 'total'
      ReadOnly = True
      DisplayFormat = '#,#0.;(#,#0.);#,#0'
    end
    object StringField12: TStringField
      FieldName = 'identitas'
      ReadOnly = True
      Size = 178
    end
  end
  object dsqdetailpenjualan2: TUniDataSource
    DataSet = qdetailpenjualan2
    Left = 633
    Top = 221
  end
  object dsqroll: TUniDataSource
    Left = 632
    Top = 160
  end
  object qroll: TUniQuery
    Connection = server
    SQL.Strings = (
      
        'select no_pengeluaran,kualitas,id_Warna,id_kain,gramasi,lebar,me' +
        'sin,harga,pd.no_detail,'
      
        '(select no_lokasi from perincian_penerimaanstok where no_roll=pd' +
        '.no_roll) as lokasi,'
      
        '`pd`.`no_roll`,concat(`pd`.`berat`,'#39' Kg'#39') as berat,pd.berat*harg' +
        'a as total '
      
        'from perincian_pengeluaranstok pd join detail_pengeluaranstok dp' +
        ' using(no_detail)  '
      ' ')
    MasterSource = dsqdetailpenjualan2
    MasterFields = 
      'no_pengeluaran;kualitas;id_warna;id_kain;gramasi;lebar;mesin;har' +
      'gaasli'
    DetailFields = 
      'no_pengeluaran;kualitas;id_Warna;id_kain;gramasi;lebar;mesin;har' +
      'ga'
    Left = 545
    Top = 191
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'no_pengeluaran'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'kualitas'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_warna'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_kain'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'gramasi'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'lebar'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'mesin'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'hargaasli'
        Value = nil
      end>
    object StringField13: TStringField
      FieldName = 'no_pengeluaran'
      Required = True
      Size = 15
    end
    object StringField14: TStringField
      FieldName = 'kualitas'
      Required = True
      Size = 15
    end
    object IntegerField4: TIntegerField
      FieldName = 'id_Warna'
      Required = True
    end
    object IntegerField5: TIntegerField
      FieldName = 'id_kain'
      Required = True
    end
    object StringField15: TStringField
      FieldName = 'gramasi'
      Required = True
      Size = 25
    end
    object StringField16: TStringField
      FieldName = 'lebar'
      Required = True
      Size = 25
    end
    object StringField17: TStringField
      FieldName = 'mesin'
      Required = True
      Size = 25
    end
    object FloatField7: TFloatField
      FieldName = 'harga'
      Required = True
      DisplayFormat = '#,#0.;(#,#0.);#,#0'
    end
    object IntegerField6: TIntegerField
      FieldName = 'no_detail'
      ReadOnly = True
      Required = True
    end
    object qrollno_roll: TStringField
      FieldName = 'no_roll'
      ReadOnly = True
      Required = True
      Size = 25
    end
    object qrollberat: TStringField
      FieldName = 'berat'
      ReadOnly = True
      Required = True
      Size = 17
    end
    object qrolltotal: TFloatField
      FieldName = 'total'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,#0.;(#,#0.);#,#0'
    end
    object qrolllokasi: TStringField
      FieldName = 'lokasi'
      ReadOnly = True
      Size = 15
    end
  end
  object qcetak: TUniQuery
    Connection = server
    SQL.Strings = (
      'select sum(dpk.roll) as roll,sum(dpk.berat)  as berat'
      
        ',kualitas,id_warna,id_kain,dpk.no_detail,dpk.jenis_kain as body,' +
        'mesin,gramasi, '
      
        'lebar,nama_kain,jenis_warna,pk.jenis_kain as jenis, kode_spk,har' +
        'ga as hargaasli'
      
        ',harga/1.1 as subtotal,harga/1.1 as harga,sum(dpk.berat)*harga a' +
        's total'
      
        'from detail_pengeluaranstok dpk join penjualan_kainstok pk using' +
        '(no_pengeluaran) join kain k using(id_kain) '
      'join warna w using(id_warna)')
    Left = 633
    Top = 278
    object qcetakroll: TFloatField
      FieldName = 'roll'
      ReadOnly = True
    end
    object qcetakberat: TFloatField
      FieldName = 'berat'
      ReadOnly = True
    end
    object qcetakkualitas: TStringField
      FieldName = 'kualitas'
      Required = True
      Size = 15
    end
    object qcetakid_warna: TIntegerField
      FieldName = 'id_warna'
      Required = True
    end
    object qcetakid_kain: TIntegerField
      FieldName = 'id_kain'
      Required = True
    end
    object qcetakno_detail: TIntegerField
      FieldName = 'no_detail'
    end
    object qcetakbody: TStringField
      FieldName = 'body'
      Required = True
      Size = 25
    end
    object qcetakmesin: TStringField
      FieldName = 'mesin'
      Required = True
      Size = 25
    end
    object qcetakgramasi: TStringField
      FieldName = 'gramasi'
      Required = True
      Size = 25
    end
    object qcetaklebar: TStringField
      FieldName = 'lebar'
      Required = True
      Size = 25
    end
    object qcetaknama_kain: TStringField
      FieldName = 'nama_kain'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object qcetakjenis_warna: TStringField
      FieldName = 'jenis_warna'
      ReadOnly = True
      Required = True
      Size = 75
    end
    object qcetakjenis: TStringField
      FieldName = 'jenis'
      ReadOnly = True
      Required = True
      Size = 25
    end
    object qcetakkode_spk: TStringField
      FieldName = 'kode_spk'
      Required = True
      Size = 25
    end
    object qcetakhargaasli: TFloatField
      FieldName = 'hargaasli'
      Required = True
    end
    object qcetaksubtotal: TFloatField
      FieldName = 'subtotal'
      ReadOnly = True
    end
    object qcetakharga: TFloatField
      FieldName = 'harga'
      ReadOnly = True
    end
    object qcetaktotal: TFloatField
      FieldName = 'total'
      ReadOnly = True
    end
  end
  object dsqcetak: TUniDataSource
    Left = 633
    Top = 326
  end
  object udata: TUniQuery
    Connection = server
    SQL.Strings = (
      
        'select no_pengeluaran,kualitas,id_Warna,id_kain,gramasi,lebar,me' +
        'sin,harga,pd.no_detail,group_concat(concat(`pd`.`no_roll`,'#39' - '#39',' +
        '`pd`.`berat`) separator '#39'  ,  '#39') AS `roll` '
      
        'from perincian_pengeluaranstok pd join detail_pengeluaranstok dp' +
        ' using(no_detail)  '
      
        ' group by no_pengeluaran,kualitas,id_warna,id_kain,gramasi,lebar' +
        ',mesin,harga')
    MasterSource = dsqdetailpenjualan
    MasterFields = 
      'no_pengeluaran;kualitas;id_warna;id_kain;gramasi;lebar;mesin;har' +
      'gaasli'
    DetailFields = 
      'no_pengeluaran;kualitas;id_Warna;id_kain;gramasi;lebar;mesin;har' +
      'ga'
    Left = 545
    Top = 76
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'no_pengeluaran'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'kualitas'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_warna'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'id_kain'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'gramasi'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'lebar'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'mesin'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'hargaasli'
        Value = nil
      end>
    object udatano_pengeluaran: TStringField
      FieldName = 'no_pengeluaran'
      Required = True
      Size = 15
    end
    object udatakualitas: TStringField
      FieldName = 'kualitas'
      Required = True
      Size = 15
    end
    object udataid_Warna: TIntegerField
      FieldName = 'id_Warna'
      Required = True
    end
    object udataid_kain: TIntegerField
      FieldName = 'id_kain'
      Required = True
    end
    object udatagramasi: TStringField
      FieldName = 'gramasi'
      Required = True
      Size = 25
    end
    object udatalebar: TStringField
      FieldName = 'lebar'
      Required = True
      Size = 25
    end
    object udatamesin: TStringField
      FieldName = 'mesin'
      Required = True
      Size = 25
    end
    object udataharga: TFloatField
      FieldName = 'harga'
      Required = True
    end
    object udatano_detail: TIntegerField
      FieldName = 'no_detail'
      ReadOnly = True
      Required = True
    end
    object udataroll: TMemoField
      FieldName = 'roll'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object dsudata: TUniDataSource
    Left = 545
    Top = 132
  end
  object q3: TUniQuery
    Connection = server
    Left = 40
    Top = 120
  end
  object q4: TUniQuery
    Connection = server
    Left = 96
    Top = 120
  end
  object qclosing: TUniQuery
    Connection = server
    SQL.Strings = (
      'select * from v_closing')
    Left = 32
    Top = 264
    object qclosingtgl: TDateField
      FieldName = 'tgl'
    end
    object qclosingcash: TFloatField
      FieldName = 'cash'
      Required = True
      DisplayFormat = '#,#0.;(#,#0.);#,#0'
    end
    object qclosingcc: TFloatField
      FieldName = 'cc'
      Required = True
      DisplayFormat = '#,#0.;(#,#0.);#,#0'
    end
    object qclosingmandiri: TFloatField
      FieldName = 'mandiri'
      Required = True
      DisplayFormat = '#,#0.;(#,#0.);#,#0'
    end
    object qclosingbca: TFloatField
      FieldName = 'bca'
      Required = True
      DisplayFormat = '#,#0.;(#,#0.);#,#0'
    end
    object qclosinglainnya: TFloatField
      FieldName = 'lainnya'
      Required = True
      DisplayFormat = '#,#0.;(#,#0.);#,#0'
    end
  end
  object dsqclosing: TUniDataSource
    DataSet = qclosing
    Left = 88
    Top = 272
  end
  object qdetailclosing: TUniQuery
    Connection = server
    SQL.Strings = (
      
        'SELECT cast(uc.tanggal_pemasangan as date) as tgl,nama,no_pengel' +
        'uaran,jumlah_uang,sumber,IFNULL(uc.keterangan,'#39#39') AS ket FROM ua' +
        'ng_customer uc JOIN n_junctpenjualan nj ON nj.no_uangcustomer=uc' +
        '.no '
      
        'JOIN penjualan_kainstok pks ON pks.no_pengeluaran=nj.id_nopembel' +
        'ian JOIN customer c ON c.id_customer=pks.id_customer'
      'LEFT JOIN y_detailclosing yd ON yd.no_uangcustomer=uc.no '
      
        'WHERE (sumber='#39'CASH'#39' OR sumber='#39'DEBIT'#39' OR sumber='#39'CC'#39') AND yd.no' +
        ' IS NULL  ORDER BY no_pengeluaran,sumber')
    Left = 24
    Top = 320
    object qdetailclosingnama: TStringField
      FieldName = 'nama'
      Required = True
      Size = 100
    end
    object qdetailclosingno_pengeluaran: TStringField
      FieldName = 'no_pengeluaran'
      ReadOnly = True
      Required = True
      Size = 25
    end
    object qdetailclosingjumlah_uang: TFloatField
      FieldName = 'jumlah_uang'
      ReadOnly = True
      DisplayFormat = '#,#0.;(#,#0.);#,#0'
    end
    object qdetailclosingsumber: TStringField
      FieldName = 'sumber'
      ReadOnly = True
      Size = 100
    end
    object qdetailclosingket: TStringField
      FieldName = 'ket'
      ReadOnly = True
      Required = True
      Size = 200
    end
    object qdetailclosingtgl: TDateField
      FieldName = 'tgl'
      ReadOnly = True
    end
  end
  object dsqdetailclosing: TUniDataSource
    DataSet = qdetailclosing
    Left = 112
    Top = 320
  end
  object qpenjualan5: TUniQuery
    Connection = server
    SQL.Strings = (
      'SELECT pk.tanggal,id_transaksi,nama FROM penjualan_kainstok pk '
      
        'JOIN n_penjualan np ON pk.no_pengeluaran=np.id_transaksi JOIN cu' +
        'stomer c ON c.id_customer=pk.id_customer'
      
        'LEFT JOIN y_detailclosing yd ON yd.no_transaksi=pk.no_pengeluara' +
        'n '
      'WHERE yd.no IS NULL'
      'GROUP BY id_transaksi ORDER BY pk.tanggal')
    AfterScroll = qpenjualan5AfterScroll
    Left = 24
    Top = 376
    object qpenjualan5tanggal: TDateField
      FieldName = 'tanggal'
      Required = True
    end
    object qpenjualan5id_transaksi: TStringField
      FieldName = 'id_transaksi'
      ReadOnly = True
      Size = 100
    end
    object qpenjualan5nama: TStringField
      FieldName = 'nama'
      ReadOnly = True
      Required = True
      Size = 100
    end
  end
  object dsqpenjualan5: TUniDataSource
    DataSet = qpenjualan5
    Left = 24
    Top = 440
  end
  object qdetail5: TUniQuery
    Connection = server
    SQL.Strings = (
      
        'SELECT no_transaksi AS no_penjualan,jenis,nominal,'#39#39' as ket FROM' +
        ' n_kartupiutang nk WHERE jenis!='#39'PEMBAYARAN'#39' '
      'UNION'
      
        'SELECT no_penjualan,jenis,nominal,uc.keterangan as ket FROM n_ka' +
        'rtupiutang nk JOIN uang_customer uc ON uc.no=nk.id_transaksi '
      ''
      'ORDER BY no_penjualan ASC')
    DetailFields = 'no_penjualan'
    Left = 88
    Top = 376
    object qdetail5no_penjualan: TStringField
      FieldName = 'no_penjualan'
      ReadOnly = True
      Size = 100
    end
    object qdetail5jenis: TStringField
      FieldName = 'jenis'
      ReadOnly = True
      Size = 100
    end
    object qdetail5nominal: TFloatField
      FieldName = 'nominal'
      ReadOnly = True
    end
    object qdetail5ket: TStringField
      FieldName = 'ket'
      ReadOnly = True
      Size = 200
    end
  end
  object dsqdetail5: TUniDataSource
    DataSet = qdetail5
    Left = 92
    Top = 440
  end
  object qsaldopiutang: TUniQuery
    Connection = server
    SQL.Strings = (
      'select * from v_saldopiutang'
      'order by nama asc')
    Left = 296
    Top = 432
    object qsaldopiutangid_customer: TIntegerField
      FieldName = 'id_customer'
    end
    object qsaldopiutangnama: TStringField
      FieldName = 'nama'
      Required = True
      Size = 100
    end
    object qsaldopiutangtotal: TFloatField
      FieldName = 'total'
      DisplayFormat = '#,#0.;(#,#0.);#,#0'
    end
  end
  object dsqsaldopiutang: TUniDataSource
    DataSet = qsaldopiutang
    Left = 408
    Top = 432
  end
  object qdetailsaldopiutang: TUniQuery
    Connection = server
    SQL.Strings = (
      'SET @s=0;     '
      
        ' SELECT id_customer,tanggal,jenis,keterangan,@k:=IF(nominal > 0,' +
        'nominal,0) AS debet,@d:=IF(nominal < 0,nominal*-1,0) AS kredit,@' +
        's:=@s+@k-@d AS saldo '
      ' FROM n_kartupiutang nk WHERE  nominal!=0  ORDER BY tanggal ASC')
    MasterSource = dsqsaldopiutang
    MasterFields = 'id_customer'
    DetailFields = 'id_customer'
    Left = 296
    Top = 376
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_customer'
        Value = nil
      end>
    object qdetailsaldopiutangtanggal: TDateTimeField
      FieldName = 'tanggal'
    end
    object qdetailsaldopiutangjenis: TStringField
      FieldName = 'jenis'
      Size = 100
    end
    object qdetailsaldopiutangketerangan: TStringField
      FieldName = 'keterangan'
      Size = 200
    end
    object qdetailsaldopiutangdebet: TFloatField
      FieldName = 'debet'
      ReadOnly = True
    end
    object qdetailsaldopiutangkredit: TFloatField
      FieldName = 'kredit'
      ReadOnly = True
    end
    object qdetailsaldopiutangsaldo: TFloatField
      FieldName = 'saldo'
      ReadOnly = True
    end
    object qdetailsaldopiutangid_customer: TIntegerField
      FieldName = 'id_customer'
    end
  end
  object dsqdetailsaldopiutang: TUniDataSource
    DataSet = qdetailsaldopiutang
    Left = 408
    Top = 376
  end
  object qkembalidana: TUniQuery
    Connection = server
    SQL.Strings = (
      
        'select * from n_piutanglainlain np join customer c using(id_cust' +
        'omer)'
      
        'join kas_bank kb on kb.kode_kas=np.kode_kas order by tanggal des' +
        'c')
    Left = 176
    Top = 440
    object qkembalidanaid_customer: TIntegerField
      FieldName = 'id_customer'
    end
    object qkembalidanano: TIntegerField
      FieldName = 'no'
    end
    object qkembalidanatanggal: TDateTimeField
      FieldName = 'tanggal'
    end
    object qkembalidananominal: TFloatField
      FieldName = 'nominal'
      DisplayFormat = ',0'
    end
    object qkembalidanarekening_tujuan: TStringField
      FieldName = 'rekening_tujuan'
      Size = 100
    end
    object qkembalidanabank_tujuan: TStringField
      FieldName = 'bank_tujuan'
      Size = 100
    end
    object qkembalidanakode_kas: TIntegerField
      FieldName = 'kode_kas'
    end
    object qkembalidanacatatan: TStringField
      FieldName = 'catatan'
      Size = 250
    end
    object qkembalidanaid_user: TIntegerField
      FieldName = 'id_user'
    end
    object qkembalidananama: TStringField
      FieldName = 'nama'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object qkembalidanatelepon: TStringField
      FieldName = 'telepon'
      ReadOnly = True
      Required = True
      Size = 25
    end
    object qkembalidanafaximile: TStringField
      FieldName = 'faximile'
      ReadOnly = True
      Required = True
      Size = 25
    end
    object qkembalidanaemail: TStringField
      FieldName = 'email'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object qkembalidanacontact_person: TStringField
      FieldName = 'contact_person'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object qkembalidanaalamat: TStringField
      FieldName = 'alamat'
      ReadOnly = True
      Required = True
      Size = 250
    end
    object qkembalidanastatus: TStringField
      FieldName = 'status'
      ReadOnly = True
      Required = True
      Size = 25
    end
    object qkembalidananpwp: TStringField
      FieldName = 'npwp'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object qkembalidanatermin: TIntegerField
      FieldName = 'termin'
      ReadOnly = True
      Required = True
    end
    object qkembalidanakredit_limit: TFloatField
      FieldName = 'kredit_limit'
      ReadOnly = True
      Required = True
    end
    object qkembalidanaid_salesman: TIntegerField
      FieldName = 'id_salesman'
      ReadOnly = True
      Required = True
    end
    object qkembalidanaid_kategoricustomer: TIntegerField
      FieldName = 'id_kategoricustomer'
      ReadOnly = True
      Required = True
    end
    object qkembalidanaaktif: TIntegerField
      FieldName = 'aktif'
      ReadOnly = True
      Required = True
    end
    object qkembalidanakota: TStringField
      FieldName = 'kota'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object qkembalidanakode_kas_1: TIntegerField
      FieldName = 'kode_kas_1'
      ReadOnly = True
    end
    object qkembalidananama_kas: TStringField
      FieldName = 'nama_kas'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object qkembalidanaalamat_1: TStringField
      FieldName = 'alamat_1'
      ReadOnly = True
      Required = True
      Size = 240
    end
    object qkembalidanar_d: TStringField
      FieldName = 'r_d'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object qkembalidanano_rekening: TStringField
      FieldName = 'no_rekening'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object qkembalidanabank: TStringField
      FieldName = 'bank'
      ReadOnly = True
      Required = True
      Size = 25
    end
    object qkembalidanaatas_nama: TStringField
      FieldName = 'atas_nama'
      ReadOnly = True
      Size = 100
    end
    object qkembalidanastatus_rekening: TStringField
      FieldName = 'status_rekening'
      ReadOnly = True
      Size = 100
    end
  end
  object dsqkembalidana: TUniDataSource
    DataSet = qkembalidana
    Left = 176
    Top = 376
  end
  object qdataclosing: TUniQuery
    Connection = server
    SQL.Strings = (
      
        'SELECT * FROM y_closingkasir yc LEFT JOIN y_accacounting ya ON y' +
        'c.no=ya.id_closing'
      'WHERE ya.no IS NULL')
    Left = 192
    Top = 264
    object qdataclosingno: TIntegerField
      FieldName = 'no'
    end
    object qdataclosingtanggal: TDateTimeField
      FieldName = 'tanggal'
    end
    object qdataclosinguser: TIntegerField
      FieldName = 'user'
    end
    object qdataclosingjenis: TStringField
      FieldName = 'jenis'
      Size = 100
    end
    object qdataclosingkode_kas: TIntegerField
      FieldName = 'kode_kas'
    end
    object qdataclosingnominal: TFloatField
      FieldName = 'nominal'
    end
    object qdataclosingstatus: TIntegerField
      FieldName = 'status'
    end
    object qdataclosingno_1: TIntegerField
      FieldName = 'no_1'
      ReadOnly = True
    end
    object qdataclosingtanggal_1: TDateTimeField
      FieldName = 'tanggal_1'
      ReadOnly = True
    end
    object qdataclosingid_closing: TIntegerField
      FieldName = 'id_closing'
      ReadOnly = True
    end
    object qdataclosingcatatan: TStringField
      FieldName = 'catatan'
      ReadOnly = True
      Size = 200
    end
    object qdataclosingid_user: TIntegerField
      FieldName = 'id_user'
      ReadOnly = True
    end
  end
  object qdatadetailclosing: TUniQuery
    Connection = server
    SQL.Strings = (
      
        'SELECT no_transaksi,nama,sumber,keterangan,yd.jumlah FROM y_deta' +
        'ilclosing yd '
      
        'join uang_customer uc on uc.no=yd.no_uangcustomer join customer ' +
        'using(id_customer)')
    Left = 192
    Top = 320
    object qdatadetailclosingno_transaksi: TStringField
      FieldName = 'no_transaksi'
      Size = 100
    end
    object qdatadetailclosingnama: TStringField
      FieldName = 'nama'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object qdatadetailclosingsumber: TStringField
      FieldName = 'sumber'
      ReadOnly = True
      Size = 100
    end
    object qdatadetailclosingketerangan: TStringField
      FieldName = 'keterangan'
      ReadOnly = True
      Size = 200
    end
    object qdatadetailclosingjumlah: TFloatField
      FieldName = 'jumlah'
    end
  end
  object dsqdataclosing: TUniDataSource
    DataSet = qdataclosing
    Left = 320
    Top = 264
  end
  object dsqdatadetailclosing: TUniDataSource
    DataSet = qdatadetailclosing
    Left = 320
    Top = 320
  end
  object qlappemasangan: TUniQuery
    Connection = server
    SQL.Strings = (
      
        'SELECT ks.id_transaksi,yr.no,ks.tanggal,ks.keterangan,ks.cabang,' +
        'ks.jumlah,IFNULL(c.nama,IFNULL(c2.nama,IFNULL(yp.keterangan,'#39'-'#39')' +
        ')) AS nama,ks.saldo_akhir,mutasi,'
      
        'IF(mutasi='#39'CR'#39',ks.jumlah,0) AS kredit,IF(mutasi='#39'DB'#39',ks.jumlah,0' +
        ') AS debet,d.no AS nodetailkonfirmasi,ks.id_transaksi AS noreken' +
        'ing ,'
      'IFNULL(nt.status, '#39#39') AS STATUS'
      
        '    FROM kas_bank_import ks LEFT JOIN y_relasi_konfirmasidanmuta' +
        'si yr ON id_transaksi=id_mutasi                      '
      
        '    LEFT JOIN detail_konfirmasipembayaran d ON id_konfirmasi=d.n' +
        'o LEFT JOIN order_pembelian op USING(no_order)     '
      '    LEFT JOIN customer c USING(id_customer)  '
      
        '    LEFT JOIN s_penjualan_katalog sp ON sp.no_penjualan=d.`no_or' +
        'der`'
      '    LEFT JOIN customer c2 ON c2.id_customer=sp.id_customer'
      
        '    LEFT JOIN y_pemasanganmanual yp ON yp.id_rekeningkoran=ks.id' +
        '_transaksi'
      
        'LEFT JOIN n_status_pemasangan nt ON nt.no_kasbank=yr.id_mutasi A' +
        'ND nt.id_konfirmasi=yr.`id_konfirmasi`'
      'GROUP BY yr.id_mutasi,yr.`id_konfirmasi`')
    Left = 292
    Top = 116
    object qlappemasanganno: TIntegerField
      FieldName = 'no'
    end
    object qlappemasangantanggal: TDateField
      FieldName = 'tanggal'
      ReadOnly = True
      Required = True
    end
    object qlappemasanganketerangan: TStringField
      FieldName = 'keterangan'
      ReadOnly = True
      Required = True
      Size = 250
    end
    object qlappemasangancabang: TStringField
      FieldName = 'cabang'
      ReadOnly = True
      Required = True
      Size = 250
    end
    object qlappemasanganjumlah: TFloatField
      FieldName = 'jumlah'
      ReadOnly = True
      Required = True
      DisplayFormat = ',0.00'
    end
    object qlappemasangannama: TStringField
      FieldName = 'nama'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object qlappemasangansaldo_akhir: TFloatField
      FieldName = 'saldo_akhir'
      ReadOnly = True
      Required = True
      DisplayFormat = ',0.00'
    end
    object qlappemasanganmutasi: TStringField
      FieldName = 'mutasi'
      ReadOnly = True
      Required = True
      Size = 250
    end
    object qlappemasangankredit: TFloatField
      FieldName = 'kredit'
      ReadOnly = True
      Required = True
    end
    object qlappemasangandebet: TFloatField
      FieldName = 'debet'
      ReadOnly = True
      Required = True
    end
    object qlappemasangannodetailkonfirmasi: TIntegerField
      FieldName = 'nodetailkonfirmasi'
      ReadOnly = True
    end
    object qlappemasangannorekening: TIntegerField
      FieldName = 'norekening'
      ReadOnly = True
    end
    object qlappemasanganSTATUS: TStringField
      FieldName = 'STATUS'
      ReadOnly = True
      Required = True
      Size = 255
    end
    object qlappemasanganid_transaksi: TIntegerField
      FieldName = 'id_transaksi'
    end
  end
  object dsqlappemasangan: TUniDataSource
    DataSet = qlappemasangan
    Left = 292
    Top = 172
  end
  object qrekomendasi: TUniQuery
    Connection = server
    SQL.Strings = (
      ''
      
        '-- SELECT '#39'True'#39' AS pilih,id_customer,kb2.kode_kas,dk.no,no_orde' +
        'r,bank,kb2.no_rekening AS bank_transferan,id_transaksi,ki.tangga' +
        'l,ki.keterangan,dk.atas_nama,dk.customer,'
      
        '-- dk.bank_konfirmasi,no_order,dk.jumlah_uang,tanggal_transfer,a' +
        'dmin'
      '-- FROM kas_bank_import ki'
      '-- JOIN kas_bank kb2 ON kb2.kode_kas=ki.kode_kas'
      
        '-- LEFT JOIN y_relasi_konfirmasidanmutasi yr2 ON yr2.`id_mutasi`' +
        '=ki.id_transaksi'
      '-- LEFT JOIN '
      
        '-- (SELECT id_customer,dkp.no,dkp.atas_nama,c.nama AS customer,n' +
        'o_rekening AS bank_konfirmasi,no_order,dkp.jumlah_uang,tanggal_t' +
        'ransfer,u.nama AS admin'
      '-- FROM  detail_konfirmasipembayaran dkp   '
      '-- JOIN order_pembelian oc USING(no_order)'
      
        '-- JOIN customer c USING(id_customer) LEFT JOIN `user` u ON u.id' +
        '_user=oc.id_karyawan'
      
        '-- JOIN kas_bank kb3 ON kb3.kode_kas=dkp.kode_kas LEFT JOIN y_re' +
        'lasi_konfirmasidanmutasi yr ON yr.`id_konfirmasi`=dkp.`no`'
      
        '-- WHERE yr.no IS NULL AND dkp.`tanggal_transfer` >= '#39'2019-03-13' +
        ' 00:00:00'#39' ) AS dk '
      
        '-- ON CONCAT(dk.jumlah_uang,dk.bank_konfirmasi)=CONCAT(ki.jumlah' +
        ',kb2.no_rekening)'
      '-- '
      
        '-- WHERE customer IS NOT NULL AND yr2.`no` IS NULL GROUP BY id_t' +
        'ransaksi'
      ''
      ''
      
        'SELECT '#39'True'#39' AS pilih,id_customer,kb2.kode_kas,dk.no,no_order,b' +
        'ank,kb2.no_rekening AS bank_transferan,id_transaksi,ki.tanggal,k' +
        'i.keterangan,dk.atas_nama,dk.customer,'
      
        'dk.bank_konfirmasi,no_order,dk.jumlah_uang,tanggal_transfer,admi' +
        'n'
      'FROM kas_bank_import ki'
      'JOIN kas_bank kb2 ON kb2.kode_kas=ki.kode_kas'
      'JOIN '
      
        '(SELECT id_customer,dkp.no,dkp.atas_nama,c.nama AS customer,no_r' +
        'ekening AS bank_konfirmasi,no_order,dkp.jumlah_uang,tanggal_tran' +
        'sfer,u.nama AS admin'
      'FROM  detail_konfirmasipembayaran dkp   '
      'JOIN order_pembelian oc USING(no_order)'
      
        'JOIN customer c USING(id_customer) LEFT JOIN `user` u ON u.id_us' +
        'er=oc.id_karyawan'
      
        'JOIN kas_bank kb3 ON kb3.kode_kas=dkp.kode_kas LEFT JOIN y_relas' +
        'i_konfirmasidanmutasi yr ON yr.`id_konfirmasi`=dkp.`no`'
      
        'WHERE yr.no IS NULL AND dkp.`tanggal_transfer` >= '#39'2019-03-13 00' +
        ':00:00'#39' ) AS dk '
      
        'ON dk.jumlah_uang=ki.jumlah AND dk.bank_konfirmasi=kb2.no_rekeni' +
        'ng'
      
        '-- ON CONCAT(dk.jumlah_uang,dk.bank_konfirmasi)=CONCAT(ki.jumlah' +
        ',kb2.no_rekening)'
      
        'LEFT JOIN y_relasi_konfirmasidanmutasi yr2 ON yr2.`id_mutasi`=ki' +
        '.id_transaksi'
      
        'WHERE customer IS NOT NULL AND yr2.`no` IS NULL GROUP BY id_tran' +
        'saksi')
    Left = 752
    Top = 368
    object qrekomendasibank_transferan: TStringField
      FieldName = 'bank_transferan'
      Required = True
      Size = 50
    end
    object qrekomendasiid_transaksi: TIntegerField
      FieldName = 'id_transaksi'
      ReadOnly = True
    end
    object qrekomendasitanggal: TDateField
      FieldName = 'tanggal'
      ReadOnly = True
      Required = True
      DisplayFormat = 'dd-mmm-yyyy'
    end
    object qrekomendasiketerangan: TStringField
      FieldName = 'keterangan'
      ReadOnly = True
      Required = True
      Size = 250
    end
    object qrekomendasiatas_nama: TStringField
      FieldName = 'atas_nama'
      ReadOnly = True
      Size = 200
    end
    object qrekomendasicustomer: TStringField
      FieldName = 'customer'
      ReadOnly = True
      Size = 100
    end
    object qrekomendasibank_konfirmasi: TStringField
      FieldName = 'bank_konfirmasi'
      ReadOnly = True
      Size = 50
    end
    object qrekomendasino_order: TStringField
      FieldName = 'no_order'
      ReadOnly = True
      Size = 150
    end
    object qrekomendasijumlah_uang: TFloatField
      FieldName = 'jumlah_uang'
      ReadOnly = True
      DisplayFormat = ',0'
    end
    object qrekomendasitanggal_transfer: TDateTimeField
      FieldName = 'tanggal_transfer'
      ReadOnly = True
    end
    object qrekomendasiadmin: TStringField
      FieldName = 'admin'
      ReadOnly = True
      Size = 100
    end
    object qrekomendasibank: TStringField
      FieldName = 'bank'
      ReadOnly = True
      Required = True
      Size = 25
    end
    object qrekomendasino_order_1: TStringField
      FieldName = 'no_order_1'
      Size = 150
    end
    object qrekomendasikode_kas: TIntegerField
      FieldName = 'kode_kas'
    end
    object qrekomendasino: TIntegerField
      FieldName = 'no'
      ReadOnly = True
    end
    object qrekomendasiid_customer: TIntegerField
      FieldName = 'id_customer'
    end
    object qrekomendasipilih: TStringField
      FieldName = 'pilih'
      Size = 4
    end
  end
  object dsqrekomendasi: TUniDataSource
    DataSet = qrekomendasi
    Left = 648
    Top = 416
  end
  object qpemasanganmanual: TUniQuery
    Connection = server
    SQL.Strings = (
      
        'SELECT yp.no as idxno,no_rekening,bank,nominal,tanggal_pemasanga' +
        'n,kategori,yp.keterangan,u.nama AS admin'
      
        'FROM y_pemasanganmanual yp JOIN kas_bank_import kbi ON kbi.id_tr' +
        'ansaksi=yp.id_rekeningkoran'
      
        'JOIN kas_bank kb ON kb.kode_kas=kbi.kode_kas JOIN user u ON u.id' +
        '_user=yp.`id_karyawan`')
    Left = 200
    Top = 120
    object qpemasanganmanualno_rekening: TStringField
      FieldName = 'no_rekening'
      Required = True
      Size = 50
    end
    object qpemasanganmanualbank: TStringField
      FieldName = 'bank'
      Required = True
      Size = 25
    end
    object qpemasanganmanualnominal: TFloatField
      FieldName = 'nominal'
      ReadOnly = True
      DisplayFormat = ',0'
    end
    object qpemasanganmanualtanggal_pemasangan: TDateTimeField
      FieldName = 'tanggal_pemasangan'
      ReadOnly = True
    end
    object qpemasanganmanualkategori: TStringField
      FieldName = 'kategori'
      ReadOnly = True
      Size = 200
    end
    object qpemasanganmanualketerangan: TStringField
      FieldName = 'keterangan'
      ReadOnly = True
      Size = 200
    end
    object qpemasanganmanualadmin: TStringField
      FieldName = 'admin'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object qpemasanganmanualidxno: TIntegerField
      FieldName = 'idxno'
    end
  end
  object dsqpemasanganmanual: TUniDataSource
    DataSet = qpemasanganmanual
    Left = 224
    Top = 184
  end
  object qlapolshop: TUniQuery
    Connection = server
    SQL.Strings = (
      'select id_transaksi,tanggal,keterangan,jumlah,keterangan2'
      
        ' from kas_bank_import where keterangan2='#39'SHOPEE'#39' or keterangan2=' +
        #39'TOKOPEDIA'#39' order by tanggal desc limit 100')
    Left = 466
    Top = 71
    object qlapolshopid_transaksi: TIntegerField
      FieldName = 'id_transaksi'
    end
    object qlapolshoptanggal: TDateField
      FieldName = 'tanggal'
      Required = True
    end
    object qlapolshopketerangan: TStringField
      FieldName = 'keterangan'
      Required = True
      Size = 250
    end
    object qlapolshopjumlah: TFloatField
      FieldName = 'jumlah'
      Required = True
      DisplayFormat = ',0'
    end
    object qlapolshopketerangan2: TStringField
      FieldName = 'keterangan2'
      Size = 250
    end
  end
  object dsqlapolshop: TUniDataSource
    DataSet = qlapolshop
    Left = 465
    Top = 135
  end
  object dsqcekkonfirmasi: TUniDataSource
    DataSet = qcekkonfirmasi
    Left = 667
    Top = 61
  end
  object qcekkonfirmasi: TUniQuery
    Connection = server
    SQL.Strings = (
      
        'select d.*, if(id_konfirmasi is null, '#39#39','#39'ADA'#39') as sts from deta' +
        'il_konfirmasipembayaran d left join y_relasi_konfirmasidanmutasi' +
        ' on d.no=id_konfirmasi')
    MasterSource = dsqkonfirmasi
    MasterFields = 'no_order'
    DetailFields = 'no_order'
    FilterOptions = [foCaseInsensitive]
    Left = 748
    Top = 201
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'no_order'
        Value = nil
      end>
    object qcekkonfirmasino: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'no'
    end
    object qcekkonfirmasino_order: TStringField
      FieldName = 'no_order'
      Size = 150
    end
    object qcekkonfirmasiatas_nama: TStringField
      FieldName = 'atas_nama'
      Size = 200
    end
    object qcekkonfirmasibank: TStringField
      FieldName = 'bank'
      Size = 150
    end
    object qcekkonfirmasijumlah_uang: TFloatField
      FieldName = 'jumlah_uang'
      DisplayFormat = ',0.00'
    end
    object qcekkonfirmasitanggal_transfer: TDateTimeField
      FieldName = 'tanggal_transfer'
      DisplayFormat = 'dd-mmm-yyyy'
    end
    object qcekkonfirmasistatus: TIntegerField
      FieldName = 'status'
    end
    object qcekkonfirmasikode_kas: TIntegerField
      FieldName = 'kode_kas'
    end
    object qcekkonfirmasiid_karyawan: TIntegerField
      FieldName = 'id_karyawan'
    end
    object qcekkonfirmasino_konfirmasi: TIntegerField
      FieldName = 'no_konfirmasi'
    end
    object qcekkonfirmasistatus_verifikasi: TStringField
      FieldName = 'status_verifikasi'
      Size = 150
    end
    object qcekkonfirmasists: TStringField
      FieldName = 'sts'
      ReadOnly = True
      Required = True
      Size = 3
    end
  end
  object qhapuskonfirmasi: TUniQuery
    Connection = server
    SQL.Strings = (
      
        'SELECT kp.no as no,kp.no AS nokonfirmasi,kp.no_order,c.nama,atas' +
        '_nama,jumlah_uang,kp.tanggal_transfer AS tanggal,bank,u.nama as ' +
        'admin,'
      'ifnull(ca.`catatan`,'#39#39') as catatan FROM '
      
        'detail_konfirmasipembayaran kp JOIN order_pembelian op USING(no_' +
        'order) JOIN customer c USING(id_customer)'
      'join user u on u.`id_user`=op.id_karyawan'
      
        'left join y_relasi_konfirmasidanmutasi yr on yr.id_konfirmasi=kp' +
        '.no'
      'left join catatan_admin ca on op.no_order=ca.`no_order`'
      
        'WHERE yr.no is null and kp.tanggal_transfer >'#39'2019-03-01 00:00:0' +
        '0'#39
      
        'and kp.no in (select no_konfirmasi from n_hapus_konfirmasi)  ORD' +
        'ER BY kp.tanggal_transfer ASC')
    FilterOptions = [foCaseInsensitive]
    Left = 705
    Top = 326
    object qhapuskonfirmasino: TIntegerField
      FieldName = 'no'
    end
    object qhapuskonfirmasinokonfirmasi: TIntegerField
      FieldName = 'nokonfirmasi'
    end
    object qhapuskonfirmasino_order: TStringField
      FieldName = 'no_order'
      Size = 150
    end
    object qhapuskonfirmasinama: TStringField
      FieldName = 'nama'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object qhapuskonfirmasiatas_nama: TStringField
      FieldName = 'atas_nama'
      Size = 200
    end
    object qhapuskonfirmasijumlah_uang: TFloatField
      FieldName = 'jumlah_uang'
      DisplayFormat = ',0.00'
    end
    object qhapuskonfirmasitanggal: TDateTimeField
      FieldName = 'tanggal'
      DisplayFormat = 'yyyy-mm-dd'
    end
    object qhapuskonfirmasibank: TStringField
      FieldName = 'bank'
      Size = 150
    end
    object qhapuskonfirmasiadmin: TStringField
      FieldName = 'admin'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object qhapuskonfirmasicatatan: TStringField
      FieldName = 'catatan'
      ReadOnly = True
      Required = True
      Size = 500
    end
  end
  object qdshapuskonfirmasi: TUniDataSource
    DataSet = qhapuskonfirmasi
    Left = 709
    Top = 278
  end
  object qperapihan_kas: TUniQuery
    Connection = server
    SQL.Strings = (
      
        'SELECT * FROM buku_besar WHERE dari='#39'HUTANG LAIN-LAIN'#39' AND keter' +
        'angan NOT LIKE '#39'%#%'#39)
    Left = 776
    Top = 424
    object qperapihan_kasno_transaksi: TStringField
      FieldName = 'no_transaksi'
      Required = True
      Size = 25
    end
    object qperapihan_kastanggal: TDateField
      FieldName = 'tanggal'
      Required = True
      DisplayFormat = 'dd-mmm-yyyy'
    end
    object qperapihan_kasjenis: TStringField
      FieldName = 'jenis'
      Required = True
      Size = 25
    end
    object qperapihan_kasdari: TStringField
      FieldName = 'dari'
      Required = True
      Size = 100
    end
    object qperapihan_kasnocg: TStringField
      FieldName = 'nocg'
      Required = True
      Size = 50
    end
    object qperapihan_kasbankcg: TStringField
      FieldName = 'bankcg'
      Required = True
      Size = 50
    end
    object qperapihan_kaskode_kas: TIntegerField
      FieldName = 'kode_kas'
      Required = True
    end
    object qperapihan_kasjumlah: TFloatField
      FieldName = 'jumlah'
      Required = True
      DisplayFormat = '0,'
    end
    object qperapihan_kaskode_perkiraan: TIntegerField
      FieldName = 'kode_perkiraan'
      Required = True
    end
    object qperapihan_kasketerangan: TStringField
      FieldName = 'keterangan'
      Required = True
      Size = 250
    end
    object qperapihan_kasstatus: TIntegerField
      FieldName = 'status'
      Required = True
    end
    object qperapihan_kastanggal_cair: TDateField
      FieldName = 'tanggal_cair'
      Required = True
      DisplayFormat = 'dd-mmm-yyyy'
    end
    object qperapihan_kasno_urut: TIntegerField
      FieldName = 'no_urut'
      Required = True
      DisplayFormat = '0,'
    end
  end
  object Uperapihan_kas: TUniDataSource
    DataSet = qperapihan_kas
    Left = 760
    Top = 472
  end
  object q5: TUniQuery
    Connection = server
    Left = 128
    Top = 72
  end
  object qlaphutang_lainlain: TUniQuery
    Connection = server
    SQL.Strings = (
      
        'SELECT fr.nama,IFNULL(pn.jml,0)- IFNULL(pg.jml,0) AS saldo FROM ' +
        'buku_besar JOIN fix_reportongkir fr USING(no_transaksi) '
      
        'LEFT JOIN (SELECT nama,SUM(jumlah) AS jml FROM buku_besar JOIN f' +
        'ix_reportongkir USING(no_transaksi) WHERE jenis='#39'Penerimaan'#39' AND' +
        ' dari ='#39'hutang lain-lain'#39' GROUP BY nama ) AS pn '
      'ON pn.nama = fr.nama '
      
        'LEFT JOIN (SELECT nama,SUM(jumlah) AS jml FROM buku_besar JOIN f' +
        'ix_reportongkir USING(no_transaksi) WHERE jenis='#39'pengeluaran'#39' AN' +
        'D dari ='#39'hutang lain-lain'#39' GROUP BY nama ) AS pg'
      'ON pg.nama = fr.nama'
      'WHERE dari='#39'HUTANG LAIN-LAIN'#39
      'GROUP BY fr.nama')
    Left = 872
    Top = 424
    object qlaphutang_lainlainnama: TStringField
      FieldName = 'nama'
      Size = 200
    end
    object qlaphutang_lainlainsaldo: TFloatField
      FieldName = 'saldo'
      ReadOnly = True
      Required = True
      DisplayFormat = '0,.00'
    end
  end
  object Ulaphutang_lainlain: TUniDataSource
    DataSet = qlaphutang_lainlain
    Left = 880
    Top = 472
  end
  object qdetail_lphutanglainlain: TUniQuery
    Connection = server
    SQL.Strings = (
      
        'SELECT *, @saldo:=@saldo+(penerimaan-pengeluaran) AS saldo FROM ' +
        '('
      
        'SELECT fr.nama,tanggal,IF(jenis='#39'PENERIMAAN'#39',jumlah,0) AS peneri' +
        'maan,'
      
        'IF(jenis='#39'PENGELUARAN'#39',jumlah,0) AS pengeluaran,no_transaksi,jen' +
        'is'
      
        'FROM buku_besar JOIN fix_reportongkir fr USING(no_transaksi) JOI' +
        'N (SELECT @saldo:=0) AS a '
      ' WHERE dari ='#39'hutang lain-lain'#39' AND kode_kas!=24'
      'ORDER BY tanggal ASC '
      ') AS ll'
      'ORDER BY tanggal ASC ')
    MasterSource = Ulaphutang_lainlain
    MasterFields = 'nama'
    DetailFields = 'nama'
    Left = 872
    Top = 264
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nama'
        Value = nil
      end>
    object qdetail_lphutanglainlainnama: TStringField
      FieldName = 'nama'
      Size = 200
    end
    object qdetail_lphutanglainlaintanggal: TDateField
      FieldName = 'tanggal'
      Required = True
      DisplayFormat = 'dd-mmm-yyyy'
    end
    object qdetail_lphutanglainlainpenerimaan: TFloatField
      FieldName = 'penerimaan'
      Required = True
      DisplayFormat = '0,.00'
    end
    object qdetail_lphutanglainlainpengeluaran: TFloatField
      FieldName = 'pengeluaran'
      Required = True
      DisplayFormat = '0,.00'
    end
    object qdetail_lphutanglainlainno_transaksi: TStringField
      FieldName = 'no_transaksi'
      Required = True
      Size = 25
    end
    object qdetail_lphutanglainlainjenis: TStringField
      FieldName = 'jenis'
      Required = True
      Size = 25
    end
    object qdetail_lphutanglainlainsaldo: TFloatField
      FieldName = 'saldo'
      ReadOnly = True
      DisplayFormat = '0,.00'
    end
  end
  object Udetail_lphutanglainlain: TUniDataSource
    DataSet = qdetail_lphutanglainlain
    Left = 848
    Top = 328
  end
  object qmanual: TUniQuery
    Connection = server
    SQL.Strings = (
      
        'SELECT yp.no,ks.bank as namabank,kb.tanggal,CONCAT(ks.`no_rekeni' +
        'ng`, '#39' # '#39',ks.atas_nama,'#39' # '#39',ks.bank) AS bank,yp.keterangan,yp.' +
        'nominal,yp.`kategori`'
      
        'FROM y_pemasanganmanual yp JOIN kas_bank_import kb ON kb.`id_tra' +
        'nsaksi`=yp.`id_rekeningkoran` JOIN kas_bank ks ON kb.`kode_kas`=' +
        'ks.`kode_kas`'
      
        'WHERE (yp.`kategori`='#39'SETTLEMENT'#39' OR yp.`kategori`='#39'SETORAN TUNA' +
        'I'#39')'
      '  ')
    Left = 864
    Top = 24
    object qmanualno: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'no'
    end
    object qmanualtanggal: TDateField
      FieldName = 'tanggal'
      ReadOnly = True
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object qmanualbank: TStringField
      FieldName = 'bank'
      ReadOnly = True
      Size = 181
    end
    object qmanualketerangan: TStringField
      FieldName = 'keterangan'
      Size = 200
    end
    object qmanualnominal: TFloatField
      FieldName = 'nominal'
      DisplayFormat = '0,0.00'
    end
    object qmanualkategori: TStringField
      FieldName = 'kategori'
      Size = 200
    end
    object qmanualnamabank: TStringField
      FieldName = 'namabank'
      ReadOnly = True
      Required = True
      Size = 25
    end
  end
  object dsqmanual: TUniDataSource
    DataSet = qmanual
    Left = 872
    Top = 80
  end
  object qpasangmanual: TUniQuery
    Connection = server
    SQL.Strings = (
      ''
      
        'SELECT CAST(nt.tanggal AS DATE) AS tanggal,ro.`no_penjualan`,nt.' +
        'bank,jenis_pembayaran,nt.jumlah,'#39'False'#39' as pilih'
      
        'FROM n_temp_kasirdetail nt JOIN relasi_orderdanpenjualan ro USIN' +
        'G(no_order)')
    AfterScroll = qpasangmanualAfterScroll
    Left = 848
    Top = 128
    object qpasangmanualtanggal: TDateField
      FieldName = 'tanggal'
      ReadOnly = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object qpasangmanualno_penjualan: TStringField
      FieldName = 'no_penjualan'
      Size = 100
    end
    object qpasangmanualbank: TStringField
      FieldName = 'bank'
      ReadOnly = True
      Size = 255
    end
    object qpasangmanualjenis_pembayaran: TStringField
      FieldName = 'jenis_pembayaran'
      ReadOnly = True
      Size = 255
    end
    object qpasangmanualjumlah: TFloatField
      FieldName = 'jumlah'
      ReadOnly = True
      DisplayFormat = '0,0.00'
    end
    object qpasangmanualpilih: TStringField
      FieldName = 'pilih'
      Required = True
      Size = 5
    end
  end
  object dsqpasangmanual: TUniDataSource
    DataSet = qpasangmanual
    Left = 856
    Top = 184
  end
  object qjurnalpengeluranongkir: TUniQuery
    Connection = server
    SQL.Strings = (
      
        'SELECT mo.tanggal,mo.no_muat,ro.`no_penjualan`,dp.no_detail AS d' +
        'etail,op.no_order,c.nama,exspedisi,IFNULL(dk.jumlah,0) AS ongkir' +
        ',ek.tipe_pembayaran '
      
        '      FROM order_pembelian op JOIN customer c USING(id_customer)' +
        ' JOIN detail_muat dp '
      
        '      ON dp.no_pengeluaran=op.no_order JOIN muat_orderan mo ON m' +
        'o.`no_muat`=dp.`no_muat` JOIN relasi_orderdanpenjualan ro ON ro.' +
        'no_order=op.no_order '
      '      LEFT JOIN ongkir okr ON okr.no_transaksi=ro.no_penjualan '
      '      LEFT JOIN ekspedisi ek ON ek.nama=op.exspedisi'
      
        '      LEFT JOIN (SELECT no_order,jumlah FROM detail_pengeluarano' +
        'ngkir dpl GROUP BY no_order) AS dk ON dk.no_order=op.no_order   ' +
        '         '
      '       WHERE mo.no_muat='#39'MT011019005'#39' '
      '      UNION '
      
        '      SELECT mo.tanggal,mo.no_muat,op.`no_penjualan`,dp.no_detai' +
        'l AS detail,op.no_penjualan,c.nama,ekspedisi AS exspedisi,IFNULL' +
        '(dk.jumlah,0) AS ongkir,ek.tipe_pembayaran '
      
        '      FROM s_penjualan_katalog op JOIN customer c USING(id_custo' +
        'mer) JOIN detail_muat dp  ON dp.no_pengeluaran=op.no_penjualan'
      '      JOIN muat_orderan mo ON mo.`no_muat`=dp.`no_muat`  '
      '      LEFT JOIN ongkir okr ON okr.no_transaksi=op.no_penjualan '
      '      LEFT JOIN ekspedisi ek ON ek.nama=op.ekspedisi'
      
        '      LEFT JOIN (SELECT no_order,jumlah FROM detail_pengeluarano' +
        'ngkir dpl GROUP BY no_order) AS dk ON dk.no_order=op.no_penjuala' +
        'n      '
      '       WHERE mo.no_muat='#39'MT011019005'#39)
    Left = 968
    Top = 32
    object qjurnalpengeluranongkirtanggal: TDateTimeField
      FieldName = 'tanggal'
      ReadOnly = True
      DisplayFormat = 'dd-mm-yyyy hh:mm:ss'
    end
    object qjurnalpengeluranongkirno_muat: TStringField
      FieldName = 'no_muat'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object qjurnalpengeluranongkirdetail: TIntegerField
      FieldName = 'detail'
      ReadOnly = True
      Required = True
    end
    object qjurnalpengeluranongkirno_order: TStringField
      FieldName = 'no_order'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object qjurnalpengeluranongkirnama: TStringField
      FieldName = 'nama'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object qjurnalpengeluranongkirexspedisi: TStringField
      FieldName = 'exspedisi'
      ReadOnly = True
      Size = 100
    end
    object qjurnalpengeluranongkirongkir: TFloatField
      FieldName = 'ongkir'
      ReadOnly = True
      Required = True
      DisplayFormat = ',0'
    end
    object qjurnalpengeluranongkirtipe_pembayaran: TStringField
      FieldName = 'tipe_pembayaran'
      ReadOnly = True
      Size = 100
    end
    object qjurnalpengeluranongkirid_customer: TIntegerField
      FieldName = 'id_customer'
      ReadOnly = True
    end
    object qjurnalpengeluranongkirno_penjualan: TStringField
      FieldName = 'no_penjualan'
      ReadOnly = True
      Size = 100
    end
  end
  object dsqjurnalpengeluranongkir: TUniDataSource
    DataSet = qjurnalpengeluranongkir
    Left = 976
    Top = 88
  end
  object qjurnalpengeluranlain: TUniQuery
    Connection = server
    SQL.Strings = (
      
        'SELECT n.no_transaksi,n.tanggal,nama_perkiraan,n.keterangan,juml' +
        'ah FROM n_kassementara n JOIN kas_bank USING(kode_kas) JOIN perk' +
        'iraan USING(kode_perkiraan) '
      'WHERE jumlah >0'
      'limit 2')
    Left = 992
    Top = 144
    object qjurnalpengeluranlainnama_perkiraan: TStringField
      FieldName = 'nama_perkiraan'
      Required = True
      Size = 100
    end
    object qjurnalpengeluranlainketerangan: TStringField
      FieldName = 'keterangan'
      ReadOnly = True
      Size = 255
    end
    object qjurnalpengeluranlainjumlah: TFloatField
      FieldName = 'jumlah'
      ReadOnly = True
      DisplayFormat = '0,0.00'
    end
    object qjurnalpengeluranlaintanggal: TDateField
      FieldName = 'tanggal'
      DisplayFormat = 'dd mmm yyyy'
    end
    object qjurnalpengeluranlainno_transaksi: TStringField
      FieldName = 'no_transaksi'
      Required = True
      Size = 255
    end
  end
  object dsqjurnalpengeluranlain: TUniDataSource
    DataSet = qjurnalpengeluranlain
    Left = 1000
    Top = 200
  end
  object qpemasangancus: TUniQuery
    Connection = server
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  buku_besar bb'
      '  LEFT JOIN fix_reportongkir ro'
      '    ON bb.no_transaksi = ro.no_transaksi'
      'WHERE dari = '#39'HUTANG LAIN-LAIN'#39
      '  AND ro.`id_customer` IS NULL')
    Left = 984
    Top = 416
    object qpemasangancusno_transaksi: TStringField
      FieldName = 'no_transaksi'
      Required = True
      Size = 25
    end
    object qpemasangancustanggal: TDateField
      FieldName = 'tanggal'
      Required = True
    end
    object qpemasangancusjenis: TStringField
      FieldName = 'jenis'
      Required = True
      Size = 25
    end
    object qpemasangancusdari: TStringField
      FieldName = 'dari'
      Required = True
      Size = 100
    end
    object qpemasangancusnocg: TStringField
      FieldName = 'nocg'
      Required = True
      Size = 50
    end
    object qpemasangancusbankcg: TStringField
      FieldName = 'bankcg'
      Required = True
      Size = 50
    end
    object qpemasangancuskode_kas: TIntegerField
      FieldName = 'kode_kas'
      Required = True
    end
    object qpemasangancusjumlah: TFloatField
      FieldName = 'jumlah'
      Required = True
    end
    object qpemasangancuskode_perkiraan: TIntegerField
      FieldName = 'kode_perkiraan'
      Required = True
    end
    object qpemasangancusketerangan: TStringField
      FieldName = 'keterangan'
      Required = True
      Size = 250
    end
    object qpemasangancusstatus: TIntegerField
      FieldName = 'status'
      Required = True
    end
    object qpemasangancustanggal_cair: TDateField
      FieldName = 'tanggal_cair'
      Required = True
    end
    object qpemasangancusno_urut: TIntegerField
      FieldName = 'no_urut'
      Required = True
    end
    object qpemasangancusid: TIntegerField
      FieldName = 'id'
      ReadOnly = True
    end
    object qpemasangancusno_transaksi_1: TStringField
      FieldName = 'no_transaksi_1'
      ReadOnly = True
      Size = 100
    end
    object qpemasangancusnama: TStringField
      FieldName = 'nama'
      ReadOnly = True
      Size = 200
    end
    object qpemasangancusid_customer: TIntegerField
      FieldName = 'id_customer'
      ReadOnly = True
    end
  end
  object Uqpemasangancus: TUniDataSource
    DataSet = qpemasangancus
    Left = 992
    Top = 480
  end
  object qcuspemsangan: TUniQuery
    Connection = server
    SQL.Strings = (
      'select * from customer')
    Left = 984
    Top = 344
    object qcuspemsanganid_customer: TIntegerField
      FieldName = 'id_customer'
    end
    object qcuspemsangannama: TStringField
      FieldName = 'nama'
      Required = True
      Size = 100
    end
    object qcuspemsangantelepon: TStringField
      FieldName = 'telepon'
      Required = True
      Size = 25
    end
    object qcuspemsanganfaximile: TStringField
      FieldName = 'faximile'
      Required = True
      Size = 25
    end
    object qcuspemsanganemail: TStringField
      FieldName = 'email'
      Required = True
      Size = 50
    end
    object qcuspemsangancontact_person: TStringField
      FieldName = 'contact_person'
      Required = True
      Size = 50
    end
    object qcuspemsanganalamat: TStringField
      FieldName = 'alamat'
      Required = True
      Size = 500
    end
    object qcuspemsanganstatus: TStringField
      FieldName = 'status'
      Required = True
      Size = 25
    end
    object qcuspemsangannpwp: TStringField
      FieldName = 'npwp'
      Required = True
      Size = 50
    end
    object qcuspemsangantermin: TIntegerField
      FieldName = 'termin'
      Required = True
    end
    object qcuspemsangankredit_limit: TFloatField
      FieldName = 'kredit_limit'
      Required = True
    end
    object qcuspemsanganid_salesman: TIntegerField
      FieldName = 'id_salesman'
      Required = True
    end
    object qcuspemsanganid_kategoricustomer: TIntegerField
      FieldName = 'id_kategoricustomer'
      Required = True
    end
    object qcuspemsanganaktif: TIntegerField
      FieldName = 'aktif'
      Required = True
    end
    object qcuspemsangankota: TStringField
      FieldName = 'kota'
      Required = True
      Size = 100
    end
  end
  object Uqcuspemsangan: TUniDataSource
    DataSet = qcuspemsangan
    Left = 984
    Top = 384
  end
  object qjurnalkotrabon: TUniQuery
    Connection = server
    SQL.Strings = (
      
        'SELECT id_customer,mo.tanggal,mo.no_muat,ro.no_penjualan,no_resi' +
        ',dp.no_detail AS detail,op.no_order,c.nama,exspedisi,asuransi_je' +
        'nis,kode_asuransi'
      
        ',IFNULL(dk.jumlah, 0)-IFNULL(dks.jumlah, 0) AS ongkir,IFNULL(dks' +
        '.jumlah,0) AS asuransi,IFNULL(dks.jumlah,0) AS estimasi_asuransi'
      
        ',IF(jenis_pembayaran_asuransi = '#39'MEMAKAI KONTRABON'#39',IFNULL(dk.ju' +
        'mlah,0),IFNULL(dk.jumlah, 0)-IFNULL(dks.jumlah, 0)) AS total,'#39#39' ' +
        'as edit,0 as idedit,dk.jumlah - dks.jumlah as selisih'
      ',0.0 as ongkir_sesudah,0.0 asuransi_sesudah'
      
        ',jenis_pembayaran_asuransi,ek.tipe_pembayaran,IFNULL(pph,'#39#39') AS ' +
        'pph,'#39'False'#39' AS pilihan'
      
        'FROM order_pembelian op JOIN customer c USING(id_customer) JOIN ' +
        'detail_muat dp                                                  ' +
        '                '
      
        'ON dp.no_pengeluaran=op.no_order JOIN muat_orderan mo ON mo.`no_' +
        'muat`=dp.`no_muat` JOIN relasi_orderdanpenjualan ro ON ro.no_ord' +
        'er=op.no_order '
      
        'LEFT JOIN ongkir okr ON okr.no_transaksi=ro.no_penjualan        ' +
        '                                                                ' +
        '            '
      
        'LEFT JOIN ekspedisi ek ON ek.nama=op.exspedisi                  ' +
        '                                                                ' +
        '             '
      
        'LEFT JOIN (SELECT no_order,jumlah FROM detail_pengeluaranongkir ' +
        'dpl GROUP BY no_order) AS dk ON dk.no_order=op.no_order         ' +
        '            '
      
        'LEFT JOIN (SELECT no_order,asuransi_versi_exspedisi AS jumlah FR' +
        'OM a_asuransiversi_exspedisi dps GROUP BY no_order) AS dks  ON d' +
        'ks.no_order = op.no_order'
      'LEFT JOIN fhoto_resi fr ON op.no_order=fr.no_order'
      
        'WHERE  CAST(mo.tanggal AS DATE) BETWEEN '#39'2021-08-20'#39' AND '#39'2021-1' +
        '0-20'#39' AND ro.no_penjualan NOT IN (SELECT no_transaksi FROM jurna' +
        'l_ongkirdanlainlain)       '
      '      UNION '
      
        'SELECT id_customer,mo.tanggal,mo.no_muat,op.no_penjualan,no_resi' +
        ',dp.no_detail AS detail,op.no_penjualan,c.nama,ekspedisi AS exsp' +
        'edisi,asuransi_jenis,kode_asuransi'
      
        ',IFNULL(dk.jumlah, 0)-IFNULL(dks.jumlah, 0) AS ongkir,IFNULL(dks' +
        '.jumlah,0) AS asuransi,IFNULL(dks.jumlah,0) AS estimasi_asuransi'
      
        ',IF(jenis_pembayaran_asuransi = '#39'MEMAKAI KONTRABON'#39',IFNULL(dk.ju' +
        'mlah,0),IFNULL(dk.jumlah, 0)-IFNULL(dks.jumlah, 0)) AS total,'#39#39' ' +
        'as edit,0 as idedit,dk.jumlah - dks.jumlah as selisih'
      ',0.0 as ongkir_sesudah,0.0 asuransi_sesudah'
      
        ',jenis_pembayaran_asuransi,IFNULL(ek.tipe_pembayaran,'#39#39') AS tipe' +
        '_pembayaran,IFNULL(pph,'#39#39') AS pph,'#39'False'#39' AS pilihan'
      
        'FROM s_penjualan_katalog op JOIN customer c USING(id_customer) J' +
        'OIN detail_muat dp  ON dp.no_pengeluaran=op.no_penjualan        ' +
        '              '
      
        'JOIN muat_orderan mo ON mo.`no_muat`=dp.`no_muat`               ' +
        '                                                                ' +
        '            '
      
        'LEFT JOIN ongkir okr ON okr.no_transaksi=op.no_penjualan        ' +
        '                                                                ' +
        '             '
      
        'LEFT JOIN ekspedisi ek ON ek.nama=op.ekspedisi                  ' +
        '                                                                ' +
        '             '
      
        'LEFT JOIN (SELECT no_order,jumlah FROM detail_pengeluaranongkir ' +
        'dpl GROUP BY no_order) AS dk ON dk.no_order=op.no_penjualan     ' +
        '            '
      
        'LEFT JOIN (SELECT no_order,asuransi_versi_exspedisi AS jumlah FR' +
        'OM a_asuransiversi_exspedisi dps GROUP BY no_order) AS dks ON dk' +
        's.no_order = op.no_penjualan'
      'LEFT JOIN fhoto_resi fr ON op.no_penjualan=fr.no_order'
      
        'WHERE  CAST(mo.tanggal AS DATE) BETWEEN '#39'2021-10-20'#39' AND '#39'2021-1' +
        '0-22'#39' AND op.no_penjualan NOT IN (SELECT no_transaksi FROM jurna' +
        'l_ongkirdanlainlain)')
    Left = 16
    Top = 536
    object qjurnalkotrabontanggal: TDateTimeField
      FieldName = 'tanggal'
      ReadOnly = True
      DisplayFormat = 'dd-mm-yyyy hh:mm:ss'
    end
    object qjurnalkotrabonno_muat: TStringField
      FieldName = 'no_muat'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object qjurnalkotrabonno_penjualan: TStringField
      FieldName = 'no_penjualan'
      ReadOnly = True
      Size = 100
    end
    object qjurnalkotrabondetail: TIntegerField
      FieldName = 'detail'
      ReadOnly = True
      Required = True
    end
    object qjurnalkotrabonno_order: TStringField
      FieldName = 'no_order'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object qjurnalkotrabonnama: TStringField
      FieldName = 'nama'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object qjurnalkotrabonexspedisi: TStringField
      FieldName = 'exspedisi'
      ReadOnly = True
      Size = 100
    end
    object qjurnalkotrabonongkir: TFloatField
      FieldName = 'ongkir'
      DisplayFormat = ',0'
    end
    object qjurnalkotrabontipe_pembayaran: TStringField
      FieldName = 'tipe_pembayaran'
      ReadOnly = True
      Size = 100
    end
    object qjurnalkotrabonpilihan: TStringField
      FieldName = 'pilihan'
      Required = True
      Size = 5
    end
    object qjurnalkotrabonasuransi: TFloatField
      FieldName = 'asuransi'
      DisplayFormat = ',0'
    end
    object qjurnalkotrabontotal: TFloatField
      FieldName = 'total'
      DisplayFormat = ',0'
    end
    object qjurnalkotrabonjenis_pembayaran_asuransi: TStringField
      FieldName = 'jenis_pembayaran_asuransi'
      ReadOnly = True
      Size = 100
    end
    object qjurnalkotrabonpph: TStringField
      FieldName = 'pph'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object qjurnalkotrabonno_resi: TStringField
      FieldName = 'no_resi'
      ReadOnly = True
      Size = 100
    end
    object qjurnalkotrabonedit: TStringField
      FieldName = 'edit'
      FixedChar = True
      Size = 65530
    end
    object qjurnalkotrabonselisih: TFloatField
      FieldName = 'selisih'
    end
    object qjurnalkotrabonid_customer: TIntegerField
      FieldName = 'id_customer'
      ReadOnly = True
    end
    object qjurnalkotrabonongkir_sesudah: TFloatField
      FieldName = 'ongkir_sesudah'
    end
    object qjurnalkotrabonasuransi_sesudah: TFloatField
      FieldName = 'asuransi_sesudah'
    end
    object qjurnalkotrabonasuransi_jenis: TStringField
      FieldName = 'asuransi_jenis'
      ReadOnly = True
    end
    object qjurnalkotrabonkode_asuransi: TStringField
      FieldName = 'kode_asuransi'
      ReadOnly = True
      Size = 100
    end
    object qjurnalkotrabonestimasi_asuransi: TFloatField
      FieldName = 'estimasi_asuransi'
      ReadOnly = True
      Required = True
    end
  end
  object dsqjurnalkontrabon: TUniDataSource
    DataSet = qjurnalkotrabon
    Left = 15
    Top = 488
  end
  object qlapkontrabon: TUniQuery
    Connection = server
    SQL.Strings = (
      
        'SELECT bb.no_transaksi,bb.tanggal,keterangan,nama AS exspedisi,j' +
        'umlah,fr.id AS id  FROM buku_besar bb'
      
        'JOIN fix_reportongkir fr ON fr.`no_transaksi`=bb.no_transaksi JO' +
        'IN pembayaran_kontrabon pk ON pk.`no_transaksi`=bb.`no_transaksi' +
        '`'
      '')
    Left = 255
    Top = 482
    object qlapkontrabonno_transaksi: TStringField
      FieldName = 'no_transaksi'
      Required = True
      Size = 25
    end
    object qlapkontrabontanggal: TDateField
      FieldName = 'tanggal'
      Required = True
    end
    object qlapkontrabonketerangan: TStringField
      FieldName = 'keterangan'
      Required = True
      Size = 250
    end
    object qlapkontrabonexspedisi: TStringField
      FieldName = 'exspedisi'
      ReadOnly = True
      Size = 200
    end
    object qlapkontrabonjumlah: TFloatField
      FieldName = 'jumlah'
      Required = True
      DisplayFormat = ',0'
    end
    object qlapkontrabonid: TIntegerField
      FieldName = 'id'
      ReadOnly = True
    end
  end
  object dsqlapkontrabon: TUniDataSource
    DataSet = qlapkontrabon
    Left = 253
    Top = 529
  end
  object qlapdetailkontrabon: TUniQuery
    Connection = server
    SQL.Strings = (
      
        'SELECT * FROM v_detaillapkontrabon vd JOIN v_fix_reportongkir_de' +
        'tailfix vf ON vf.no_jual=vd.no_penjualan')
    Left = 351
    Top = 482
    object qlapdetailkontrabonno_penjualan: TStringField
      FieldName = 'no_penjualan'
      Size = 100
    end
    object qlapdetailkontrabonnama: TStringField
      FieldName = 'nama'
      Required = True
      Size = 100
    end
    object qlapdetailkontrabonexspedisi: TStringField
      FieldName = 'exspedisi'
      Size = 100
    end
    object qlapdetailkontrabonongkir: TFloatField
      FieldName = 'ongkir'
      Required = True
    end
    object qlapdetailkontrabonno_detail: TIntegerField
      FieldName = 'no_detail'
      ReadOnly = True
    end
    object qlapdetailkontrabonno_jual: TStringField
      FieldName = 'no_jual'
      ReadOnly = True
      Size = 255
    end
    object qlapdetailkontrabonid: TIntegerField
      FieldName = 'id'
      ReadOnly = True
    end
  end
  object dsqdetailkontrabon: TUniDataSource
    DataSet = qlapdetailkontrabon
    Left = 349
    Top = 528
  end
  object http: TNetHTTPClient
    Asynchronous = False
    ConnectionTimeout = 60000
    ResponseTimeout = 60000
    AllowCookies = True
    HandleRedirects = True
    UserAgent = 'Embarcadero URI Client/1.0'
    Left = 24
    Top = 136
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Dataset = fmenuutama.vtsupplier
    FieldDefs = <>
    Response = RESTResponse1
    Left = 152
    Top = 72
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'UTF-8, *;q=0.8'
    BaseURL = 'http://192.168.20.15:8077/GetDataSupplier'
    Params = <
      item
        name = 'nopacking'
        Value = '15072020B01'
      end>
    HandleRedirects = True
    Left = 152
    Top = 184
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <
      item
        Kind = pkHTTPHEADER
        name = 'Authorization'
        Value = 
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjEwMklUaXQ5NTc4MmR' +
          'kNjQ2ZjAyZWRkNjFhMjZkNzFkZDY2ZmMzZCIsImlhdCI6MTYxMzU0NjEyNiwiZXh' +
          'wIjoxNjEzNjMyNTI2fQ.gEBNx_V09TUW8pfOljXa-Tz5HUYCBeMo5sBU9i0Ocuk'
      end>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 208
    Top = 128
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'application/json'
    RootElement = 'values'
    Left = 80
    Top = 136
  end
  object qjurnalnonkontrabon: TUniQuery
    Connection = server
    SQL.Strings = (
      
        'SELECT id_customer,mo.tanggal,mo.no_muat,ro.no_penjualan,no_resi' +
        ',dp.no_detail AS detail,op.no_order,c.nama,exspedisi,asuransi_je' +
        'nis'
      
        ',IFNULL(dk.jumlah, 0)-IFNULL(dks.jumlah, 0) AS ongkir,IFNULL(dks' +
        '.jumlah,0) AS asuransi'
      
        ',IF(jenis_pembayaran_asuransi = '#39'MEMAKAI KONTRABON'#39',IFNULL(dk.ju' +
        'mlah,0),IFNULL(dk.jumlah, 0)-IFNULL(dks.jumlah, 0)) AS total,'#39#39' ' +
        'as edit,0 as idedit,dk.jumlah - dks.jumlah as selisih'
      ',0.0 as ongkir_sesudah,0.0 asuransi_sesudah'
      ',0.0 as ongkir_sebelum,0.0 asuransi_sebelum'
      
        ',jenis_pembayaran_asuransi,ek.tipe_pembayaran,IFNULL(pph,'#39#39') AS ' +
        'pph,'#39'False'#39' AS pilihan'
      
        'FROM order_pembelian op JOIN customer c USING(id_customer) JOIN ' +
        'detail_muat dp                                                  ' +
        '                '
      
        'ON dp.no_pengeluaran=op.no_order JOIN muat_orderan mo ON mo.`no_' +
        'muat`=dp.`no_muat` JOIN relasi_orderdanpenjualan ro ON ro.no_ord' +
        'er=op.no_order '
      
        'LEFT JOIN ongkir okr ON okr.no_transaksi=ro.no_penjualan        ' +
        '                                                                ' +
        '            '
      
        'LEFT JOIN ekspedisi ek ON ek.nama=op.exspedisi                  ' +
        '                                                                ' +
        '             '
      
        'LEFT JOIN (SELECT no_order,jumlah FROM detail_pengeluaranongkir ' +
        'dpl GROUP BY no_order) AS dk ON dk.no_order=op.no_order         ' +
        '            '
      
        'LEFT JOIN (SELECT no_order,asuransi_versi_exspedisi AS jumlah FR' +
        'OM a_asuransiversi_exspedisi dps GROUP BY no_order) AS dks  ON d' +
        'ks.no_order = op.no_order'
      'LEFT JOIN fhoto_resi fr ON op.no_order=fr.no_order'
      
        'WHERE  CAST(mo.tanggal AS DATE) BETWEEN '#39'2021-08-20'#39' AND '#39'2021-1' +
        '0-20'#39' AND ro.no_penjualan NOT IN (SELECT no_transaksi FROM jurna' +
        'l_ongkirdanlainlain)       '
      '      UNION '
      
        'SELECT id_customer,mo.tanggal,mo.no_muat,op.no_penjualan,no_resi' +
        ',dp.no_detail AS detail,op.no_penjualan,c.nama,ekspedisi AS exsp' +
        'edisi,asuransi_jenis'
      
        ',IFNULL(dk.jumlah, 0)-IFNULL(dks.jumlah, 0) AS ongkir,IFNULL(dks' +
        '.jumlah,0) AS asuransi'
      
        ',IF(jenis_pembayaran_asuransi = '#39'MEMAKAI KONTRABON'#39',IFNULL(dk.ju' +
        'mlah,0),IFNULL(dk.jumlah, 0)-IFNULL(dks.jumlah, 0)) AS total,'#39#39' ' +
        'as edit,0 as idedit,dk.jumlah - dks.jumlah as selisih'
      ',0.0 as ongkir_sesudah,0.0 asuransi_sesudah'
      ',0.0 as ongkir_sebelum,0.0 asuransi_sebelum'
      
        ',jenis_pembayaran_asuransi,IFNULL(ek.tipe_pembayaran,'#39#39') AS tipe' +
        '_pembayaran,IFNULL(pph,'#39#39') AS pph,'#39'False'#39' AS pilihan'
      
        'FROM s_penjualan_katalog op JOIN customer c USING(id_customer) J' +
        'OIN detail_muat dp  ON dp.no_pengeluaran=op.no_penjualan        ' +
        '              '
      
        'JOIN muat_orderan mo ON mo.`no_muat`=dp.`no_muat`               ' +
        '                                                                ' +
        '            '
      
        'LEFT JOIN ongkir okr ON okr.no_transaksi=op.no_penjualan        ' +
        '                                                                ' +
        '             '
      
        'LEFT JOIN ekspedisi ek ON ek.nama=op.ekspedisi                  ' +
        '                                                                ' +
        '             '
      
        'LEFT JOIN (SELECT no_order,jumlah FROM detail_pengeluaranongkir ' +
        'dpl GROUP BY no_order) AS dk ON dk.no_order=op.no_penjualan     ' +
        '            '
      
        'LEFT JOIN (SELECT no_order,asuransi_versi_exspedisi AS jumlah FR' +
        'OM a_asuransiversi_exspedisi dps GROUP BY no_order) AS dks ON dk' +
        's.no_order = op.no_penjualan'
      'LEFT JOIN fhoto_resi fr ON op.no_penjualan=fr.no_order'
      
        'WHERE  CAST(mo.tanggal AS DATE) BETWEEN '#39'2021-10-20'#39' AND '#39'2021-1' +
        '0-22'#39' AND op.no_penjualan NOT IN (SELECT no_transaksi FROM jurna' +
        'l_ongkirdanlainlain)')
    Left = 185
    Top = 538
    object qjurnalnonkontrabonid_customer: TIntegerField
      FieldName = 'id_customer'
      ReadOnly = True
    end
    object qjurnalnonkontrabontanggal: TDateTimeField
      FieldName = 'tanggal'
      ReadOnly = True
      DisplayFormat = 'dd-mm-yyyy hh:mm:ss'
    end
    object qjurnalnonkontrabonno_muat: TStringField
      FieldName = 'no_muat'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object qjurnalnonkontrabonno_penjualan: TStringField
      FieldName = 'no_penjualan'
      ReadOnly = True
      Size = 100
    end
    object qjurnalnonkontrabonno_resi: TStringField
      FieldName = 'no_resi'
      ReadOnly = True
      Size = 100
    end
    object qjurnalnonkontrabondetail: TIntegerField
      FieldName = 'detail'
      ReadOnly = True
      Required = True
    end
    object qjurnalnonkontrabonno_order: TStringField
      FieldName = 'no_order'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object qjurnalnonkontrabonnama: TStringField
      FieldName = 'nama'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object qjurnalnonkontrabonexspedisi: TStringField
      FieldName = 'exspedisi'
      ReadOnly = True
      Size = 100
    end
    object qjurnalnonkontrabonongkir: TFloatField
      FieldName = 'ongkir'
      ReadOnly = True
      Required = True
      DisplayFormat = ',0'
    end
    object qjurnalnonkontrabonasuransi: TFloatField
      FieldName = 'asuransi'
      ReadOnly = True
      Required = True
      DisplayFormat = ',0'
    end
    object qjurnalnonkontrabontotal: TFloatField
      FieldName = 'total'
      ReadOnly = True
      Required = True
      DisplayFormat = ',0'
    end
    object qjurnalnonkontrabonjenis_pembayaran_asuransi: TStringField
      FieldName = 'jenis_pembayaran_asuransi'
      ReadOnly = True
      Size = 100
    end
    object qjurnalnonkontrabontipe_pembayaran: TStringField
      FieldName = 'tipe_pembayaran'
      ReadOnly = True
      Size = 100
    end
    object qjurnalnonkontrabonpph: TStringField
      FieldName = 'pph'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object qjurnalnonkontrabonasuransi_jenis: TStringField
      FieldName = 'asuransi_jenis'
      ReadOnly = True
    end
    object qjurnalnonkontrabonedit: TStringField
      FieldName = 'edit'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 65530
    end
    object qjurnalnonkontrabonongkir_sesudah: TFloatField
      FieldName = 'ongkir_sesudah'
      ReadOnly = True
      Required = True
    end
    object qjurnalnonkontrabonasuransi_sesudah: TFloatField
      FieldName = 'asuransi_sesudah'
      ReadOnly = True
      Required = True
    end
    object qjurnalnonkontrabonongkir_sebelum: TFloatField
      FieldName = 'ongkir_sebelum'
      ReadOnly = True
      Required = True
    end
    object qjurnalnonkontrabonasuransi_sebelum: TFloatField
      FieldName = 'asuransi_sebelum'
      ReadOnly = True
      Required = True
    end
  end
  object dsqjurnalnonkontrabon: TUniDataSource
    DataSet = qjurnalnonkontrabon
    Left = 184
    Top = 491
  end
  object VirtualTable1: TVirtualTable
    Left = 838
    Top = 414
    Data = {04000000000000000000}
  end
  object vtjurnalkotrabon: TVirtualTable
    FieldDefs = <
      item
        Name = 'description'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'glakun'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'tax'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'wtax'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'total'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'blanket'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'qty'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'price'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'longdescription'
        DataType = ftString
        Size = 255
      end>
    Left = 76
    Top = 493
    Data = {
      040009000B006465736372697074696F6E0100FF00000000000600676C616B75
      6E01006400000000000300746178010064000000000004007774617801003200
      000000000500746F74616C0100FF00000000000700626C616E6B657401000A00
      0000000003007174790100640000000000050070726963650100FF0000000000
      0F006C6F6E676465736372697074696F6E0100FF0000000000000000000000}
    object vtjurnalkotrabontanggal: TDateTimeField
      FieldName = 'tanggal'
    end
    object vtjurnalkotrabonno_muat: TStringField
      FieldName = 'no_muat'
      Size = 255
    end
    object vtjurnalkotrabonno_penjualan: TStringField
      FieldName = 'no_penjualan'
      Size = 255
    end
    object vtjurnalkotrabonno_order: TStringField
      FieldName = 'no_order'
      Size = 255
    end
    object vtjurnalkotrabonnama: TStringField
      FieldName = 'nama'
      Size = 255
    end
    object vtjurnalkotrabonexspedisi: TStringField
      FieldName = 'exspedisi'
      Size = 255
    end
    object vtjurnalkotrabonongkir: TFloatField
      FieldName = 'ongkir'
    end
    object vtjurnalkotrabontipe_pembayaran: TStringField
      FieldName = 'tipe_pembayaran'
      Size = 100
    end
    object vtjurnalkotrabonjenis_pembayaran_asuransi: TStringField
      FieldName = 'jenis_pembayaran_asuransi'
      Size = 100
    end
    object vtjurnalkotrabonasuransi: TFloatField
      FieldName = 'asuransi'
    end
    object vtjurnalkotrabontotal: TFloatField
      FieldName = 'total'
    end
    object vtjurnalkotrabonno_resi: TStringField
      FieldName = 'no_resi'
      Size = 255
    end
    object vtjurnalkotrabonedit: TStringField
      FieldName = 'edit'
      Size = 100
    end
    object vtjurnalkotrabonselisih: TFloatField
      FieldName = 'selisih'
    end
    object vtjurnalkotrabonid_customer: TIntegerField
      FieldName = 'id_customer'
    end
    object vtjurnalkotrabonongkir_sesudah: TFloatField
      FieldName = 'ongkir_sesudah'
    end
    object vtjurnalkotrabonasuransi_sesudah: TFloatField
      FieldName = 'asuransi_sesudah'
    end
    object vtjurnalkotrabonpilihan: TBooleanField
      FieldName = 'pilihan'
    end
  end
  object dsvtjurnalkotrabon: TUniDataSource
    DataSet = vtjurnalkotrabon
    Left = 77
    Top = 542
  end
  object vtholidays: TVirtualTable
    FieldDefs = <
      item
        Name = 'tanggal_libur'
        DataType = ftDate
      end
      item
        Name = 'tanggal_input'
        DataType = ftDateTime
      end
      item
        Name = 'nama'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'keterangan'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'tipe'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'id_user'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'user'
        DataType = ftWideString
        Size = 255
      end>
    Left = 417
    Top = 486
    Data = {
      040007000D0074616E6767616C5F6C6962757209000000000000000D0074616E
      6767616C5F696E7075740B0000000000000004006E616D611800FF0000000000
      0A006B65746572616E67616E1800FF00000000000400746970651800FF000000
      0000070069645F757365721800FF00000000000400757365721800FF00000000
      0000004200000008000000243F0B0000000000080000000000B48B50F8CC421C
      0000004E006500770020005900650061007200270073002000440061007900AA
      0000004E00650077002000590065006100720019207300200044006100790020
      0069007300200074006800650020006600690072007300740020006400610079
      0020006F0066002000740068006500200079006500610072002C0020006F0072
      0020004A0061006E007500610072007900200031002C00200069006E00200074
      0068006500200047007200650067006F007200690061006E002000630061006C
      0065006E006400610072002E00200000004E006100740069006F006E0061006C
      00200068006F006C006900640061007900020000003000060000004100500049
      0008000000473F0B0049000000080000000000B48B50F8CC4238000000430068
      0069006E0065007300650020004C0075006E006100720020004E006500770020
      005900650061007200270073002000440061007900040100004300680069006E
      0065007300650020004E00650077002000590065006100720020006900730020
      00740068006500200066006900720073007400200064006100790020006F0066
      00200074006800650020004300680069006E006500730065002000630061006C
      0065006E006400610072002C0020007700680069006300680020006900730020
      00610020006C0075006E00690073006F006C00610072002000630061006C0065
      006E0064006100720020006D00610069006E006C007900200075007300650064
      00200066006F007200200074007200610064006900740069006F006E0061006C
      002000630065006C006500620072006100740069006F006E0073002E00200000
      004E006100740069006F006E0061006C00200068006F006C0069006400610079
      000200000030000600000041005000490008000000623F0B0049000000080000
      000000B48B50F8CC421E0000004D006100680061002000530068006900760061
      00720061007400720069000000000010000000480069006E0064007500690073
      006D000200000030000600000041005000490008000000653F0B004900000008
      0000000000B48B50F8CC4250000000420061006C006900270073002000440061
      00790020006F0066002000530069006C0065006E0063006500200061006E0064
      002000480069006E006400750020004E00650077002000590065006100720000
      000000200000004E006100740069006F006E0061006C00200068006F006C0069
      006400610079000200000030000600000041005000490008000000733F0B0049
      000000080000000000B48B50F8CC420800000048006F006C0069008801000048
      006F006C00690020006900730020006100200073007000720069006E00670020
      0066006500730074006900760061006C0020006F006600200063006F006C006F
      00720073002000630065006C0065006200720061007400650064002000620079
      002000480069006E006400750073002C002000530069006B0068007300200061
      006E00640020006F00740068006500720073002E002000490074002000630065
      006C006500620072006100740065007300200074006800650020007400720069
      0075006D007000680020006F006600200067006F006F00640020006F00760065
      00720020006500760069006C00200061006E0064002000740068006500200075
      00700063006F006D0069006E006700200073006500610073006F006E0020006F
      006600200073007000720069006E0067002E0020005400680065002000660065
      00730074006900760061006C002000630061006E0020006C0061007300740020
      0075007000200074006F0020007300690078007400650065006E002000640061
      00790073002E0010000000480069006E0064007500690073006D000200000030
      000600000041005000490008000000803F0B0049000000080000000000B48B50
      F8CC424200000041007300630065006E00730069006F006E0020006F00660020
      007400680065002000500072006F00700068006500740020004D007500680061
      006D006D0061006400E20100004900730072006100200061006E00640020004D
      0069002700720061006A0020002800490073007200610020004D006500270072
      0061006A002C00200049007300720061006100200061006E00640020004D0069
      0027007200610061006A002C0020004C00610079006C0061007400200041006C
      002D004900730072006100200077006100200041006C002D004D006900720061
      006A002C0020004C00610069006C0061007400200061006C0020004D00690072
      0061006A002C0020004E00690067006800740020004A006F00750072006E0065
      007900200061006E006400200041007300630065006E00730069006F006E0020
      0074006F002000480065006100760065006E00290020006D00610072006B0073
      00200074006800650020006E0069006700680074002000740068006100740020
      007400680065002000500072006F00700068006500740020004D006F00680061
      006D006D00610064002000740072006100760065006C00650064002000660072
      006F006D0020004D006500630063006100200074006F0020004A006500720075
      00730061006C0065006D002C00200061007300630065006E0064006500640020
      0074006F002000680065006100760065006E00200061006E0064002000720065
      007400750072006E00650064002E00200000004E006100740069006F006E0061
      006C00200068006F006C00690064006100790002000000300006000000410050
      004900080000008E3F0B0049000000080000000000B48B50F8CC421800000045
      006C0065006300740069006F006E00200044006100790000000000200000004E
      006100740069006F006E0061006C00200068006F006C00690064006100790002
      00000030000600000041005000490008000000903F0B00490000000800000000
      00B48B50F8CC421600000047006F006F00640020004600720069006400610079
      009600000047006F006F00640020004600720069006400610079002000690073
      0020006100200067006C006F00620061006C0020004300680072006900730074
      00690061006E0020006F006200730065007200760061006E0063006500200074
      0077006F002000640061007900730020006200650066006F0072006500200045
      00610073007400650072002000530075006E006400610079002E00200000004E
      006100740069006F006E0061006C00200068006F006C00690064006100790002
      00000030000600000041005000490008000000923F0B00490000000800000000
      00B48B50F8CC421A0000004500610073007400650072002000530075006E0064
      0061007900AC0000004500610073007400650072002000530075006E00640061
      007900200063006F006D006D0065006D006F007200610074006500730020004A
      0065007300750073002000430068007200690073007400192073002000720065
      00730075007200720065006300740069006F006E002C0020006100630063006F
      007200640069006E006700200074006F00200043006800720069007300740069
      0061006E002000620065006C006900650066002E00140000004F006200730065
      007200760061006E006300650002000000300006000000410050004900080000
      009C3F0B0049000000080000000000B48B50F8CC422E00000049006E00740065
      0072006E006100740069006F006E0061006C0020004C00610062006F00720020
      00440061007900A60000004D006100790020004400610079002C0020006F0072
      0020004C00610062006F00720020004400610079002C00200069007300200061
      00200064006100790020006F0066006600200066006F007200200077006F0072
      006B00650072007300200069006E0020006D0061006E007900200063006F0075
      006E00740072006900650073002000610072006F0075006E0064002000740068
      006500200077006F0072006C0064002E00200000004E006100740069006F006E
      0061006C00200068006F006C0069006400610079000200000030000600000041
      005000490008000000AE3F0B0049000000080000000000B48B50F8CC42420000
      00570061006900730061006B0020004400610079002000280042007500640064
      006800610027007300200041006E006E00690076006500720073006100720079
      00290000000000200000004E006100740069006F006E0061006C00200068006F
      006C0069006400610079000200000030000600000041005000490008000000B9
      3F0B0049000000080000000000B48B50F8CC423A00000041007300630065006E
      00730069006F006E00200044006100790020006F00660020004A006500730075
      0073002000430068007200690073007400FE00000041007300630065006E0073
      0069006F006E0020004400610079002000690073002000740068006500200034
      00300074006800200064006100790020006F0066002000450061007300740065
      0072002E00200049007400200069007300200061002000720065006C00690067
      0069006F0075007300200068006F006C00690064006100790020007400680061
      007400200063006F006D006D0065006D006F0072006100740065007300200074
      0068006500200061007300630065006E00730069006F006E0020006F00660020
      004A0065007300750073002000430068007200690073007400200069006E0074
      006F002000680065006100760065006E002E00200000004E006100740069006F
      006E0061006C00200068006F006C006900640061007900020000003000060000
      0041005000490008000000BB3F0B0049000000080000000000B48B50F8CC421A
      000000500061006E0063006100730069006C0061002000440061007900000000
      00200000004E006100740069006F006E0061006C00200068006F006C00690064
      00610079000200000030000600000041005000490008000000BD3F0B00490000
      00080000000000B48B50F8CC4218000000430075007400690020004200650072
      00730061006D00610000000000200000004E006100740069006F006E0061006C
      00200068006F006C006900640061007900020000003000060000004100500049
      0008000000BE3F0B0049000000080000000000B48B50F8CC4218000000430075
      00740069002000420065007200730061006D00610000000000200000004E0061
      00740069006F006E0061006C00200068006F006C006900640061007900020000
      0030000600000041005000490008000000BF3F0B0049000000080000000000B4
      8B50F8CC42200000004900640075006C00200046006900740072006900200044
      006100790020003100020100004500690064002D0061006C002D004600690074
      00720020006900730020006100200068006F006C006900640061007900200074
      006F0020006D00610072006B002000740068006500200065006E00640020006F
      00660020007400680065002000490073006C0061006D006900630020006D006F
      006E007400680020006F0066002000520061006D006100640061006E002C0020
      0064007500720069006E00670020007700680069006300680020004D00750073
      006C0069006D00730020006600610073007400200064007500720069006E0067
      002000740068006500200068006F0075007200730020006F0066002000640061
      0079006C0069006700680074002E00200000004E006100740069006F006E0061
      006C00200068006F006C00690064006100790002000000300006000000410050
      00490008000000C03F0B0049000000080000000000B48B50F8CC422000000049
      00640075006C0020004600690074007200690020004400610079002000320000
      000000200000004E006100740069006F006E0061006C00200068006F006C0069
      006400610079000200000030000600000041005000490008000000C13F0B0049
      000000080000000000B48B50F8CC421800000043007500740069002000420065
      007200730061006D00610000000000200000004E006100740069006F006E0061
      006C00200068006F006C00690064006100790002000000300006000000410050
      00490008000000CF3F0B0049000000080000000000B48B50F8CC421A0000004A
      0075006E006500200053006F006C0073007400690063006500000000000C0000
      0053006500610073006F006E0002000000300006000000410050004900080000
      0002400B0049000000080000000000B48B50F8CC421600000045006900640020
      0061006C002D00410064006800610078010000450069006400200061006C002D
      0041006400680061002000280049006400200075006C002D0041006400680061
      002900200069007300200061006E002000490073006C0061006D006900630020
      0066006500730074006900760061006C002000660061006C006C0069006E0067
      0020006F006E0020007400680065002000310030007400680020006400610079
      0020006F006600200074006800650020006D006F006E007400680020006F0066
      0020004400680075006C002000480069006A006A00610020002800540068006F
      007500200061006C002D00480069006A006A0061002900200074006F00200063
      006F006D006D0065006D006F0072006100740065002000740068006500200077
      0069006C006C0069006E0067006E0065007300730020006F0066002000490062
      0072006100680069006D00200028004100620072006100680061006D00290020
      0074006F00200073006100630072006900660069006300650020006800690073
      00200073006F006E002E00200000004E006100740069006F006E0061006C0020
      0068006F006C0069006400610079000200000030000600000041005000490008
      00000006400B0049000000080000000000B48B50F8CC421C000000520061006B
      007300680061002000420061006E006400680061006E00000000001000000048
      0069006E0064007500690073006D000200000030000600000041005000490008
      00000008400B0049000000080000000000B48B50F8CC423600000049006E0064
      006F006E0065007300690061006E00200049006E0064006500700065006E0064
      0065006E0063006500200044006100790000000000200000004E006100740069
      006F006E0061006C00200068006F006C00690064006100790002000000300006
      000000410050004900080000000F400B0049000000080000000000B48B50F8CC
      42160000004A0061006E006D00610073006800740061006D0069000000000010
      000000480069006E0064007500690073006D0002000000300006000000410050
      0049000800000017400B0049000000080000000000B48B50F8CC42320000004D
      007500680061007200720061006D002F00490073006C0061006D006900630020
      004E006500770020005900650061007200B40000004D00750068006100720072
      0061006D00200069007300200074006800650020006600690072007300740020
      006D006F006E007400680020006F00660020007400680065002000490073006C
      0061006D00690063002000630061006C0065006E00640061007200200061006E
      006400200061002000740069006D00650020006F0066002000720065006D0065
      006D006200720061006E006300650020006F00720020006D006F00750072006E
      0069006E0067002E00200000004E006100740069006F006E0061006C00200068
      006F006C00690064006100790002000000300006000000410050004900080000
      0018400B0049000000080000000000B48B50F8CC4220000000470061006E0065
      0073006800200043006800610074007500720074006800690000000000100000
      00480069006E0064007500690073006D00020000003000060000004100500049
      00080000002D400B0049000000080000000000B48B50F8CC4222000000530065
      007000740065006D00620065007200200045007100750069006E006F00780000
      0000000C00000053006500610073006F006E0002000000300006000000410050
      0049000800000033400B0049000000080000000000B48B50F8CC42120000004E
      00610076006100720061007400720069000000000010000000480069006E0064
      007500690073006D0002000000300006000000410050004900080000004F400B
      0049000000080000000000B48B50F8CC422000000044006900770061006C0069
      002F0044006500650070006100760061006C006900B200000044006900770061
      006C0069002C00200061006C0073006F0020006B006E006F0077006E00200061
      0073002000740068006500200046006500730074006900760061006C0020006F
      00660020004C00690067006800740073002C0020006900730020006F006E0065
      0020006F006600200074006800650020006D006F0073007400200070006F0070
      0075006C00610072002000480069006E00640075002000660065007300740069
      00760061006C0073002E00140000004F006200730065007200760061006E0063
      00650002000000300006000000410050004900080000005C400B004900000008
      0000000000B48B50F8CC423E0000005400680065002000500072006F00700068
      006500740020004D007500680061006D006D0061006400270073002000420069
      00720074006800640061007900F20000004D00610077006C00690064002C0020
      006F00720020004D0069006C00610064002C0020006D00610072006B00730020
      0074006800650020006200690072007400680020006F00660020007400680065
      002000490073006C0061006D00690063002000700072006F0070006800650074
      0020004D007500680061006D006D00650064002C0020006F00720020004D006F
      00680061006D00650064002C00200069006E0020007400680065002000790065
      0061007200200035003700300020006F00660020007400680065002000470072
      00650067006F007200690061006E002000630061006C0065006E006400610072
      002E00200000004E006100740069006F006E0061006C00200068006F006C0069
      0064006100790002000000300006000000410050004900080000008A400B0049
      000000080000000000B48B50F8CC421A0000004300680072006900730074006D
      00610073002000440061007900DC0000004300680072006900730074006D0061
      007300200044006100790020006900730020006F006E00650020006F00660020
      0074006800650020006200690067006700650073007400200043006800720069
      0073007400690061006E002000630065006C006500620072006100740069006F
      006E007300200061006E0064002000660061006C006C00730020006F006E0020
      0044006500630065006D00620065007200200032003500200069006E00200074
      0068006500200047007200650067006F007200690061006E002000630061006C
      0065006E006400610072002E00200000004E006100740069006F006E0061006C
      00200068006F006C006900640061007900020000003000060000004100500049
      000800000091400B0049000000080000000000B48B50F8CC421C0000004E0065
      00770020005900650061007200270073002000440061007900AA0000004E0065
      0077002000590065006100720019207300200044006100790020006900730020
      00740068006500200066006900720073007400200064006100790020006F0066
      002000740068006500200079006500610072002C0020006F00720020004A0061
      006E007500610072007900200031002C00200069006E00200074006800650020
      0047007200650067006F007200690061006E002000630061006C0065006E0064
      00610072002E00200000004E006100740069006F006E0061006C00200068006F
      006C0069006400610079000200000030000600000041005000490008000000A9
      400B0049000000080000000000B48B50F8CC42380000004300680069006E0065
      007300650020004C0075006E006100720020004E006500770020005900650061
      007200270073002000440061007900040100004300680069006E006500730065
      0020004E00650077002000590065006100720020006900730020007400680065
      00200066006900720073007400200064006100790020006F0066002000740068
      00650020004300680069006E006500730065002000630061006C0065006E0064
      00610072002C002000770068006900630068002000690073002000610020006C
      0075006E00690073006F006C00610072002000630061006C0065006E00640061
      00720020006D00610069006E006C00790020007500730065006400200066006F
      007200200074007200610064006900740069006F006E0061006C002000630065
      006C006500620072006100740069006F006E0073002E00200000004E00610074
      0069006F006E0061006C00200068006F006C0069006400610079000200000030
      000600000041005000490008000000E2400B0049000000080000000000B48B50
      F8CC424200000041007300630065006E00730069006F006E0020006F00660020
      007400680065002000500072006F00700068006500740020004D007500680061
      006D006D0061006400E20100004900730072006100200061006E00640020004D
      0069002700720061006A0020002800490073007200610020004D006500270072
      0061006A002C00200049007300720061006100200061006E00640020004D0069
      0027007200610061006A002C0020004C00610079006C0061007400200041006C
      002D004900730072006100200077006100200041006C002D004D006900720061
      006A002C0020004C00610069006C0061007400200061006C0020004D00690072
      0061006A002C0020004E00690067006800740020004A006F00750072006E0065
      007900200061006E006400200041007300630065006E00730069006F006E0020
      0074006F002000480065006100760065006E00290020006D00610072006B0073
      00200074006800650020006E0069006700680074002000740068006100740020
      007400680065002000500072006F00700068006500740020004D006F00680061
      006D006D00610064002000740072006100760065006C00650064002000660072
      006F006D0020004D006500630063006100200074006F0020004A006500720075
      00730061006C0065006D002C00200061007300630065006E0064006500640020
      0074006F002000680065006100760065006E00200061006E0064002000720065
      007400750072006E00650064002E00200000004E006100740069006F006E0061
      006C00200068006F006C00690064006100790002000000300006000000410050
      00490008000000E5400B0049000000080000000000B48B50F8CC425000000042
      0061006C00690027007300200044006100790020006F0066002000530069006C
      0065006E0063006500200061006E0064002000480069006E006400750020004E
      00650077002000590065006100720000000000200000004E006100740069006F
      006E0061006C00200068006F006C006900640061007900020000003000060000
      0041005000490008000000F5400B0049000000080000000000B48B50F8CC4216
      00000047006F006F00640020004600720069006400610079009600000047006F
      006F006400200046007200690064006100790020006900730020006100200067
      006C006F00620061006C002000430068007200690073007400690061006E0020
      006F006200730065007200760061006E00630065002000740077006F00200064
      0061007900730020006200650066006F00720065002000450061007300740065
      0072002000530075006E006400610079002E00200000004E006100740069006F
      006E0061006C00200068006F006C006900640061007900020000003000060000
      0041005000490008000000F7400B0049000000080000000000B48B50F8CC421A
      0000004500610073007400650072002000530075006E00640061007900AC0000
      004500610073007400650072002000530075006E00640061007900200063006F
      006D006D0065006D006F007200610074006500730020004A0065007300750073
      0020004300680072006900730074001920730020007200650073007500720072
      0065006300740069006F006E002C0020006100630063006F007200640069006E
      006700200074006F002000430068007200690073007400690061006E00200062
      0065006C006900650066002E00140000004F006200730065007200760061006E
      006300650002000000300006000000410050004900080000000A410B00490000
      00080000000000B48B50F8CC422E00000049006E007400650072006E00610074
      0069006F006E0061006C0020004C00610062006F0072002000440061007900A6
      0000004D006100790020004400610079002C0020006F00720020004C00610062
      006F00720020004400610079002C002000690073002000610020006400610079
      0020006F0066006600200066006F007200200077006F0072006B006500720073
      00200069006E0020006D0061006E007900200063006F0075006E007400720069
      00650073002000610072006F0075006E0064002000740068006500200077006F
      0072006C0064002E00200000004E006100740069006F006E0061006C00200068
      006F006C00690064006100790002000000300006000000410050004900080000
      0010410B0049000000080000000000B48B50F8CC424200000057006100690073
      0061006B00200044006100790020002800420075006400640068006100270073
      00200041006E006E006900760065007200730061007200790029000000000020
      0000004E006100740069006F006E0061006C00200068006F006C006900640061
      00790002000000300006000000410050004900080000001E410B004900000008
      0000000000B48B50F8CC423A00000041007300630065006E00730069006F006E
      00200044006100790020006F00660020004A0065007300750073002000430068
      007200690073007400FE00000041007300630065006E00730069006F006E0020
      0044006100790020006900730020007400680065002000340030007400680020
      0064006100790020006F00660020004500610073007400650072002E00200049
      007400200069007300200061002000720065006C006900670069006F00750073
      00200068006F006C00690064006100790020007400680061007400200063006F
      006D006D0065006D006F00720061007400650073002000740068006500200061
      007300630065006E00730069006F006E0020006F00660020004A006500730075
      0073002000430068007200690073007400200069006E0074006F002000680065
      006100760065006E002E00200000004E006100740069006F006E0061006C0020
      0068006F006C0069006400610079000200000030000600000041005000490008
      00000021410B0049000000080000000000B48B50F8CC42200000004900640075
      006C002000460069007400720069002000440061007900200031000201000045
      00690064002D0061006C002D0046006900740072002000690073002000610020
      0068006F006C006900640061007900200074006F0020006D00610072006B0020
      00740068006500200065006E00640020006F0066002000740068006500200049
      0073006C0061006D006900630020006D006F006E007400680020006F00660020
      00520061006D006100640061006E002C00200064007500720069006E00670020
      007700680069006300680020004D00750073006C0069006D0073002000660061
      0073007400200064007500720069006E0067002000740068006500200068006F
      0075007200730020006F00660020006400610079006C0069006700680074002E
      00200000004E006100740069006F006E0061006C00200068006F006C00690064
      0061007900020000003000060000004100500049000800000022410B00490000
      00080000000000B48B50F8CC42200000004900640075006C0020004600690074
      007200690020004400610079002000320000000000200000004E006100740069
      006F006E0061006C00200068006F006C00690064006100790002000000300006
      0000004100500049000800000029410B0049000000080000000000B48B50F8CC
      421A000000500061006E0063006100730069006C006100200044006100790000
      000000200000004E006100740069006F006E0061006C00200068006F006C0069
      00640061007900020000003000060000004100500049000800000065410B0049
      000000080000000000B48B50F8CC4216000000450069006400200061006C002D
      00410064006800610078010000450069006400200061006C002D004100640068
      0061002000280049006400200075006C002D0041006400680061002900200069
      007300200061006E002000490073006C0061006D006900630020006600650073
      0074006900760061006C002000660061006C006C0069006E00670020006F006E
      00200074006800650020003100300074006800200064006100790020006F0066
      00200074006800650020006D006F006E007400680020006F0066002000440068
      0075006C002000480069006A006A00610020002800540068006F007500200061
      006C002D00480069006A006A0061002900200074006F00200063006F006D006D
      0065006D006F00720061007400650020007400680065002000770069006C006C
      0069006E0067006E0065007300730020006F0066002000490062007200610068
      0069006D00200028004100620072006100680061006D002900200074006F0020
      007300610063007200690066006900630065002000680069007300200073006F
      006E002E00200000004E006100740069006F006E0061006C00200068006F006C
      006900640061007900020000003000060000004100500049000800000076410B
      0049000000080000000000B48B50F8CC423600000049006E0064006F006E0065
      007300690061006E00200049006E0064006500700065006E00640065006E0063
      006500200044006100790000000000200000004E006100740069006F006E0061
      006C00200068006F006C00690064006100790002000000300006000000410050
      0049000800000079410B0049000000080000000000B48B50F8CC42320000004D
      007500680061007200720061006D002F00490073006C0061006D006900630020
      004E006500770020005900650061007200B40000004D00750068006100720072
      0061006D00200069007300200074006800650020006600690072007300740020
      006D006F006E007400680020006F00660020007400680065002000490073006C
      0061006D00690063002000630061006C0065006E00640061007200200061006E
      006400200061002000740069006D00650020006F0066002000720065006D0065
      006D006200720061006E006300650020006F00720020006D006F00750072006E
      0069006E0067002E00200000004E006100740069006F006E0061006C00200068
      006F006C00690064006100790002000000300006000000410050004900080000
      00BF410B0049000000080000000000B48B50F8CC423E00000054006800650020
      00500072006F00700068006500740020004D007500680061006D006D00610064
      0027007300200042006900720074006800640061007900F20000004D00610077
      006C00690064002C0020006F00720020004D0069006C00610064002C0020006D
      00610072006B007300200074006800650020006200690072007400680020006F
      00660020007400680065002000490073006C0061006D00690063002000700072
      006F00700068006500740020004D007500680061006D006D00650064002C0020
      006F00720020004D006F00680061006D00650064002C00200069006E00200074
      006800650020007900650061007200200035003700300020006F006600200074
      0068006500200047007200650067006F007200690061006E002000630061006C
      0065006E006400610072002E00200000004E006100740069006F006E0061006C
      00200068006F006C006900640061007900020000003000060000004100500049
      0008000000F8410B0049000000080000000000B48B50F8CC421A000000430068
      0072006900730074006D00610073002000440061007900DC0000004300680072
      006900730074006D0061007300200044006100790020006900730020006F006E
      00650020006F0066002000740068006500200062006900670067006500730074
      002000430068007200690073007400690061006E002000630065006C00650062
      0072006100740069006F006E007300200061006E0064002000660061006C006C
      00730020006F006E00200044006500630065006D006200650072002000320035
      00200069006E002000740068006500200047007200650067006F007200690061
      006E002000630061006C0065006E006400610072002E00200000004E00610074
      0069006F006E0061006C00200068006F006C0069006400610079000200000030
      000600000041005000490008000000FF410B0049000000080000000000B48B50
      F8CC421C0000004E006500770020005900650061007200270073002000440061
      007900AA0000004E006500770020005900650061007200192073002000440061
      0079002000690073002000740068006500200066006900720073007400200064
      006100790020006F0066002000740068006500200079006500610072002C0020
      006F00720020004A0061006E007500610072007900200031002C00200069006E
      002000740068006500200047007200650067006F007200690061006E00200063
      0061006C0065006E006400610072002E00200000004E006100740069006F006E
      0061006C00200068006F006C0069006400610079000200000030000600000041
      00500049000800000029420B0049000000080000000000B48B50F8CC42380000
      004300680069006E0065007300650020004C0075006E006100720020004E0065
      0077002000590065006100720027007300200044006100790004010000430068
      0069006E0065007300650020004E006500770020005900650061007200200069
      0073002000740068006500200066006900720073007400200064006100790020
      006F006600200074006800650020004300680069006E00650073006500200063
      0061006C0065006E006400610072002C00200077006800690063006800200069
      0073002000610020006C0075006E00690073006F006C00610072002000630061
      006C0065006E0064006100720020006D00610069006E006C0079002000750073
      0065006400200066006F007200200074007200610064006900740069006F006E
      0061006C002000630065006C006500620072006100740069006F006E0073002E
      00200000004E006100740069006F006E0061006C00200068006F006C00690064
      0061007900020000003000060000004100500049000800000044420B00490000
      00080000000000B48B50F8CC424200000041007300630065006E00730069006F
      006E0020006F00660020007400680065002000500072006F0070006800650074
      0020004D007500680061006D006D0061006400E2010000490073007200610020
      0061006E00640020004D0069002700720061006A002000280049007300720061
      0020004D0065002700720061006A002C00200049007300720061006100200061
      006E00640020004D00690027007200610061006A002C0020004C00610079006C
      0061007400200041006C002D004900730072006100200077006100200041006C
      002D004D006900720061006A002C0020004C00610069006C0061007400200061
      006C0020004D006900720061006A002C0020004E00690067006800740020004A
      006F00750072006E0065007900200061006E006400200041007300630065006E
      00730069006F006E00200074006F002000480065006100760065006E00290020
      006D00610072006B007300200074006800650020006E00690067006800740020
      00740068006100740020007400680065002000500072006F0070006800650074
      0020004D006F00680061006D006D00610064002000740072006100760065006C
      00650064002000660072006F006D0020004D006500630063006100200074006F
      0020004A00650072007500730061006C0065006D002C00200061007300630065
      006E00640065006400200074006F002000680065006100760065006E00200061
      006E0064002000720065007400750072006E00650064002E00200000004E0061
      00740069006F006E0061006C00200068006F006C006900640061007900020000
      003000060000004100500049000800000047420B0049000000080000000000B4
      8B50F8CC4250000000420061006C00690027007300200044006100790020006F
      0066002000530069006C0065006E0063006500200061006E0064002000480069
      006E006400750020004E00650077002000590065006100720000000000200000
      004E006100740069006F006E0061006C00200068006F006C0069006400610079
      0002000000300006000000410050004900080000005A420B0049000000080000
      000000B48B50F8CC421600000047006F006F0064002000460072006900640061
      0079009600000047006F006F0064002000460072006900640061007900200069
      00730020006100200067006C006F00620061006C002000430068007200690073
      007400690061006E0020006F006200730065007200760061006E006300650020
      00740077006F002000640061007900730020006200650066006F007200650020
      004500610073007400650072002000530075006E006400610079002E00200000
      004E006100740069006F006E0061006C00200068006F006C0069006400610079
      0002000000300006000000410050004900080000005C420B0049000000080000
      000000B48B50F8CC421A0000004500610073007400650072002000530075006E
      00640061007900AC0000004500610073007400650072002000530075006E0064
      0061007900200063006F006D006D0065006D006F007200610074006500730020
      004A006500730075007300200043006800720069007300740019207300200072
      006500730075007200720065006300740069006F006E002C0020006100630063
      006F007200640069006E006700200074006F0020004300680072006900730074
      00690061006E002000620065006C006900650066002E00140000004F00620073
      0065007200760061006E00630065000200000030000600000041005000490008
      00000077420B0049000000080000000000B48B50F8CC422E00000049006E0074
      00650072006E006100740069006F006E0061006C0020004C00610062006F0072
      002000440061007900A60000004D006100790020004400610079002C0020006F
      00720020004C00610062006F00720020004400610079002C0020006900730020
      006100200064006100790020006F0066006600200066006F007200200077006F
      0072006B00650072007300200069006E0020006D0061006E007900200063006F
      0075006E00740072006900650073002000610072006F0075006E006400200074
      0068006500200077006F0072006C0064002E00200000004E006100740069006F
      006E0061006C00200068006F006C006900640061007900020000003000060000
      004100500049000800000083420B0049000000080000000000B48B50F8CC423A
      00000041007300630065006E00730069006F006E00200044006100790020006F
      00660020004A0065007300750073002000430068007200690073007400FE0000
      0041007300630065006E00730069006F006E0020004400610079002000690073
      00200074006800650020003400300074006800200064006100790020006F0066
      0020004500610073007400650072002E00200049007400200069007300200061
      002000720065006C006900670069006F0075007300200068006F006C00690064
      006100790020007400680061007400200063006F006D006D0065006D006F0072
      0061007400650073002000740068006500200061007300630065006E00730069
      006F006E0020006F00660020004A006500730075007300200043006800720069
      0073007400200069006E0074006F002000680065006100760065006E002E0020
      0000004E006100740069006F006E0061006C00200068006F006C006900640061
      007900020000003000060000004100500049000800000084420B004900000008
      0000000000B48B50F8CC42200000004900640075006C00200046006900740072
      00690020004400610079002000320000000000200000004E006100740069006F
      006E0061006C00200068006F006C006900640061007900020000003000060000
      004100500049000800000090420B0049000000080000000000B48B50F8CC4242
      000000570061006900730061006B002000440061007900200028004200750064
      0064006800610027007300200041006E006E0069007600650072007300610072
      007900290000000000200000004E006100740069006F006E0061006C00200068
      006F006C00690064006100790002000000300006000000410050004900080000
      0096420B0049000000080000000000B48B50F8CC421A000000500061006E0063
      006100730069006C006100200044006100790000000000200000004E00610074
      0069006F006E0061006C00200068006F006C0069006400610079000200000030
      000600000041005000490008000000AA420B0049000000080000000000B48B50
      F8CC421A0000004A0075006E006500200053006F006C00730074006900630065
      00000000000C00000053006500610073006F006E000200000030000600000041
      005000490008000000C7420B0049000000080000000000B48B50F8CC42160000
      00450069006400200061006C002D004100640068006100780100004500690064
      00200061006C002D0041006400680061002000280049006400200075006C002D
      0041006400680061002900200069007300200061006E002000490073006C0061
      006D0069006300200066006500730074006900760061006C002000660061006C
      006C0069006E00670020006F006E002000740068006500200031003000740068
      00200064006100790020006F006600200074006800650020006D006F006E0074
      00680020006F00660020004400680075006C002000480069006A006A00610020
      002800540068006F007500200061006C002D00480069006A006A006100290020
      0074006F00200063006F006D006D0065006D006F007200610074006500200074
      00680065002000770069006C006C0069006E0067006E0065007300730020006F
      00660020004900620072006100680069006D0020002800410062007200610068
      0061006D002900200074006F0020007300610063007200690066006900630065
      002000680069007300200073006F006E002E00200000004E006100740069006F
      006E0061006C00200068006F006C006900640061007900020000003000060000
      0041005000490008000000DD420B0049000000080000000000B48B50F8CC4232
      0000004D007500680061007200720061006D002F00490073006C0061006D0069
      00630020004E006500770020005900650061007200B40000004D007500680061
      007200720061006D002000690073002000740068006500200066006900720073
      00740020006D006F006E007400680020006F0066002000740068006500200049
      0073006C0061006D00690063002000630061006C0065006E0064006100720020
      0061006E006400200061002000740069006D00650020006F0066002000720065
      006D0065006D006200720061006E006300650020006F00720020006D006F0075
      0072006E0069006E0067002E00200000004E006100740069006F006E0061006C
      00200068006F006C006900640061007900020000003000060000004100500049
      0008000000E3420B0049000000080000000000B48B50F8CC423600000049006E
      0064006F006E0065007300690061006E00200049006E0064006500700065006E
      00640065006E0063006500200044006100790000000000200000004E00610074
      0069006F006E0061006C00200068006F006C0069006400610079000200000030
      00060000004100500049000800000061430B0049000000080000000000FCC8FF
      FFCC422200000044006500630065006D00620065007200200053006F006C0073
      0074006900630065000200000000001200000053006500610073006F006E0074
      00650073000600000031003000390004000000490054000800000064430B0000
      000000080000000000B48B50F8CC421A0000004300680072006900730074006D
      00610073002000450076006500C20000004300680072006900730074006D0061
      0073002000450076006500200069007300200074006800650020006400610079
      0020006200650066006F007200650020004300680072006900730074006D0061
      0073002000440061007900200061006E0064002000660061006C006C00730020
      006F006E00200044006500630065006D00620065007200200032003400200069
      006E002000740068006500200047007200650067006F007200690061006E0020
      00630061006C0065006E006400610072002E00140000004F0062007300650072
      00760061006E0063006500020000003000060000004100500049000800000065
      430B0049000000080000000000B48B50F8CC421A000000430068007200690073
      0074006D00610073002000440061007900DC0000004300680072006900730074
      006D0061007300200044006100790020006900730020006F006E00650020006F
      0066002000740068006500200062006900670067006500730074002000430068
      007200690073007400690061006E002000630065006C00650062007200610074
      0069006F006E007300200061006E0064002000660061006C006C00730020006F
      006E00200044006500630065006D00620065007200200032003500200069006E
      002000740068006500200047007200650067006F007200690061006E00200063
      0061006C0065006E006400610072002E00200000004E006100740069006F006E
      0061006C00200068006F006C0069006400610079000200000030000600000041
      0050004900080000006B430B0049000000080000000000B48B50F8CC421C0000
      004E006500770020005900650061007200270073002000450076006500A60000
      004E006500770020005900650061007200192073002000450076006500200069
      007300200074006800650020006C00610073007400200064006100790020006F
      0066002000740068006500200079006500610072002C00200044006500630065
      006D006200650072002000330031002C00200069006E00200074006800650020
      0047007200650067006F007200690061006E002000630061006C0065006E0064
      00610072002E00140000004F006200730065007200760061006E006300650002
      000000300006000000410050004900}
    object vtholidaystanggal_libur: TDateField
      FieldName = 'tanggal_libur'
      DisplayFormat = 'yyyy-mm-dd'
    end
    object vtholidaystanggal_input: TDateTimeField
      FieldName = 'tanggal_input'
      DisplayFormat = 'yyyy-mm-dd hh:mm:ss'
    end
    object vtholidaysnama: TWideStringField
      FieldName = 'nama'
      Size = 255
    end
    object vtholidaysketerangan: TWideStringField
      FieldName = 'keterangan'
      Size = 255
    end
    object vtholidaystipe: TWideStringField
      FieldName = 'tipe'
      Size = 255
    end
    object vtholidaysid_user: TWideStringField
      FieldName = 'id_user'
      Size = 255
    end
    object vtholidaysuser: TWideStringField
      FieldName = 'user'
      Size = 255
    end
  end
  object dsvtholidays: TUniDataSource
    DataSet = vtholidays
    Left = 438
    Top = 527
  end
  object qperbaikanarinvoicedouble: TUniQuery
    Connection = server
    SQL.Strings = (
      
        'SELECT n.no_order,pk.`no_pengeluaran`,pk.tanggal,no_sj,c.nama,to' +
        'tal_tagihan'
      
        'FROM n_temp_kasir n JOIN order_pembelian o USING(no_order) JOIN ' +
        'relasi_orderdanpenjualan r USING(no_order) '
      
        'JOIN penjualan_kainstok pk ON r.no_penjualan=no_pengeluaran JOIN' +
        ' customer c ON o.id_customer=c.id_customer')
    Left = 356
    Top = 135
    object qperbaikanarinvoicedoubleno_order: TStringField
      FieldName = 'no_order'
      Required = True
      Size = 255
    end
    object qperbaikanarinvoicedoubleno_pengeluaran: TStringField
      FieldName = 'no_pengeluaran'
      ReadOnly = True
      Required = True
      Size = 25
    end
    object qperbaikanarinvoicedoubletanggal: TDateField
      FieldName = 'tanggal'
      ReadOnly = True
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qperbaikanarinvoicedoubleno_sj: TStringField
      FieldName = 'no_sj'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object qperbaikanarinvoicedoublenama: TStringField
      FieldName = 'nama'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object qperbaikanarinvoicedoubletotal_tagihan: TFloatField
      FieldName = 'total_tagihan'
      DisplayFormat = ',0'
    end
  end
  object dsqperbaikanarinvoicedouble: TUniDataSource
    DataSet = qperbaikanarinvoicedouble
    Left = 358
    Top = 177
  end
end
