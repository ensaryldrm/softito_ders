import "dart:io";
/* ---------------SORU5---------------
  kullanicidan 4 sekilde listelenen urunden hangisini secerse üzerine sabit kargo ücretini ekleyerek hesabi ekranda gosteren program.*/

void main(List<String> args) 
{
  int oyuncakAraba = 150;
  int lamba = 70;
  int klavye = 200;
  int monitor = 2000;
  int kargoUcret = 50;
  stdout.write("Satin almak istediginiz urunu seciniz lutfen\n1)Oyuncak Araba -150TL-\n2)Lamba -70TL-\n3)Klavye -200TL-\n4)Monitor -2000TL--\n\nKARGO UCRETI --50TL--\nUrun: ");
  String? secim = stdin.readLineSync();
  if(secim == "1")
  {
    print("Odemeniz gereken tutar: ${kargoUcret + oyuncakAraba}");
  }

  else if(secim == "2")
  {
    print("Odemeniz gereken tutar: ${kargoUcret + lamba}");
  }

  else if(secim == "3")
  {
    print("Odemeniz gereken tutar: ${kargoUcret + klavye}");
  }

  else if(secim == "4")
  {
    print("Odemeniz gereken tutar: ${kargoUcret + monitor}");
  }

  else
  {
    print("Yanlis secim yaptiniz! Sistem kapatiliyor...");
  }
}