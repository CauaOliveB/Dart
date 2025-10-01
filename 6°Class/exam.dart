import "dart:io";

void main() {

  print("""Hello, good morning!
        Welcome to PharmaHelp""");

CustomerRegister();
CustomerValidation();
ShowProducts();
cart();


}

//==============Customer Registration==============

  List CustomerRegister() {
    
    List<String> data = [];

    print("Please enter your name:");
    String name = stdin.readLineSync()!;

    print("Please enter your CPF:");
    String cpf = stdin.readLineSync()!;
  
  data.add(name);
  data.add(cpf);
  return(data);
}


//==============Customer Validation==============

String CustomerValidation(List<String> data){ 

 do{
  try {
    CustomerRegister();
  } on FormatException {
    print("Can not accept multiple types of characters");
  }catch(e){ 
    print(e); 
  } 
 } while(data[0]!.trim().isEmpty || data[1]!.trim().isEmpty);
     print("Name and CPF cannot be empty. Please try again.");
    
  return "Name: ${data[0]} | CPF: ${data[1]}";
}

//==============Cart==============

List<Map<String, dynamic>> products = [
  {'name': 'Antacid', 'price': 8.00, 'stock': 8},
  {'name': 'Diapers', 'price': 16.00, 'stock': 36},
  {'name': 'Antihistamine', 'price': 22.00, 'stock': 16},
  {'name': 'Burn Ointment', 'price': 17.00, 'stock': 13}
];

void ShowProducts() {
  print("\n=== Available Products ===");
  for (int i = 0; i < products.length; i++) {
    print(
        "$i - ${products[i]["name"]} | BRL ${products[i]["price"].toStringAsFixed(2)} | Stock: ${products[i]["stock"]}");
  }
  print("=========================");
}

List<Map<String, dynamic>> cart() {
  List<Map<String, dynamic>> myCart = [];
  String shopping;

  print("Let's start buying? [1]Yes [2]No");
  shopping = stdin.readLineSync()!;

  if (shopping != "1") {
    print("Thank you for your preference!");
    return myCart; 
  }

  do {
    ShowProducts();

    print("Enter the product number:");
    int option = int.parse(stdin.readLineSync()!);

    print("How much:");
    int quantity = int.parse(stdin.readLineSync()!);

    if (option < 0 || option >= products.length) {
      print("Invalid product!");
    } else if (quantity <= 0) {
      print("Invalid quantity!");
    } else if (quantity > products[option]["stock"]) {
      print("Stock is not enough!");
    } else {
      double total = products[option]['price'] * quantity;
      myCart.add({
        "product": products[option]["name"],
        "quantity": quantity,
        "total": total
      });
      products[option]["stock"] -= quantity;
      print("${products[option]["name"]} added to your cart!");
    }

    print("Let's continue buying? [1]Yes [2]No");
    shopping = stdin.readLineSync()!;
  } while (shopping == "1");

  print("Your cart:");
  for (var item in myCart) {
    print(
        "${item["quantity"]}x ${item["product"]} | Total: BRL ${item["total"].toStringAsFixed(2)}");
  }

  return myCart;
}

dynamic PaymentMethod(dynamic myCart) {
    print("""What is the payment method:
    [1] Cash
    [2] Credit Card
    [3] Debit Card
    [4] PIX
    """);

    int method = 0;
  try {
    method = int.parse(stdin.readLineSync()!);
  } on FormatException {
    print("Select a valid payment method.");
    return;
  }
  
  myCart;

  switch (method) {
    case 1: // Cash
      double finalValue = myCart["total"] - (myCart["total"] * 0.15);
      print("You have to pay R\$ ${finalValue.toStringAsFixed(2)} (15% discount).");
      break;
    case 2: // Credit Card
      double installment = myCart["total"] / 2;
      print("You have to pay 2 installments of R\$ ${installment.toStringAsFixed(2)}. ");
      break;
    case 3: // Debit Card
      double finalValue = myCart["total"] + (myCart["total"] * 0.15);
      print(
          "You have to pay total R\$ ${finalValue.toStringAsFixed(2)} (15% discount).");
      break;
    case 4: // PIX
      print("You chose PIX. Total: R\$ ${myCart["total"].toStringAsFixed(2)} (20% discount)");
      break;
      
    default:
      print("Invalid Option");
  }
}

