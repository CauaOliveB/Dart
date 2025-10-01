import "dart:io";

void main() {

  print("""Hello, good morning!
        Welcome to PharmaHelp""");


}

//==============Customer Registration==============

  Map<String, String> CustomerRegister() {
    print("Please enter your name:");
    String name = stdin.readLineSync()!;

    print("Please enter your CPF:");
    String cpf = stdin.readLineSync()!;
    
    return {"name": name, "cpf": cpf};
}


//==============Customer Validation==============

String CustomerValidation(){ 

    do{
      
      var data = CustomerRegister();

      if (data["name"]!.trim().isEmpty || data["cpf"]!.trim().isEmpty) {
      print("Name and CPF cannot be empty. Please try again.");
      }

    }while(data["name"]!.trim().isEmpty || data["cpf"]!.trim().isEmpty);

return "Name: ${data["name"]} | CPF: ${data["cpf"]}";
}

//==============Show Products==============

dynamic ShowProducts() {

    //Name : String | Price : double | Stock : int
  List<Map<String, dynamic>> products = 
  [{'name' : 'Antacid', 'price' : 8.00, 'stock' : 8}, 
  {'name' : 'Diapers', 'price' : 16.00, 'stock' : 36}, 
  {'name' : 'Antihistamine', 'price' : 22.00,'stock' : 16}, 
  {'name' : 'Burn Ointment', 'price' : 17.00, 'stock' : 13}];

  for (int i = 0; i < products.length; i++) {
        print("$i - ${products[i]["name"]} | BRL ${products[i]["price"].toStringAsFixed(2)} | Stock: ${products[i]["stock"]}");
      }

//==============Cart==============

dynamic Cart() {
  List <Map<String, dynamic>> myCart = [];

  print("""Let's start buying?
  [1]Yes
  [2]No
  """);

  String shopping = stdin.readLineSync()!;
  bool shoppingBoolean = false;

  if (shopping == "1"){
    
    shoppingBoolean = true;

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
        
        myCart.add({
        "product": products[option]["name"],
        "quantity": quantity,
        "total": total});

        products[option]["stock"] -= quantity;
      }

      print("""Let's continue buying?
      [1]Yes
      [2]No
      """);
      
      String shopping = stdin.readLineSync()!;
      
    } while (shopping == "1");
}
  
    } else {
      print("=========================");
      print("Thank you for your preference!");
      print("=========================");
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
/*
    String paymentMethod = int.parse(stdin.readLineSync()!);

    switch (paymentMethod) {
      case 1:
        double finalValue = total - (total * 0.10);
        print("You have to pay R\$ ${finalValue.toStringAsFixed(2)} (10% discount).");
        break;

      case 2:
        double installment = total / 2;
        print("You have to pay 2 installments of R\$ ${installment.toStringAsFixed(2)}.");
        break;

      case 3:
        double finalValue = total + (total * 0.10);
        double installment = finalValue / 3;
        print("You have to pay 3 installments of R\$ ${installment.toStringAsFixed(2)}, total R\$ ${finalValue.toStringAsFixed(2)}.");
        break;

      case 4:

      default:
        print("Invalid Option");
    }
    */
}

