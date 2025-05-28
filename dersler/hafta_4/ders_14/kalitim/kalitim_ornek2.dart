void main(List<String> args) {
  
}




class Hastane{
  int? kisiID;
  String? kisiIsim;
  String? email;
  String? departman;

  void bilgiGoster(){
    print("50 personel sabah giris yapti.");
  }
}

class Doktor extends Hastane{
  @override
  void bilgiGoster() {
    print("Doktor: $kisiIsim\nID: $kisiID giris yapti");
  }
}

class Yardimci extends Hastane{
  @override
  void bilgiGoster() {
    print("$kisiID nolu, $kisiIsim adli yardimci geldi.");
  }
}

class Hasta extends Hastane{
  @override
  void bilgiGoster(){
    print("$kisiIsim adli kisi geldi!");
  }
}