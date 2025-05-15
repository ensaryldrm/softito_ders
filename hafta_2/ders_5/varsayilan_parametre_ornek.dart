import "dart:io";

void main(List<String> args) {
  while(true){
    stdout.write("Lutfen kullanici adinizi girin: ");
    String? userName = stdin.readLineSync()!;
    if(userName == ""){
      kullaniciSelamla();
    }else{
      kullaniciSelamla(userName);
    }
  }
}

void kullaniciSelamla([String name = "Yabanci"]){
  print("Merhaba $name");
}