void main(List<String> args) {
  VeriTabaniIslemleri kullanici1 = VeriTabaniIslemleri();
  bool sonuc = kullanici1.baglan();
  if(sonuc){
    print("Baglandim");
  }
  else{
    print("Hatali baglanti");
  }
}

class VeriTabaniIslemleri{
  String _kullaniciAdi = "Bilal";
  String _sifre = "12345";

  bool baglan(){
    if(_kullaniciAdi == "Bilal" && _sifre == "12345"){
      return true;
    }
    else{
      return false;
    }
  }
}