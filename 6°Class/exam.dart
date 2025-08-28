import "dart:io";

void main() {

  print("""Hello, good morning!
        Welcome to PharmaHelp""");


};

String customer() {
  print("Please enter your name:");
  String customerName = stdin.readLineSync()!;
  print("Please enter your CPF:");
  String document = stdin.readLineSync()!;
}


dynamic cart() {
  List<Map<String, dynamic>> products = 
  [{'name' : 'Antacid', 'price' : [8.00], 'stock' : [8]}, 
  {'name' : 'Diapers', 'price' : [16.00], 'stock' : [36]}, 
  {'name' : 'Antihistamine', 'price' : [22.00],'stock' : [16]}, 
  {'name' : 'Burn Ointment', 'price' : [17.00] : 'stock' : [13]}];

  List <String> myCart = [];
  
  for(int i=0; i< products.length; i++){
    print("$i ; ${products[i]["name"], ${products[i]["price"]}}");
  }
  
  print("Enter the product number:");
  String option = int.parse(stdin.readLineSync()!);

  switch(option) {
      case 0:
        myCart.add(products[0]);  
        myCart[0]['stock'] -=1
        break;
      case 1:
        myCart.add(products[1])
        myCart[1 ]['stock'] -=1
        break;
      case 2:
        myCart.add(products[2])
        myCart[2]['stock'] -=1
        break;
      case 3:
        myCart.add(products[3])
        myCart[3]['stock'] -=1
        break;
      
  }

  print("""You wish to include more items?
    [1] Yes
    [2] No """);

  moreItems = int.parse(stdin.readLineSync()!);

  while (moreItems == 1);
    print("Enter the product number:");
    String option = int.parse(stdin.readLineSync()!);

    if (moreItems == 2) {
    print("\nProducts:");

    double total = 0;
    int index = 0;
    while (index < myCart.length) {
      print("- ${myCart[index]["name"]}: R\$ ${myCart[index]["price"]}");
      total += myCart[index]["price"];
      index++;
    }
  }

}

dynamic paymentMethod() {

}

