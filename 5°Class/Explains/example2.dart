import 'dart:io';

void main() {
  try {
    print("Insert your age:");
    // ignore: unused_local_variable
    int idade = int.parse(stdin.readLineSync()!);
  } on FormatException {
    print("Insert only numbers, try again ");
  } on RangeError {
    print("Range Error");
  } catch (e) {
    print("Not recoginized error: $e");
  };
}
