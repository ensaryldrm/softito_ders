void main(List<String> args) {
  final yemegim = Yemek();
  yemegim.setTanim("kuru fasulye");
  print(yemegim.tanim);
}

class Yemek{
  late final String tanim;
  void setTanim(String tanim){
    this.tanim = tanim;
  }
}