import "dart:io";

void main() {

  print("""Hello, good morning!
        Welcome to PharmaHelp""");

  Customer();
}


String? Customer() {

  print("Please enter your name:");
  String? customerName = stdin.readLineSync();

  print("Please enter your CPF:");
  String? document = stdin.readLineSync();

    do{
      try {
      String? customerName = stdin.readLineSync();
    }  on FormatException{
      print("Customer name cannot be empty, null or have spaces.");
    } catch(e){
      print("Seu erro $e");
    }

    try {
      String? document = stdin.readLineSync();
    } on FormatException{
      print("Document cannot be empty, null or have spaces.");
    }catch(e){
      print("seu erro $e");
    }

    }while(customerName == null || customerName.trim().isEmpty || document == null || document.trim().isEmpty);
}


dynamic Cart() {
  List<Map<String, dynamic>> products = 
  [{'name' : 'Antacid', 'price' : [8.00], 'stock' : [8]}, 
  {'name' : 'Diapers', 'price' : [16.00], 'stock' : [36]}, 
  {'name' : 'Antihistamine', 'price' : [22.00],'stock' : [16]}, 
  {'name' : 'Burn Ointment', 'price' : [17.00], 'stock' : [13]}];

  List <Map<String, dynamic>> myCart = [];
  
  

}
/*
}

  moreItems = int.parse(stdin.readLineSync()!);
;

  switch(option) {
      case 0:
        print("How much" [0] "you want:")
        int quantity = int.parse(stdin.readLineSync()!);
        if (product[0]['stock'] == 0) {

        }
        myCart.add(products[0] =+ quantity);  
        break;
      case 1:
       print("How much" [1]  "you want:");
        int quantity = int.parse(stdin.readLineSync()!);
        myCart.add(products[1] =+ quantity);  
        break;
      case 2:
        print("How much" [2] "you want:")
        int quantity = int.parse(stdin.readLineSync()!);
        myCart.add(products[2] =+ quantity);  
        break;
      case 3:
        print("How much" [3] "you want:")
        int quantity = int.parse(stdin.readLineSync()!);
        myCart.add(products[3] =+ quantity);  
        break;
  }
    if (moreItems == 2) {
    print("\nProducts:");

    double total = 0;

  }
}

dynamic paymentMethod() {
*/


