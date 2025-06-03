void main(List<String> args) {
  try{
    Ogrenci ogr = Ogrenci(-6);
    print(ogr.yas);
  }
  on AgeException catch(e){
    print(e.mesaj);
  }
}

class AgeException implements Exception{
  String mesaj = "Age Exception";
  AgeException({this.mesaj = 'Age Exception'});


  @override
  String toString() {
    return "Hata: $mesaj";
  }
}
class Ogrenci{
  int yas = 0;
  Ogrenci(int yas){
    if(yas < 0){
      throw(AgeException());
    }
    else{
      this.yas = yas;
    }
  }
}