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
 Map<String, String> data;
 
    do{
      
       data = CustomerRegister();

      if (data["name"]!.trim().isEmpty || data["cpf"]!.trim().isEmpty) {
      print("Name and CPF cannot be empty. Please try again.");
      }

    }while(data["name"]!.trim().isEmpty || data["cpf"]!.trim().isEmpty);

return "Name: ${data["name"]} | CPF: ${data["cpf"]}";
}

//==============Cart==============
List<Map<String, dynamic>> products = [
  {'name': 'Antacid', 'price': 8.00, 'stock': 8},
  {'name': 'Diapers', 'price': 16.00, 'stock': 36},
  {'name': 'Antihistamine', 'price': 22.00, 'stock': 16},
  {'name': 'Burn Ointment', 'price': 17.00, 'stock': 13}
];

void showProducts() {
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
    showProducts();

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

dynamic paymentMethod() {
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

  switch (method) {
    case 1: // Cash
      double finalValue = item["total"] - (item["total"] * 0.15);
      print("You have to pay R\$ ${finalValue.toStringAsFixed(2)} (15% discount).");
      break;
    case 2: // Credit Card
      double installment = item["total"] / 2;
      print("You have to pay 2 installments of R\$ ${installment.toStringAsFixed(2)}. ");
      break;
    case 3: // Debit Card
      double finalValue = item["total"] + (item["total"] * 0.15);
      print(
          "You have to pay total R\$ ${finalValue.toStringAsFixed(2)} (15% discount).");
      break;
    case 4: // PIX
      print("You chose PIX. Total: R\$ ${item["total"].toStringAsFixed(2)} (20% discount)");
      break;
      
    default:
      print("Invalid Option");
  }
}

