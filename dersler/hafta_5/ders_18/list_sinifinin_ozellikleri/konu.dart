void main(List<String> args) {
  Person ogr1 = Person(3,"Ahmet");
  Ogrenci ogr2 = Ogrenci(1, "Osman", 10);
  Person ogr3 = Ogrenci(8, "Begum", 12);
  var ogr4 = Ogrenci(6, "Yusuf", 5);
  var ogr5 = Person(6, "Ensar");

  List<Person> tumOgrenciler = [ogr1,ogr2,ogr3,ogr4,ogr5];
 /*  var liste1 = List.filled(5, 0);
  var listeOgrenciler = List.filled(5, Ogrenci(0,"Belirsiz", 6));
  var liste3 = List.empty();
  var listeForm = List.from(tumOgrenciler); */

 /*  var listeOf = List<Ogrenci>.of(tumOgrenciler.whereType());
  for(var e in listeOf){
    print(e.isim);
  } */

/*   var listGenerate = List<Person>.generate(5,(index)) => Person(tumOgrenciler)

 */

/* 
  print(tumOgrenciler.first.isim);
  print(tumOgrenciler.last.isim);
  print(tumOgrenciler.length);
  var tersListe = tumOgrenciler.reversed;
   */
  /* bool sonuc = tumOgrenciler.any((Person element) => element.isim == "Selma");
  print(sonuc); */

 /*  print(tumOgrenciler.elementAt(2)); */

 /* bool sonucEvery = tumOgrenciler.every((eleman) => eleman.isim.length>4);
 print(sonucEvery); */

 /* var bulunanOgrenci = tumOgrenciler.firstWhere((element) => element.id == 1);
 print(bulunanOgrenci); */

/*  var mapIterable = tumOgrenciler.map((Person p) => "${p.isim}");
 print(mapIterable); */

/*  List<String> myNameList = tumOgrenciler.map((Person p) => "${p.isim}").toList();
 print(myNameList[2]); */

 /* var bilinmeyen = tumOgrenciler.map((Person p) => "${p.id}").toSet();
 print(bilinmeyen); */

 /* List<String> isimler = ["Ahmet", "Osman", "Canan", "Selim","Kubra"];
 isimler.sort();
 print(isimler);
 
 List<int> sayilar = [1,5,7,6,4,2];
 sayilar.sort();
 print(sayilar); */

  tumOgrenciler.sort((ogr1,ogr2){
    if(ogr1.id < ogr2.id){
      return -1;
    }
    else if(ogr1.id > ogr2.id){
      return 1;
    }
    else{
      return 0;
    }
  });
  print(tumOgrenciler);

  var liste = [1,2,3,4];
  var mapFromIterable = Map.fromIterable(liste);
  print(mapFromIterable);


  var mapFromIterable2 = Map<String, int>.fromIterable(liste, key: (item){return "sayi$item";},value : (item) => item,);
  print(mapFromIterable2);

}

class Person{
  int id = 0;
  String isim = "";
  Person(this.id, this.isim);

  @override
  String toString(){
    return "id: $id ve isim: $isim";
  }
}

class Ogrenci extends Person{
  int alinanDersSayisi = 0;
  Ogrenci(id, isim, this.alinanDersSayisi) : super(id,isim);

  @override
  String toString() {
    return "id: $id ve isim $isim ve alinan ders sayisi: $alinanDersSayisi";
  }
}