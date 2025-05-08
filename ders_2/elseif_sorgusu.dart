import "dart:io";

void main(List<String> args) {
  /*int numberOne = 17;
  int numberTwo = -55;
  if(numberOne > numberTwo)
  {
    print("$numberOne sayisi $numberTwo sayisindan  buyuktur.");
  }

  else if(numberTwo > numberOne)
  {
    print("$numberTwo sayisi $numberOne sayisindan  buyuktur.");
  }

  else
  {
    print("$numberOne sayisi $numberTwo sayisina esittir.");
  }

  // Sayinin tek-cift olmasini gosteren program
  stdout.write("Lutfen bir sayi giriniz: ");
  int inputNumber = int.parse(stdin.readLineSync()!);
  if(inputNumber == 0)
  {
    print("Girdiginiz $inputNumber sayisinin isareti yoktur..");
  }

  else if(inputNumber > 0)
  {
    print("Girdiginiz $inputNumber sayisinin isareti pozitiftir");
  }

  else
  {
    print("Girdiginiz $inputNumber sayisinin isareti negatiftir");
  }*/

  // Kullanici kendi islemini secerek matematiksel islem yaptıracak program
  stdout.write("Lutfen birinci sayiyi giriniz: ");
  double a = double.parse(stdin.readLineSync()!);

  stdout.write("Lutfen ikinci sayiyi giriniz: ");
  double b = double.parse(stdin.readLineSync()!);

  stdout.write("--Yapmak istediginiz islemi seciniz--\nToplama icin 1\nCikarma icin 2\nCarpma icin 3\nBolme icin 4\nMod alma icin 5\n:");
  String? secim = stdin.readLineSync()!;

  if(secim == "1")
  {
    print("$a + $b = ${a+b}");
  }

  else if(secim == "2")
  {
    print("$a - $b = ${a-b}");
  }

  else if(secim == "3")
  {
    print("$a * $b = ${a/b}");
  }

  else if(secim == "4")
  {
    print("$a / $b = ${a/b}");
  }
  else if(secim == "5")
  {
    print("$a % $b = ${a%b}");
  }

  else
  {
    print("Yanlis sayi girdiniz!!");
  }
}