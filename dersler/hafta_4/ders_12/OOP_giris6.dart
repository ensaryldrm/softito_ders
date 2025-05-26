import 'dart:io';

void main(List<String> args) {
  bilgileriAl();
}

void bilgileriAl(){
  while(true){
    stdout.write("Lutfen kimlik numaranizi giriniz: ");
    int kimlikNo = int.parse(stdin.readLineSync()!);

    stdout.write("Lutfen ad soyad giriniz: ");
    String? benimAdSoyad = stdin.readLineSync()!;

    stdout.write("Lutfen sifrenizi giriniz: ");
    String? benimSifre = stdin.readLineSync()!;

    
    stdout.write("Lutfen memleketinizi giriniz: ");
    String? benimMemleket = stdin.readLineSync()!;

    
    stdout.write("Lutfen cinsiyetinizi giriniz: ");
    String? benimCinsiyet = stdin.readLineSync()!;

    stdout.write("Lutfen okulunuzu giriniz: ");
    String? benimOkul = stdin.readLineSync()!;
    User user = User(kimlikNo, benimAdSoyad, benimSifre, benimMemleket, benimCinsiyet, benimOkul);
    user.bilgileriGoster();
  }
}
class User{
  int? userID;
  String? name;
  String? pass;
  String? city;
  String? gender;
  String? highSchool;

  User(int id, String adSoyad, String sifre, String memleket, String cinsiyet, String okul){
    userID = id;
    name = adSoyad;
    pass = sifre;
    city = memleket;
    gender = cinsiyet;
    highSchool = okul;
  }

  void bilgileriGoster(){
    print("Kimlik no: $userID\nAd Soyad: $name\nSifre: $pass\nYasadigi sehir: $city\nCinsiyeti: $gender\nOkudugu Okul: $highSchool");
  }
}