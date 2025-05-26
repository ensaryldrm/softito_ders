void main(List<String> args) {
  Hayvanlar hayvan1 = Hayvanlar();
  hayvan1.hayvanAd = "Tavuk";
  hayvan1.ucuyorMu = false;
  hayvan1.ayakSayisi = 2;
  hayvan1.yemekYe();
}

class Hayvanlar{
  String? hayvanAd;
  bool? ucuyorMu;
  int? ayakSayisi;

  void yemekYe(){
    print("Hayvan besleniyor...");
  }
}