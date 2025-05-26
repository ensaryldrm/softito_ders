import 'dart:io';

void main(List<String> args) {

  /* 

  List<String> names = List.filled(5, "Bilal");  //
  print(names);

  */

 /*  List<int> sayilar = List.filled(7, 5);
  sayilar[0] = 9;
  sayilar[1] = 11;
  sayilar[2] = 78;
  print(sayilar); */

 /*   List<String> meyveler = List.filled(7, "");
  meyveler[0] = "Elma";
  meyveler[1] = "Cilek";
  meyveler[2] = "Kiraz";
  print(meyveler);
  print(meyveler.length);
  meyveler.length = 5;
  meyveler[5] = 45; */

/*   List<String> isimler = List.filled(2, "");
  isimler[0] = 5.toString();
  print(isimler); */

 /*  List karisik = List.filled(4, 0);

  karisik[0] = "Ankara";
  karisik[1] = 14;
  karisik[2] = 2.12;
  karisik[3] = true;
  print(karisik); */

  /* List<int> sayilar = [];
  sayilar.add(5);
  sayilar.add(17);
  sayilar.add(43);
  print(sayilar); */

  /* List<int?> numaralar = [];
  numaralar.length = 10;
  numaralar.add(7);
  numaralar.add(11); */

  /* List<int> sayilar = [1,2,3];
  print("Liste 1: $sayilar");
  print("********");
  sayilar.add(32);
  print("Liste 2: $sayilar"); */

  /* List<int> myNumber = List.filled(5,0,growable: true);
  print(myNumber.length);
  print(myNumber);
  print("--------------");
  myNumber.add(53);
  print(myNumber);
  print(myNumber.length); */

  /* List<String> cities = List.empty(growable: true); // List<String> cities = [] asil bu sinirsiz liste olusturma yontemi
  cities.add("Nevsehir");
  cities.add("Ankara");
  print(cities.length); */

/* 
  List<int> sayilar = [];
  sayilar.add(12);
  sayilar.add(12);
  sayilar.add(42);
  print(sayilar);
  print("----------");
  sayilar[0] = 68;
  print(sayilar); */

  /* List<int> numaralar = [5,9,18,56,49];
  for(int i = 0; i < numaralar.length; i++){
    print(numaralar[i]);
  }
  print("-----------");
  for(int i in numaralar){
    print(i);
  } */


 /* List<String> programlamaDiller = ["Java","Dart","C#","Python","JavaScript"];
 print(programlamaDiller.first); // Dizinin ilk elemanini verir
 print(programlamaDiller.last); // Son elemani verir
 print(programlamaDiller.isEmpty); // Bos mu kontrol eder. Dolusa false verir
 print(programlamaDiller.isNotEmpty); // Bos mu dolu mu tersini kontrol eder doluysa true verir
 print(programlamaDiller.length); // Listenin uzunlugunu verir.
 print(programlamaDiller.reversed); // Listeyi tersten yazar.
 print(programlamaDiller.remove(2));
 print(programlamaDiller.removeAt(2));
 print(programlamaDiller.contains("Java")); // Listede olan urun var mi?


 List<String> yemekler = ["Karniyarik","Sarma","Su Boregi"];
 print(yemekler.elementAt(1)); // 1. indeksi veriyor

 print(yemekler.indexOf("Karniyarik")); // kacinci indekste oldugunu verir

 List<String> renkler = ["Sari","Mavi","Pembe","Yesil"];
 renkler.shuffle();
 print(renkler);

 Set<String> isimler = Set();

 isimler.add("Ensar");
 isimler.add("Araba");
 isimler.add("Kedi");
 for(String isim in isimler){
  print(isim);
 }

 Set<int> sayilar2 = Set();
 sayilar2.add(2);
 sayilar2.add(2);
 for(int sayi in sayilar2){
  print(sayi);
 } */

 /* List<String> products = ["Buzdolabi","Camasir Makinesi", "Firin", "Utu"];
 for (String p in products) {
   print(p);
 } */

 /* List<int> sayilar = [];
 for(int i = 1; i<=5; i++){
  stdout.write("$i. sayiyi giriniz: ");
  int sayi = int.parse(stdin.readLineSync()!);
  sayilar.add(sayi);
 }
 print("---GIRDIGINIZ SAYILAR---");
 for(int s in sayilar){
  print(s);
 } */

 /* List<String> meyveler = [];
 for(int i = 1; i<=5; i++){
  stdout.write("$i. meyveyi giriniz: ");
  String? meyve = stdin.readLineSync();
  meyveler.add(meyve!);
 }
 print("--GIRDIGINIZ MEYVELER--");
 for(String m in meyveler){
  print(m);
 } */

 /* List<int> numbers = List.filled(5, 8);
 for(int i = 0; i<=4;i++){
   stdout.write("${i+1}. sayiyi giriniz: ");
   int sayi = int.parse(stdin.readLineSync()!);
   numbers[i] = sayi;
 }
 print("--GIRILEN SAYILAR--");
 for(int n in numbers){
  print(n);
 } */

 List<int> ciftSayilar = [];
 List<int> tekSayilar = [];
 for(int i = 0; i<=9; i++){
  stdout.write("Lutfen ${i+1}. sayiyi giriniz: ");
  int sayi = int.parse(stdin.readLineSync()!);
  if(i % 2 == 0){
    ciftSayilar.add(sayi);
  }
  else{
    tekSayilar.add(sayi);
  }
 }
 print("--GIRILEN CIFT SAYILAR--");
 int sayac = 0;
 print("Girdiginiz 10 sayidan ${ciftSayilar.length} tanesi cifttir.");
 for(int cift in ciftSayilar){
  sayac++;
  print("$sayac. sayi: $cift");
 }

 print("--GIRILEN CIFT SAYILAR--");
 int sayac2 = 0;
 print("Girdiginiz 10 sayidan ${tekSayilar.length} tanesi tektir.");
 for(int tek in tekSayilar){
  sayac2++;
  print("$sayac2. sayi: $tek");
 }
}
