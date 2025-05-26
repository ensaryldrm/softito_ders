import "dart:io";

void main(List<String> args) {
  /*
  -------------------------------------------- ODEV 4 --------------------------------------------
  ikinci el bir oto takip uygulaması. Burda marka model yıl, km istiyorum.
  Bunları map e ekleyeceksiniz(Kullanıcı girecek kullanıcı çıkış yapana kadar girmeye devam edebilecek). 
  Kullanıcıya seçenek sunun nasıl sıralayalım ?
  Yıl aynı yıl olanları getirecek marka derse aynı markaları getirecek şeklinde ekrana yazdıracaksınız
  */
  aracEkle();
}


void aracEkle(){
  List<Map<String, String>> aracList = [];

  while(true){
    stdout.write("1)Arac ekle\n2)Cikis\nSecim: ");
    String? secim = stdin.readLineSync()!;
    if(secim == "1"){
      stdout.write("Marka giriniz: ");
      String? marka = stdin.readLineSync()!;

      stdout.write("Modelini giriniz: ");
      String? model = stdin.readLineSync()!;

      stdout.write("Yilini giriniz: ");
      String? aracYil = stdin.readLineSync()!;

      stdout.write("Aracin kilometresini giriniz: ");
      String? aracKm = stdin.readLineSync()!;

      Map<String, String> arac = {
        'Marka': marka,
        'Model': model,
        'AracYil': aracYil,
        'KM': aracKm,
      };
      aracList.add(arac);
      print("Arac basariyla eklendi!");
      for (int i = 0; i < aracList.length; i++) {
      Map<String, String> arac = aracList[i];
      print("Araç ${i + 1}:");
      print("Marka: ${arac['Marka']}");
      print("Model: ${arac['Model']}");
      print("Yil: ${arac['AracYil']}");
      print("Km: ${arac['KM']}\n");
}
    }
    else if(secim == "2"){
      exit(0);
    }
    else{
      print("Yanlis sayi girdiniz!");
    }
  }
}