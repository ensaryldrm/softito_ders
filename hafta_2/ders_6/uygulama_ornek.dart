import "dart:io";
import "dart:js_interop";
import "dart:vmservice_io";

import "../ders_5/fonksiyonlar2.dart";

void main(List<String> args) {
  /*
  Bir magaza uygulamasi yapacaksiniz.
  1) Kullanici uygulamaya giris kismi olsun.
  -Kullanicidan ad, soyad, telefon num, adres ve sifre bilgisi istenilecek.
  

  2) Anasayfa Ekrani
  -Hosgeldiniz Ad, Soyad kismi olacak
  -Kadin
  -Erkek
  -Cocuk Giyim bilgisi olacak ve secim ekrani olacak
  - Yaptigi secime gore asagidaki ekranlardan birine yonlendirilecek

  3) Urun Ekrani
     a)Kadin giyim ekrani
     -Etek: 750TL
     -Sal: 150TL
     -Pantolon: 600TL
     -Tisort: 350TL

     b)Erkek giyim ekrani
     -Ceket: 750TL
     -Corap: 150TL
     -Pantolon: 600TL
     -Tisort: 350TL

     c)Cocuk giyim ekrani
     -Tulum: 550TL
     -Patik: 100TL
     -Pantolon: 250TL

    - Urun sececek adet sececek
    - Odeme yontemi sececek kredi karti(+%10), Nakit
    - Istanbul da yasiyorsaniz kargo 60TL, Izmir90,Ankara75,Samsun200

    4) Fatura Bilgi Ekrani
    -Siparisiniz alinmistir.
    -Siparis Yeri: ..., adres
    -Urunler 2 adet pantolon
    -Toplam Tutar: 1500TL urun 60TL kargo, 150TL komisyon, komisyon: 0
    */

  girisEkrani();
}

void girisEkrani() {
  stdout.write("Lutfen tam adinizi giriniz: ");
  String? kullaniciTamIsim = stdin.readLineSync()!;

  stdout.write("Lutfen sifre giriniz: ");
  String? kullaniciSifre = stdin.readLineSync()!;

  stdout.write("Lutfen telefon numarinizi giriniz: ");
  String? kullaniciTel = stdin.readLineSync()!;

  stdout.write("Lutfen adresinizi giriniz: ");
  String? adres = stdin.readLineSync()!;

  anaEkran(kullaniciTamIsim!);
}

void anaEkran(String tamIsim) {
  print("-----------ANA MENU-----------");
  print("Hosgeldiniz $tamIsim");
  stdout.write(
    "--Lutfen secim yapiniz--\nErkek icin e\nKadin icin k\nCocuk icin c\nSecim: ",
  );
  String? secim = stdin.readLineSync()!;
  urunEkrani(secim);
}

void urunEkrani(String secim, String adres) {
  if (secim == "e" || secim == "E") {
    erkekUrun();
  } else if (secim == "k" || secim == "K") {
    kadinUrun();
  } else if (secim == "c" || secim == "C") {
    cocukUrun();
  } else {
    print("Hatali giris yaptiniz!");
  }
}

void erkekUrun() {
  int ceket = 750;
  int Corap = 150;
  int pantolon = 600;
  int tshirt = 350;
  String? secim;
  stdout.write(
    "--ERKEK GIYIM EKRANI--\n-Ceket: 750TL(1'i tuslayiniz.)\n-Corap: 150TL(2'yi tuslayiniz.)\n-Pantolon: 600TL(3'u tuslayiniz.)\n-Tshirt: 350TL(4'u tuslayiniz.)\nAlmak istediginiz urunu yaziniz: ",
  );
  secim = stdin.readLineSync()!;

  stdout.write("Lutfen almak istediginiz miktari giriniz: ");
  int urunAdet = int.parse(stdin.readLineSync()!);
}

void kadinUrun(String adres) {
  stdout.write(
    "--KADIN GIYIM EKRANI--\n-Etek: 750TL(1'i tuslayiniz.)\n-Sal: 150TL(2'yi tuslayiniz.)\n-Pantolon: 600TL(3'u tuslayiniz.)\n-Tshirt: 350TL(4'u tuslayiniz.)\nAlmak istediginiz urunu yaziniz: ",
  );
  String? urunSecim = stdin.readLineSync()!;

  stdout.write("Lutfen almak istediginiz miktari giriniz: ");
  int urunAdet = int.parse(stdin.readLineSync()!);

  double urunFiyat = 0;
  if (urunSecim == "1") {
    urunFiyat = 750;
  } else if (urunSecim == "2") {
    urunFiyat = 150;
  } else if (urunSecim == "3") {
    urunFiyat = 600;
  } else if (urunSecim == "4") {
    urunFiyat = 350;
  }

  double toplam = urunFiyat * urunAdet;
  faturaEkrani(toplam, adres);
}

void cocukUrun() {
  int tulum = 550;
  int patik = 100;
  int pantolon = 250;
  String? secim;

  stdout.write(
    "--COCUK GIYIM EKRANI--\n-Tulum: 550TL(1'i tuslayiniz.)\n-Patik: 100TL(1'i tuslayiniz.)\n-Pantolon: 250TL(1'i tuslayiniz.)\nAlmak istediginiz urunu yaziniz: ",
  );
  secim = stdin.readLineSync()!;

  stdout.write("Lutfen almak istediginiz miktari giriniz: ");
  int urunAdet = int.parse(stdin.readLineSync()!);
}

void faturaEkrani(double toplam, String adres) {
  stdout.write(
    "Merhaba toplam tutariniz: $toplam\nOdemeyi nasil yapmak istersiniz?\nHavale icin 1\nKredi karti icin 2 ( %10 Komisyon alinir)\nSecim: ",
  );
  String? faturaSecim = stdin.readLineSync()!;

  double odemeIslemTutar = 0;
  if (faturaSecim == "1") {
    odemeIslemTutar = toplam;
  } else if (faturaSecim == "2") {
    odemeIslemTutar = toplam + toplam * 10 / 100;
  }

  stdout.write("Adresiniz $adres adres oldugu icin");
}
