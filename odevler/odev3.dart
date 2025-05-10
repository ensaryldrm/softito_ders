import "dart:io";
/* ---------------SORU3---------------
  sonsuz dongu seklinde islem secimi yapilabilip secime gore girilen sayilari isleme sokan program. */

void main(List<String> args)
 {
  double sayi1;
  double sayi2;
  double toplam = 0;
  while(true)
  {
    stdout.write("S--HOSGELDINIZ--\n1)Toplama\n2)Cikarma\n3)Carpma\n4)Bolme\n5)Cikis\nSecim: ");
    String? secim = stdin.readLineSync();
    if(secim == "1")
    {
     stdout.write("Sayi1 icin deger giriniz: ");
     sayi1 = double.parse(stdin.readLineSync()!);

     stdout.write("Sayi2 icin deger giriniz: ");
     sayi2 = double.parse(stdin.readLineSync()!);
     toplam = sayi1 + sayi2;
     print("Cevap: $toplam\n");
    }

    else if(secim == "2")
    {
     stdout.write("Sayi1 icin deger giriniz: ");
     sayi1 = double.parse(stdin.readLineSync()!);

     stdout.write("Sayi2 icin deger giriniz: ");
     sayi2 = double.parse(stdin.readLineSync()!);
     toplam = sayi1 - sayi2;
     print("Cevap: $toplam\n");
    }

    else if(secim == "3")
    {
     stdout.write("Sayi1 icin deger giriniz: ");
     sayi1 = double.parse(stdin.readLineSync()!);

     stdout.write("Sayi2 icin deger giriniz: ");
     sayi2 = double.parse(stdin.readLineSync()!);
     toplam = sayi1 * sayi2;
     print("Cevap: $toplam\n");
    }

    else if(secim == "4")
    {
     stdout.write("Sayi1 icin deger giriniz: ");
     sayi1 = double.parse(stdin.readLineSync()!);

     stdout.write("Sayi2 icin deger giriniz: ");
     sayi2 = double.parse(stdin.readLineSync()!);
     if(sayi2 == 0)
     {
      print("Payda 0 olamaz!\nSistemden cikiliyor...");
      break;
     }
     toplam = sayi1 / sayi2;
     print("Cevap: $toplam\n");
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