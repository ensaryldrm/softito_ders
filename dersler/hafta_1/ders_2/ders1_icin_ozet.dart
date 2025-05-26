import "dart:io";

void main(List<String> args) {
  stdout.write("Lutfen 1. sayiyi girin: ");
  String? text1 = stdin.readLineSync();

  double number1 = double.parse(text1!);

  stdout.write("Lutfen 2. sayiyi girin: ");
  String? text2 = stdin.readLineSync();

  double number2 = double.parse(text2!);

  print("Girdiginiz ${number1.toInt()} ve ${number2.toInt()} sayilarin toplami: ${number1 + number2}'dir.");
}