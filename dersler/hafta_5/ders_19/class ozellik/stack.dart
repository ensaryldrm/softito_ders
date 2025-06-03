void main(List<String> args) {
  MyStack myStack = MyStack();
  myStack.push(5);
  myStack.push("Sivas");
  myStack.push(true);

  print(myStack.pop());
  print(myStack.pop());
  print(myStack.pop());

  IntmyStack intmyStack = IntmyStack();
  intmyStack.push(12);  
  intmyStack.push(23);  
  intmyStack.push(142);  


}


class IntmyStack{
  List<int> _listem = <int>[];

  push(int yeniEleman){
    _listem.add(yeniEleman);
  }

  pop(){
    return _listem.removeLast();
  }
}
class MyStack{
  List _listem = [];

  push(yeniEleman){
    _listem.add(yeniEleman);
  }

  pop(){
    return _listem.removeLast();
  }
}

class GenericStack<T>{
  List<T> _listem = <T>[];

  void push(T yeniEleman){
    _listem.add(yeniEleman);
  }

  T pop(){
    return _listem.removeLast();
  }
}