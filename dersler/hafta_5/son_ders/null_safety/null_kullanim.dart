void main(List<String> args) {
  int? a; // bu soru isaretini koyarak bu artik non-nullable degil nullable turune donusturmus oldum. Yani dedim ki evet bunun turu int sayi gelecek ama null degeride alabilir.
  a = null;
  print("a degiskenin degeri: $a");
  try{
    print(a! + 2);
  }
  catch(e){
    print(e);
  }
}