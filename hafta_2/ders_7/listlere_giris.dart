void main(List<String> args) {
  List<String> meyveler = <String>[]; //1. yazilis hali
  meyveler.add("Muz"); // [0]
  meyveler.add("Cilek"); // [1]
  meyveler.add("Portakal"); // [2]
  meyveler.add("Karpuz"); // [3]
  print(meyveler[0]);

  String meyve = meyveler[2];
  print(meyve);

  List<int> rakamlar = [0,1,2,3,4,5,6,7,8,9]; //2. yazilis hali
  print(rakamlar[2]);
  print(rakamlar.isEmpty); // bos mu dolu mu kontrolu false veriyorsa dolu~
  print(rakamlar.length); // Listenin uzunluğunu verir.
  print(rakamlar.first); // ilk eklenen urunu verir.
  print(rakamlar.last); // son eklenen urunu verir
  print(rakamlar.contains(1)); // lisetede 1 var mı yok mu true false dondurur
}