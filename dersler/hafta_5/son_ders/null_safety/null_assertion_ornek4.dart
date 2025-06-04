import 'dart:math';

void main(List<String> args) {
  final uretici = RastgeleMetinUretici();
  String? sonuc = uretici.degerUret();
  if(sonuc == null){
    print("null deger oldu");
  }
  else{
    metinYazdir(sonuc);
  }
}

class RastgeleMetinUretici{
  String? degerUret(){
    if(Random().nextBool()){
      return "string ifade";
    }
    else{
      return null;
    }
  }
}

void metinYazdir(String metin){
  print(metin);
}