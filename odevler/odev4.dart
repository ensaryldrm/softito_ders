import "dart:io";
/* ---------------SORU4---------------
   sonsuz döngü şeklinde geometrik şekillerde kare, dikdörgen, paralelkenar ve dairenin alanını bulan programı yazın. */

void main(List<String> args)
 {
  double kenar1;
  double kenar2;
  double alan = 0;
  while(true)
  {
    stdout.write("S--HOSGELDINIZ--\n1)Kare Alan Hesaplama\n2)Diktortgen Alan Hesaplama\n3)Paralel Kenar Alan Hesaplama\n4)Daire Alan Hesaplama\n5)Cikis\nSecim: ");
    String? secim = stdin.readLineSync();
    if(secim == "1")
    {
     stdout.write("Karenin kenarini giriniz: ");
     kenar1 = double.parse(stdin.readLineSync()!);

     alan = kenar1*kenar1;
     print("Cevap: $alan\n");
    }

    else if(secim == "2")
    {
     stdout.write("Dikdortgenin 1. kenarini giriniz: ");
     kenar1 = double.parse(stdin.readLineSync()!);

     stdout.write("Dikdortgenin 2. kenarini giriniz: ");
     kenar2 = double.parse(stdin.readLineSync()!);
     alan = kenar1 * kenar2;
     print("Cevap: $alan\n");
    }

    else if(secim == "3")
    {
     stdout.write("Kenari giriniz: ");
     kenar1 = double.parse(stdin.readLineSync()!);

     stdout.write("Yuksekligi giriniz: ");
     double yukseklik = double.parse(stdin.readLineSync()!);
     alan = yukseklik * kenar1;
     print("Cevap: $alan\n");
    }

    else if(secim == "4")
    {
     stdout.write("Yaricapi giriniz: ");
     double yariCap = double.parse(stdin.readLineSync()!);
     double pi = 3.14;
  
     alan = pi * yariCap * yariCap;
     print("Cevap: $alan\n");
    }
    else if(secim == "5")
    {
      print("Sistemden cikiliyor...\n");
      break;
    }

    else
    {
      print("Hata!");
    }
  }
}