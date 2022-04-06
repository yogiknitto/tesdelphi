program kasir;

uses
  Vcl.Forms,
  ufmenuutama in 'ufmenuutama.pas' {fmenuutama},
  uftabel in 'uftabel.pas' {tabel: TDataModule},
  ufperbedaanorder in 'ufperbedaanorder.pas' {fperbedaanorder},
  ufinputkasbankimport in 'ufinputkasbankimport.pas' {finputkasbankimport},
  uframe1 in 'uframe1.pas' {Frame1: TFrame},
  ufsaldocustomer in 'ufsaldocustomer.pas' {fsaldocustomer},
  ufeditkas in 'ufeditkas.pas' {feditkas},
  ftransferuang in 'ftransferuang.pas' {ftransferuangfix},
  ufpengeluaranuang2 in 'ufpengeluaranuang2.pas' {fpengeluaranuang},
  ufverifikasimandiri in 'ufverifikasimandiri.pas' {fverifikasimandiri},
  ufpemasanganmanual in 'ufpemasanganmanual.pas' {fpemasanganmanual},
  ufimportolshop in 'ufimportolshop.pas' {fimportolshop},
  ufedittanggal in 'ufedittanggal.pas' {fedittanggal},
  ufcekpemasangan in 'ufcekpemasangan.pas' {fcekpemasangan},
  ufdatahapuskonfirmasi in 'ufdatahapuskonfirmasi.pas' {fdatahapuskonfirmasi},
  ufcekpenjualan in 'ufcekpenjualan.pas' {fcekpenjualan},
  uftambahkonfirmasi in 'uftambahkonfirmasi.pas' {ftambahkonfirmasi},
  ufhasil_perapihan in 'ufhasil_perapihan.pas' {fhasil_perapihan},
  ufhasil_pemasangan in 'ufhasil_pemasangan.pas' {fhasil_pemasangan},
  ufcekkonfirmasipembayaran in 'ufcekkonfirmasipembayaran.pas' {fcekkonfirmasipembayaran},
  uffhoto in 'uffhoto.pas' {ffhoto},
  uflepassalahtransfer in 'uflepassalahtransfer.pas' {flepassalahtransfer},
  ufdatapemasangan in 'ufdatapemasangan.pas' {fdatapemasangan},
  ufbiayaadmin in 'ufbiayaadmin.pas' {fbiayaadmin},
  ufcekrekeningkoran in 'ufcekrekeningkoran.pas' {fcekrekeningkoran},
  ufdatarefund in 'ufdatarefund.pas' {fdatarefund},
  ufdatahutanglainlain in 'ufdatahutanglainlain.pas' {fdatahutanglainlain},
  ufdatafhotorefund in 'ufdatafhotorefund.pas' {fdatafhotorefund},
  ufaccperbaikanpembayaran in 'ufaccperbaikanpembayaran.pas' {faccperbaikanpembayaran},
  uflaporanperpriode in 'uflaporanperpriode.pas' {flaporanperpriode},
  ufpettycash in 'ufpettycash.pas' {fpettycash},
  ufeditPembayaranKontrabon in 'ufeditPembayaranKontrabon.pas' {feditPembayaranKontrabon},
  ufInfoEditPembayaranKontrabon in 'ufInfoEditPembayaranKontrabon.pas' {fInfoEditPembayaranKontrabon},
  ufdataarinvoice in 'ufdataarinvoice.pas' {fdataarinvoice},
  ufdataarincomingpayment in 'ufdataarincomingpayment.pas' {fdataarincomingpayment},
  ufdetailuangmasuk in 'ufdetailuangmasuk.pas' {fdetailuangmasuk},
  ufcaricustomer_dp in 'ufcaricustomer_dp.pas' {fcaricustomer_dp},
  ufuangedc in 'ufuangedc.pas' {fuangedc},
  ufuangkasir in 'ufuangkasir.pas' {fuangkasir},
  ufuangolshop in 'ufuangolshop.pas' {fuangolshop},
  ufgrpo in 'ufgrpo.pas' {fgrpo};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfmenuutama, fmenuutama);
  Application.CreateForm(Ttabel, tabel);
  Application.CreateForm(Tfperbedaanorder, fperbedaanorder);
  Application.CreateForm(Tfinputkasbankimport, finputkasbankimport);
  Application.CreateForm(Tfsaldocustomer, fsaldocustomer);
  Application.CreateForm(Tfeditkas, feditkas);
  Application.CreateForm(Tftransferuangfix, ftransferuangfix);
  Application.CreateForm(Tfpengeluaranuang, fpengeluaranuang);
  Application.CreateForm(Tfverifikasimandiri, fverifikasimandiri);
  Application.CreateForm(Tfpemasanganmanual, fpemasanganmanual);
  Application.CreateForm(Tfimportolshop, fimportolshop);
  Application.CreateForm(Tfedittanggal, fedittanggal);
  Application.CreateForm(Tfcekpemasangan, fcekpemasangan);
  Application.CreateForm(Tfdatahapuskonfirmasi, fdatahapuskonfirmasi);
  Application.CreateForm(Tfcekpenjualan, fcekpenjualan);
  Application.CreateForm(Tftambahkonfirmasi, ftambahkonfirmasi);
  Application.CreateForm(Tfhasil_perapihan, fhasil_perapihan);
  Application.CreateForm(Tfhasil_pemasangan, fhasil_pemasangan);
  Application.CreateForm(Tfcekkonfirmasipembayaran, fcekkonfirmasipembayaran);
  Application.CreateForm(Tffhoto, ffhoto);
  Application.CreateForm(Tflepassalahtransfer, flepassalahtransfer);
  Application.CreateForm(Tfdatapemasangan, fdatapemasangan);
  Application.CreateForm(Tfbiayaadmin, fbiayaadmin);
  Application.CreateForm(Tfcekrekeningkoran, fcekrekeningkoran);
  Application.CreateForm(Tfdatarefund, fdatarefund);
  Application.CreateForm(Tfdatahutanglainlain, fdatahutanglainlain);
  Application.CreateForm(Tfdatafhotorefund, fdatafhotorefund);
  Application.CreateForm(Tfaccperbaikanpembayaran, faccperbaikanpembayaran);
  Application.CreateForm(Tflaporanperpriode, flaporanperpriode);
  Application.CreateForm(Tfpettycash, fpettycash);
  Application.CreateForm(TfeditPembayaranKontrabon, feditPembayaranKontrabon);
  Application.CreateForm(TfInfoEditPembayaranKontrabon, fInfoEditPembayaranKontrabon);
  Application.CreateForm(Tfdataarinvoice, fdataarinvoice);
  Application.CreateForm(Tfdataarincomingpayment, fdataarincomingpayment);
  Application.CreateForm(Tfdetailuangmasuk, fdetailuangmasuk);
  Application.CreateForm(Tfcaricustomer_dp, fcaricustomer_dp);
  Application.CreateForm(Tfuangedc, fuangedc);
  Application.CreateForm(Tfuangkasir, fuangkasir);
  Application.CreateForm(Tfuangolshop, fuangolshop);
  Application.CreateForm(Tfgrpo, fgrpo);
  Application.Run;
end.
