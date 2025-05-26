import "dart:io";
/* import "dart:math"; */

void main(List<String> args) {
  /*
  Map:
  -Flutter kisminda o kadar cok kullanacagiz ki, firebaseden veri cekerken apiden veri cekerken.
  -Map yapisi da set yapisi gibi sirasiz bir sekilde elemanlari saklayan bir koleksiyon ogesidir.
  -Bu yapiyi listelerden ve setten ayiran ozellik elemanlarin key-value olarak saklanmasidir.
  -Herhangi bir veri turu kullanilabilir ama onemli olan key degerleri unique yani benzersiz essiz olmasi gerekmektedir.
  -Map yapisini sozluge benzetebiliriz. Tipki sozluk gibi birbiriniden farkli elemanlar icerir.
  -Sabit uzunluklu degildir, dinamik uzunluga sahiptir.

  Map<key_veri, value_veri_turu> map_adi = {};
  Map<key_veri, value_veri_turu> map_adi = Map();

  Map<String, int> bestNumber = {};
  Map<String, int> bestNumber = Map();
  */

//-----------------------------------------------------------------------------------------------------------

  /*
  Map<String, int> bestNumber = Map();
  bestNumber["Ayse"] = 17;
  bestNumber["Bilal"] = 5;
  bestNumber["Ensar"] = 43;

  Map<String, String> plakaKod = {};
  plakaKod["Istanbul"] = "34";
  plakaKod["Adana"] = "01";

  for(var element in plakaKod.entries){
    print("Key: ${element.key} - Value: ${element.value}");
  }
  */

//-----------------------------------------------------------------------------------------------------------

  /* 
  --KOLEKSIYON ILE ILGILI ONEMLI BILGILER--
  -Bizim koleksiyonlarimiz: List, set, map
  -Bizler bunlari olustururken veri turunu belirtmek zorunda degiliz. Ama belirtmek onemli ama asagidaki gibi tanimlanabilir

  var listem = [];

  -Basinda var kullanip tanimlama kisminda degeri tanimlanabilir
  var listem = <int>[];

  -set icinde de var turu kullanilabilir
  var mySet = {}; ilk etapta map olarak algilar
  var mySet = {'Bilal','Ahmet'}; degerini verirsek otomatik set olarak algilar.
  */

//-----------------------------------------------------------------------------------------------------------
  
  /*
  var tekSayilar = [1,3,5,7];
  var ciftSayilar = [2,4,6,8];
  // Listeleri birlestirmek istiyorum
  var sonListe = [];
  sonListe.addAll(tekSayilar);  // 2 diziyi 1 diziymis gibi gosteriyor
  sonListe.addAll(ciftSayilar); 
  print("1. Liste $sonListe");

  var sonListe2 = [tekSayilar,ciftSayilar]; // 2 diziyi ekliyor fakat ayri ayri
  print("2. Liste $sonListe2");

  var sonListe3 = [...tekSayilar, ...ciftSayilar]; // Spreads operatoru "..." once tek sayilari ekle "..." sonra cift sayilari ekle sonuc olarak 2 diziyi yine 1 dizeymis gibi veriyor.
  print("3. Liste $sonListe3");
  */

//-----------------------------------------------------------------------------------------------------------
  
  /* 
  var map1 = {"Ad": "Bilal"};
  var map2 = {"Yas": 38};

  var sonMap = {...map1, ...map2};
  print(sonMap);
 */

//-----------------------------------------------------------------------------------------------------------

  /* 
  var set1 = {'Hasan'};
  var set2 = {'Ahmet'};
  var set3 = {'Mehmet'};
  var set4 = {'Hasan'};

  var sonSet = {...set1, ...set2, ...set3, ...set4};
  print(sonSet); 
  */

//-----------------------------------------------------------------------------------------------------------

  /*
  ORNEK: IKI TANE LISTE OLUSTURUN YEMEK, MEYVELER SONRA BUNLARI SPREADS OPERATORU ILE BIRLESTIRIN

  var yemekList = ["Karniyarik", "Sarma", "Izgara Kanat"];
  var meyveList = ["Muz", "Karpuz", "Seftali", "Mandalina", "Portakal"];

  var birlestirilmisList = [...yemekList, ...meyveList];
  print(birlestirilmisList); // ilk once yemek listesinin elemanlari eklendi sonra meyve listesinin elemanlari eklendi.
  */

//-----------------------------------------------------------------------------------------------------------

  /*
  ORNEK: SEHIRLERI TUTAN BIR LISTE OLUSTURUN 4 TANE KULLANICI IL EKLESIN SONRA BU LISTEYI EKRANA YAZDIRIN.

  List<String> sehirList = List.filled(4, "");

  for(int i = 0; i<4; i++){
    stdout.write("${i+1}. sehir ismini giriniz: ");
    String? isim = stdin.readLineSync()!;
    sehirList[i] = isim;
  }
  
  print("****SEHIRLER****");
  int sayac = 0;
  for(String c in sehirList){
    sayac++;
    print("$sayac. sehir: $c");
  } 
  */

//-----------------------------------------------------------------------------------------------------------

  // ORNEK: KEYLERI STRING DEGERLERI DYNAMIC OLAN BIR MAP OLUSTURUN. BU MAP BILGISAYAR OZELLIKLERI ILE ILGILI OLSUN ICERISINDE ISLEMCI CEKIRDEK SAYISI, ISLEMCI HIZI, RAM MIKTRAI SSD VE ISLECTIRI BILGILERINI YAZDIRIN.

  /* 
  Map<String, dynamic> bilgisayarOzellik = {
    "Islemci Cekirdek Sayisi": 8,
    "Islemci Hizi": "3.8GHz",
    "Ram Miktari": "16GB",
    "SSD Kapasite": "1TB",
    "Islemci Marka": "Intel"
  };
  print("****1. YAZILIS BICIMI****\n ${bilgisayarOzellik}\n");

  print("****2. YAZILIS BICIMI****");
  for(var key in bilgisayarOzellik.entries){
    print("Key: ${key.key}: ${key.value}");
  } 
  */

//-----------------------------------------------------------------------------------------------------------

  // 5 elemanli farkli iki tane liste olusturun. elemanlarini 0 50 arasi rastgele belirleyin.(spread kullanin)
  // a) bu iki listeyi bir liste olarak birlestirin
  // b) bu iki listeyi set e aktarin

  /* 
  List<int> sayiListe1 = List.filled(5, 0);
  for(int i = 0; i<5; i++){
    int sayi = Random().nextInt(51);
    sayiListe1[i] = sayi;
  }

  List<int> sayiListe2 = List.filled(5, 0);
  for(int i = 0; i<5; i++){
    int sayi = Random().nextInt(51);
    sayiListe2[i] = sayi;
  }

  List<int> butunListe = [...sayiListe1, ...sayiListe2];
  print("A)Bu iki listeyi bir liste olarak birlestirin: ${butunListe}");

  Set<int> butunSet = {...sayiListe1, ...sayiListe2};
  print("B)Bu iki listeyi bir set olarak birlestirin: ${butunSet}");
  */

//-----------------------------------------------------------------------------------------------------------

  //Kullanicidan aldiginiz int turunde pozitif sayilar alin ve listede tutun eger kullanici 0 yada negatif sayi girerse donguyu sonlandirip pozitif olarak girilen sayilarin toplamini ekrana yazdiriniz.

  /*
  listPozitifGoster();
  */

//-----------------------------------------------------------------------------------------------------------

  // kullanicidan ad - soyad, yas, sehir, meslek bilgisini alip map e kaydedicez. sonra bilgileri yazdiracagiz.

 /* 
  Map<String, dynamic> userInfo = {};
  stdout.write("Lutfen adinizi soyadinizi giriniz: ");
  String? adSoyad = stdin.readLineSync()!;
  userInfo["ad_soyad"] = adSoyad;

  stdout.write("Lutfen yasinizi giriniz: ");
  int yas = int.parse(stdin.readLineSync()!);
  userInfo["yas"] = yas;
  
  stdout.write("Lutfen memleketinizi giriniz: ");
  String? memleket= stdin.readLineSync()!;
  userInfo["memleket"] = memleket; 
  */

//-----------------------------------------------------------------------------------------------------------

  /* 
  stokTakip(); 
  */

//-----------------------------------------------------------------------------------------------------------
  arkadasMap();

}

