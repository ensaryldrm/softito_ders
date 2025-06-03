void main(List<String> args) {
  /*
    Immutable Sinif Olusturma:
    Biz bunlara immutable data siniflari diyoruz.
    Immutable degismez anlamina geliyor.
    Flutter da mesela internetten haberleri cekiyorsak haberler adinda bir model(sinif) olusturuyoruz. Bunlarin
  */

  const Student bilal = Student(1, "Bilal");
  const Student bilal2 = Student(1, "Bilal");
  Student bilal3 = const Student(1,"Bilal");

  if(bilal2 == bilal3){
    print("Esit");
  }
  else{
    print("Esit degil");
  }

  if(bilal == bilal3){
    print("Esit");
  }
  else{
    print("Esit degil");
  }
}

class Student{
  final int id;
  final String isim;

  const Student(this.id, this.isim);
}