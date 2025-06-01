import "dart:io";
import "galeri.dart";

void genelIslemler(){
  List<Arac> arabalar = [];
  print("========YILDIRIM GALERIYE HOSGELDINIZ========");
  while(true){
    stdout.write("1)Araba Ekle\n2)Arabalari Listele\n3)Araba Arama\n4)Araba Guncelleme\n5)Araba Sil\nCikis icin herhangi tusu giriniz\nSecim: ");
    String secim = stdin.readLineSync()!;

    if(secim == "1"){
      bilgileriAlveEkle(arabalar);
    }
    else if(secim == "2"){
      arabaListele(arabalar);
    }
    else if(secim == "3"){
      arabaBulma(arabalar);
    }
    else if(secim == "4"){
      arabaGuncelle(arabalar);
    }
    else if(secim == "5"){
      arabaSil(arabalar);
    }
    else{
      break;
    }
  }
}

void arabaGuncelle(List<Arac> arabalar){
  stdout.write("\nGuncellemek istediginiz arabanin markasini giriniz: ");
  String arabaMarka = stdin.readLineSync()!;

  stdout.write("\nGuncellemek istediginiz arabanin modelini giriniz: ");
  String arabaModel= stdin.readLineSync()!;

  stdout.write("\nArabanin guncel markasini giriniz: ");
  String guncelArabaMarka = stdin.readLineSync()!;

  stdout.write("\nArabanin guncel modelini giriniz: ");
  String guncelArabaModel = stdin.readLineSync()!;

  for(Arac araba in arabalar){
    if(araba.arabaMarka == arabaMarka && araba.arabaModel == arabaModel){
      araba.arabaMarka = guncelArabaMarka;
      araba.arabaModel = guncelArabaModel;
    }
    else{
      print("Hatali giris!");
    }
  }
}

void arabaSil(List<Arac> arabalar){
  stdout.write("\nLutfen silmek istediginiz arabanin markasini giriniz: ");
  String arabaMarka = stdin.readLineSync()!;

  stdout.write("\nLutfen silmek istediginiz arabanin modelini giriniz: ");
  String arabaModel = stdin.readLineSync()!;
  for(Arac araba in arabalar){
    if(araba.arabaMarka == arabaMarka && araba.arabaModel == arabaModel){
      arabalar.remove(araba);
      break;
    }
  }
}

void arabaBulma(List<Arac> arabalar){
  stdout.write("\nLutfen arama yapmak istediginiz araba markasini giriniz: ");
  String arabaMarka = stdin.readLineSync()!;
  bool arabaVarmi = false;
  for(Arac araba in arabalar){
    if(araba.arabaMarka == arabaMarka){
      arabaVarmi = true;
      break;
    }
  }

  if(arabaVarmi == true){
    print("\nAradiginiz araba bulunmaktadir!");
  }
  else{
    print("\nAradiginiz araba bulunmamaktadir!");
  }
}

void arabaListele(List<Arac> arabalar){
   int sayac = 0;
  if (arabalar.length == 0) {
    print("\nHenüz bir ürün eklemediniz");
  } 

  else {
    stdout.write("\nArabalari nasil listemek istediginizi seciniz\n1)Fiyata gore\n2)Stok durumuna gore\n3)Hepsi gelsin\nCikis icin herhangi tus\nSecim: ");
    String? secim = stdin.readLineSync()!;
    if(secim == "1"){
      fiyataGoreArama(arabalar);
    }
    else if(secim == "2"){
      stokDurumunaGoreArama(arabalar);
    }
    else if(secim == "3"){ 
    for (Arac araba in arabalar) {
      sayac++;
      print("\n***** $sayac. ARABA ******");
      araba.arabaListele();
    }
    }
  }
}

void  fiyataGoreArama(List<Arac> arabalar){
  stdout.write("\nLutfen arama icin ust fiyat limitini giriniz: ");
  double fiyatArama = double.parse(stdin.readLineSync()!);

  print("\nFiyatin altindaki arabalar: ");
  for(Arac araba in arabalar){
    if(araba.arabaFiyat! <= fiyatArama){    
      print("${araba.arabaMarka} - ${araba.arabaModel}");
    }
  }
}

void stokDurumunaGoreArama(List<Arac> arabalar){
  print("\n--Stokta olan arabalar--}");
  for(Arac araba in arabalar){
    print("\n${araba.arabaMarka} - ${araba.arabaModel} - ${araba.arabaFiyat}");
  }
}

void bilgileriAlveEkle(List<Arac> arabalar) {
  stdout.write("\nLütfen arabanin markasini giriniz: ");
  String? arabaMarka = stdin.readLineSync();

  stdout.write("\nLütfen arabanin modelini giriniz: ");
  String? arabaModel = stdin.readLineSync()!;

  stdout.write("\nArabanin hangi model uretim oldugunu giriniz: ");
  int arabaYas = int.parse(stdin.readLineSync()!);

  stdout.write("\nLütfen arabanin fiyatini giriniz: ");
  double arabaFiyat = double.parse(stdin.readLineSync()!);

  stdout.write("\nGirdiginiz araba stokta var mi yok mu giriniz: ");
  String? arabaStokBilgi = stdin.readLineSync();

  bool arabaStoktaMi;
  arabaStokBilgi == "Var" ? arabaStoktaMi = true : arabaStoktaMi = false;
  Arac araba = Arac(arabaFiyat: arabaFiyat, arabaMarka: arabaMarka, arabaStok: arabaStoktaMi, arabaYas: 2025 - arabaYas, arabaModel: arabaModel);
  arabalar.add(araba);
}
