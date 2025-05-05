void main(List<String> args) {
  /*
  1) Sayisaldan sayisala donusum
  2) Sayisaldan metine donusum
  3) Metinden sayisala donusum 
  */

  // 1) SAYISALDAN SAYISALA DONUSUM
  int i = 42;
  double d = 42.25;
  int sonuc = d.toInt();
  print(sonuc);

  double sonuc2 = i.toDouble();
  print(sonuc2);

  // 2) SAYISALDAN METINE CEVIRME
  String txt1 = i.toString();
  print(txt1);
  String txt2 = d.toString();
  print(txt2);

  // 3) METINDEN SAYISALA DONUSUM
  String value1 = "52";
  String value2 = "65.78";

  int s1 = int.parse(value1);
  print(s1);

  double s2 = double.parse(value2);
  print(s2);
}