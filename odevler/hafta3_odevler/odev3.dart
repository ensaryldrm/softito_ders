import "dart:io";

void main(List<String> args) {
  /*
  -------------------------------------------- ODEV 3 --------------------------------------------
  Kullanıcıdan beş tane sayı alın Bu sayıları Set de saklayın ve sayıların toplamını ekrana yazdırın. 
  kullanıcının kaç tane aynı sayı girdiğini bulup ekrana iki kere aynı sayı girdiniz sayıların toplamı : şu yazsın 
  */
  sayiAl();
}

void sayiAl(){
  List<int> sayiList = [];

  int toplam = 0;
  for(int i = 0; i<5; i++){
    stdout.write("${i+1}. sayiyi giriniz: ");
    int sayi = int.parse(stdin.readLineSync()!);
    sayiList.add(sayi);
    toplam += sayi;
  }

  
  for(int i =0; i<sayiList.length; i++){
    int sayac = 0;
    for(int j = 0; j<sayiList.length; j++ ){
      if(sayiList[i] == sayiList[j]){
        sayac++;
      }
    }
    
    if(sayac > 0){
      print("Girdiginiz ${sayiList[i]} sayisi toplam $sayac kere kullanmistir.");
    }
  }
  print("Toplamlari: $toplam");
}