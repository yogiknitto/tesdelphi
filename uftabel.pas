unit uftabel;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, Uni, UniProvider,
  MySQLUniProvider, MemDS, VirtualTable,System.JSON, System.Net.URLClient,
  System.Net.HttpClient, System.Net.HttpClientComponent, IPPeerClient,
  REST.Client, Data.Bind.Components, Data.Bind.ObjectScope,
  REST.Response.Adapter;

type
  TAdapterJSONValue = class(TInterfacedObject, IRESTResponseJSON)
  private
    FJSONValue: TJSONValue;
  protected
    { IRESTResponseJSON }
    procedure AddJSONChangedEvent(const ANotify: TNotifyEvent);
    procedure RemoveJSONChangedEvent(const ANotify: TNotifyEvent);
    procedure GetJSONResponse(out AJSONValue: TJSONValue; out AHasOwner: Boolean);
    function HasJSONResponse: Boolean;
    function HasResponseContent: Boolean;
  public
    constructor Create(const AJSONValue: TJSONValue);
    destructor Destroy; override;
  end;

type
  Ttabel = class(TDataModule)
    MySQLUniProvider1: TMySQLUniProvider;
    server: TUniConnection;
    q1: TUniQuery;
    q2: TUniQuery;
    qfakturasli: TUniQuery;
    qfakturaslino_order: TStringField;
    qfakturasliid_customer: TIntegerField;
    qfakturaslicustomer: TStringField;
    qfakturasliadmin: TStringField;
    qfakturasliid_user: TIntegerField;
    qfakturaslijml: TLargeintField;
    qfakturaslitanggal: TDateTimeField;
    qfakturaslijenis: TStringField;
    qfakturaslijenis_pengiriman: TStringField;
    qfakturasliexspedisi: TStringField;
    qfakturaslipenanggung: TStringField;
    dsfakturasli: TUniDataSource;
    qdetailpenjualan: TUniQuery;
    qdetailpenjualanno_pengeluaran: TStringField;
    qdetailpenjualanrelasi: TStringField;
    qdetailpenjualanroll: TFloatField;
    qdetailpenjualanberat: TFloatField;
    qdetailpenjualankualitas: TStringField;
    qdetailpenjualanid_warna: TIntegerField;
    qdetailpenjualanid_kain: TIntegerField;
    qdetailpenjualanno_detail: TIntegerField;
    qdetailpenjualanbody: TStringField;
    qdetailpenjualanmesin: TStringField;
    qdetailpenjualangramasi: TStringField;
    qdetailpenjualanlebar: TStringField;
    qdetailpenjualannama_kain: TStringField;
    qdetailpenjualanjenis_warna: TStringField;
    qdetailpenjualanjenis: TStringField;
    qdetailpenjualankode_spk: TStringField;
    qdetailpenjualanhargaasli: TFloatField;
    qdetailpenjualansubtotal: TFloatField;
    qdetailpenjualanharga: TFloatField;
    qdetailpenjualantotal: TFloatField;
    qdetailpenjualanidentitas: TStringField;
    dsqdetailpenjualan: TUniDataSource;
    qdetailpenjualanno_order: TStringField;
    qkonfirmasi: TUniQuery;
    qkonfirmasino_order: TStringField;
    qkonfirmasinama: TStringField;
    qkonfirmasiatas_nama: TStringField;
    qkonfirmasijumlah_uang: TFloatField;
    qkonfirmasitanggal: TDateTimeField;
    qkonfirmasinokonfirmasi: TIntegerField;
    qkonfirmasibank: TStringField;
    dsqkonfirmasi: TUniDataSource;
    qrekeningkoran: TUniQuery;
    dsqrekeningkoran: TUniDataSource;
    vt1: TVirtualTable;
    vt1data: TStringField;
    vt1isidata: TStringField;
    dsvt1: TDataSource;
    qpenjualan: TUniQuery;
    qpenjualancatatan: TStringField;
    qpenjualantanggal: TDateField;
    qpenjualanno_pengeluaran: TStringField;
    qpenjualanjenis_kain: TStringField;
    qpenjualancustomer: TStringField;
    qpenjualansupir: TStringField;
    qpenjualanno_mobil: TStringField;
    qpenjualanno_sj: TStringField;
    dsqpenjualan: TUniDataSource;
    qdetailpenjualan2: TUniQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    StringField3: TStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    StringField12: TStringField;
    dsqdetailpenjualan2: TUniDataSource;
    dsqroll: TUniDataSource;
    qroll: TUniQuery;
    StringField13: TStringField;
    StringField14: TStringField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    FloatField7: TFloatField;
    IntegerField6: TIntegerField;
    qrollno_roll: TStringField;
    qrollberat: TStringField;
    qrolltotal: TFloatField;
    qrolllokasi: TStringField;
    qcetak: TUniQuery;
    qcetakroll: TFloatField;
    qcetakberat: TFloatField;
    qcetakkualitas: TStringField;
    qcetakid_warna: TIntegerField;
    qcetakid_kain: TIntegerField;
    qcetakno_detail: TIntegerField;
    qcetakbody: TStringField;
    qcetakmesin: TStringField;
    qcetakgramasi: TStringField;
    qcetaklebar: TStringField;
    qcetaknama_kain: TStringField;
    qcetakjenis_warna: TStringField;
    qcetakjenis: TStringField;
    qcetakkode_spk: TStringField;
    qcetakhargaasli: TFloatField;
    qcetaksubtotal: TFloatField;
    qcetakharga: TFloatField;
    qcetaktotal: TFloatField;
    dsqcetak: TUniDataSource;
    udata: TUniQuery;
    udatano_pengeluaran: TStringField;
    udatakualitas: TStringField;
    udataid_Warna: TIntegerField;
    udataid_kain: TIntegerField;
    udatagramasi: TStringField;
    udatalebar: TStringField;
    udatamesin: TStringField;
    udataharga: TFloatField;
    udatano_detail: TIntegerField;
    udataroll: TMemoField;
    dsudata: TUniDataSource;
    q3: TUniQuery;
    q4: TUniQuery;
    qclosing: TUniQuery;
    dsqclosing: TUniDataSource;
    qclosingtgl: TDateField;
    qclosingcash: TFloatField;
    qclosingcc: TFloatField;
    qclosingmandiri: TFloatField;
    qclosingbca: TFloatField;
    qclosinglainnya: TFloatField;
    qdetailclosing: TUniQuery;
    dsqdetailclosing: TUniDataSource;
    qdetailclosingnama: TStringField;
    qdetailclosingno_pengeluaran: TStringField;
    qdetailclosingjumlah_uang: TFloatField;
    qdetailclosingsumber: TStringField;
    qdetailclosingket: TStringField;
    qdetailclosingtgl: TDateField;
    qpenjualan5: TUniQuery;
    dsqpenjualan5: TUniDataSource;
    qpenjualan5tanggal: TDateField;
    qpenjualan5id_transaksi: TStringField;
    qpenjualan5nama: TStringField;
    qdetail5: TUniQuery;
    dsqdetail5: TUniDataSource;
    qdetail5no_penjualan: TStringField;
    qdetail5jenis: TStringField;
    qdetail5nominal: TFloatField;
    qdetail5ket: TStringField;
    qsaldopiutang: TUniQuery;
    qsaldopiutangid_customer: TIntegerField;
    qsaldopiutangnama: TStringField;
    qsaldopiutangtotal: TFloatField;
    dsqsaldopiutang: TUniDataSource;
    qdetailsaldopiutang: TUniQuery;
    qdetailsaldopiutangtanggal: TDateTimeField;
    qdetailsaldopiutangjenis: TStringField;
    qdetailsaldopiutangketerangan: TStringField;
    qdetailsaldopiutangdebet: TFloatField;
    qdetailsaldopiutangkredit: TFloatField;
    qdetailsaldopiutangsaldo: TFloatField;
    qdetailsaldopiutangid_customer: TIntegerField;
    dsqdetailsaldopiutang: TUniDataSource;
    qkembalidana: TUniQuery;
    qkembalidanaid_customer: TIntegerField;
    qkembalidanano: TIntegerField;
    qkembalidanatanggal: TDateTimeField;
    qkembalidananominal: TFloatField;
    qkembalidanarekening_tujuan: TStringField;
    qkembalidanabank_tujuan: TStringField;
    qkembalidanakode_kas: TIntegerField;
    qkembalidanacatatan: TStringField;
    qkembalidanaid_user: TIntegerField;
    qkembalidananama: TStringField;
    qkembalidanatelepon: TStringField;
    qkembalidanafaximile: TStringField;
    qkembalidanaemail: TStringField;
    qkembalidanacontact_person: TStringField;
    qkembalidanaalamat: TStringField;
    qkembalidanastatus: TStringField;
    qkembalidananpwp: TStringField;
    qkembalidanatermin: TIntegerField;
    qkembalidanakredit_limit: TFloatField;
    qkembalidanaid_salesman: TIntegerField;
    qkembalidanaid_kategoricustomer: TIntegerField;
    qkembalidanaaktif: TIntegerField;
    qkembalidanakota: TStringField;
    qkembalidanakode_kas_1: TIntegerField;
    qkembalidananama_kas: TStringField;
    qkembalidanaalamat_1: TStringField;
    qkembalidanar_d: TStringField;
    qkembalidanano_rekening: TStringField;
    qkembalidanabank: TStringField;
    qkembalidanaatas_nama: TStringField;
    qkembalidanastatus_rekening: TStringField;
    dsqkembalidana: TUniDataSource;
    qdataclosing: TUniQuery;
    qdataclosingno: TIntegerField;
    qdataclosingtanggal: TDateTimeField;
    qdataclosinguser: TIntegerField;
    qdataclosingjenis: TStringField;
    qdataclosingkode_kas: TIntegerField;
    qdataclosingnominal: TFloatField;
    qdataclosingstatus: TIntegerField;
    qdataclosingno_1: TIntegerField;
    qdataclosingtanggal_1: TDateTimeField;
    qdataclosingid_closing: TIntegerField;
    qdataclosingcatatan: TStringField;
    qdataclosingid_user: TIntegerField;
    qdatadetailclosing: TUniQuery;
    qdatadetailclosingno_transaksi: TStringField;
    qdatadetailclosingnama: TStringField;
    qdatadetailclosingsumber: TStringField;
    qdatadetailclosingketerangan: TStringField;
    qdatadetailclosingjumlah: TFloatField;
    dsqdataclosing: TUniDataSource;
    dsqdatadetailclosing: TUniDataSource;
    qlappemasangan: TUniQuery;
    dsqlappemasangan: TUniDataSource;
    qrekomendasi: TUniQuery;
    dsqrekomendasi: TUniDataSource;
    qrekomendasibank_transferan: TStringField;
    qrekomendasiid_transaksi: TIntegerField;
    qrekomendasitanggal: TDateField;
    qrekomendasiketerangan: TStringField;
    qrekomendasiatas_nama: TStringField;
    qrekomendasicustomer: TStringField;
    qrekomendasibank_konfirmasi: TStringField;
    qrekomendasino_order: TStringField;
    qrekomendasijumlah_uang: TFloatField;
    qrekomendasitanggal_transfer: TDateTimeField;
    qrekomendasiadmin: TStringField;
    qrekomendasibank: TStringField;
    qrekomendasino_order_1: TStringField;
    qrekomendasikode_kas: TIntegerField;
    qrekomendasino: TIntegerField;
    qrekomendasiid_customer: TIntegerField;
    qrekomendasipilih: TStringField;
    qkonfirmasiadmin: TStringField;
    qpemasanganmanual: TUniQuery;
    dsqpemasanganmanual: TUniDataSource;
    qpemasanganmanualno_rekening: TStringField;
    qpemasanganmanualbank: TStringField;
    qpemasanganmanualnominal: TFloatField;
    qpemasanganmanualtanggal_pemasangan: TDateTimeField;
    qpemasanganmanualkategori: TStringField;
    qpemasanganmanualketerangan: TStringField;
    qpemasanganmanualadmin: TStringField;
    qpemasanganmanualidxno: TIntegerField;
    qlapolshop: TUniQuery;
    dsqlapolshop: TUniDataSource;
    qlapolshopid_transaksi: TIntegerField;
    qlapolshoptanggal: TDateField;
    qlapolshopketerangan: TStringField;
    qlapolshopjumlah: TFloatField;
    qlapolshopketerangan2: TStringField;
    qrekeningkoranid_transaksi: TIntegerField;
    qrekeningkorantanggal: TDateField;
    qrekeningkoranketerangan: TStringField;
    qrekeningkoranketerangan2: TStringField;
    qrekeningkoransisa: TFloatField;
    qrekeningkorantanggal_sts: TStringField;
    qrekeningkoranno_rekening: TStringField;
    qrekeningkoranbank: TStringField;
    qrekeningkoranjumlah: TFloatField;
    qkonfirmasino: TIntegerField;
    qkonfirmasicatatan: TStringField;
    dsqcekkonfirmasi: TUniDataSource;
    qcekkonfirmasi: TUniQuery;
    qcekkonfirmasino: TIntegerField;
    qcekkonfirmasino_order: TStringField;
    qcekkonfirmasiatas_nama: TStringField;
    qcekkonfirmasibank: TStringField;
    qcekkonfirmasijumlah_uang: TFloatField;
    qcekkonfirmasitanggal_transfer: TDateTimeField;
    qcekkonfirmasistatus: TIntegerField;
    qcekkonfirmasikode_kas: TIntegerField;
    qcekkonfirmasiid_karyawan: TIntegerField;
    qcekkonfirmasino_konfirmasi: TIntegerField;
    qcekkonfirmasistatus_verifikasi: TStringField;
    qcekkonfirmasists: TStringField;
    qhapuskonfirmasi: TUniQuery;
    qdshapuskonfirmasi: TUniDataSource;
    qhapuskonfirmasino: TIntegerField;
    qhapuskonfirmasinokonfirmasi: TIntegerField;
    qhapuskonfirmasino_order: TStringField;
    qhapuskonfirmasinama: TStringField;
    qhapuskonfirmasiatas_nama: TStringField;
    qhapuskonfirmasijumlah_uang: TFloatField;
    qhapuskonfirmasitanggal: TDateTimeField;
    qhapuskonfirmasibank: TStringField;
    qhapuskonfirmasiadmin: TStringField;
    qhapuskonfirmasicatatan: TStringField;
    qlappemasanganno: TIntegerField;
    qlappemasangantanggal: TDateField;
    qlappemasanganketerangan: TStringField;
    qlappemasangancabang: TStringField;
    qlappemasanganjumlah: TFloatField;
    qlappemasangannama: TStringField;
    qlappemasangansaldo_akhir: TFloatField;
    qlappemasanganmutasi: TStringField;
    qlappemasangankredit: TFloatField;
    qlappemasangandebet: TFloatField;
    qkonfirmasino_pesanan: TStringField;
    qlappemasangannodetailkonfirmasi: TIntegerField;
    qlappemasangannorekening: TIntegerField;
    qperapihan_kas: TUniQuery;
    Uperapihan_kas: TUniDataSource;
    qperapihan_kasno_transaksi: TStringField;
    qperapihan_kastanggal: TDateField;
    qperapihan_kasjenis: TStringField;
    qperapihan_kasdari: TStringField;
    qperapihan_kasnocg: TStringField;
    qperapihan_kasbankcg: TStringField;
    qperapihan_kaskode_kas: TIntegerField;
    qperapihan_kasjumlah: TFloatField;
    qperapihan_kaskode_perkiraan: TIntegerField;
    qperapihan_kasketerangan: TStringField;
    qperapihan_kasstatus: TIntegerField;
    qperapihan_kastanggal_cair: TDateField;
    qperapihan_kasno_urut: TIntegerField;
    q5: TUniQuery;
    qlaphutang_lainlain: TUniQuery;
    Ulaphutang_lainlain: TUniDataSource;
    qlaphutang_lainlainnama: TStringField;
    qlaphutang_lainlainsaldo: TFloatField;
    qdetail_lphutanglainlain: TUniQuery;
    Udetail_lphutanglainlain: TUniDataSource;
    qdetail_lphutanglainlainnama: TStringField;
    qdetail_lphutanglainlaintanggal: TDateField;
    qdetail_lphutanglainlainpenerimaan: TFloatField;
    qdetail_lphutanglainlainpengeluaran: TFloatField;
    qdetail_lphutanglainlainno_transaksi: TStringField;
    qdetail_lphutanglainlainjenis: TStringField;
    qdetail_lphutanglainlainsaldo: TFloatField;
    qmanual: TUniQuery;
    dsqmanual: TUniDataSource;
    qmanualno: TIntegerField;
    qmanualtanggal: TDateField;
    qmanualbank: TStringField;
    qmanualketerangan: TStringField;
    qmanualnominal: TFloatField;
    qpasangmanual: TUniQuery;
    dsqpasangmanual: TUniDataSource;
    qpasangmanualtanggal: TDateField;
    qpasangmanualno_penjualan: TStringField;
    qpasangmanualbank: TStringField;
    qpasangmanualjenis_pembayaran: TStringField;
    qpasangmanualjumlah: TFloatField;
    qpasangmanualpilih: TStringField;
    qmanualkategori: TStringField;
    qmanualnamabank: TStringField;
    qlappemasanganSTATUS: TStringField;
    qjurnalpengeluranongkir: TUniQuery;
    dsqjurnalpengeluranongkir: TUniDataSource;
    qjurnalpengeluranlain: TUniQuery;
    dsqjurnalpengeluranlain: TUniDataSource;
    qjurnalpengeluranlainnama_perkiraan: TStringField;
    qjurnalpengeluranlainketerangan: TStringField;
    qjurnalpengeluranlainjumlah: TFloatField;
    qjurnalpengeluranlaintanggal: TDateField;
    qjurnalpengeluranlainno_transaksi: TStringField;
    qpemasangancus: TUniQuery;
    Uqpemasangancus: TUniDataSource;
    qpemasangancusno_transaksi: TStringField;
    qpemasangancustanggal: TDateField;
    qpemasangancusjenis: TStringField;
    qpemasangancusdari: TStringField;
    qpemasangancusnocg: TStringField;
    qpemasangancusbankcg: TStringField;
    qpemasangancuskode_kas: TIntegerField;
    qpemasangancusjumlah: TFloatField;
    qpemasangancuskode_perkiraan: TIntegerField;
    qpemasangancusketerangan: TStringField;
    qpemasangancusstatus: TIntegerField;
    qpemasangancustanggal_cair: TDateField;
    qpemasangancusno_urut: TIntegerField;
    qpemasangancusid: TIntegerField;
    qpemasangancusno_transaksi_1: TStringField;
    qpemasangancusnama: TStringField;
    qpemasangancusid_customer: TIntegerField;
    qcuspemsangan: TUniQuery;
    Uqcuspemsangan: TUniDataSource;
    qcuspemsanganid_customer: TIntegerField;
    qcuspemsangannama: TStringField;
    qcuspemsangantelepon: TStringField;
    qcuspemsanganfaximile: TStringField;
    qcuspemsanganemail: TStringField;
    qcuspemsangancontact_person: TStringField;
    qcuspemsanganalamat: TStringField;
    qcuspemsanganstatus: TStringField;
    qcuspemsangannpwp: TStringField;
    qcuspemsangantermin: TIntegerField;
    qcuspemsangankredit_limit: TFloatField;
    qcuspemsanganid_salesman: TIntegerField;
    qcuspemsanganid_kategoricustomer: TIntegerField;
    qcuspemsanganaktif: TIntegerField;
    qcuspemsangankota: TStringField;
    qjurnalpengeluranongkirtanggal: TDateTimeField;
    qjurnalpengeluranongkirno_muat: TStringField;
    qjurnalpengeluranongkirdetail: TIntegerField;
    qjurnalpengeluranongkirno_order: TStringField;
    qjurnalpengeluranongkirnama: TStringField;
    qjurnalpengeluranongkirexspedisi: TStringField;
    qjurnalpengeluranongkirongkir: TFloatField;
    qjurnalpengeluranongkirtipe_pembayaran: TStringField;
    qjurnalpengeluranongkirid_customer: TIntegerField;
    qjurnalpengeluranongkirno_penjualan: TStringField;
    qlappemasanganid_transaksi: TIntegerField;
    qjurnalkotrabon: TUniQuery;
    dsqjurnalkontrabon: TUniDataSource;
    qjurnalkotrabontanggal: TDateTimeField;
    qjurnalkotrabonno_muat: TStringField;
    qjurnalkotrabonno_penjualan: TStringField;
    qjurnalkotrabondetail: TIntegerField;
    qjurnalkotrabonno_order: TStringField;
    qjurnalkotrabonnama: TStringField;
    qjurnalkotrabonexspedisi: TStringField;
    qjurnalkotrabonongkir: TFloatField;
    qjurnalkotrabontipe_pembayaran: TStringField;
    qjurnalkotrabonpilihan: TStringField;
    qlapkontrabon: TUniQuery;
    dsqlapkontrabon: TUniDataSource;
    qlapdetailkontrabon: TUniQuery;
    dsqdetailkontrabon: TUniDataSource;
    qlapkontrabonno_transaksi: TStringField;
    qlapkontrabontanggal: TDateField;
    qlapkontrabonketerangan: TStringField;
    qlapkontrabonexspedisi: TStringField;
    qlapkontrabonid: TIntegerField;
    qlapkontrabonjumlah: TFloatField;
    qlapdetailkontrabonno_penjualan: TStringField;
    qlapdetailkontrabonnama: TStringField;
    qlapdetailkontrabonexspedisi: TStringField;
    qlapdetailkontrabonongkir: TFloatField;
    qlapdetailkontrabonno_detail: TIntegerField;
    qlapdetailkontrabonno_jual: TStringField;
    qlapdetailkontrabonid: TIntegerField;
    qkonfirmasiid_user_konfirmasi: TIntegerField;
    http: TNetHTTPClient;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    qjurnalkotrabonasuransi: TFloatField;
    qjurnalkotrabontotal: TFloatField;
    qjurnalkotrabonjenis_pembayaran_asuransi: TStringField;
    qjurnalkotrabonpph: TStringField;
    qjurnalkotrabonno_resi: TStringField;
    qjurnalkotrabonedit: TStringField;
    qjurnalkotrabonselisih: TFloatField;
    qjurnalkotrabonid_customer: TIntegerField;
    qjurnalkotrabonongkir_sesudah: TFloatField;
    qjurnalkotrabonasuransi_sesudah: TFloatField;
    qjurnalnonkontrabon: TUniQuery;
    dsqjurnalnonkontrabon: TUniDataSource;
    qjurnalnonkontrabonid_customer: TIntegerField;
    qjurnalnonkontrabontanggal: TDateTimeField;
    qjurnalnonkontrabonno_muat: TStringField;
    qjurnalnonkontrabonno_penjualan: TStringField;
    qjurnalnonkontrabonno_resi: TStringField;
    qjurnalnonkontrabondetail: TIntegerField;
    qjurnalnonkontrabonno_order: TStringField;
    qjurnalnonkontrabonnama: TStringField;
    qjurnalnonkontrabonexspedisi: TStringField;
    qjurnalnonkontrabonongkir: TFloatField;
    qjurnalnonkontrabonasuransi: TFloatField;
    qjurnalnonkontrabontotal: TFloatField;
    qjurnalnonkontrabonjenis_pembayaran_asuransi: TStringField;
    qjurnalnonkontrabontipe_pembayaran: TStringField;
    qjurnalnonkontrabonpph: TStringField;
    VirtualTable1: TVirtualTable;
    vtjurnalkotrabon: TVirtualTable;
    dsvtjurnalkotrabon: TUniDataSource;
    vtjurnalkotrabontanggal: TDateTimeField;
    vtjurnalkotrabonno_muat: TStringField;
    vtjurnalkotrabonno_penjualan: TStringField;
    vtjurnalkotrabonno_order: TStringField;
    vtjurnalkotrabonnama: TStringField;
    vtjurnalkotrabonexspedisi: TStringField;
    vtjurnalkotrabonongkir: TFloatField;
    vtjurnalkotrabontipe_pembayaran: TStringField;
    vtjurnalkotrabonjenis_pembayaran_asuransi: TStringField;
    vtjurnalkotrabonasuransi: TFloatField;
    vtjurnalkotrabontotal: TFloatField;
    vtjurnalkotrabonno_resi: TStringField;
    vtjurnalkotrabonedit: TStringField;
    vtjurnalkotrabonselisih: TFloatField;
    vtjurnalkotrabonid_customer: TIntegerField;
    vtjurnalkotrabonongkir_sesudah: TFloatField;
    vtjurnalkotrabonasuransi_sesudah: TFloatField;
    vtjurnalkotrabonpilihan: TBooleanField;
    vtholidays: TVirtualTable;
    dsvtholidays: TUniDataSource;
    vtholidaystanggal_libur: TDateField;
    vtholidaystanggal_input: TDateTimeField;
    vtholidaysnama: TWideStringField;
    vtholidaysketerangan: TWideStringField;
    vtholidaystipe: TWideStringField;
    vtholidaysid_user: TWideStringField;
    vtholidaysuser: TWideStringField;
    qperbaikanarinvoicedouble: TUniQuery;
    dsqperbaikanarinvoicedouble: TUniDataSource;
    qperbaikanarinvoicedoubleno_order: TStringField;
    qperbaikanarinvoicedoubleno_pengeluaran: TStringField;
    qperbaikanarinvoicedoubletanggal: TDateField;
    qperbaikanarinvoicedoubleno_sj: TStringField;
    qperbaikanarinvoicedoublenama: TStringField;
    qperbaikanarinvoicedoubletotal_tagihan: TFloatField;
    qjurnalnonkontrabonasuransi_jenis: TStringField;
    qjurnalkotrabonasuransi_jenis: TStringField;
    qjurnalkotrabonkode_asuransi: TStringField;
    qjurnalkotrabonestimasi_asuransi: TFloatField;
    qjurnalnonkontrabonedit: TStringField;
    qjurnalnonkontrabonongkir_sesudah: TFloatField;
    qjurnalnonkontrabonasuransi_sesudah: TFloatField;
    qjurnalnonkontrabonongkir_sebelum: TFloatField;
    qjurnalnonkontrabonasuransi_sebelum: TFloatField;
    procedure qfakturasliAfterScroll(DataSet: TDataSet);
    procedure qpenjualan5AfterScroll(DataSet: TDataSet);
    procedure qpasangmanualAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure login(username, password: String);
    procedure loginSAP(username, password: String);
    procedure httpget(url: string; mem: TStringStream);
    function httppost(url: string; lst: TStringList): string;
    procedure datatogrid(dts: TDataset; str: string);
    procedure generalpostservicetotabel();
  end;

