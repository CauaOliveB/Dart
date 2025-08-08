import "dart:io";

void main(){
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

  stdout.write("What is your CPF:");
  dynamic? cpf = stdin.readLineSync();

  do{
    stdout.write("Insert the name of a product you want to buy:");
  dynamic? productName = stdin.readLineSync();

  stdout.write("Insert the price of a product you want to buy:");
  dynamic? producPrice = stdin.readLineSync();

  dynamic productNamePrice = ("[$productName] - BRL $producPrice.");

  print("""You wish to include more itens?
  
    [1] Yes
    [2] No

  """);
  moreItems = int.parse(stdin.readLineSync()!);

  } while (moreItems == 1);
    
  


  switch (moreItems){
    case 1 :
    while (moreItems == 1) {
        stdout.write("Insert the name of a product you want to buy:");
        dynamic? productName = stdin.readLineSync();

        stdout.write("Insert the price of a product you want to buy:");
        dynamic? producPrice = stdin.readLineSync();

        dynamic productNamePrice = ("[$productName] - BRL $producPrice.");

        
    }

  }
  
  

  
}