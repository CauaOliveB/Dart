import "dart:io";

void main() {
  stdout.write("Enter the temperature :");
  double celsius = double.parse(stdin.readLineSync()!);
  double fahrenheit = CelsiusToFahrenheit(celsius);

  print(fahrenheit);
}

double CelsiusToFahrenheit(double celsius) {
  double fahrenheit = (celsius * 1.8) + 32;
  return fahrenheit;
}
