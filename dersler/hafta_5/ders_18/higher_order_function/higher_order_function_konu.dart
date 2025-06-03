void main(List<String> args) {
  List<int> liste = [1,2,3,4];
  kendiForEachYapimiz(liste,callback);
}

void kendiForEachYapimiz(List<dynamic> liste, Function callback){
  for(int i = 0; i<liste.length; i++){
    callback(i,liste[i]);
  }
}

void callback(int i, dynamic element){
  print("${i+1}. eleman: $element");
}