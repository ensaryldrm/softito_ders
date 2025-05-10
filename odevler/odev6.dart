import "dart:io";
/* ---------------SORU6---------------
  final notunun %70 vize notunun %30 olduğu bir not hesaplama programinda girilen notlara gore 100-85 AA, 84-70 BA 69-50 BB 49-30 CB 30-0 CC olan sonsuz dongulu programi yazin.*/

void main(List<String> args)
{
  double vizeNot;
  double finalNot;
  double notOrt;

  while(true)
  {stdout.write("S--HOSGELDINIZ--\nIslem yapmak icin e\nCikis yapmak icin q \nSecim: ");
    String? secim = stdin.readLineSync();
    if(secim == "e" || secim == "E")
    {
      stdout.write("Vize notunuzu giriniz: ");
      vizeNot = double.parse(stdin.readLineSync()!);
      if(vizeNot < 0)
      {
        print("0 dan dusuk not girilemez!");
        break;
      }
     
      stdout.write("Final notunuzu giriniz: ");
      finalNot = double.parse(stdin.readLineSync()!);
      if(vizeNot < 0)
      {
        print("0 dan dusuk not girilemez!");
        break;
      }

      notOrt = (vizeNot * 0.3) + (finalNot * 0.7);

      if(notOrt <= 100 && notOrt >=85)
      {
      print("Dersten $notOrt not ortalamasi ile AA aldiniz!");
      }

      else if(notOrt <= 84 && notOrt >=70)
      {
      print("Dersten $notOrt not ortalamasi ile BA aldiniz!");
      } 

      else if(notOrt <= 69 && notOrt >=50)
      {
      print("Dersten $notOrt not ortalamasi ile BB aldiniz!");
      }

      else if(notOrt <= 49 && notOrt >= 30)
      {
      print("Dersten $notOrt not ortalamasi ile BC aldiniz!");
      }

      else if(notOrt <= 100 && notOrt >=85)
      {
      print("Dersten $notOrt not ortalamasi ile CC aldiniz!");
      }

      else
      {
      print("HATALI NOTLAR GIRILDI. NOTLARI TEKRAR KONTROL EDINIZ!!");
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
