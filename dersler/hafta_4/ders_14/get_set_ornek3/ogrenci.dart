class Ogrenci{
  int id = 0;
  int notDegeri = 0;
  Ogrenci({this.id = 0, this.notDegeri = 0});

  @override
  String toString() {
    return "ID: $id, NotDegeri: $notDegeri";
  }
}