void arkadasMap(){
  
  List<dynamic> arkadasList = [];
  for(int i = 0; i<4; i++){
  Map<String, dynamic> arkadasMap = {};
  print("--${i+1}. Arkadas--");
  stdout.write("Lutfen arkadasinizin adini soyadini giriniz: ");
  String? adSoyad = stdin.readLineSync()!;
  arkadasMap["ad_soyad"] = adSoyad;

  stdout.write("Lutfen yasini giriniz: ");
  int yas = int.parse(stdin.readLineSync()!);
  arkadasMap["yas"] = yas;
  
  stdout.write("Lutfen tuttugu takimi giriniz: ");
  String? tuttugu_takim= stdin.readLineSync()!;
  arkadasMap["tuttugu_takim"] = tuttugu_takim;

  arkadasList.add(arkadasMap.values);
  }
  for(int i = 0; i<4;i++){
    stdout.write("${arkadasList[i]}\n");
  }
}

//-----------------------------------------------------------------------------------------------------------

void stokTakip(){
  List<dynamic> stokListem = [];
  while(true){
    stdout.write("1)Urun Ekle\n2)Urunleri Goster\n3)Cikis\nSecim: ");
    String? secim = stdin.readLineSync()!;
    if(secim == "1"){
      Map<String, dynamic> urun = {};
      stdout.write("Lutfen urun adini giriniz: ");
      String? urunAd = stdin.readLineSync()!;
      urun["urun_ad"] = urunAd;

      stdout.write("Lutfen urun fiyatini giriniz: ");
      double urunFiyat = double.parse(stdin.readLineSync()!);
      urun["urun_fiyat"] = urunFiyat;

      stdout.write("Lutfen urun adetini giriniz: ");
      int urunAdet = int.parse(stdin.readLineSync()!);
      urun["urun_adet"] = urunAdet;

      stdout.write("Urun stokta varsa E yoksa H tusuna basiniz: ");
      String? stokDurumu = stdin.readLineSync()!;
      stokDurumu == "E"
                  ? urun["urun_stok"] = true
                  : urun["urun_stok"] = false;
      stokListem.add(urun);
    }
    
    else if(secim == "2"){
      for(int i = 0; i<stokListem.length; i++){
        print("Listedeki urun adlari: ${stokListem[i]["urun_ad"]}");
      }
    }
   
    else{
      break;
    }
  }
}

//-----------------------------------------------------------------------------------------------------------

List<int> sayiListAl(){
  List<int> sayilar = [];
  int i = 0;
  print("Eger 0 veya negatif sayi girerseniz islem sonlandirilacaktir!");
  while(true){
    stdout.write("${i+1}. sayiyi giriniz: ");
    int sayi = int.parse(stdin.readLineSync()!);
    if(sayi > 0){
      sayilar.add(sayi);
    }
    else{
      break;
    }
    i++;
  }
  return sayilar;
}

void listPozitifGoster(){
  List<int> gelenList = sayiListAl();

  int toplam = 0;
  for(int i in gelenList){
    toplam += i;
  }
  print("Girdiginiz pozitif sayilarin toplami: $toplam");
}

//-----------------------------------------------------------------------------------------------------------
