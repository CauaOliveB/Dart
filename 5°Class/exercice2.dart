import "dart:io";




void main() {
  
  int? cartPrice = int.parse(stdin.readLineSync()!);
    try {
      print("Insert the final total of my cart :");
      cartPrice;
    } on FormatException {
      print("Insert only numver, please fulffil the field again");
    }

    print("""What is the payment method:
    [1] Cash
    [2] Credit Card
    [3] Debit Card
    [4] PIX
    """);

    

    try {
      // ignore: unused_local_variable
    int paymentMethod = int.parse(stdin.readLineSync()!);
    } on RangeError {
      
    }
  
  
  try {
    print("Insert your age:");
    int idade = int.parse(stdin.readLineSync()!);
  } on FormatException {
    print("Insert only numbers, try again ");
  } on RangeError {
    print("Range Error");
  } catch (e) {
    print("Not recoginized error: $e");
  };
}

extension on int {
 
