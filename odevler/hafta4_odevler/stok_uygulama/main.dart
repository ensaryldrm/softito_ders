import "dart:io";
void main(List<String> args) {
  geneIslemler();
}

void geneIslemler() {
  print("***** Stok Takip Uygulamasına Hoş geldiniz *****");
  List<Urun> urunler = [];
  while (true) {
    stdout.write(
      "1)Urun Ekle\n2)Urun Listele\n3)Urun Arama\n4)Urun Guncelleme\n5)Ürün Silme\nCikis icin herhangi tusa basiniz\nSecim: ",
    );
    String secim = stdin.readLineSync()!;
    if (secim == "1") {
      bilgileriAlveEkle(urunler);
    } else if (secim == "2") {
      urunListele(urunler);
    } else if (secim == "3") {
      urunBulma(urunler);
    } else if (secim == "4") {
      urunGuncelle(urunler);
    } else if (secim == "5") {
      urunSilme(urunler);
    } else {
      break;
    }
  }
}

void urunGuncelle(List<Urun> urunler) {
  stdout.write("Lütfen güncellemek istediğiniz ürünün adınız yazınız: ");
  String urunAd = stdin.readLineSync()!;
  stdout.write("Lütfen ürünün yeni adınız yazınız: ");
  String yeniUrunAd = stdin.readLineSync()!;
  for (Urun u in urunler) {
    if (u.urunAd == urunAd) {
      u.urunAd = yeniUrunAd;
    }
  }
}

void urunSilme(List<Urun> urunler) {
  stdout.write("Lütfen silmek istediğiniz ürünün adınız yazınız: ");
  String urunAdi = stdin.readLineSync()!;
  for (Urun urun in urunler) {
    if (urun.urunAd == urunAdi) {
      urunler.remove(urun);
      break;
    }
  }
}

void urunBulma(List<Urun> urunler) {
  stdout.write("Lütfen aramak istediğiniz ürünün adınız yazınız: ");
  String urunAd = stdin.readLineSync()!;
  bool urunVarmi = false;
  for (Urun urun in urunler) {
    if (urun.urunAd == urunAd) {
      urunVarmi = true;
      break;
    }
  }
  if (urunVarmi) {
    print("Ürün var");
  } else {
    print("Ürün yok");
  }
}

void urunListele(List<Urun> urunler) {
  int sayac = 0;
  if (urunler.length == 0) {
    print("Henüz bir ürün eklemediniz");
  } 

  else {
    stdout.write("\nUrunleri nasil listemek istediginizi seciniz\n1)Fiyata gore\n2)Stok durumuna gore\n3)Hepsi gelsin\nCikis icin herhangi tus\nSecim: ");
    String? secim = stdin.readLineSync()!;
    if(secim == "1"){
      fiyataGoreArama(urunler);
    }
    else if(secim == "2"){
      stokDurumunaGoreArama(urunler);
    }
    else if(secim == "3"){ 
    for (Urun u in urunler) {
      sayac++;
      print("***** Eklenen $sayac. ürün: ******");
      u.urunListeleme();
    }
    }
  }
}

void  fiyataGoreArama(List<Urun> urunler){
  stdout.write("Lutfen aramak istediginiz urunun fiyatini giriniz: ");
  double fiyatArama = double.parse(stdin.readLineSync()!);

  print("Fiyatin altindaki urunler: ");
  for(Urun u in urunler){
    if(u.urunFiyat! <= fiyatArama){    
      print("${u.urunAd}");
    }
  }
}

void stokDurumunaGoreArama(List<Urun> urunler){
  for(Urun u in urunler){
    print("Stokta olan urun: ${u.urunAd}");
  }
}

void bilgileriAlveEkle(List<Urun> urunler) {
  stdout.write("Lütfen ürün adını giriniz: ");
  String? urunAd = stdin.readLineSync();
  stdout.write("Lütfen ürün adedini giriniz: ");
  int urunAdet = int.parse(stdin.readLineSync()!);
  stdout.write("Lütfen ürün fiyatını giriniz: ");
  double urunFiyat = double.parse(stdin.readLineSync()!);
  stdout.write("Lütfen ürün stokta mı bilgisini giriniz: ");
  String? urunStoktaBilgisi = stdin.readLineSync();
  bool urunStoktaMi;
  urunStoktaBilgisi == "Evet" ? urunStoktaMi = true : urunStoktaMi = false;
  Urun urun = Urun(
    urunAd: urunAd!,
    urunAdet: urunAdet,
    urunFiyat: urunFiyat,
    urunStoktaMi: urunStoktaMi,
  );
  urunler.add(urun);
}

class Urun {
  String? urunAd;
  int? urunAdet;
  double? urunFiyat;
  bool? urunStoktaMi;

  Urun({
    required this.urunAd,
    required this.urunAdet,
    required this.urunFiyat,
    required this.urunStoktaMi,
  });
  void urunListeleme() {
    String stokDurum = "";
    urunStoktaMi! ? stokDurum = "Var" : stokDurum = "Yok";
    print(
      "Ürün adı: $urunAd\nÜrün adet: $urunAdet\nÜrün fiyat: $urunFiyat\n Stok durumu : $stokDurum",
    );
  }
}