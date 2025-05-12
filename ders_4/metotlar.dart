import "dart:math";
import "dart:io";

void main(List<String> args) {
 /*
   Random: Rastgele sayi uretmek icin kullanilir.
   var intValue = Random().nextInt() => 0 <= YeniSayi < sayi

   var intValueNew = Random().nextInt(100) + 50; => 50'den buyuk ve esit, 150'den kucuk rastgele sayi olusturur.
 */ 
  
  /*
  var intValue = Random().nextInt(5);
  print(intValue);

  var newIntNumber = Random().nextInt(20) + 10; // 10 dahil 30 dahil degil 10-30 arası
  print(newIntNumber)
  */

  /* 
  var newDoubleNumber = Random().nextDouble();
  print(newDoubleNumber); 
  */

  /*  
  var boolValue = Random().nextBool();
  print(boolValue);
  */


  // RANDOM 1 ILE 25 ARASINDA RASTGELE 5 SAYI URETTIRELIM VE ONLARIN TOPLAMINI YAZDIRALIM.
  
  /*
  var r = Random();
  int i = 1;
  int toplam = 0;

  while(i <= 5)                               //ODEV: EGER AYNI SAYILARIN GELMESINI ISTEMIYORSAK NASIL YAPARIZ. BUNU YAPINIZ. YANI GELECEK OLAN 5 SAYI DA FARKLI OLSUN. PERSEMBEYE ODEV
  {
    int randomSayi = r.nextInt(25) + 1;
    print("$i. sayi: $randomSayi");
    toplam += randomSayi;
    i++;
  }
  print("Toplam $toplam");
  */

  //0 ILE 100 ARASINDA 6 TANE SAYI URETELIM 
  //A)KAC TANE CIFT KAC TANE TEK SAYI VARDIR GOZUKSUN.
  
  /* 
  int i = 1;
  int ciftSayac = 0;
  int tekSayac = 0;
  int toplam = 0;
  while(i<=6)
  {
    int randomSayi = Random().nextInt(101);
    print("$i. sayi: $randomSayi");
    if(randomSayi % 2 == 0)
    {
      ciftSayac++;
    }else{
      tekSayac++;
    }

    i++;
  }
  print("Rastgele uretilen tek sayi adeti: $tekSayac\nRastgele uretilen cift sayi adeti: $ciftSayac");
  */

  //0 ILE 40 ARASINDA SAYI OLUSTURUN 5 TANE. 20 DEN BUYUK YA DA ESIT OLANLARIN SAYISINI EKRANA YAZDIRIN.

  /* 
  int i = 1;
  int sayac = 0;
  int toplam = 0;
  while(i<=5)
  {
    int randomSayi = Random().nextInt(41);
    print("$i. sayi: $randomSayi");
    if(randomSayi >= 20)
    {
      sayac++;
    }

    i++;
  }
  print("20'den buyuk ve esit olan sayi adetimiz: $sayac");
  */

  // Girilen virgullu bir sayiyi bir ust sayiyiya yuvarlar

  /* 
  double x = 6.88;
  int c = x.ceil();
  print(c);
 */

  // Girilen virgullu bir sayiyi bir alt sayiyiya yuvarlar

  /* 
  double x = 6.88;
  int c = x.floor();
  print(c);
 */
   
  // girilen sayinin karekok degerini alir. Uyari!! sqrt islemi double cikabilecegi icin veri kaybi yasamamak icindouble degisken kullanilmali.

  /* 
  double x = 20;
  double s = sqrt(x);
  print(s); 
  */

  // abs: Mutlak deger fonksiyonudur. Girilen sayiyi pozitife donusturur.

  /* 
  int a = 10;
  int b = -10;
  int c = a.abs();
  print(c);
  int d = b.abs();
  print(d);
  */

  // MAX-MIN metotlari

  /* 
  int mx = max(654,21);
  print(mx);
  int mn = min(123,42);
  print(mn);
  */

  // pow: girilen iki sayidan birinicisi taban, ikincisi ust olacak sekilde uslu ifadesi bulunur.

  /*
  var p = pow(2,-3);
  print(p);
  */


  /* stdout.write("Lutfen kac adet sayi uretilmesini istediginizi yaziniz: ");
  int count = int.parse(stdin.readLineSync()!);

  stdout.write("Lutfen uretilebilecek sayinin en ust sinirini giriniz: ");
  int topLimit = int.parse(stdin.readLineSync()!);
  var r = Random();
  int sum = 0;

  for(int i = 1; i<=count; i++){
    int getNumber = r.nextInt(topLimit + 1);
    print("$i. sayi = $getNumber");
    sum += getNumber;
  }
  print("Toplam: $sum"); */

  // kullanicidan bir sayi isteyin karekokunu alin ( bu sayiyi negatif olma ihtimaline karsı abs ile pozitif yapin) cikan sonucu virgulden kurtarın ( floor ) 
  // ve bu en son olusan sayi kadar random sayi uretin ( 0 ile 100 ) olsun
  // bu sayılarin toplamin iprogram bulsun

  /* 
  double kullaniciSayi;
  int toplam = 0;
  stdout.write("Lutfen bir sayi giriniz: ");
  kullaniciSayi = double.parse(stdin.readLineSync()!);

  if(kullaniciSayi < 0){
    kullaniciSayi = kullaniciSayi.abs();
  }

  kullaniciSayi = sqrt(kullaniciSayi);
  kullaniciSayi = kullaniciSayi.floorToDouble()-2;
  
  print("$kullaniciSayi defa donguye girilecektir!");
  int i = 1;
  while(i<= kullaniciSayi){
    int random = Random().nextInt(101);
    print("$i. rastgele sayi : $random");
    toplam += random;
    i++;
  }
  print("Rastgele sayilarin toplam: $toplam");
  */

  // kullanicidan iki sayi alin. Bu iki sayidan buyuk olaniyla randomun ust degerini belirleyin. kucuk olan sayinin karekokunun uste yuvarlanmıs hali de 
  // dongunun sayi adetini belirlesin. olusan sayilarin toplamini da ekrana yazdirin.
  // cikan sayilar icerisinde 3 un kati olanlarin toplamini yazdirin.

  /* 
  int sayi1;
  int i = 1;
  int sayi2;
  int randomUstDeger;
  int toplam = 0;

  stdout.write("1. sayiyi giriniz: ");
  sayi1 = int.parse(stdin.readLineSync()!);

  stdout.write("2. sayiyi giriniz: ");
  sayi2 = int.parse(stdin.readLineSync()!);

  if(sayi1 > sayi2){
    randomUstDeger = sayi1;
    double karekok = sqrt(sayi2);
    sayi2 = karekok.ceil();
    while(i<=sayi2){
      int random = Random().nextInt(randomUstDeger);
      print("$i. sayi: $random");
      toplam += random;
      i++;
    }
    print("Rastgele sayilarin toplami: $toplam");
  }
  else{
    randomUstDeger = sayi2;
    double karekok = sqrt(sayi1);
    sayi1 = karekok.ceil();
    while(i<=sayi1){
      int random = Random().nextInt(randomUstDeger);
      print("$i. sayi: $random");
      if(random % 3 == 0){
        toplam += random;
      }
      
      i++;
    }
    if(toplam == 0){
      print("Gelen sayilarin hicbiri 3'un kati degil!");
    }
    print("Rastgele sayilarin toplami: $toplam");
  }
  */

  /* 
  int taban;
  int us;
  double islem;
  stdout.write("Tabani giriniz: ");
  taban = int.parse(stdin.readLineSync()!);

  stdout.write("Us icin sayi giriniz: ");
  us = int.parse(stdin.readLineSync()!);
  islem = pow(taban,us).toDouble();
  islem >= 100 ? print("Sonuc: $islem 100'den buyuk yada esit") : print("Sonuc: $islem 100'den kucuktur.");
 */

  // KULLANICIDAN SINIR SAYIYI ISTEYIN 1 DEN BASLASIN RANDOM IKI SAYI OLUSTURUN BUYUK SAYIYI EKRANA YAZDIRIN
  /* int ustDeger;
  stdout.write("Üst siniri giriniz: ");
  ustDeger = int.parse(stdin.readLineSync()!);
  int firstNumber = Random().nextInt(ustDeger) + 1;
  int secondNumber = Random().nextInt(ustDeger) + 1;
  int bigNumber = max(firstNumber, secondNumber);
  print("Gelen $firstNumber ve $secondNumber sayilarindan buyuk olani $bigNumber sayisidir.");
 */
  
  // KULLANICIDAN BIR SINIR ISTEYIN VE BIR ADET ISTEYIN( 1 DEN BASLASIN ) RANDOM O ADET SAYI KADAR BUNLARIN ORTALMASINI EKRANA YAZDIRSIN.

  /*
   stdout.write("Lutfen sinir sayisini giriniz: ");
  int bestNumber = int.parse(stdin.readLineSync()!);
  
  stdout.write("Lutfen adet sayisini giriniz: ");
  int count= int.parse(stdin.readLineSync()!);
  Random r = Random();
  int toplam = 0;
  double ort = 0;
  for(int i = 1; i<=count; i++){
    int numb = r.nextInt(bestNumber) + 1;
    print("$i. sayi: $numb");
    toplam += numb;
  }
  ort = toplam / count;
  print("Sayilarin ortalamasi $ort"); 
  */

}