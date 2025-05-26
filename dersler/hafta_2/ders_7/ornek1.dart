import "dart:io";
import "dart:math";

void main(List<String> args) {
  // ORNEK1: Tuttugum sayiyi bul.
  // random bir sayi uret. 0 ile 10 arasinda bir sayi uretin.
  // Kullanicidan bir sayi alin.
  // x > y ise x buyuk ise azalt desin.
  // Tebrikler.

  randomSayi();
}

void randomSayi(){
  print("----Sayi Oyununa Hosgeldiniz----");
  Random r = Random();
  int randomSayi = r.nextInt(11);
  int hak = 3;
  while(hak > 0){
    hak--;
    stdout.write("Tahmini bir sayi giriniz: ");
    int tahminiSayi = int.parse(stdin.readLineSync()!);
    if(tahminiSayi > randomSayi){
      print("Sayiyi azaltiniz. Kalan hakkin: $hak");
    }else if(tahminiSayi < randomSayi){
      print("Sayiyi arttiriniz. Kalan hakkin: $hak");
    }else{
      print("Tebrikler bildiniz! Sayi: $randomSayi");
      break;
    }
  }
}