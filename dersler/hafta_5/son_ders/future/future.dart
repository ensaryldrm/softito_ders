void main(List<String> args) {

  print("internetten kisi veri listesi getirilecek");
  kisiIslemleri();
  print("Baska isler yapiliyor");
  print("islem bitti");

}

void kisiIslemleri() async{
  String kisi = await kisiVerisiniGetir();
  print(kisi.length);
}
Future<String> kisiVerisiniGetir(){
  return Future<String>.delayed(Duration(seconds: 3), (){
    return "Kisi: adi Bilal ve id: 5";
  });
  
}