//const
//  urlPusat = 'http://192.168.20.13:8077/';

var
  tabel: Ttabel;
  urlSAPCabang,urlPusat:string;
  idkaryawan:string;
  v_idkaryawan,v_idkaryawanPusat:string;
  v_namakaryawan:string;
  v_leveladmin:string;
  vcabang,vcabangbranch : string;
  v_secretkey: string;
  v_statuslogin,v_username:string;
  v_t_url,v_t_str_global: string;
  v_t_mem: TStringStream;
  v_t_lst: TStringList;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ufmenuutama;

{$R *.dfm}

procedure Ttabel.datatogrid(dts: TDataset; str: string);
var
  respondataset: TRESTResponseDataSetAdapter;
  jValue: TJSONValue;
  LIntf: IRESTResponseJSON;
  jso: TJSONObject;
begin
  respondataset := TRESTResponseDataSetAdapter.Create(nil);
  respondataset.Name := 'rrdsa' + dts.Name;

  respondataset.ResponseJSON := nil;
  respondataset.Dataset := dts;

  respondataset.NestedElements := False;

  jso := TJSONObject.ParseJSONValue(str) as TJSONObject;
  jValue := (jso as TJSONObject).Get('values').JSONValue;

  if jValue = nil then
    raise Exception.Create('Invalid JSON');

  LIntf := TAdapterJSONValue.Create(jValue);
  respondataset.ResponseJSON := LIntf;
  respondataset.Active := True;
