void main(List<String> args) {
  Sirket apple = Sirket(42312, 1993, "YILDIRIM Yazilim", 52, "Istanbul / Cekmekoy");
  apple.bilgileriGoster();
}

class Sirket{
  int? sirketVergiNo;
  int? kurulusYili;
  String? adi;
  String? adres;
  int? calisanSayisi;

  Sirket(int companyNo, int beginYear, String companyName, int personNumber, String adress){
    sirketVergiNo = companyNo;
    kurulusYili = beginYear;
    adi = companyName;
    adres = adress;
    calisanSayisi = personNumber;
  }

  void bilgileriGoster(){
    print("Sirket adi: $adi\nSirket vergi no: $sirketVergiNo\nSirket kurulus yili: $kurulusYili\nCalisan sayisi: $calisanSayisi");
  }
}