import "dart:io";

void main(List<String> args) {
  genelIslemler();
}

void genelIslemler() {
  while (true) {
    stdout.write("Lütfen kullanici adinizi giriniz: ");
    String? myUserName = stdin.readLineSync();
    stdout.write("Lütfen şifrenizi giriniz: ");
    String? myPass = stdin.readLineSync();
    bool girisYapildiMi = girisKontrol(myUserName!, myPass!);
    anaSayfa(girisYapildiMi, myUserName);
  }
}

bool girisKontrol(String userName, String pass) {
  return userName == "Admin" && pass == "123456" ? true : false;
}

//anasayfa başlangıç
void anaSayfa(bool girisKontrol, String userName) {
  if (girisKontrol == true) {
    while (true) {
      print("------------------------Anasayfa Menusu------------------------");
      stdout.write(
        "Bankacilik işlemleri için 1'e\nkredi karti işlemleri için 2 ye\ncikis yapmak icin q tusuna basiniz: ",
      );
      String? secim = stdin.readLineSync();
      //----
      if (secim == "1") {
        bankacilikIslemleri(userName, girisKontrol);
      } else if (secim == "2") {
        krediKartiIslemleri(userName, girisKontrol);
      } else if (secim == "q" || secim == "Q") {
        genelIslemler();
      } else {
        print("Hatali secim!");
      }
      //---
    }
  } else {
    print("Hatali giriş...");
  }
} //anasayfa bitiş

void krediKartiIslemleri(String userName, bool girisKontrol) {
  //
  print("Kredi karti işlemlerine hoşgeldiniz $userName");

  while (true) {
    print("----------------- Kredi Karti Menüsü -----------------------");
    stdout.write(
      "Hangi işlemi yapmak istiyorsunuz:\nBorç ödeme için 1'e,\nşifre değiştirmek için 2'ye\n,yeni kart talep etmek için 3\nlimit yükseltmek için 4'e\n bu menüden cikmak için q ya basiniz: ",
    );
    String? secim = stdin.readLineSync();
    if (secim == "1") {
      print("Borç ödendi");
    } else if (secim == "2") {
      print("Şifre değişti");
    } else if (secim == "3") {
      print("Kart talebiniz alindi");
    } else if (secim == "4") {
      print("Limitiniz yükseldi");
    } else if (secim == "q" || secim == "Q") {
      anaSayfa(girisKontrol, userName);
    } else {
      print("Lütfen geçerli bir seçim yapin");
      //burda döngü içi döngü çıkışı eklicem
    }
  }
}

void bankacilikIslemleri(String userName, bool girisKontrol) {
  print("Bankacilik işlemlerine hoşgeldin $userName");

  while (true) {
    stdout.write(
      "Hangi işlemi yapmak istiyorsunuz :\n Para yatirmak için 1' e,\n havale yapmak için 2'ye,\n kredi çekmek için 3' e\n bir üst menüye dönmek için q ya basiniz: ",
    );
    String? secim = stdin.readLineSync();
    if (secim == "1") {
      print("Para yatirmak");
    } else if (secim == "2") {
      print("Havale yap");
    } else if (secim == "3") {
      print("Kredi çek");
    } else if (secim == "q" || secim == "Q") {
      anaSayfa(girisKontrol, userName);
    } else {
      print("Lütfen geçerli bir seçim yapin");
      //burda döngü içi döngü çıkışı eklicem
    }
  }
}
