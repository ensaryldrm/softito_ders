import 'dart:io'; // kullanicidan input alabilmek icin bu kutuphaneyi ekledik.
void main(List<String> args) {
  print("Lutfen kullanici adinizi giriniz: ");
  String? name = stdin.readLineSync(); // ? burada bos deger gelebilir demek.
  print("Hosgeldiniz $name");
}