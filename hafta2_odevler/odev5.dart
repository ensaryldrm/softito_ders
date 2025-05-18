void main(List<String> args) {
  // 1 den 20 ye kadar faktoriyeli 1000 den buyuk olanlari ekrana yazdirin.
  
  double fakt = 1;
  for(int i = 1; i<=20; i++){
    fakt *= i;
    if(fakt > 1000){
      print("$i sayisinin faktoriyel degeri: $fakt");
    }
  }
}