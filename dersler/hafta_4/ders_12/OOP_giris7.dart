import 'dart:io';

void main(List<String> args) {
  ogrenciEkle();
}


void ogrenciEkle(){
  List<Ogrenci> tumOgrenciler = [];
  while(true){
    print("----MARMARA UNIVERSITESI OGRENCI KAYIT SISTEMI----");
    stdout.write("Yapacaginiz islemi seciniz: ");
    String? secim = stdin.readLineSync()!;
    if(secim == "1"){
      stdout.write("Lutfen adinizi soyadinizi giriniz: ");
      String? adSoyad = stdin.readLineSync()!;

      stdout.write("Lutfen kayit olacaginiz bolumu giriniz: ");
      String? bolum = stdin.readLineSync()!;

      stdout.write("Telefon numaranizi giriniz: ");
      String? tel = stdin.readLineSync()!;

      stdout.write("Yasadiginiz sehiri giriniz: ");
      String? sehir = stdin.readLineSync()!;

      Ogrenci ogrenci = Ogrenci(adSoyad, bolum, tel, sehir);
      tumOgrenciler.add(ogrenci);
    }else if(secim == "2"){
      for(Ogrenci o in tumOgrenciler){
        o.bilgileriGoster();
      }
    }else{
      print("Hatali giris!");
    }
  }
}
class Ogrenci{
  String adSoyad = "";
  String bolum = "";
  String tel = "";
  String sehir = "";

  Ogrenci(String name, String departman, String phoneNumber, String city){
    adSoyad = name;
    bolum = departman;
    tel = phoneNumber;
    sehir = city;
  }

  void bilgileriGoster(){
    print("Ad Soyad: $adSoyad, Bolum: $bolum, Telefon: $tel, YasadigiSehir: $sehir");
  }
}