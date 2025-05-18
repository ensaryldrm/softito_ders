import "dart:io";
void main(List<String> args) {
  // Kullanicidan iki tane sayi isteyeceksiniz biri baslangic biri bitis degeri. 3 ile bolunup 4 ile bolunmeyenleri yazdiracaksiniz.

  stdout.write("Dongu icin baslangic degeri giriniz: ");
  int donguBaslangic = int.parse(stdin.readLineSync()!);

  stdout.write("Dongu icin bitis degeri giriniz: ");
  int donguBitis = int.parse(stdin.readLineSync()!);

  int i = 0;
  for(i = donguBaslangic; i<=donguBitis; i++){
    if(i % 3 == 0 && i % 4 != 0){
      print("sayi: $i");
    }
  }
}