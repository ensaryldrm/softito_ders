import "dart:io";

void main(List<String> args) {
  Set<int> girilenKenarlar = {};

  for(int i = 0; i<=2; i++){
    stdout.write("${i+1}. kenari giriniz: ");
    int kenar = int.parse(stdin.readLineSync()!);
    girilenKenarlar.add(kenar);
  }

  if(girilenKenarlar.length == 3){
    print("Cesit kenar ucgen");
  }
  else if(girilenKenarlar.length == 2){
    print("ikiz kenar ucgen");
  }
  else if(girilenKenarlar.length == 1){
    print("Eskenar ucgen");
  }
}


