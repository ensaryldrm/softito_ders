void main(List<String> args) {
  String? mesaj;
  if(DateTime.now().hour < 12){
    mesaj = "Gunaydin!";
  }
  else{
    mesaj = "iyi aksamlar!";
  }
  print(mesaj);
  print(mesaj.length);
}