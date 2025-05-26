import "dart:io";
import "dart:core";

void main(List<String> args) {
  /*
    Fonksiyon: 

    -Belirli islemleri temsil eden yapilardir.
    -Kullanma amacimiz kod duzenidir. Tekrarlanan kod yapilarinin onune gecmektir.
    -Programlamayi daha basit ve pratik hale getirir.
    -Kodun okunmasina fayda saglar.

    Kullanilis:

    donus_turu fonksiyon_adi(parametre?){
      kodlar buraya yazilir.
      return => eger bir donus degeri varsa
    }   

    donus_turu:

    void: birsey dondurmemek
    string: string dondurur
    int: int degeri dondurur
    double: double degeri dondurur
    bool: bool degeri dondurur
  */

  /* 
  print("Uygulamamiza hosgeldiniz!");
  stdout.write("Lutfen secim yapiniz. Karekokunu almak icin: 1\tMutlak degerini almak icin: 2");
  String? secim = stdin.readLineSync();
  if(secim == 1){
    sayiIste();
    double sayi = double.parse(stdin.readLineSync()!);
    double kareKokAl = sqrt(sayi);
  }
  else{
    sayiIste();
    double sayi = double.parse(stdin.readLineSync()!);
    double mutlakSayi = sayi.abs();
  }
  */



  /* 
  // Kullanicidan iki sayi alarak toplatma
  sayiTopla();
  print("\n");
  
  stdout.write("sayi 1'i giriniz: ");
  int sayi1 = int.parse(stdin.readLineSync()!);

  stdout.write("sayi 2'i giriniz: ");
  int sayi2 = int.parse(stdin.readLineSync()!);

  toplama(sayi1, sayi2);
  */

  /* 
  stdout.write("Isminizi giriniz: ");
  String isim = stdin.readLineSync()!;
  selamVer(isim);
  */

  /* 
  sayiYazdir();
  */

  /*
  sayiIste("baslangic");
  int sayi1 = int.parse(stdin.readLineSync()!);
  basDegeri(sayi1);

  sayiIste("bitis");
  int sayi2 = int.parse(stdin.readLineSync()!);
  bitDegeri(sayi2);
  */

  /* sayiIste("baslangic");
  int sayi1 = int.parse(stdin.readLineSync()!);

  sayiIste("bitis");
  int sayi2 = int.parse(stdin.readLineSync()!);
  basBitDegeri(sayi1, sayi2); */
  
 /*  
 print("Guncel Tarih: ${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}");
  while(true){
    sayiIste("dogum");
    int myBirthday = int.parse(stdin.readLineSync()!);
    stdout.write("Suanki yasinizi bulmak icin 1 e kendi gireceginiz bir tarih icin 2 ye basiniz: ");
    String? secim = stdin.readLineSync()!;
    yasHesaplama(myBirthday, secim!);
  }
  */
  // Kullacininin girdigi sayiya gore karenin alanini hesaplayan programi yaziniz.
  
  /* genelIslemler2(); */

  /* faktoriyelHesaplama(5); */

  genelIslemler3();
}

void genelIslemler3(){
  while(true){
    
    stdout.write("Lutfen yaricapi giriniz: ");
    int r = int.parse(stdin.readLineSync()!);
    stdout.write("Lutfen pi sayisini giriniz: ");
    String? myPi = stdin.readLineSync()!;
    if(myPi != ""){
      double myPiDouble = double.parse(myPi);
      daireAlan(r, myPiDouble);
    }else{
      daireAlan(r);
    }
  }
}

void daireAlan(int yaricap, [double myPi = 3.14]){
  double alan = yaricap * yaricap * myPi;
  print("Sonuc: $alan");
}
/* void genelIslemler2(){
  while(true){
    stdout.write("--Lutfen yapilacak islemi seciniz--\nKarenin alanini hesaplamak icin 1'e\nDikdortgenin alanini hesaplamak  icin 2'ye\nUcgenin alanini hesaplamak  3'e\nYamuk alani hesaplamak icin 4'e basiniz\nSecim: ");
    String? secim = stdin.readLineSync()!;
    
    switch(secim){
      case "1": kareAlan();
                break;
      case "2": diktortgenAlan();
                break;
      case "3": daireAlan();
                break;
      case "4": yamukAlan();
                break;
      default: print("Yanlis secim yaptiniz lutfen dogru secim yapiniz!\n");
                break;
    }

  }
} */
/* 
void genelIslemler(){
 while(true){
    stdout.write("Lutfen bir sayi giriniz: ");
    int sayi = int.parse(stdin.readLineSync()!);

    stdout.write("--Lutfen yapilacak islemi seciniz--\ntek cift kontrolu icin 1'e\nisaret kontrolu icin 2'ye\nkok almak icin 3'e\nmutlak deger almak icin 4'e basiniz\nSecim: ");
    String? secim = stdin.readLineSync()!;
    
    switch(secim){
      case "1": tekMiCiftMi(sayi);
                break;
      case "2": negatifMiPozitifMi(sayi);
                break;
      case "3": kokAl(sayi);
                break;
      case "4": mutlakYap(sayi);
                break;
      default: print("Yanlis secim yaptiniz lutfen dogru secim yapiniz!\n");
                break;
    }
  }
}
 */

