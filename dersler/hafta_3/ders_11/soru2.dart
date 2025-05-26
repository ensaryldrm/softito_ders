import "dart:io";

void main(List<String> args) {
  
}

void bilgileriAlVeSonuclandir(){
  while(true){
    stdout.write("Asagidakilerden hangisini yapmak istiyorsunuz:\nIc aci toplami icin 1\nBir ic acisi icin 2\nBir dis acisi icin 3\nSecim: ");
    String? secim = stdin.readLineSync()!;
    stdout.write("Lutfen kenar sayisini giriniz: ");
    int kenar = int.parse(stdin.readLineSync()!);
    double sonuc = 0;
  if(secim == "1"){
    sonuc = icAciToplami(kenar);
  }
  else if(secim == "2"){
    sonuc = birIcAciBul(kenar);
  } 
  else if(secim == 3 ){
    sonuc = birDisAci(kenar);
  }else{
    break;
  }
   print("Istediginiz sonuc: $sonuc");
  }
}

double icAciToplami(int gelenKenar){
  double icAciToplamiSonuc = (gelenKenar - 2) * 180;
  return  icAciToplamiSonuc;
}

double birIcAciBul(int gelenKenar){
  double icAciToplamiGelen = icAciToplami(gelenKenar);
  double birIcAci = icAciToplamiGelen / gelenKenar;
  return birIcAci;
}

double birDisAci(int gelenKenar){
  double disAci = 360 / gelenKenar;
  return disAci;
}