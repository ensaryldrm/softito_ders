import "dart:io";

void main(List<String> args) {
   /*
  -------------------------------------------- ODEV 2 --------------------------------------------
  Kullanıcıdan beş tane sayı alın. Bu sayıları Set de saklayın ve sayıların toplamını ekrana yazdırın
  */
  sayiSet();
}

void sayiSet(){
  Set<int> sayiSet = {};
  for(int i = 0; i<5; i++){
    stdout.write("${i+1}. sayiyi giriniz: ");
    int sayi = int.parse(stdin.readLineSync()!);
    sayiSet.add(sayi);
  }

  int toplam = 0;

  for(int i in sayiSet){
    toplam += i;
  }
  print("Listenin benzersiz toplami: $toplam");
}