void main(List<String> args) {
  Araba a = Araba(2022, "Honda", true);
  a.yasHesapla();


  Araba2 araba = Araba2(modelYili: 0, otomatikMi: true, marka: "Ford");
  araba.yasHesapla();
}


// NORMAL CONSTRUCTER 
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

// DAHA GELISMIS CONSTRUCTER
class Araba2{
  int? modelYili;
  String? marka;
  bool? otomatikMi;

  Araba2({required this.modelYili,required this.marka,required this.otomatikMi});

  
  void yasHesapla(){
    print("Arabanin yasi: ${2025-modelYili!}");
  }
}