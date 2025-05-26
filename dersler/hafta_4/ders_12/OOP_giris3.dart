void main(List<String> args) {
  Araba araba1 = Araba();
  araba1.marka ="Toyota";
  araba1.modelYil = 2015;
  araba1.fiyat = 457000;
  araba1.otomatikMi = false;
  araba1.bilgileriSoyle();
  araba1.marka = "Reno";
  araba1.bilgileriSoyle();
}

class Araba{
  int? modelYil;
  String? marka;
  double? fiyat;
  bool? otomatikMi;

  Araba(){
    print("Ben kurucu metottan geldim!");
  }

  void bilgileriSoyle(){
    print("Arabanin model yili: $modelYil, markasi: $marka, fiyati: $fiyat ozelligi: $otomatikMi");
  }
}