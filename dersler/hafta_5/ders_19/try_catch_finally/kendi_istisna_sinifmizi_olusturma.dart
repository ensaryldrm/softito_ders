void main(List<String> args) {
  try{
    Ogrenci ogr = Ogrenci(-6);
    print(ogr.yas);
  }
  catch(e){
    print(e);
  }
}

class AgeException implements Exception{
  String mesaj = "Age Exception";
  AgeException({mesaj});

  @override
  String toString() {
    return "Hata: $mesaj";
  }
}
class Ogrenci{
  int yas = 0;
  Ogrenci(int yas){
    if(yas < 0){
      print("Yas negatif olamaz!");
    }
    else{
      this.yas = yas;
    }
  }
}