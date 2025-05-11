import "dart:io";

void main(List<String> args) {
  //sonsuz dongu olacak, kullaniciya kahve: 100TL, cay: 50TL, soguk icecek: 75TL, lutfen siparis icin kahve ise k cay ise c, soguk icecek icin s yaziniz.
  // Sonra ekranda adet ciksin en sonunda siparisiniz hazirlaniyor diyip tutariniz kac tl ise yazdirsin.
  
  while(true)
  {
    int toplam = 0;
    stdout.write("--Siparisinizi seciniz--\nk)Kahve: 100TL\nc)Cay: 50TL\ns)Soguk Icecek: 75TL\na)cikis\nSecim: ");
    String? secim = stdin.readLineSync();

    if(secim == "k" || secim == "K"){
      stdout.write("\nKac adet almak istediginizi giriniz: ");
      int secimTane = int.parse(stdin.readLineSync()!);
      if(secimTane <= 0){
      print("Yanlis adet girildi!\nSistemden cikiliyor...");
      break;
      }
      toplam = 100 * secimTane;
      print("Siparisiniz hazirlaniyor...\nSiparisiniz hazirlandi!\nOdemeniz gereken tutar: $toplam\n");
    }
    
    else if(secim == "c" || secim == "C"){
      stdout.write("\nKac adet almak istediginizi giriniz: ");
      int secimTane = int.parse(stdin.readLineSync()!);
      if(secimTane <= 0){
      print("Yanlis adet girildi!\nSistemden cikiliyor...");
      break;
      }
      toplam = 50 * secimTane;
      print("Siparisiniz hazirlaniyor...\nSiparisiniz hazirlandi!\nOdemeniz gereken tutar: $toplam\n");
    }

    else if(secim == "s" || secim == "S"){
      stdout.write("\nKac adet almak istediginizi giriniz: ");
      int secimTane = int.parse(stdin.readLineSync()!);
      if(secimTane <= 0){
      print("Yanlis adet girildi!\nSistemden cikiliyor...");
      break;
      }
      toplam = 75 * secimTane;
      print("Siparisiniz hazirlaniyor...\nSiparisiniz hazirlandi!\nOdemeniz gereken tutar: $toplam\n");
    }
    
    else if(secim == "a" || secim == "A"){
      print("Sistemden cikis yapiliyor...");
      break;
    }
    else{
      print("Yanlis secim girildi!");
    }
  }
}