end;

procedure Ttabel.httpget(url: string; mem: TStringStream);
begin
  http.AllowCookies := True;
  http.HandleRedirects := True;
  http.CustomHeaders['Authorization'] := v_secretkey;
  http.Get(url, mem, nil)
end;

function Ttabel.httppost(url: string; lst: TStringList): string;
var
  mem: TStringStream;
begin
  mem := TStringStream.Create;
  http.AllowCookies := True;
  http.HandleRedirects := True;
  http.CustomHeaders['Authorization'] := v_secretkey;
  http.Post(url, lst, mem, nil);
  Result := mem.DataString;
end;

procedure Ttabel.login(username, password: String);
var
  jValue: TJSONValue;
  alamat: string;
  k, tes: Integer;
  mem: TStringStream;
  jso: TJSONObject;
  jsa: TJSONArray;
  str: string;
  lst: TStringList;
  status:string;
begin
  lst := TStringList.Create;
  mem := TStringStream.Create;

  lst.Add('username=' + username);
  lst.Add('password=' + password);

  try
    try
      http.Post(urlPusat + 'user_login/login', lst, mem, nil);
      str := mem.DataString;
    finally
      lst.Free;
      mem.Free;
    end;

    jso := TJSONObject.ParseJSONValue(str) as TJSONObject;
    status := jso.GetValue('status').Value;
    if status = '200' then
    begin
      jso := jso.GetValue('values') as TJSONObject;
      v_statuslogin := jso.GetValue('login').Value;
      v_idkaryawanPusat := jso.GetValue('id_user').Value;
      v_leveladmin := jso.GetValue('level').Value;
      v_namakaryawan := jso.GetValue('nama').Value;
      v_username := userName;
      v_secretkey := jso.GetValue('screetkey').Value;
    end else
    if status = '201' then
    begin
      jso := jso.GetValue('values') as TJSONObject;
      v_statuslogin := jso.GetValue('status').Value;
    end else
    if status = '300' then
    begin
      jso := jso.GetValue('values') as TJSONObject;
      v_statuslogin := jso.GetValue('status').Value;
    end;
  except
    v_statuslogin := 'GAGAL AKSES REST API' + #13 + urlPusat +  'user_login/login' + #13 +
    status + v_username + #13 +  str;
  end;
