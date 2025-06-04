void main(List<String> args) {
 List<String> stringList = ["Karpuz", "Limonata", "Dondurma"]; // dogru kullanim
 List<String>? nullOlabilecekStringList;
 List<String?> nullOlabilecekStringleriTutanList = ["Masa", null, "Buzdolabi"];

 // HATALARI DUZELTMEK ICIN ? KOYULMALIDIR! 
 print("String listesi: $stringList");
 print("Null olabilecek string list: $nullOlabilecekStringList");
 print("Icinde null olabilecek string list: $nullOlabilecekStringleriTutanList");
}

