import "dart:io";
/* ---------------SORU1---------------
  sonsuz dongu seklinde kullanicidan 3 sayi alin buyuk olani ekrana yazdirin.. q ya basana kadar islem surekli istensin */

void main(List<String> args) 
{
  double sayi1;
  double sayi2;
  double sayi3;

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

     stdout.write("Sayi3 icin deger giriniz: ");
     sayi3 = double.parse(stdin.readLineSync()!);

     if(sayi1 > sayi2 && sayi1 > sayi3)
     {
      print("Uc sayidan en buyugu \"$sayi1\" sayisidir.\n");
     }
     else if(sayi2 > sayi1 && sayi2 > sayi3)
     {
      print("Uc sayidan en buyugu \"$sayi2\" sayisidir.\n");
     }
     else if(sayi3 > sayi1  && sayi3 > sayi2)
     {
      print("Uc sayidan en buyugu \"$sayi3\" sayisidir.\n");
     }
     else if(sayi1 == sayi2 && sayi2 == sayi3)
     {
      print("Girdiginiz uc sayida birbirine esittir!\n");
     }
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