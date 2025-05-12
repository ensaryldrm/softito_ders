 
 import "dart:io";
 import "dart:math";

 void main(List<String> args) {
  while(true){
    Random r = Random();
    int sum1 = 0, sum2 = 0;
    int zar1_1 = 0, zar1_2 = 0, zar2_1 = 0, zar2_2 = 0;
    stdout.write("1. Oyuncu adinizi giriniz: ");
    String? player1 = stdin.readLineSync();

    stdout.write("Oyuna baslamak icin E ye cikis yapmak icin herhangi bir tusa basiniz: ");
    String? selected = stdin.readLineSync();

    if(selected == "E" || selected == "e"){
      print("Zar 1 atiliyor...");
      zar1_1 = r.nextInt(6) + 1;
      print("1. Oyuncunun 1. zari: $zar1_1");
      zar1_2 = r.nextInt(6) + 1;
      print("1. Oyuncunun 2. zari: $zar1_2");
      sum1 = zar1_1 + zar1_2;
    }
    else{
      break;
    }
    
    print("2. Oyuncuya geciliyor...\n");
    stdout.write("2. Oyuncu adinizi giriniz: ");
    String? player2 = stdin.readLineSync();

    stdout.write("Oyuna baslamak icin E ye cikis yapmak icin herhangi bir tusa basiniz: ");
    String? selected2 = stdin.readLineSync();

    if(selected2 == "E" || selected2 == "e"){
      print("Zar 1 atiliyor...");
      zar2_1 = r.nextInt(6) + 1;
      print("2. Oyuncunun 1. zari: $zar2_1");
      zar2_2 = r.nextInt(6) + 1;
      print("2. Oyuncunun 2. zari: $zar2_2");
      sum2 = zar2_1 + zar2_2;
    }
    else{
      break;
    }
  print("Puanlar hesaplaniyor...");
  if(sum1 > sum2){
    print("Oyuncu1: $player1 oyunu $sum1 puan ile kazandi. Not: $player2 nin puani $sum2 dir.");
  }
  else if(sum2 > sum1){
    print("Oyuncu2: $player2 oyunu $sum2 puan ile kazandi. Not: $player1 nin puani $sum1 dir.");
  }
  else{
    print("Oyuncular: $player1 $sum1 ve $player2 $sum2 ile berabere kalmistir! ");
  }
 }
}