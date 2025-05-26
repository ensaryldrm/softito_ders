import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  
  bolunmeKurali();
}
void bolunmeKurali(){
  Random r = Random();
  List<int> sayiListesi = List.filled(2, 0); //2 sayı girileceği için sabit kullandık
  List<int> sayilar = [];
  List<int> uceBolunenler = [];
  List<int> ikiyeBolunenler = [];
  List<int> beseBolunenler = [];

  for (int i = 0; i <= 1; i++){
    stdout.write("Lütfen önce başlangıç sonra bitiş değerini giriniz: ");
    int sayi = int.parse(stdin.readLineSync()!);
    sayiListesi[i] = sayi;
  }
  for(int i = 1; i <= 5; i++){
  int uretilenSayi = r.nextInt(sayiListesi[1] - sayiListesi[0] + 1) + sayiListesi[0]; //r.nextInt(20)=> 0 dan 20 dahil değil sayı üretiyo. r.nextInt(20)+ 5 5ten başlar 24e kadar üretir.6dan başlasın 28e kadar devam etsin istersek r.nextInt(28-6+1)+6 => 6dan başladı 29 oldu 28egider.r.nextInt()+6
  sayilar.add(uretilenSayi);
  }
 
  for(int i = 0; i < sayilar.length; i++){
    if(sayilar[i] % 3 == 0){
    uceBolunenler.add(sayilar[i]);
  }if(sayilar[i] % 2 == 0){
    ikiyeBolunenler.add(sayilar[i]);
  }if(sayilar[i] % 5 == 0){
    beseBolunenler.add(sayilar[i]);
}
  }
  print("--------3'BÖLÜNENLER------");
  for(int s in uceBolunenler){
    print(s);
  }
   print("--------2'BÖLÜNENLER------");
  for(int s in ikiyeBolunenler){
    print(s);
  }
   print("--------5'BÖLÜNENLER------");
  for(int s in beseBolunenler){
    print(s);
  }
}