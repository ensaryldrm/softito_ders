void main(List<String> args) async{
  /*
Soru:
Bir fonksiyon yazın bu fonksiyon aldığı id parametresine göre bir kullanıcı getirsin. Bu işlem 2 saniye sonunda sonuçlanacaktır ve getirilen kişi bilgisi map olarak alınacaktır. Bu map yapısında username ve id bilgisi olmalıdır.

getirilen kişi bilgisindeki username değerini kullanarak kişinin kurslarını getiren bir fonksiyon yazın. Bu fonksiyon 4 saniye sürecek ve username degerine ait olan kursları içinde kurs adleri olan bir liste olarak döndürecektir.

Son olarak da kurslar listesindeki ilk elemanı parametre olarak alan ve bu kursa ait bir yorumu döndüren bir fonksiyon yazın. bu fonksiyonda 1 saniye sürecektir.
*/
  sonucuGetir();
}

void sonucuGetir() async{
  Map<String, dynamic> gelenUser = await idyeGoreUserGetir(5);
  List<String> kurslarim = await userNameGoreKurslariGetir(gelenUser["username"]);
  String yorum = await kursunIlkYorumunuGetir(kurslarim[0]);
  print("Ben: ${gelenUser['username']}\nAldigim ${kurslarim[0]} kursuna yaptigim\nYorum: $yorum");
}

Future<String> kursunIlkYorumunuGetir(String kursAdi) {
  print("$kursAdi adli ilk kursun yorumu getiriliyor...\n");
  return Future<String>.delayed(Duration(seconds: 1), () {
    return "kurs mukemmel!";
  });
}

Future<List<String>> userNameGoreKurslariGetir(String username) {
  print("$username kullacisinin kurslari getiriliyor...\n");
  return Future<List<String>>.delayed(Duration(seconds: 4), () {
    return ['flutter', 'kotlin', 'swift'];
  });
}

Future<Map<String, dynamic>> idyeGoreUserGetir(int id) {
  print("$id adli kullanici getiriliyor...\n");
  return Future<Map<String, dynamic>>.delayed(Duration(seconds: 2), () {
    return {'username': 'Ensar Yildirim', 'id': id};
  });
}
