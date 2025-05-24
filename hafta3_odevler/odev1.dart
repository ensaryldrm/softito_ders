import "dart:io";
import "dart:math";

void main(List<String> args) {
  /*
  -------------------------------------------- ODEV 1 --------------------------------------------
  Kullanıcıdan bir başlangıç bir de bitiş değeri alıp o aralıkta (veriler dahil)  random 5 sayı üretip listeye ekleyin.
  Listedeki sayıları tek ve çift olarak ekrana çıktısını alın. (fonksiyon kullan)
  */

  sayiAl();
}


void sayiAl(){
  stdout.write("Lutfen baslangic degeri giriniz: ");
  int basDeger = int.parse(stdin.readLineSync()!);

  stdout.write("Lutfen bitis degeri giriniz: ");
  int bitDeger = int.parse(stdin.readLineSync()!);

  randomList(basDeger, bitDeger);
}


void randomList(int basDeger, bitDeger){
  List<int> randomList = [];
  for(int i = 0; i<5; i++ ){
    int sayi = Random().nextInt(bitDeger + 1 - basDeger) + basDeger;
    randomList.add(sayi);
  }

  tekList(randomList);
  print("\n");
  ciftList(randomList);
}

void tekList(List<int> sayiList){
  List<int> tekList = [];
  for(int i = 0; i<sayiList.length; i++){
    if(sayiList[i] % 2 != 0){
      tekList.add(sayiList[i]);
    }
  }

  print("--- TEK SAYILARI ICEREN LISTE ---");
  for(int i = 0; i<tekList.length;i++){
    stdout.write("${tekList[i]} ");
  }
}

void ciftList(List<int> sayiList){
  List<int> ciftList = [];
  for(int i = 0; i<sayiList.length; i++){
    if(sayiList[i] % 2 == 0){
      ciftList.add(sayiList[i]);
    }
  }

  print("--- CIFTLERI ICEREN LISTE ---");
  for(int i = 0; i<ciftList.length;i++){
    stdout.write("${ciftList[i]} ");
  }
}