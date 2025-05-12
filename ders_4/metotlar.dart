import "dart:math";

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
}