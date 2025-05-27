void main(List<String> args) {
  Ogrenci a = Ogrenci(2, "A");
  print(a.id);
}

class Ogrenci{
  int id = 0;
  String isim = "";

  Ogrenci(this.id, this.isim){
    print("Var sayilan parametreli kurucu calisti");
  }
  Ogrenci.idSiz(this.isim){
    print("id olmayan kurucu metod calisti");
  }

  factory Ogrenci.factoryKurucu(int id, String isim){
    if(id > 0 && isim != ""){
      return Ogrenci(id, isim);
    }
    else{
      return Ogrenci(0,"belirsiz");
    }
  }
}