void main(List<String> args) {
  List<Departman> kullaniciList = [];
  Departman kisi1 = MuhasebeDepartman("Hale", 25, "05XX");
  Departman kisi2 = MuhasebeDepartman("Baki", 34, "05XX");
  Departman kisi3 = MuhasebeDepartman("Demir", 42, "05XX");
  Departman kisi4 = UretimDepartman("Sevgi", 22, "05XX");
  Departman kisi5 = UretimDepartman("Mehmet", 25, "05XX");
  Departman kisi6 = UretimDepartman("Yusuf", 42, "05XX");

  kullaniciList.add(kisi1);
  kullaniciList.add(kisi2);
  kullaniciList.add(kisi3);
  kullaniciList.add(kisi4);
  kullaniciList.add(kisi5);
  kullaniciList.add(kisi6);

  for(Departman kisiler in kullaniciList){
    print("-------------");
    print(kisiler.toString());
    print("-------------");
  }


}

class Departman{
  String calisanIsim = "";
  int calisanSayi = 0;
  String telefonNo = "";

  Departman(this.calisanIsim, this.calisanSayi, this.telefonNo){

  }
  
  @override
  String toString(){
    return "Kisi ad: $calisanIsim - Telefon No: $telefonNo";
 }

 void departmanaMailGonder(){
  print("Merhaba isler nasil gidiyor?");
 }

 void raporGonder(){
  print("Departman raporu gonderildi...");
 }
}

class MuhasebeDepartman extends Departman{
  MuhasebeDepartman(String calisanIsim, int calisanSayi, String telefonNo) : super(calisanIsim, calisanSayi, telefonNo){}

  void isimDegistir(String isim){
    super.calisanIsim = isim;
  }

  void calisanSayisiDegistir(int calisanSayi){
    super.calisanSayi = calisanSayi;
  }

  void telNoDegistir(String telNo){
    super.telefonNo = telNo;
  }
}

class UretimDepartman extends Departman{
  UretimDepartman(String calisanIsim, int calisanSayi, String telefonNo) : super(calisanIsim, calisanSayi, telefonNo){}

  void isimDegistir(String isim){
    super.calisanIsim = isim;
  }

  void calisanSayisiDegistir(int calisanSayi){
    super.calisanSayi = calisanSayi;
  }

  void telNoDegistir(String telNo){
    super.telefonNo = telNo;
  }
}