import "dart:io";

void main(List<String> args) {
  int yas = 0;
  stdout.write("Lutfen dogum tarihinizi giriniz: ");
  int dogumTarihi = int.parse(stdin.readLineSync()!);

  stdout.write("Yapilacak islemi secin\n1 yas hesaplama\n2 ehliyet alabilme durumu\nSecim:");
  String? secim = stdin.readLineSync()!;
  if(secim == "1"){
    yas = yasHesaplama(dogumTarihi);
    print("Senin yasin $yas");
  }
  else if(secim == "2"){
    int yas = yasHesaplama(dogumTarihi);
    ehliyetKontrol(yas);
  }

  durumKontrol(yas);
}

int yasHesaplama(int dogumTarihi){
  int age = 2025 - dogumTarihi;
  return age;
}

void ehliyetKontrol(int age){
  if(age >= 18){
    print("Evet ehliyet alabilir.");
  }
  else{
    print("Hayir ehliyet alamaz.");
  }
}

void durumKontrol(int age){
  if(age >= 0 && age <= 18){
    print("Sen cocuksun.");
  }
  else if(age <= 19 && age <= 34){
    print("Sen gencsin.");
  }
  else{
    print("Sen yaslisin.");
  }
}