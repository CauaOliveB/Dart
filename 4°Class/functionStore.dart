import 'dart:io';

void main() {
  print("Welcome to the Seattle FStore \n");

  stdout.write("Insert the price of the product:");
  double? price = double.parse(stdin.readLineSync()!);
  stdout.write("Insert the % of the discount:");
  double? discount = double.parse(stdin.readLineSync()!);
  double cd = calcularDesconto(price, discount);

  print("Final price after discount: ${cd.toStringAsFixed(2)}");


}

double calcularDesconto(double price, double discount) {
  double finalPrice = price - (price * discount / 100);
  return finalPrice;
}