end;

procedure Ttabel.loginSAP(username, password: String);
var
  jValue: TJSONValue;
  alamat: string;
  k, tes: Integer;
  mem: TStringStream;
  jso: TJSONObject;
  jsa: TJSONArray;
  str: string;
  lst: TStringList;
  status:string;
begin
  lst := TStringList.Create;
  mem := TStringStream.Create;

  lst.Add('username=' + username);
  lst.Add('password=' + password);

  try
    try
      http.Post(urlSAPCabang + 'user_login/login', lst, mem, nil);
      str := mem.DataString;
    finally
      lst.Free;
      mem.Free;
    end;

    jso := TJSONObject.ParseJSONValue(str) as TJSONObject;
    status := jso.GetValue('status').Value;
    if status = '200' then
    begin
      jso := jso.GetValue('values') as TJSONObject;
      v_statuslogin := jso.GetValue('login').Value;
      v_idkaryawan := jso.GetValue('id_user').Value;
      v_leveladmin := jso.GetValue('level').Value;
      v_namakaryawan := jso.GetValue('nama').Value;
      v_username := userName;
      v_secretkey := jso.GetValue('screetkey').Value;
    end else
    if status = '201' then
    begin
      jso := jso.GetValue('values') as TJSONObject;
      v_statuslogin := jso.GetValue('status').Value;
    end else
    if status = '300' then
    begin
      jso := jso.GetValue('values') as TJSONObject;
      v_statuslogin := jso.GetValue('status').Value;
    end;
  except
    v_statuslogin := 'GAGAL AKSES REST API' + #13 + urlPusat +  'user_login/login' + #13 +
    status + v_username + #13 +  str;
  end;
