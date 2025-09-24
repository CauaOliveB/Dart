import "dart:io";

void main() {

  print("""Hello, good morning!
        Welcome to PharmaHelp""");


}

//Customer Registration

String CustomerRegister() {

  print("Please enter your name:");
  String? customerName = stdin.readLineSync()!;

  print("Please enter your CPF:");
  String? cpf = stdin.readLineSync()!;

  return("Name: $customerName | CPF:$cpf ");
}

//Customer Validation

String CustomerValidation(String document){ 
  
    do{
      try {
      CustomerRegister(customerName, cpf);
      } on FormatException{
        print("Customer name cannot be empty, null or have spaces.");
      } catch(e){
        print("Your error is $e");
      }

      try {
        print("Please enter your CPF:");
        String? document = stdin.readLineSync()!;
      } on FormatException{
        print("Document cannot be empty, null or have spaces.");
      }catch(e){
        print("Your error is $e");
      }
    }while(customerName == null || customerName.trim().isEmpty || document == null || document.trim().isEmpty);

    return("Client : ");
}

dynamic Cart() {
  List<Map<String, dynamic>> products = 
  [{'name' : 'Antacid', 'price' : 8.00, 'stock' : 8}, 
  {'name' : 'Diapers', 'price' : 16.00, 'stock' : 36}, 
  {'name' : 'Antihistamine', 'price' : 22.00,'stock' : 16}, 
  {'name' : 'Burn Ointment', 'price' : 17.00, 'stock' : 13}];

  //Name : String | Price : double | Stock : int

  List <Map<String, dynamic>> myCart = [];

  print("""Let's start buying?
  [1]Yes
  [2]No
  """);

  int buying = int.parse(stdin.readLineSync()!);

  if (buying == 1){
    for (int i = 0; i < products.length; i++) {
      print("$i - ${products[i]["name"]} | BRL ${products[i]["price"].toStringAsFixed(2)} | Stock: ${products[i]["stock"]}");
    }

    do {
      print("Enter the product number:");
      int option = int.parse(stdin.readLineSync()!);

      print("How much:");
      int quantity = int.parse(stdin.readLineSync()!);

      if (option < 0 || option >= products.length) {
        print("Invalid product!");
      }     
      else if (quantity <= 0) {
        print(" Invalid quantity!");
      } 
      else if (quantity > products[option]["stock"]) {
        print("Stock is not enough!");
      } 
      else {
        double total = products[option]['price'] *  quantity; 
        myCart.add("$option - $quantity | Total $total : " as Map<String, dynamic>);
        products[option]["stock"] -= quantity;
      }
      print("""Let's continue buying?
      [1]Yes
      [2]No
      """);
      
      buying;
      
    } while (buying == 1);
    
    } else {
      print("=========================");
      print("Thank you for your preference!");
      print("=========================");
    }
  }
}


dynamic paymentMethod() {
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
      print("Select a payment method valid.");
    }
}

