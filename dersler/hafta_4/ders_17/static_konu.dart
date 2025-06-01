void main(List<String> args) {
  /*
    -Siniflarimizda nesne uretmeden bazi degiskenlere ve metodlara erismek isteyebiliriz. Burada karsimiza static kavrami cikar.

    -Static kullanarak nesne degil sinif degiskenleri ve metodlarina ulasabiliriz.

    -Bir sinifta tanimlanan metod ve degiskenlere erisirken mutlaka nesne uretmemiz gerekirdi. Ama biz bunlari static tanimlarsak artik nesne uretmeden bu degerlere erisebilir ve kullanabiliriz. Artik nesnelerin degil sinifin method ve degiskenlerine ulasiriz.

    -Static metotlar icinden nesneye ozgu alanlara erisilmezken, nesneye ozgu metod icinden static metotlara erisebiliriz. 

  */
  Matematik m1 = Matematik(15, 20);
  m1.topla();
  m1.cikar();
  print("-------\n");
  Matematik m2 = Matematik(12, 12);
  m2.topla();
  m2.cikar();
  Matematik.sinifAdiSoyle();
  print("Toplam islem sayisi: ${Matematik.toplamIslemSayisi}");
 
}

class Matematik{
  // instance variable \\ -> Nesne degiskenleri
  int birinciSayi = 0;
  int ikinciSayi = 0;
  static int toplamIslemSayisi = 0;
  static double myPi = 3.14;

  Matematik(this.birinciSayi,this.ikinciSayi);

  static void sinifAdiSoyle(){
    print("Ben matematik sinifiyim.\n");
  }
  void topla(){
    toplamIslemSayisi++;
    print("Toplam: ($birinciSayi) + ($ikinciSayi) = ${birinciSayi + ikinciSayi}\n");
    sinifAdiSoyle();
  }

  void cikar(){
    toplamIslemSayisi++;
    print("Cikarim: ($birinciSayi) - ($ikinciSayi) = ${birinciSayi - ikinciSayi}\n");
    sinifAdiSoyle();
  }
}