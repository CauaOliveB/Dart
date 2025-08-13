import "dart:io";

void main() {
  print("Insert your name :");
  String? name = stdin.readLineSync();

  while (name == null || name.trim().isEmpty) {
    print("It is empty or null datas, please fulffil the field again");
    name = stdin.readLineSync();
  }  
    print("OK $name");
  
}
