void main(List<String> args) {
  //+ toplama, - cikarma, * carpma, / bolme, % mod
  // Ucgenin cevresini bulan programi yaziniz
  // Ucgenin alanini bulan programi yaziniz
  var kenar1, kenar2, kenar3;
  kenar1 = 17;
  kenar2 = 9;
  kenar3 = 10;

  var cevre = kenar1 + kenar2 + kenar3;
  print("Kenar uzunluklari $kenar1, $kenar2, $kenar3 olan ucgenin cevresi: $cevre'dir.");

  var h = 12;
  var a = 15;
  var alan = (h*a/2);
  print("Yuksekligi $h, taban uzunlugu $a olan ucgenin alani: $alan'dir.");

  //pratik1
  // yari capi 6, pi 3.14 olan dairenin alanini bulan program yaziniz.
  var yariCap = 6;
  final pi = 3.14;
  var daireAlan = (pi*yariCap*yariCap);
  print("Verilen dairenin alani $daireAlan'dir.");

  //pratik2
  // Ek = 1/2.mv^2 bir m = 10 degeri bir v = 8 olan bir kinetik enerjiyi hesaplayan program yaziniz.
  var m = 10;
  var v = 8;
  var eKinetik = ((0.5)*m*v*v);
  print("Istenilen kinetik enerji formulunun degeri: $eKinetik");
}