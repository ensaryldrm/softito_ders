void main(List<String> args) {
  /* --KARAR ALMA YAPILARI-- Belirlenen sartlara gore karar alan yapilardir.
     Kararlar, sartin true veya false (boolean) olmasına gore alinir.
     Kosullar, gereken yerlerde kullanilir(if-else, if-elseif-else, while) 
     
     --KARSILASTIRMA YONTEMLERI--

     == : Esit mi? (Esittir),
        (A==B)

     != : Esit degil mi? (Esit degil),
        (A!=B)

     > : Buyuktur,
        (A>B)
     < : Kucuktur,
        (A<B)

     >= : Buyuk Esit,
        (A>=B)
     <= : Kucuk Esit,
        (A<=B)

     --MANTIKSAL OPERATORLER--

     && : AND,Her iki kosulda saglaniyorsa true olur diger turlu false olur,
        (A && B)

     || : OR, Iki kosuldan biri bile saglaniyorsa true olur,
        (A || B)

     ! : NOT, Var olan durumu tersine donusturur
        (!A)
     
     */
  
  int a = 17;
  int b = 19;
  print(a>b); // false dondurur

  a = 19;
  b = 12;
  print(a>b); // true dondurur

  var name1 = "Bilal";
  var name2 = "Hatice";
  print(name1 == name2); // false dondurur

  var name3 = "Bilal";
  var name4 = "bilal";
  print(name3 == name4); // false dondurur

  var name5 = "Bilal";
  var name6 = "Bilal";
  print(name5 == name6); // true dondurur

  // bool stateOne = 12 > 5;
  // bool stateTwo = 17 == 19;

  // print(stateOne && stateTwo); // false dondurur

  bool stateOne = 12 > 5;
  bool stateTwo = 19 == 19;
  print(stateOne && stateTwo); // true dondurur
}