void main(List<String> args) {
  print("Program basladi...");
  Future.delayed(Duration(seconds: 0), (){
    print("0 saniyelik islem bitti");
  });
Future<int> toplam = Future(() {
  int toplam = 0;
  for(int i = 0; i<10000000; i++){
    toplam += i;
  }
  
  return toplam;
});
  toplam.then((toplam) => print(toplam));
}

