import "dart:io";

void main() {
  print("""HELLO, WELCOME TO DANDARA MARKET.
  
  PRODUCTS
  [1] Sugar
  [2] Meat
  [3] Bread
  [4] Rice
  [5] Beans
  [6] Soy Oil
  [7] Chocolate
  \n
  """);

  int moreItems = 0;
  List<Map<String, dynamic>> myCart = [];

  stdout.write("What is your CPF: ");
  String cpf = stdin.readLineSync()!;

  do {
    stdout.write("Insert the name of a product you want to buy: ");
    String productName = stdin.readLineSync()!;

    stdout.write("Insert the price of a product you want to buy: ");
    double productPrice = double.parse(stdin.readLineSync()!);

    myCart.add({"name": productName, "price": productPrice});

    print("""
You wish to include more items?
    [1] Yes
    [2] No
""");
    moreItems = int.parse(stdin.readLineSync()!);

  } while (moreItems == 1);

  if (moreItems == 2) {
    print("\nProducts:");

    double total = 0;
    int index = 0;
    while (index < myCart.length) {
      print("- ${myCart[index]["name"]}: R\$ ${myCart[index]["price"]}");
      total += myCart[index]["price"];
      index++;
    }
    print("TOTAL: R\$ ${total.toStringAsFixed(2)}\n");

    print("""Choose your option of payment:
    [1] Cash Payment - (10% discounts)
    [2] Pay in installments - (10% interest)
    [3] To pay in the next time at buy - (15% interest)
    """);

    int paymentMethod = int.parse(stdin.readLineSync()!);

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

      default:
        print("Invalid Option");
    }
  }
}
