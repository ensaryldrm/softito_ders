import 'dart:math';

void main(List<String> args) {
  try{
  double deger = karekokunuAl(-8);
  print("Deger: ${deger.toStringAsFixed(2)}");
  }
  on FormatException catch(e){
    print(e.message);
  }
  catch(e){
    print(e);
  }
}

double karekokunuAl(int i){
  if(i<0){
    throw FormatException("Sayi negatif olamaz!");
  }
  else{
  return sqrt(i);
  }
}