/* void faktoriyelHesaplama(int s){
  int faktoriyel = 1;
  for(int i = 1; i<=s; i++){
    faktoriyel *= i;
  }
  print("Girdiginiz $s sayisinin faktoriyeli: $faktoriyel");
}
void daireAlan(){
  stdout.write("Lutfen dairenin yaricapini giriniz: ");
  double yariCap = double.parse(stdin.readLineSync()!);
  double alan = pi * pow(yariCap, 2.0);
  print("Yaricapi $yariCap olan dairenin alani: $alan");
  
} */
/* void yamukAlan(){
  stdout.write("Lutfen ust taban uzunlugunu giriniz: ");
  double ustTaban = double.parse(stdin.readLineSync()!);

  stdout.write("Lutfen alt taban uzunlugunu giriniz: ");
  double altTaban = double.parse(stdin.readLineSync()!);
  
  stdout.write("Lutfen yukseklik uzunlugunu giriniz: ");
  double yukseklik = double.parse(stdin.readLineSync()!);
  double alan = ((altTaban + ustTaban)*yukseklik)/2;
  print("Verilen bilgilere gore alan: $alan");

}
void diktortgenAlan(){
  stdout.write("Lutfen dikdortgenin 1. kenarini giriniz: ");
  double kenar1 = double.parse(stdin.readLineSync()!);

  stdout.write("Lutfen dikdortgenin 2. kenarini giriniz: ");
  double kenar2 = double.parse(stdin.readLineSync()!);
  double alan = kenar1* kenar2;
  print("Kenar uzunlukları $kenar1 - $kenar2 olan dikdortgenin alani: $alan");
}
void kareAlan(){
  stdout.write("Lutfen karenin kenar uzunlugunu giriniz: ");
    double kenar = double.parse(stdin.readLineSync()!);
    double alan = kenar*kenar;
    print("Kenar uzunlugu $kenar olan karenin alani: $alan");
}

void mutlakYap(int a){
  int pozNum = a.abs();
  print("Girdiginiz $a sayisinin mutlak degeri $pozNum\n");
}

void kokAl(int a){
 double kok = sqrt(a);
 if(a >=0){
  print("girdiginiz $a sayisinin karekoku $kok\n");
 }
 else{
  print("Lutfen negatif bir sayi girmeyiniz.\n");
 }
}

void negatifMiPozitifMi(int a){
  if(a > 0){
    print("Girdiginiz $a sayisi pozitif bir sayidir.\n");
  }
  else if(a < 0){
    print("Girdiginiz $a sayisi negatif bir sayidir.\n");
  }
  else{
    print("Girdiginiz $a sayisinin isareti yoktur.\n");
  }
}

void tekMiCiftMi(int a){
  a % 2 == 0 
      ? print("Girdiginiz $a sayisi cift sayidir!\n")
      : print("Girdiginiz $a sayisi tek sayidir!\n");
} */

/* void sayiIste(String metin){
  stdout.write("Lutfen $metin sayi giriniz: ");
} */

/* void yasHesaplama(int dogumTarihi, String selected){
  int age = 0;
  if(selected == "1"){
    int nowYear = DateTime.now().year;
    age = nowYear - dogumTarihi;
  }
  else{
    stdout.write("Lutfen hesaplatmak istediginiz yili giriniz: ");
    int myYear = int.parse(stdin.readLineSync()!);
    age = myYear - dogumTarihi;
  }
  print("Girdiginiz yila gore yasiniz $age");
} */


/* //her ikisini de kullanicidan alan program
void basBitDegeri(int bas, int bit){
  for(int i = bas; i<=bit;i++){
    print(i);
  }
}
// baslangic degeri 1 den kullanicinin istedigi sayiya kadar
void bitDegeri(int bit){
  for(int i = 1; i<=bit;i++){
    print(i);
  }
}

// baslangic degeri alip 20 ye kadar yazdiran program
void basDegeri(int bas){
  for(int i = bas; i<=20;i++){
    print(i);
  }
}

// 1den 100e kadar yazdirma
void sayiYazdir(){
  for(int i = 1; i<=100;i++){
    stdout.write("$i ");
  }
}

// Kullanicidan isim alma
selamVer(String name){
  print("Hosgeldin $name!");
}

// Kullanicidan iki sayi alip toplama
cikarma(int sayi1, int sayi2){
  print("$sayi1 - $sayi2 = ${sayi1 - sayi2}");
}

void sayiTopla(){
  int sayi1 = 5;
  int sayi2 = 7;
  
  print("$sayi1 + $sayi2 = ${sayi1 + sayi2}");
} */

