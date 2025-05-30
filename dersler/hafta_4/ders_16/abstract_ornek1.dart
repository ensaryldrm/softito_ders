import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  genelIslemler();
}


void genelIslemler(){
  while(true){
    print("-----ISLEM MENU-----");
    stdout.write("1)Paralel Kenar Islem\n2)Eskenar Ucgen Islem\n3)Daire Islem\n4)Cikis\nSecim: ");
    String secim = stdin.readLineSync()!;

    if(secim == "1"){
      paralelKenarIslem();
    }
    else if(secim == "2"){
      eskenarUcgenIslem();
    }
    else if(secim == "3"){
      daireIslem();
    }
    else if(secim == "4"){
      exit(0);
    }
    else{
      print("Hatali giris yaptiniz!\n");
    }

  }
}

void paralelKenarIslem(){
  ParalelKenar p1 = ParalelKenar();

  stdout.write("\nParalel kenarin tabanini giriniz: ");
  p1.tabanUzunluk = double.parse(stdin.readLineSync()!);

  stdout.write("Paralel kenarin yan kenarini giriniz: ");
  p1.yanKenarUzunluk = double.parse(stdin.readLineSync()!);

  stdout.write("Paralel kenarin yuksekligini giriniz: ");
  p1.yukseklik = double.parse(stdin.readLineSync()!);

  stdout.write("\na)Alan Hesapla\nb)Cevre Hesapla\nCikmak icin herhangi bir tusu giriniz!\nSecim: ");
  String icSecim = stdin.readLineSync()!;

  if(icSecim == "a" || icSecim == "A"){
    print("Paralel kenarin alani: ${p1.alanHesapla()}\n");
   }
  else if(icSecim == "b" || icSecim == "B"){
     print("Paralel kenarin cevresi: ${p1.cevreHesapla()}\n");
  }
  else{
    genelIslemler();
  }
}

void daireIslem(){
  Daire d1 = Daire();
  stdout.write("\nDairenin yaricapini giriniz: ");
  d1.yariCap = double.parse(stdin.readLineSync()!);

  stdout.write("\na)Alan Hesapla\nb)Cevre Hesapla\nCikmak icin herhangi bir tusu giriniz!\nSecim: ");
  String icSecim = stdin.readLineSync()!;

  if(icSecim == "a" || icSecim == "A"){
    print("Paralel kenarin alani: ${d1.alanHesapla()}\n");
   }
  else if(icSecim == "b" || icSecim == "B"){
     print("Paralel kenarin cevresi: ${d1.cevreHesapla()}\n");
  }
  else{
    genelIslemler();
  }
}


void eskenarUcgenIslem(){
  EskenarUcgen e1 = EskenarUcgen();
  stdout.write("\nEskenar ucgenin kenarini giriniz: ");
  e1.kenar = double.parse(stdin.readLineSync()!);
  
  stdout.write("\na)Alan Hesapla\nb)Cevre Hesapla\nCikmak icin herhangi bir tusu giriniz!\nSecim: ");
  String icSecim = stdin.readLineSync()!;

  if(icSecim == "a" || icSecim == "A"){
    print("Paralel kenarin alani: ${e1.alanHesapla()}\n");
   }
  else if(icSecim == "b" || icSecim == "B"){
     print("Paralel kenarin cevresi: ${e1.cevreHesapla()}\n");
  }
  else{
    genelIslemler();
  }
}


abstract class Sekil{
  double alanHesapla();
  
  double cevreHesapla();
}

class ParalelKenar extends Sekil{
  double tabanUzunluk;
  double yanKenarUzunluk;
  double yukseklik;

  ParalelKenar({this.tabanUzunluk = 0, this.yanKenarUzunluk = 0, this.yukseklik = 0});

  @override
  double alanHesapla() {
    return tabanUzunluk * yukseklik;
  }

  @override
  double cevreHesapla() {
    double cevreHesapla = 2 * ( yanKenarUzunluk + tabanUzunluk );
    return cevreHesapla;
  }
}

class EskenarUcgen extends Sekil{
  double kenar;
  EskenarUcgen({this.kenar = 0});

  @override
  double alanHesapla() {
    return (pow(kenar, 2.0) * pow(3, 1.0/2.0)) / 4;
  }

  @override
  double cevreHesapla() {
    double cevreUzunluk = kenar * 3;
    return cevreUzunluk;
  }
}

class Daire extends Sekil{
  double yariCap;
  double _pi = 3.14;

  Daire({this.yariCap=0});

  @override
  double alanHesapla() {
    return _pi * yariCap * yariCap;
  }

  @override
  double cevreHesapla() {
    double cevreUzunluk = 2 * _pi * yariCap;
    return cevreUzunluk;
  }
}