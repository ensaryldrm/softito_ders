import "musteri.dart";

void main(List<String> args) {
  Musteri m1 = Musteri();
  Musteri m2 = Musteri();
  m1.musteriNoAta = 305;
  m2.musteriNoAta = 105;

  m1.bilgileriYazdir();
  m2.bilgileriYazdir();
}
