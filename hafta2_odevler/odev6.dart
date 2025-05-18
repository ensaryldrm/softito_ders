import 'dart:math';

void main(List<String> args) {
  int sayi1 = Random().nextInt(10) + 1;

  int sayi2 = Random().nextInt(10) + 1;
  while (sayi2 == sayi1) {
    sayi2 = Random().nextInt(10) + 1;
  }

  int sayi3 = Random().nextInt(10) + 1;
  while (sayi3 == sayi1 || sayi3 == sayi2) {
    sayi3 = Random().nextInt(10) + 1;
  }

  int sayi4 = Random().nextInt(10) + 1;
  while (sayi4 == sayi1 || sayi4 == sayi2 || sayi4 == sayi3) {
    sayi4 = Random().nextInt(10) + 1;
  }

  int sayi5 = Random().nextInt(10) + 1;
  while (sayi5 == sayi1 || sayi5 == sayi2 || sayi5 == sayi3 || sayi5 == sayi4) {
    sayi5 = Random().nextInt(10) + 1;
  }

  print("Üretilen rastgele sayilar: $sayi1 - $sayi2 - $sayi3 - $sayi4 - $sayi5");
}
