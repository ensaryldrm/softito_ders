import "dart:io";
/*---------------SORU6---------------
 kullanicidan fiyat kar ya da zarar orani seçimi yaptirip girilen fiyata gore son fiyati yazan program (Bir fiyat girin. Kar mi Zarar orani girin 20 => %20 sonuc olarak fiyati hesaplaticaksin.)*/ 
void main(List<String> args) {
  while(true)
  {
    double anaPara;
    double yeniPara;
    double faizOrani;
    double zararOrani;
    stdout.write("---Islem seciniz---\n1)Kar Hesaplama\n2)Zarar hesaplama\n3)Cikis\nSecim: ");
    String? secim = stdin.readLineSync();
    if(secim == "1")
    {
      stdout.write("Ana parayi giriniz: ");
      anaPara = double.parse(stdin.readLineSync()!);
      if(anaPara < 0)
      {
        print("Hatali Islem!!\nSistemden cikis yapiliyor...");
        break;
      }

      stdout.write("Faiz oranini giriniz: ");
      faizOrani = double.parse(stdin.readLineSync()!);
      if(faizOrani < 0)
      {
        print("Hatali Islem!!");
        break;
      }

      yeniPara = anaPara + (anaPara * faizOrani);
      print("Paranizin yeni degeri: $yeniPara\n\n");
    }

    else if(secim == "2")
    {
      stdout.write("Ana parayi giriniz: ");
      anaPara = double.parse(stdin.readLineSync()!);
      if(anaPara < 0)
      {
        print("Hatali Islem!!\nSistemden cikis yapiliyor...");
        break;
      }

      stdout.write("Zarar oranini giriniz: ");
      zararOrani = double.parse(stdin.readLineSync()!);
      if(zararOrani < 0)
      {
        print("Hatali Islem!!");
        break;
      }

      yeniPara = anaPara - (anaPara * zararOrani);
      print("Paranizin yeni degeri: $yeniPara\n\n");
    }

    else if(secim == "3")
    {
      print("Sistemden cikiliyor...\n");
      break;
    }

    else
    {
      print("Hatali Giris!!");
      break;
    }
  }
}