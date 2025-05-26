import "dart:io";
import "dart:math";

void main(List<String> args) {
  //-----------------------------------------------------------------------------------------------------------

 /*  while(true){
    stdout.write("--MENU--\n1)Sayi olustur\n2)Cikis\nSecim: ");
    String? secim = stdin.readLineSync()!;
    if(secim == "1"){
      sayiAl();
    }
    else if(secim == "2"){
      exit(0);
    }
    else{
      print("Yanlis girdiniz!");
    }
  } */

//-----------------------------------------------------------------------------------------------------------
  /* while(true){
    stdout.write("--MENU--(YENI DONGU)\n1)Tek sayilari goster\n2)Cift sayilari goster\nSecim: ");
    String? secim = stdin.readLineSync()!;
    sayiAl(secim);
  } */

//-----------------------------------------------------------------------------------------------------------
  
  while(true){
    sayiGirdi();
    print("------");
    isimGirdi();
    
    String secim = secimAl();
    if(secim == "1"){
      isimYazdir(isimlerDizi);
    }
    else if(secim == "2"){
      sayiYazdir(sayilarDizi);
    }
    else if(secim == "4"){
      exit(0);
    }
    else if(secim == "3"){
      continue;
    }
    else{
      print("Hatali giris!");
    }
  }
}

// kullanicidan isimleri ve sayilari alacagiz. Yaptigi secime gore ekrana isim yada sayilari yazdiracagiz. Sonsuz dongu
// Kullanicidan isimleri isteyin
// kullanicidan sayilari isteyin
// secim
// ekrana yazdirin

List<int> sayilarDizi = [];
List<String> isimlerDizi = [];

void sayiGirdi(){
  for(int i = 0; i<10; i++){
    stdout.write("${i+1}. sayiyi giriniz: ");
    int sayi = int.parse(stdin.readLineSync()!);
    sayilarDizi.add(sayi);
  }
}

void isimGirdi(){
  for(int i = 0; i<10; i++){
    stdout.write("${i+1}. isimi giriniz: ");
    String isim = stdin.readLineSync()!;
    isimlerDizi.add(isim);
  }
}

String secimAl(){
  stdout.write("1)Isimleri goster\n2)Sayilari goster\n3)Yeniden degerleri gir\n4)Cikis\nSecim: ");
  String secim = stdin.readLineSync()!;

  return secim;
}

void isimYazdir(List<String> gelenListe){
  for(int i = 0; i<gelenListe.length; i++){
    print("${i+1}. isim: ${gelenListe[i]}");
  }
}

void sayiYazdir(List<int> gelenListe){
  for(int i = 0; i<gelenListe.length; i++){
    print("${i+1}. sayi: ${gelenListe[i]}");
  }
}










//-----------------------------------------------------------------------------------------------------------

//random 10 sayi olusuturn. 1 den 100 dahil olsun cift ve tek olacak sekilde ayirin

void sayiAl(String secim){
  List<int> sayilarDizi = [];
  for(int i = 0; i<10; i++){
    int sayi = Random().nextInt(100) + 1;
    sayilarDizi.add(sayi);
  }
  if(secim == "1"){
    tekSayi(sayilarDizi);
  }
  else if(secim == "2"){
    ciftSayi(sayilarDizi);
  }
  else{
    print("Hatali giris!");
  }
}

void tekSayi(List<int> gelenListe){
  List<int> tekDizi = [];
  for(int i = 0; i<gelenListe.length; i++){
    if(gelenListe[i] % 2 != 0){
      int sayi = gelenListe[i];
      tekDizi.add(sayi);
    }
  }
  ciktiVer(tekDizi);
}

void ciftSayi(List<int> gelenListe){
  List<int> ciftDizi = [];
  for(int i = 0; i<gelenListe.length; i++){
    if(gelenListe[i] % 2 == 0){
      int sayi = gelenListe[i];
      ciftDizi.add(sayi);
    }
  }
  ciktiVer(ciftDizi);
}

void ciktiVer(List<int> gelenListe){
  for(int i = 0; i<gelenListe.length; i++){
    print("${i+1}. sayi: ${gelenListe[i]}");
  }
}

//-----------------------------------------------------------------------------------------------------------

// 1 sayi al, cift kontrolu yap, cift olanlari ekrana yazdir.

