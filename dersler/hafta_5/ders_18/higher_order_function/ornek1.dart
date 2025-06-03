import 'dart:io';

void main(List<String> args) {
  List<int> sayilar = [];
  while(true){
    stdout.write("\n1)Sayi giris\nCikis icin herhangi tus\nSecim: ");
    String? secim = stdin.readLineSync()!;
    if(secim == "1"){
      stdout.write("\nLutfen sayi giriniz: ");
      int sayi = int.parse(stdin.readLineSync()!);
      listeyeEkle(sayilar, sayi, callback);
    }
    else{
      break;
    }
  }
}

void listeyeEkle(List<int> listem, int sayi, Function callback){
  listem.add(sayi);
  for(int i = 0; i<listem.length; i++){
    callback(listem[i], i);
  }
}

void callback(int eleman, int i ){
  print(("\n${i+1}.eleman: $eleman"));
}