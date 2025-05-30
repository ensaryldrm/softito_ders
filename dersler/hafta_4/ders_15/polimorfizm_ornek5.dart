void main(List<String> args) {
  MuhasebeDepartmani muhasebe = MuhasebeDepartmani(
    1,
    "Muhasebe",
    125,
    "11111111111",
    
  );
  muhasebe.departmanBilgisiVer();

  muhasebe.calisanEkle(Calisan(adSoyad: "Bilal", departmanAdi: "Muhasebe", calismaYili: 6, maas: 65000));

  UretimDepartmani uretim = UretimDepartmani(1, "Üretim", 134, "2222222222");
  uretim.calisanEkle(Calisan(adSoyad: "Suat", departmanAdi: "Uretim", calismaYili: 11, maas: 54655));

  print("----------URETIMDE CALISANLAR-------------");
  for(Calisan c in uretim.Calisanlar){
    print(c.adSoyad);
  }
  print("----------MUHASEBEDE CALISANLAR-------------");
  for(Calisan c in muhasebe.Calisanlar){
    print(c.adSoyad);
  }
}

class Calisan {
  String adSoyad;
  double maas;
  int calismaYili;
  String departmanAdi;

  Calisan({this.adSoyad = "", this.maas = 0, this.calismaYili = 0, this.departmanAdi = ""});
}

class Departmanlar {
  int departmanId = 0; //alt sınıfta doldurucaz
  String departmanAdi = ""; //alt sınıfta doldurucaz
  int departmancalisanSayisi = 0; //alt sınıfta doldurucaz
  String departmanTelNo = ""; //alt sınıfta doldurucaz
  String adSoyad = ""; //alt sınıfın altında doldurucaz
  double maas = 0; //alt sınıfın altında doldurucaz
  int CalismaYili = 0; //alt sınıfın altında doldurucaz

  List<Calisan> Calisanlar = [];

  Departmanlar(
    this.departmanId,
    this.departmanAdi,
    this.departmancalisanSayisi,
    this.departmanTelNo,
  ) {}

  void calisanEkle(Calisan calisan) {
    Calisanlar.add(calisan);
  }

  void departmanBilgisiVer() {
    print(
      "Departman ID: $departmanId\nDepartman Adı: $departmanAdi\nDepartman Çalışan Sayısı: $departmancalisanSayisi\nDepartman Telefon: $departmanTelNo",
    );
  }
}

class MuhasebeDepartmani extends Departmanlar {
  double yillikGelir = 0;
  double yillikGider = 0;

  MuhasebeDepartmani(
    int departmanId,
    String departmanAdi,
    int departmanCalisanSayisi,
    String departmanTelNo,
  ) : super(
        departmanId,
        departmanAdi,
        departmanCalisanSayisi,
        departmanTelNo,
      ) {}

  void calisanEkle(Calisan calisan) {
    Calisanlar.add(calisan);
  }
}

class UretimDepartmani extends Departmanlar {
  int yillikUretimMiktari = 0;

  UretimDepartmani(
    int departmanId,
    String departmanAdi,
    int departmanCalisanSayisi,
    String departmanTelNo,
  ) : super(
        departmanId,
        departmanAdi,
        departmanCalisanSayisi,
        departmanTelNo,
      ) {}
}
