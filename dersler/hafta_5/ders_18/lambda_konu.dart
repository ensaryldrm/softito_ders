void main(List<String> args) {
  /* 
  Function fonksiyon1 = (int a, int b){
    int toplam = a + b;
    print(toplam);
  }; 
  */

  // print(fonksiyon1); hatali kullanim
  // fonksiyon1;  hatali kullanim
  // fonksiyon1(2,4); DOGRU KULLANİM

  (int s ) => s * 2; // kisa kullanim
  
  /*  USTTEKININ UZUN HALI
  (int s2){
    return s2*2;
  }; 
  */

  var fonksiyon2 = (int s) => s*2;

 /*  var fonksiyon3 = (int s2){
    return s2*2;
  }; */

  print(fonksiyon2(5));

  var f2 = (String name) => "Merhaba $name";
  var sonuc = f2("Ensar");
  print(sonuc);

  String userName = "Admin";
  String password = "12345";

  var f5 = (String kullaniciAdi, String sifre){
    if(kullaniciAdi == userName && password == sifre){
      print("Giris basarili!");
    }
    else{
      print("Hatali giris!");
    }
  };
  
  f5("Admin","12345");
}

void sayilariTopla(int a, int b){
  int toplam = a + b;
  print(toplam);
}
