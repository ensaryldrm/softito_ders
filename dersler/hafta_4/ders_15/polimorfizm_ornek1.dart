void main(List<String> args) {
  Arac arac1 = Arac();
  print(arac1.modelYil);
  print("\n");

  Arac arac2 = Araba();
  print(arac2.modelYil);
  print("\n");

  Arac arac3 = Otobus();
  print(arac3.modelYil);
  print("\n");

  Arac arac4 = Kamyonet();
  print(arac4.modelYil);
  print("\n");

  Araba benzinliAraba = BenzinliAraba();
  print(benzinliAraba.modelYil);
  print("\n");

  Araba dizelAraba = DizelAraba();
  print(dizelAraba.modelYil);
  print("\n");

}


class Arac{
  int? modelYil;
  int? yolcuKapasite;

  Arac(){
    print("Arac Cagrildi!");
  }
}

class Otobus extends Arac{
  Otobus(){
    print("Otobus calisti...");
  }
}

class Araba extends Arac{ 
  Araba(){
    print("Araba calisti...");
  }
}

class Kamyonet extends Arac{
  Kamyonet(){
    print("Kamyonet calisti...");
  }
}

class BenzinliAraba extends Araba{
  BenzinliAraba(){
    print("Motor isiniyor...");
  }
}

class DizelAraba extends Araba{
  DizelAraba(){
    print("Brbrbrbrbrbrbrbrbr...");
  }
}