import "dart:io";

void main(List<String> args) {
  // Kullanicinin girdigi kenar sayisina gore duzgun cokgenin asagidakilerden hangisini yapmak istiyorsunuz diyecek.
  // 1) ic aci toplami 2) bir ic acisi ve 3) bir dis acisini bulan program(ic aci toplami = (kenar sayisi - 2) * 180, bir ic aci = ((kenar sayisi - 2)*180)/n, bir dis aci = 360/n

  stdout.write("Isleme sokmak istediginiz cokgenin kenarini giriniz: ");
  int kenarSayisi = int.parse(stdin.readLineSync()!);

  stdout.write(
    "---ISLEM MENUSU---\n1)Ic aci toplamlari\n2)Bir ic acisini bulma\n3)Bir dis acisini bulma\nSecim: ",
  );
  String islemSecim = stdin.readLineSync()!;

  double icAciToplam = 0;
  double tekIcAci = 0;
  double tekDisAci = 0;
  switch (islemSecim) {
    case "1":
      icAciToplam = (kenarSayisi - 2) * 180;
      print("$kenarSayisi iceren cokgenin ic aci toplami: $icAciToplam\n");
      break;
    case "2":
      tekIcAci = ((kenarSayisi - 2) * 180) / kenarSayisi;
      print("$kenarSayisi iceren cokgenin bir ic acisi: $tekIcAci\n");
      break;
    case "3":
      tekDisAci = 360 / kenarSayisi;
      print("$kenarSayisi iceren cokgenin bir dis acisi: $tekDisAci\n");
      break;

    default:
      print("Yanlis islem secildi!");
      break;
  }
}
