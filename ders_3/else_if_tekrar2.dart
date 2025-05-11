import "dart:io";

void main(List<String> args) {
  int i = 1;
  int sayac = 0;
  int toplam = 0;
  while(i <= 20)
  {
    stdout.write("$i. sayiyi giriniz: ");
    int sayi = int.parse(stdin.readLineSync()!);

    if(sayi > 0)
    {
      sayac++;
      toplam += sayi;
    }
    i++;
  }
  print("Girilen pozitif sayilarin ortalamasi: ${toplam / sayac}");
}