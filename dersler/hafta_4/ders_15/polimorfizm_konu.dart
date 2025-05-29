void main(List<String> args) {
  User user1 = User();
  var user2 = NormalUser();
  SadeceOkuyabilenNormalUser user3 = SadeceOkuyabilenNormalUser(); 
  User user4 = AdminUser();
  User user5 = AdminUser();
  User user6 = SadeceOkuyabilenNormalUser();

  test(user1);
  test(user3);
  test(user5);
  test(user3);
  test(user6);
  test(user4);
  test(user2);
}

void test(User kullanici){
  kullanici.girisYap();
}

class User{
  String email = "";
  String sifre = "";

  void girisYap(){
    print("Ana User giris yapti!");
  }

}

class NormalUser extends User{
  void davetEt(){
    print("Normal User davet ediyor!");
  }

  @override
  void girisYap() {
    print("Normal user giris yapti!");
  }
}

class SadeceOkuyabilenNormalUser extends NormalUser{
  void sadeceOku(){
    print("Bu user sadece okuma yapabiliyor!");
  }

  @override
  void girisYap() {
    print("Sadece okuyucu user giris yapti!");
  }
}

class AdminUser extends User{
  void kisiSaiyisGoruntule(){
    print("Kullanici sayisi: 20");
  }

   @override
  void girisYap() {
    print("Admin user giris yapti!");
  }
}

