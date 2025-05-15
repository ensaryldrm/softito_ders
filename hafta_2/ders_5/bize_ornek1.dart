import "dart:io";

void main(List<String> args) {
  sayiCikti();
}

void sayiCikti(){
  int toplam = 0;
  stdout.write("Lutfen baslangic degerini giriniz: ");
  int bas_deger = int.parse(stdin.readLineSync()!);

  stdout.write("Lutfen bitis degerini giriniz: ");
  int bit_deger = int.parse(stdin.readLineSync()!);

  for(int i = bas_deger; i<= bit_deger; i++){
    toplam += i;
  }
  print("$bas_deger ve $bit_deger sayilarin arasindaki sayilarin toplami(baslangic ve bitis degerleri dahil): $toplam");
}