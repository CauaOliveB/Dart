import "dart:io";


void main() {

  stdout.write('Enter your name:');
  String? name = stdin.readLineSync();
  
  print("Enter your 1º Salary: ");
  double? firstSalary = double.parse(stdin.readLineSync()!);
  print("Enter your 2º Salary: ");
  double? secondSalary = double.parse(stdin.readLineSync()!);
  print("Enter your 3º Salary: ");
  double? thirdSalary = double.parse(stdin.readLineSync()!);

  if (firstSalary > 0 && secondSalary > 0 && thirdSalary > 0) {
    print("""
          You are in a good financial state

          1º Save consistently, no matter how small.

          2º Invest in skills that boost your income.

          3º Avoid lifestyle inflation as your salary grows.""");
  }
  else {
    print("Please, enter a valid value");
  }
}