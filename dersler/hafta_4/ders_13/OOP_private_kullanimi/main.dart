import 'private.dart';

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

