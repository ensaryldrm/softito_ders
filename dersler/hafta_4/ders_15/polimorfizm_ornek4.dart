void main(List<String> args) {
  Kisi kisi1 = Kisi("Ensar",20);
  kisi1.kendiniTanit();

  Calisan kisi2 = Calisan("Hasan", 32,12453);
  kisi2.kendiniTanit();
}


class Kisi{
  String isim;
  int yas;
  Kisi(this.isim, this.yas);

  void kendiniTanit(){
    print("Isim: $isim\nYas: $yas\n");
  }
}

class Calisan extends Kisi{
  double maas;
  Calisan(String isim, int yas, this.maas) : super(isim, yas) {}

  @override
  void kendiniTanit() {
    print("Isim: ${super.isim}\nYas: ${super.yas}\nMaas: $maas\n");
  }
}