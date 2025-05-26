import 'dart:io'; // kullanicidan input alabilmek icin bu kutuphaneyi ekledik.
void main(List<String> args) {
  print("Lutfen kullanici adinizi giriniz: "); // burada girdi alirken satir alta kayiyor ondan dolayi bir sonrakinde stdout.write() kullandim.
  String? name = stdin.readLineSync(); // ? burada bos deger gelebilir demek.
  print("Hosgeldiniz $name");
  
  int year = 2025;
  stdout.write("Lutfen dogum yilinizi giriniz: "); // burada stdout.write() kullanmamin sebebi ciktiyi alirken yanina girebiliyoruz.
  String? myYear = stdin.readLineSync(); // ? demek null yani bos gelebilir.
  int myAge = year - int.parse(myYear!); // ! ise bos gelirse ben bunu donusturemem hata veririm rahat ol gelecek manasina geliyor ileri de if donguleriyle anlayacagiz.
  print("Guncel yasiniz: $myAge");

  //pratik1 
  //Yamugun alanini hesaplayan bir program yaziniz. Kullanicidan ust taban, alt taban ve yuksekligini aliniz.
  stdout.write("Ust tabani giriniz: ");
  String? yamukUstSTR = stdin.readLineSync();
  double yamukUst = double.parse(yamukUstSTR!);

  stdout.write("Alt tabani giriniz: ");
  String? yamukAltSTR = stdin.readLineSync();
  double yamukAlt = double.parse(yamukAltSTR!);

  stdout.write("Yuksekligini giriniz: ");
  String? yamukYukseklikSTR= stdin.readLineSync();
  double yamukYukseklik = double.parse(yamukYukseklikSTR!);

  double yamukAlan = (yamukUst + yamukAlt) * yamukYukseklik/2;

  print("Alt tabani $yamukAlt, ust tabani $yamukUst ve yuksekligi $yamukYukseklik olan yamugun alani: $yamukAlan");
  
}