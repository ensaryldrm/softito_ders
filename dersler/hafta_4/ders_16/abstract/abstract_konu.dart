void main(List<String> args) {
  /*
    Kare ve dikdortgen somut siniflardir. Somut sinif bir siniftan nesne uretebiliyorsan o somuttur yani o sinifi direkt kullaniyorsan somuttur.
    Kare k1 = Kare(); bunu yapabiliyorsan somuttur. Ama soyut siniflar sadece bir taslak oldugu icin yandaki nesne cagirma islemini yapamazlar.
   -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    Kare ve dikdortgen icerisinde de @override ederek islem yapabiliriz. Cok dogru. Bunun iki kotu durumu var:
    1) Ben karenin alanini hesaplayan metodu override etmezsem adam ne girerse girsin sonuc hep 0 doner. Yandaki islemi yaptin ben dikkat ederim hocam dedin. Ama bir mantik hatasi da var yazilimda mantik hatalari onemli!!

    2) sekil.alanHesapla() ben yandaki gibi bir nesne asla olusturmayacagim cunku hangi seklin alanini cagiriyorum ben? Iste eger bir siniftan mantik olarak nesne olusutulrmayacaksa o sinifi soyut yani Abstract sinif olarak tanimlamaliyiz. Bu suna benziyor ben kalitim yapmadan dolu kod yazarak isimi gorur muyum? Evet. Ben hic fonksiyon kullanmadan kodumu yazar miyim? Evet. Ben hic hazir metodlari kullanmadan uslu sayi sonucunu bulabilir miyim? Evet, peki biz iyi bir programci nasil olur demistik:
    
    - Az kod yazarak
    - Kod tekrari yapmayarak
    - OOP kurallarina uygun kod yazacak yani duzenli anlasilabilir, yonetilebilir kod yazarak
    - SOLID: Herkes kendi isini yapacak.(Her sinif ya da her fonksiyon kendi isini yapacak.) Eger kod tekrari varsa o kodda fonksiyon kullanmak zorundasin. Ihtiyac olmayan seyler olmamali.
    - Iyi bir yazilimci mantik cercevesi icinde duzgun bir algoritma kurarak kod yazmali.
    -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  */

  print("Sekillerin alan ve cevrelerini hesaplama uygulamasina hosgeldiniz!");
  Kare k1 = Kare(5);
  print("Kenar uzunlugu ${k1.kenarUzunluk} olan karenin alani: ${k1.alanHesapla()}, cevresi: ${k1.cevreHesapla()}\n");

  Dikdortgen d1 = Dikdortgen(3, 4);
  print("Kenar uzunlugu ${d1.kenar1} ve ${d1.kenar2} olan dikdortgenin alani: ${d1.alanHesapla()}, cevresi: ${d1.cevreHesapla()}\n");
}


abstract class Sekil{

  double alanHesapla();

  double cevreHesapla();
}

class Kare extends Sekil{
  double kenarUzunluk;
  Kare(this.kenarUzunluk);

  @override
  double alanHesapla() {
    return kenarUzunluk * kenarUzunluk;
  }

  @override
  double cevreHesapla() {
    double cevreUzunluk = 4 * kenarUzunluk;
    return cevreUzunluk;
  }

}

class Dikdortgen extends Sekil{
  double kenar1;
  double kenar2;
  Dikdortgen(this.kenar1, this.kenar2);

  @override
  double alanHesapla() {
    return kenar1 * kenar2;
  }

  @override
  double cevreHesapla() {
    double cevreUzunluk = 2*(kenar1 + kenar2);
    return cevreUzunluk;
  }
}