import "dart:io";
/* ---------------SORU2---------------
   sonsuz döngü şeklinde kullanıcan iki sayı alın ve bu sayıları toplatın. */

void main(List<String> args) 
{
  double sayi1;
  double sayi2;
  double toplam = 0;
  while(true)
  {
    stdout.write("S--HOSGELDINIZ--\nIslem yapmak icin e\nCikis yapmak icin q \nSecim: ");
    String? secim = stdin.readLineSync();
    if(secim == "e" || secim == "E")
    {
      stdout.write("Sayi1 icin deger giriniz: ");
     sayi1 = double.parse(stdin.readLineSync()!);

     stdout.write("Sayi2 icin deger giriniz: ");
     sayi2 = double.parse(stdin.readLineSync()!);
     toplam = sayi1 + sayi2;

     print("$sayi1 + $sayi2 = ${sayi1 + sayi2}\n");
    }

    else if(secim == "q" || secim == "Q")
    {
      break;
    }

    else
    {
      print("Hata!");
    }
  }
}