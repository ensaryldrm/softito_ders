import "dart:io";

void main(List<String> args) {
  // Kullanicidan 3 tane sayi alacaksiniz. Kullanicinin girdigi  bilgilere gore ucgenin cesidini yazacaksınız. (Ornek: 3 - 7 - 9 ise cesit kenar yazacak.)

  stdout.write("1. sayiyi giriniz: ");
  int sayi1 = int.parse(stdin.readLineSync()!);

  stdout.write("2. sayiyi giriniz: ");
  int sayi2 = int.parse(stdin.readLineSync()!);

  stdout.write("3. sayiyi giriniz: ");
  int sayi3 = int.parse(stdin.readLineSync()!);

  if (sayi1 + sayi2 >= sayi3 &&
      sayi3 + sayi2 >= sayi1 &&
      sayi3 + sayi1 >= sayi2) {
    if (sayi1 == sayi3 && sayi1 == sayi2) {
      print(
        "Girdiginiz kenarlara gore ($sayi1 - $sayi2 - $sayi3), ucgeniniz eskenardir!",
      );
    } else if (sayi1 == sayi2 || sayi1 == sayi3 || sayi2 == sayi3) {
      print(
        "Girdiginiz kenarlara gore ($sayi1 - $sayi2 - $sayi3), ucgeniniz ikizkenardir!",
      );
    } else {
      print(
        "Girdiginiz kenarlara gore ($sayi1 - $sayi2 - $sayi3), ucgeniniz cesitkenardir!",
      );
    }
  } else {
    print("Girdiginiz kenarlar ile ucgen olusturulamaz!");
  }
}
