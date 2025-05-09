import "dart:io";

void main(List<String> args) {
/* for(int i = 0; i<=10; i++) { 1.ORNEK
    print(i);
 }

 for(int j = 0; j<11; j++) { 2.ORNEK
    print(j);
 }

 for(int k = 0; k <11; k += 1) { 3.ORNEK
    print(k);
 } 

 for(int k = 5; k <13; k += 1) { 4.ORNEK
    print(k);
 }

 for (var i = 1; i <=5; i++) { 5.ORNEK
   print("Ensar");
 }

  for (var i = 1; i <= 5; i++) { 6.ORNEK
    print("$i. Fenerbahce");
  }

 for (var i = 0; i <= 23; i+=2) { 7. ORNEK
   print(i);
 }

 for (var i = 1; i < 41; i+=2) { 8. ORNEK
   print(i);
 } */

 /* var bas = 42;  9.ORNEK
 var bit = 123;
 for (var i = bas; i < bit; i++) {
   print(i);
 } */

 /* stdout.write("Ust limit icin sayi giriniz: "); 10.ORNEK
 int lastNumber = int.parse(stdin.readLineSync()!);
 for (var i = 1; i <= lastNumber; i++) {
   print(i);
 } */

 /* stdout.write("Baslangic degerini giriniz: "); 11.ORNEK
 int firstNumber = int.parse(stdin.readLineSync()!);
 for (var i = firstNumber; i <= 25; i++) {
  print(i);
 } */

 /* stdout.write("Baslangic degeri giriniz: "); 12.ORNEK
 int firstNumber = int.parse(stdin.readLineSync()!);

 stdout.write("Ust limit icin sayi giriniz: ");
 int lastNumber = int.parse(stdin.readLineSync()!);

 for (var i = firstNumber; i <= lastNumber; i++) {
   print(i);
 } */

 /* stdout.write("Baslangic degeri giriniz: "); 13.ORNEK
 int firstNumber = int.parse(stdin.readLineSync()!);

 stdout.write("Ust limit icin sayi giriniz: ");
 int lastNumber = int.parse(stdin.readLineSync()!);

 stdout.write("Artis degeri icin sayi giriniz: ");
 int increment = int.parse(stdin.readLineSync()!);

 for (var i = firstNumber; i <= lastNumber; i += increment) {
   print(i);
 } */


 //////////////////////////////////////WHILE DONGUSU BASLANGIC\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
 /* int sayac = 1; 1.ORNEK

 while(sayac <=4)
 {
  print(sayac);
  sayac++;
 } */

 /* int sayac = 1;
 while (sayac <= 4) {
   print("Ensar");
   sayac++;
 } */

 /* int sayac = 20;
 while(sayac >= 5)
 {
  print(sayac);
  sayac--;
 }

 for(int i = 20; i>=5; i--)
 {
  print(i);
 } */

 /* var sayac = 0;

 while(sayac <= 5)
 {
  if(sayac == 3)
  {
    break;
  }
  print(sayac);
  sayac++;
 } */

/*  for(var i = 0; i<5; i++)
 {
  if(i==3)
  {
    continue;
  }
  print(i);
 } */

 //sonsuz dongu break islemi yapilmadigi surece surekli devam edan dongudur

/*  int i = 0;
 while(true)
 {
  print(i);
  i++;
 } */

 /* while(true)
 {
  if(i==50)
  {
    break;
  }
  print(i);
  i++;
 } */

 // kullanicinin adini soy adini alip ekrana yazdiran program.

 /* while(true){
  stdout.write("Uygulamamiza hosgeldiniz cikis yapmak icin q devam etmek icin e tusuna basiniz: ");
  String? secim = stdin.readLineSync();

  if(secim=="e" || secim =="E"){
  stdout.write("Lutfen adinizi giriniz: ");
  String? name = stdin.readLineSync();

  stdout.write("Lutfen soyadinizi giriniz: ");
  String? lastName = stdin.readLineSync();
  print("Hosgeldin $name - $lastName");
  }

  else if(secim == "q" || secim == "Q"){
    break;
  }
  else{
    print("Yanlis secim yaptiniz!!");
  }
 } */

 /* for(int i = 1; i<=100; i++)
 {
  if(i%2==0)
  {
    print(i);
  }
 } */

/*  int sayi = 1;
 while(sayi <=100)
 {
  if(sayi%2==0)
  {
    print(sayi);
  }
  sayi++;
 } */

// sonsuz dongu seklinde kullanicidan fiyat ve kdv orani alip vergili satiş fiyati bulunan program

/* while(true)
{
 stdout.write("Lutfen islem yapmak icin q(Cikis) ya da a(islem) basiniz: ");
 String? secim = stdin.readLineSync();
 if(secim == "A" || secim == "a"){
  stdout.write("Lutfen ucreti giriniz: ");
  int price = int.parse(stdin.readLineSync()!);

  stdout.write("Lutfen KDV oranini giriniz: ");
  int kdv = int.parse(stdin.readLineSync()!);

  double result = (price * (100 + kdv)) / 100;
  print("$price ucretinin $kdv orani ile olusan yeni fiyati $result");
 }
 else if(secim == "q" || secim == "Q"){
  break;
 }
 else{
  print("hatali giris yaptiniz!!");
 }
} */


// bir sayinin kuvvetlerini yazan program

/* while(true)
{
  int result = 1;
  stdout.write("tabani giriniz: ");
  int taban = int.parse(stdin.readLineSync()!);

  stdout.write("Kuvveti giriniz: ");
  int kuvvet = int.parse(stdin.readLineSync()!);

  for (var i = 1; i<=kuvvet; i++) {
    result *= taban;
    print(result);
  } 
} */

// kullanicinin girdigi sayidan ikinci girdigi sayiya kadar olan sayilarin toplami

/* while(true)
{
  int toplam = 0;
  stdout.write("Alt siniri giriniz: ");
  int altSinir = int.parse(stdin.readLineSync()!);

  stdout.write("Ust siniri giriniz: ");
  int ustSinir = int.parse(stdin.readLineSync()!);

  for (var i = altSinir; i<=ustSinir; i++) {
    toplam += i;
  }
 print(toplam);
} */


/* kullanicinin ekrani su sekilde olsun: 
1) giris sayfasi olsun. iki tane pass ve username degisken olusturun. 
   eger dogru ise post atmak icin 1, mesaj atmak icin 2, cikmak icin 3 yazsin
   eger bilgiler hataliysa bilgi hatali desin giris sayfasi geri gelsin
   1- post yapildi yazsin
   2- mesaj gonderildi yazsin
   3- donguden ciksin
*/

while(true)
{
  String kullaniciAd = "Ensar";
  int kullaniciSifre = 1234;

  stdout.write("Giris yapmak icin kullanici adini giriniz: ");
  String? girdiAd = stdin.readLineSync(); 
  
  stdout.write("Giris yapmak icin sifreyi giriniz: ");
  int girdiSifre = int.parse(stdin.readLineSync()!);

  if(kullaniciSifre == girdiSifre && kullaniciAd == girdiAd)
  {
    while(true){
    stdout.write("--Lutfen yapacaginiz islemi seciniz--\n1- Post Gonderme\n2- Mesaj Atma\n3- Cikis\nSecim: ");
    int secim = int.parse(stdin.readLineSync()!);
    if(secim == 1){
      print("Post gonderildi!!\n");
    }
    else if(secim == 2){
      print("Mesaj gonderildi!!\n");
    }
    else if(secim == 3)
    {
      break;
    }
    else{
      print("Yanlis girdi!!\n");
    }
    }
  }
  else{
    print("Bilgiler yanlis girildi!!\n");
  }
}








/* -------ODEVLER---------
  sonsuz dongu seklinde kullanicidan 3 sayi alin buyuk olani ekrana yazdirin. q ya basana kadar islem surekli devam etsiN.

  sonsuz dongu seklinde kullanicidan iki sayi alin ve bu sayilari toplatin.

  sonsuz dongu seklinde ders islem secimi yapilabilip seicme gore girilen sayilari isleme sokan program.

  sonsuz dongu seklinde geometrik sekillerde kare, dikdortgen, paralelkenar ve dairenin alanini bulan program yaziniz.

  kullanicidan 4 sekilde listelenen urunden hangisini secerse uzerine sabit kargo ucretini ekleyerek hesabi ekranda gosteren program.

  final notunun %70, vize notunun %30 oldugu bir not hesaplama programinda girilen notlara gore 100-85 AA, 84-70 BA, 69-50 BB, 49-30 CB, 30-0 CC olan sonsuz dongulu program yaziniz.

  kullanicidan fiyat, kar ya da zarar oranı secimi yaptirip girilen fiyata gore son fiyati yazan program yaziniz.()
 */
}