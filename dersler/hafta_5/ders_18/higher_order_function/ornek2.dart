void main(List<String> args) {
  sayilariTopla(f, 124, 24);
}

void sayilariTopla(Function f, int a, int b){
  int toplam = a + b;
  f(toplam);
}

void f(int deger){
  print("Sayilarin toplami: $deger");
}