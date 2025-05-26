void main(List<String> args) {
  Ogrenci ogrenci1 = Ogrenci();
  ogrenci1.ogrAd = "Bilal Karademir";
  ogrenci1.ogrNo = 772;
  ogrenci1.aktifMi = true;
  ogrenci1.dersCalis();
}

class Ogrenci{
  String? ogrAd;
  int? ogrNo;
  bool? aktifMi;

  void dersCalis(){
    print("Ders calisiyor...");
  }
}