//1. YOL

/* void sayiIste(){
  List<int> sayilar = [];
  for(int i = 1; i<=5; i++){
    stdout.write("$i. sayiyi giriniz: ");
    int sayi = int.parse(stdin.readLineSync()!);
    sayilar.add(sayi);
  }
  ciftKontrol(sayilar);
  tekKontrol(sayilar);
}

void ciftKontrol(List<int> gelenSayilar){
  List<int> ciftSayilar = [];
  for(int s in gelenSayilar){
    if(s % 2 == 0){
      ciftSayilar.add(s);
    }
  }
  print("Girdiginiz cift sayilar: ");
  ekranaYazdir(ciftSayilar);
}

void tekKontrol(List<int> gelenSayilar){
  List<int> tekSayilar = [];
  for(int s in gelenSayilar){
    if(s % 2 != 0){
      tekSayilar.add(s);
    }
  }
  print("Girdiginiz tek sayilar: ");
  ekranaYazdir(tekSayilar);
}

void ekranaYazdir(List<int> yazdirilacakListe){
  int sayac = 0;
  for(int s in yazdirilacakListe){
    sayac++;
    print("$sayac. sayi: $s");
  }
} */
//-----------------------------------------------------------------------------------------------------------

// 2. YOL

/* void tekCiftKontrol(List<int> gelenSayilar){
  List<int> tekSayilar = [];
  List<int> ciftSayilar = [];
  for(int sayi in gelenSayilar){
    if(sayi % 2 == 0){
      ciftSayilar.add(sayi);
    }
    else{
      tekSayilar.add(sayi);
    }
  }

  print("---GIRILEN TEK SAYILAR---");
  for(int tek in tekSayilar){
    print(tek);
  }

  print("---GIRILEN CIFT SAYILAR---");
  for(int cift in ciftSayilar){
    print(cift);
  }
} */

//-----------------------------------------------------------------------------------------------------------

/* void bilgiGir(){
  stdout.write("Lutfen ay giriniz: ");
  String? ay = stdin.readLineSync()!;
  ayKontrol(ay);
}

void ayKontrol(String gelenAy){
  List<String> yazAylari = ["Haziran","Temmuz","Agustos"];
  List<String> ilkBaharAylari = ["Mart","Nisan","Mayis"];
  List<String> sonBaharAylari = ["Eylul","Ekim","Kasim"];
  List<String> kisAylari = ["Aralik","Ocak","Shubat"];
  
  String mevsim = "";
  for(String y in yazAylari){
    if(y == gelenAy){
      mevsim = "Yaz";
    }
  }

  for(String y in kisAylari){
    if(y == gelenAy){
      mevsim = "Kis";
    }
  }

  for(String y in sonBaharAylari){
    if(y == gelenAy){
      mevsim = "Sonbahar";
    }
  }

  for(String y in ilkBaharAylari){
    if(y == gelenAy){
      mevsim = "Ilkbahar";
    }
  }

  ekranaYaz(mevsim, gelenAy);
}

void ekranaYaz(String gelenMevsim, String ayim){
  print("Girilen $ayim ayinin mevisimi $gelenMevsim");
}
 */
//-----------------------------------------------------------------------------------------------------------

// random 5 tane sayi alin ve bu sayilari listeyen verin.
// sonra eklenen bu 5 sayiyi toplayip ekrana yazdirin.
// bu olusan sayilari da ekrana yazdir.
// ayrıca sonsuz dongu olsun
// her a ya bastigimizda yeniden sayi uretip toplasin

/* void sayiAl(){
  List<int> sayilarDizi = [];
  for(int i = 0; i<5; i++){
    int sayi = Random().nextInt(20) + 1;
    sayilarDizi.add(sayi);
  }
  ciktiVer(sayilarDizi);
}

int sayilariTopla(List<int> gelenListe){
  int toplam = 0;
  for(int i = 0; i<gelenListe.length; i++){
    toplam += gelenListe[i];
  }

  return toplam;
}

void ciktiVer(List<int> gelenListe){
  for(int i = 0; i<gelenListe.length; i++){
    print("${i+1}. sayi: ${gelenListe[i]}");
  }
  print("Bu sayilarin toplamlari: ${sayilariTopla(gelenListe)}");
} */

//-----------------------------------------------------------------------------------------------------------

