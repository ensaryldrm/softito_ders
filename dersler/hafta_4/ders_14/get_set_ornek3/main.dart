
import 'dart:math';

import 'ogrenci.dart';

void main(List<String> args) {
  List<Ogrenci> tumOgrenciler = List.filled(100, Ogrenci());
  ogrenciListesiniDoldur(tumOgrenciler);
  int sayac = 0;
  for(Ogrenci ogr in tumOgrenciler){
    sayac++;
    print("**** $sayac. OGRENCI ****");
    print(ogr.toString() + "\n");
  }
}



void ogrenciListesiniDoldur(List<Ogrenci> liste){
  for(int i = 0; i<liste.length; i++){
    liste[i] = Ogrenci(id: Random().nextInt(1000), notDegeri: Random().nextInt(101));
  }
}