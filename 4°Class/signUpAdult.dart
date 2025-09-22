import "dart:io";

void main() {
  stdout.write("Enter your age:");
  int age = stdin.readByteSync();
  isLegalAge(age);
}

bool isLegalAge(int age) {
  if (age >= 18) {
    print("You are of legal age.");
    return true;
  } else {
    print("You are not of legal age");
    return false;
  }
}
