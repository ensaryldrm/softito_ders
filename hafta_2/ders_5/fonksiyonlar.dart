import "dart:io";
import "dart:math";

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
  sayiIste("baslangic");
  int sayi = int.parse(stdin.readLineSync()!);
  basDegeri(sayi);
}

void sayiIste(String metin){
  stdout.write("Lutfen $metin sayisini giriniz: ");
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
}

