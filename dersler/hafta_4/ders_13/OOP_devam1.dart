import 'dart:io';

void main(List<String> args) {
  genelIslemler();
}


class Urun{
  String? urunAd;
  double? urunFiyat;
  double? urunAdet;
  bool? stoktaMi;

  Urun({required this.urunAd, required this.urunFiyat, required this.urunAdet, required this.stoktaMi});

  void urunListeleme() {
    String stokDurum = "";
    stoktaMi! ? stokDurum = "Evet":stokDurum = "Hayır";
    print("Ürün adı: $urunAd\nÜrün fiyatı: $urunFiyat\nÜrün Adeti: $urunAdet\nÜrün stokta mı?: $stokDurum");
  }
}

void genelIslemler(){
  List<Urun> urunler = [];
  print("### Stok Takip App ###");
  while(true){
    stdout.write("\nÜrün eklemek için: 1\nÜrün listelemek için: 2\nÜrün aramak için: 3\nÜrün güncellemek için: 4\nÜrün silmek için: 5\nÇıkış için herhangi bir tuşa basınız: ");
    String secim = stdin.readLineSync()!;
    if(secim == "1"){
      bilgileriAlveEkle(urunler);
    }else if (secim == "2"){
      urunListele(urunler);
    }else if (secim == "3"){
      urunBulma(urunler);
    }else if (secim == "4"){
      urunGuncelleme(urunler);
    }else if (secim == "5"){
      urunSilme(urunler);
    }else{
      break;
    }
  }
}

void urunGuncelleme(List<Urun> urunler){
  stdout.write("Güncellemek istediğiniz ürünün adı?: ");
  String urunAd = stdin.readLineSync()!;
  stdout.write("Ürünün yeni adı?: ");
  String yeniUrunAd = stdin.readLineSync()!;
  for(Urun u in urunler){
    if(u.urunAd == urunAd){
      u.urunAd = yeniUrunAd;
    }
  }
}

void urunSilme(List<Urun> urunler){
  stdout.write("Silmek istediğiniz ürünün adı?: ");
  String urunAd = stdin.readLineSync()!;
  for(Urun urun in urunler){
    if(urun.urunAd == urunAd){
      urunler.remove(urun);
      break;
    }
  }
  
}



void urunBulma(List<Urun> urunler){
  stdout.write("Aramak istediğiniz ürünün adı?: ");
  String urunAd = stdin.readLineSync()!;
  bool bulundu = false;
  for(Urun urun in urunler){
    if(urun.urunAd == urunAd){
      bulundu = true;
      break;
    }
  }
  if (bulundu){
    print("Böyle bir ürün var.");
  }else {
    print("Böyle bir ürün yok.");
  }
}



void bilgileriAlveEkle(List<Urun> urunler){
      stdout.write("Ürün Adı ?: ");
      String? urunAd = stdin.readLineSync();
      stdout.write("Ürün Adet ?: ");
      double urunAdet = double.parse(stdin.readLineSync()!);
      stdout.write("Ürün Fiyat ?: ");
      double urunFiyat = double.parse(stdin.readLineSync()!);
      stdout.write("Ürün Stokta mı ?: ");
      String? urunstoktaMi = stdin.readLineSync();
      bool stoktaMi;
      urunstoktaMi == "Evet" ? stoktaMi = true: stoktaMi = false;
      Urun urun = Urun(urunAd: urunAd, urunFiyat: urunFiyat, urunAdet: urunAdet, stoktaMi: stoktaMi);
      urunler.add(urun);
}

void urunListele(List<Urun> urunler){
  int sayac = 0;
  if (urunler.length == 0) {
    print("\nHenüz bir ürün eklemediniz.");
  } else{
    for (Urun u in urunler) {
      sayac++;
      print("\nEklenen ${sayac}. ürün");
      u.urunListeleme();
    }
  }
}