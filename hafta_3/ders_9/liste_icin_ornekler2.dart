import "dart:io";

void main(List<String> args) {
  //1. yol
  sayiIste();
}

// 1 sayi al, cift kontrolu yap, cift olanlari ekrana yazdir.

//1. YOL

void sayiIste(){
  List<int> sayilar = [];
  for(int i = 1; i<=5; i++){
    stdout.write("$i. sayiyi giriniz: ");
    int sayi = int.parse(stdin.readLineSync()!);
    sayilar.add(sayi);
  }
  ciftKontrol(sayilar);
  tekKontrol(sayilar);
}

void ciftKontrol(List<int> gelenSayilar){
  List<int> ciftSayilar = [];
  for(int s in gelenSayilar){
    if(s % 2 == 0){
      ciftSayilar.add(s);
    }
  }
  print("Girdiginiz cift sayilar: ");
  ekranaYazdir(ciftSayilar);
}

void tekKontrol(List<int> gelenSayilar){
  List<int> tekSayilar = [];
  for(int s in gelenSayilar){
    if(s % 2 != 0){
      tekSayilar.add(s);
    }
  }
  print("Girdiginiz tek sayilar: ");
  ekranaYazdir(tekSayilar);
}

void ekranaYazdir(List<int> yazdirilacakListe){
  int sayac = 0;
  for(int s in yazdirilacakListe){
    sayac++;
    print("$sayac. sayi: $s");
  }
}

// 2. YOL

/* void tekCiftKontrol(List<int> gelenSayilar){
  List<int> tekSayilar = [];
  List<int> ciftSayilar = [];
  for(int sayi in gelenSayilar){
    if(sayi % 2 == 0){
      ciftSayilar.add(sayi);
    }
    else{
      tekSayilar.add(sayi);
    }
  }

  print("---GIRILEN TEK SAYILAR---");
  for(int tek in tekSayilar){
    print(tek);
  }

  print("---GIRILEN CIFT SAYILAR---");
  for(int cift in ciftSayilar){
    print(cift);
  }
} */