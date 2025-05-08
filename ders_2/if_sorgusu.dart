import "dart:io";
void main(List<String> args) {
  /*int myAge = 19;

  if(myAge >= 18)
  {
    print("Resitsin!");
  }
  else
  {
    print("Resit degilsin!");
  } */

  /*stdout.write("Yasinizi giriniz: ");
  int? yas = int.parse(stdin.readLineSync()!);

  if(yas >= 18)
  {
    print("Yasiniz $yas, ehliyet alabilirsiniz!");
  }
  else
  {
    print("Yasiniz $yas, ehliyet alamazsiniz!");
  }*/


  // PRATIK1- BIRINCI VE IKINCI SAYIYI ALINIZ BU SAYILARI KARSILASTIRIP BUYUK MU KUCUK MU YAZDIRINIZ.
  stdout.write("Sayi1'i giriniz: ");
  int? sayi1 = int.parse(stdin.readLineSync()!);

  stdout.write("Sayi2'i giriniz: ");
  int? sayi2 = int.parse(stdin.readLineSync()!);

  if(sayi1 > sayi2)
  {
    print("$sayi1, $sayi2'den buyuktur.");
  }
  else
  {
    print("$sayi2, $sayi1'den buyuktur.");
  }
  
  /*
  stdout.write("Hangi sayi buyuktur oyununa hosgeldiniz!");
  stdout.write("Birinci sayiyi giriniz: ");
  String? numberOneText = stdin.readLineSync();
  int numberOne = int.parse(numberOneText!);

  stdout.write("Ikinci sayiyi giriniz: ");
  String? numberTwoText = stdin.readLineSync();
  int numberTwo = int.parse(numberOneText!);

  if(numberOne > numberTwo)
  {
    print("$numberOne sayisi $numberTwo sayisindan buyuktur.");
  }
  else
  {
    print("$numberTwo sayisi $numberOne sayisindan buyuktur.");
  }*/


  // PRATIK2: ISLEM YAPILACAK 1. SAYIYI GIRINIZ ARDINDAN 2. SAYIYI GIRINIZ, BIRINCI SAYININ 2 KATININ 5 FAZLASINI ALARAK SAYI2 ILE KARSILASTIRINIZ.
  stdout.write("\n1. sayiyi giriniz: ");
  int? sayi3 = int.parse(stdin.readLineSync()!);
  int yeni_sayi3 = sayi3*2 + 5;

  stdout.write("\n2. sayiyi giriniz: ");
  int? sayi4 = int.parse(stdin.readLineSync()!);
   if(sayi3 > sayi4)
  {
    print("$sayi3 sayisi $sayi4 sayisindan buyuktur.");
  }
  else
  {
    print("$sayi4 sayisi $sayi3 sayisindan buyuktur.");
  }
}