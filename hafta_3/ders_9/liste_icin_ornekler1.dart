import 'dart:io';

void main(List<String> args) {
  //veriIste();
  //sayiIste();

  //sayiGir();
  //sayiGir();
  sayiIste();
}

/*
void veriIste() {
  List<String> isimEkle = List.filled(5, "");
  for (int i = 0; i < 5; i++) {
    stdout.write("${i + 1}. isimi giriniz :");
    String? isim = stdin.readLineSync();
    isimEkle[i] = isim!;
  }
  print("isim sonucları");
  isimleriYazdir(isimEkle);
}

void isimleriYazdir(List<String> liste) {
  int sayac = 0;
  for (String isim in liste) {
    sayac++;
    print("Girilen $sayac. isim: $isim");
  }
}
void sayiIste() {
  List<double> sayilar = List.filled(5, 0);
  for (int i = 0; i < sayilar.length; i++) {
    stdout.write("${i + 1}. sayıyı giriniz: ");
    double sayi = double.parse(stdin.readLineSync()!);
    sayilar[i] = sayi;
  }
  print("Gelen sayilar");
  sayilariYazdir(sayilar);
}

void sayilariYazdir(List<double> gelenListe) {
  int sayac = 0;
  for (double s in gelenListe) {
    print("Gelen $sayac. sayisi: $s");
  }
}


//kullanicidan 5 sayi istcez bu sayilari dinamki liste kullanark ekrana yazdır
void sayiGir(){
  List<int> sayilar=[];
  for(int i=1;i<=5;i++){
    stdout.write("$i. sayiyi giriniz: ");
    int sayi=int.parse(stdin.readLineSync()!);
    sayilar.add(sayi);
  }
  print("Gelen sayilar");
  sayilariYazdir(sayilar);
}
void sayilariYazdir(List<int> gelenSayilar){
  int sayac=0;
  for(int s in gelenSayilar){
    sayac++;
    print("Girilen $sayac.sayi: $s");
  }
}
//kullanicidan adet bilgisi isticez, girdiği adet bilgisine göre bir liste oluşacak ve adet kadar sayi ekrana giriplip yazdır(sabit ve dinamik 2 ayrı örnk);
void sayiGir(){
  //sabit liste ile yapıyoruz
  stdout.write("Lütfen adet bilgisi giriniz: ");
  int adet=int.parse(stdin.readLineSync()!);
  List<int> sayilar=List.filled(adet,0);
  for(int i=0;i<sayilar.length;i++){
    stdout.write("${i+1}. sayiyi giriniz: ");
    int sayi=int.parse(stdin.readLineSync()!);
    sayilar[i]=sayi;

  }print("Gelen Sayılar");
  sayilariYazdir(sayilar);
}
void sayilariYazdir(List<int> gelenListe){
  int sayac=0;
  for(int s in gelenListe){
    sayac++;
    print("Gelen $sayac. sayi : $s");
  }

}

//aynı olayı dinamikle yapcz
void sayiGir(){
  //dinamik liste ile yapıyoruz
  stdout.write("Lütfen adet bilgisi giriniz: ");
  int adet=int.parse(stdin.readLineSync()!);
  List<int> sayilar=[];
  for(int i=0;i<adet;i++){
    stdout.write("${i+1}. sayiyi giriniz: ");
    int sayi=int.parse(stdin.readLineSync()!);
    sayilar.add(sayi);

  }print("Gelen Sayılar");
  sayilariYazdir(sayilar);
}
void sayilariYazdir(List<int> gelenListe){
  int sayac=0;
  for(int s in gelenListe){
    sayac++;
    print("Gelen $sayac. sayi : $s");
  }
}*/

//kullanicidan 5 sayi alip çift ise ayrı metodda kontrol tek ise ayrı metodda kontrol edip ekrana yazdırma metoduyla ekrana yazdırsın
//1. yol
void sayiIste() {
  List<int> sayilar = [];
  for (int i = 1; i <= 5; i++) {
    stdout.write("$i. sayiyi giriniz: ");
    int sayi = int.parse(stdin.readLineSync()!);
    sayilar.add(sayi);
  }ciftKonrol(sayilar);
}

void ciftKonrol(List<int> gelenSayilar) {
  List<int> ciftSayilar = [];
  for (int s in gelenSayilar) {
    if (s % 2 == 0) {
      ciftSayilar.add(s);
    }
  }
  print("Girdiğiniz çift sayilar");
  ekranaYazdir(ciftSayilar);
}

void ekranaYazdir(List<int> yazdirilacakListe) {
  int sayac = 0;
  for (int yazilacakSayi in yazdirilacakListe) {
    sayac++;
    print("Girilen çift sayilardan $sayac. sayi :$yazilacakSayi");
  }
}