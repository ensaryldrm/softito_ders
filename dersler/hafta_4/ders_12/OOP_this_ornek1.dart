void main(List<String> args) {
  Araba a = Araba(2022, "Honda", true);
  a.yasHesapla();
}


class Araba{
  int? modelYili;
  String? marka;
  bool? otomatikMi;
  Araba(int modelYili, String marka, bool otomatikMi){
    this.modelYili = modelYili;
    this.marka = marka;
    this.otomatikMi = otomatikMi;
  }
  
  void yasHesapla(){
    print("Arabanin yasi: ${2025-modelYili!}");
  }
}