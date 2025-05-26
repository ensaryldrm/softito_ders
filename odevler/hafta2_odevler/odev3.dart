import "dart:io";
void main(List<String> args) {
  // Kullanicidan iki tane isteyeceksiniz. biri baslangic biri bitis degeri. 1-3 ile bolunen icin 2 - 4 ile bolunenler 3 - 5 bolunenler diyeceksiniz kullanici sececek.

  stdout.write("Dongu icin baslangic degeri giriniz: ");
  int donguBaslangic = int.parse(stdin.readLineSync()!);

  stdout.write("Dongu icin bitis degeri giriniz: ");
  int donguBitis = int.parse(stdin.readLineSync()!);

  stdout.write("--Dongu icin islem seciniz--\n1) 1 ve 3'e bolunan sayilari gorme\n2) 2 ve 4'e bolunen sayilari gorme\n3) 3 ve 5'e bolunen sayilari gorme\nSecim: ");
  String islemSecim = stdin.readLineSync()!;
  
  int i = 0;
  if(islemSecim == "1"){
    for(i = donguBaslangic; i<=donguBitis; i++){
      if(i % 3 == 0){
        print(i);
      }
    }
  }

  else if(islemSecim == "2"){
    for(i = donguBaslangic; i<=donguBitis; i++){
      if(i % 2 == 0 && i % 4 == 0){
        print(i);
      }
    }
  }
  else if(islemSecim == "3"){
    for(i = donguBaslangic; i<=donguBitis; i++){
      if(i % 3 == 0 && i % 5 == 0){
        print(i);
      }
    }
  }
  else{
    print("Yanlis islem sectiniz!");
  }
}