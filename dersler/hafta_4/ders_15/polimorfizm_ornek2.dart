void main(List<String> args) {
  Asker asker1 = Asker("Hakan", 20,"Giresun");
  Er asker2 = Er("Ensar", 21,"Antalya");
  asker1.selamla();
  asker2.selamla();
  asker2.memleketDegistir("Ordu");
  print(asker2.memleket);
  
}

class Asker{
  String ad = "";
  int yas = 0;
  String memleket = "";

  Asker(this.ad, this.yas, this.memleket){
    print("Asker sinifinin kurucu calisti!");
  }

  void selamla(){
    print("$ad, $yas");
  }
}

class Er extends Asker{
  Er(String ad, int yas, String memleket) : super(ad,yas,memleket){
    print("Er sinifinin kurucu calisti!");
  }

  void memleketDegistir(String yeniMemleket){
    super.memleket  = yeniMemleket;
  }
}