void main(List<String> args) {
  sonucYazdir();
}

void sonucYazdir(){
  List gelenListe = faktoriyelHesapla();
  for(int s in gelenListe){
    print("Faktoriyeli 1000'den buyuk olan $s");
  }
}

List<int> faktoriyelHesapla(){
  List<int> bindenBuyukOlanlar = [];
  int faktoriyel = 1;
  for(int i =1; i<=20; i++){
    faktoriyel *= i;
    if(faktoriyel > 1000){
      bindenBuyukOlanlar.add(i);
    }
  }
  return bindenBuyukOlanlar;
}