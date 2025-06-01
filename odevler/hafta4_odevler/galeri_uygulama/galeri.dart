class Arac{
  String? arabaMarka;
  String? arabaModel;
  int? arabaYas;
  bool? arabaStok;
  double? arabaFiyat;

  Arac({required this.arabaFiyat, required this.arabaMarka, required this.arabaStok, required this.arabaYas, required this.arabaModel});

  void arabaListele(){
    String arabaDurum = "";
    arabaStok! ? arabaDurum = "Var" : arabaDurum = "Yok";
    print("Araba Marka: $arabaMarka\nAraba Model: $arabaModel\nAraba Fiyati: $arabaFiyat\nAraba Yas: $arabaYas\nAraba Stok Durum: $arabaDurum");
  }
}