end;

procedure Ttabel.generalpostservicetotabel;
var
  jso: TJSONObject;
  str: string;
  status,isistatus: string;
begin
  try
    str := httppost(v_t_url,v_t_lst);
  finally
    v_t_lst.Free;
    v_t_mem.Free;
  end;

  v_t_str_global := str;
end;

procedure Ttabel.qfakturasliAfterScroll(DataSet: TDataSet);
var noorder:string;
begin
{noorder:=qfakturaslino_order.Value;
qdetailpenjualan.SQL.Clear;
qdetailpenjualan.SQL.Add('select  no_pengeluaran,no_order, '+
'concat(no_pengeluaran,kualitas,id_warna,id_kain,gramasi,lebar,mesin,harga) as relasi,sum(dpk.roll) as roll, '+
'sum(dpk.berat)  as berat                                                                  '+
',kualitas,id_warna,id_kain,dpk.no_detail,dpk.jenis_kain as body,mesin,gramasi,         '+
'lebar,nama_kain,jenis_warna,pk.jenis_kain as jenis, kode_spk,harga as hargaasli        '+
',harga/1.1 as subtotal,harga/1.1 as harga,sum(dpk.berat)*harga as total,              '+
'concat(nama_kain,'' - '',jenis_Warna) as identitas                                       '+
'from detail_pengeluaranstok dpk join penjualan_kainstok pk using(no_pengeluaran) join kain k using(id_kain)  '+
'join warna w using(id_warna) join relasi_orderdanpenjualan ro on ro.no_penjualan=pk.no_pengeluaran where no_order='''+noorder+''' ');
qdetailpenjualan.Active:=True;  }

end;

procedure Ttabel.qpasangmanualAfterScroll(DataSet: TDataSet);
//var t1,kategori:string;
begin
//kategori:=tabel.qmanualkategori.Value;
//
//  t1 := FormatDateTime('yyyy-mm-dd',fmenuutama.DateTimePicker1.DateTime);
//   if kategori='SETORAN TUNAI' then begin
//      qpasangmanual.SQL.Clear;
//      qpasangmanual.SQL.Add('SELECT CAST(nt.tanggal AS DATE) AS tanggal,ro.`no_penjualan`,nt.bank,jenis_pembayaran,nt.jumlah,''False'' as pilih '+
//      ' FROM n_temp_kasirdetail nt JOIN relasi_orderdanpenjualan ro USING(no_order)  '+
//      ' where CAST(nt.tanggal AS DATE) = '''+t1+'''  and jenis_pembayaran=''CASH'' '+
//      ' having no_penjualan not in (select no_transaksi from junct_manualbank )  ');
//      qpasangmanual.Active:=True;
//   end else begin
//      qpasangmanual.SQL.Clear;
//      qpasangmanual.SQL.Add('SELECT CAST(nt.tanggal AS DATE) AS tanggal,ro.`no_penjualan`,nt.bank,jenis_pembayaran,nt.jumlah,''False'' as pilih '+
//      ' FROM n_temp_kasirdetail nt JOIN relasi_orderdanpenjualan ro USING(no_order)  '+
//      ' where CAST(nt.tanggal AS DATE) = '''+t1+'''  and jenis_pembayaran!=''TRANSFER'' and jenis_pembayaran!=''CASH'' '+
//      ' having no_penjualan not in (select no_transaksi from junct_manualbank )  ');
//      qpasangmanual.Active:=True;
//   end;
end;

procedure Ttabel.qpenjualan5AfterScroll(DataSet: TDataSet);
var id:string;
begin
id:=qpenjualan5id_transaksi.value;

qdetail5.SQL.Clear;
qdetail5.SQL.Add('SELECT no_transaksi AS no_penjualan,jenis,nominal,'''' as ket FROM n_kartupiutang nk WHERE jenis!=''PEMBAYARAN'' and no_transaksi='''+id+'''   '+
'UNION                                                                                                                                                '+
'SELECT no_penjualan,jenis,nominal,uc.keterangan as ket FROM n_kartupiutang nk JOIN uang_customer uc ON uc.no=nk.id_transaksi where  no_penjualan='''+id+'''   ORDER BY no_penjualan ASC');
qdetail5.Active:=True;
end;

{ TAdapterJSONValue }

procedure TAdapterJSONValue.AddJSONChangedEvent(const ANotify: TNotifyEvent);
begin
//
end;

constructor TAdapterJSONValue.Create(const AJSONValue: TJSONValue);
begin
  FJSONValue := AJSONValue;
end;

destructor TAdapterJSONValue.Destroy;
begin
  FJSONValue.Free;
  inherited;
end;

procedure TAdapterJSONValue.GetJSONResponse(out AJSONValue: TJSONValue;
  out AHasOwner: Boolean);
begin
  AJSONValue := FJSONValue;
  AHasOwner := True; // We own this object
end;

function TAdapterJSONValue.HasJSONResponse: Boolean;
begin
  Result := FJSONValue <> nil;
end;

function TAdapterJSONValue.HasResponseContent: Boolean;
begin
  Result := FJSONValue <> nil;
end;

procedure TAdapterJSONValue.RemoveJSONChangedEvent(const ANotify: TNotifyEvent);
begin

end;

end.
