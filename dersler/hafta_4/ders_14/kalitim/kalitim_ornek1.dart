void main(List<String> args) {
  NormalUser normal1 = NormalUser();
  normal1.girisYap();

  SadeceOkuyabilenNormalUser sadece1 =SadeceOkuyabilenNormalUser();
  sadece1.girisYap();

  AdminUser admin1 = AdminUser();
  admin1.girisYap();
}

class User{
  String email = "";
  String password = "";

  void girisYap(){
    print("User giris yapti.");
  }
}

class NormalUser extends User{
  void davetEt(){
    print("Normal user arkadasini davet etti!");
  }

  @override
  void girisYap(){
    print("Normal user giris yapti.");
  }
}

class SadeceOkuyabilenNormalUser extends NormalUser{
  void sadeceOku(){
    print("Ben sadece okuyabilirim.");
  }
}

class AdminUser extends User{
  void toplamKullaniciSayisiniGoster(){
    print("Toplam kullanici sayisi 20");
  }

  @override
  void girisYap() {
    print("Admin giris yapti!");
  }
}