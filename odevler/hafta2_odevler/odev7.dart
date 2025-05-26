import "dart:io";
void main(List<String> args) {
  // Kullanicinin girdigi 5 sayidan buyuk olanini ekrana yazdirin.
  
  int buyukSayi = -1;
  for(int i = 1; i<= 5; i++){
    stdout.write("Lutfen $i. sayiyi giriniz: ");
    int sayi = int.parse(stdin.readLineSync()!);
    if(sayi >= buyukSayi){
      buyukSayi = sayi;
    }
  }

  print("Girdiginiz 5 degerden en buyuğu: $buyukSayi");
}