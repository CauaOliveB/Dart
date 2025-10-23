import 'dart:io';

class Animal{
  String specie = "";
  int age = 0;
  String alimentation = "";
  String family = "";
  String size = "";

  Animal(this.specie,this.age,this.alimentation,this.family, this.size);
}


void main() {
print("Welcome to ZOOMANGE");
print("\n");

  CRUDAnimals();
  


}


void CRUDAnimals(){

  print("===== MENU =====");
  
  print("""

      [1] Cadastrar Novos Animais
      [2] Listar Animais
      [3] Editar Dados de Animais Existentes
      [4] Remover um Animal

  """);

  int choice = int.parse(stdin.readLineSync()!);

  if (choice == 1) {
    CreateAnimals();
  }

  else if (choice == 2) {

  }

  else if (choice == 3) {
    UpdateAnimals();
  }

  else if (choice == 4) {
    DeleteAnimals();
  }
}


void CreateAnimals(){

}

void ListAnimals() {

  Animal RedPanda = Animal("Red-Panda", 2, "Omnivore", "Ailuridae", "small size");
  Animal BengalTiger = Animal("Benga-lTiger", 3, "Carnivore", "Ailuridae", "large size");
  Animal Harpy = Animal("Harpy", 1, "Omnivore", "Accipitridae", "medium size");

  List<dynamic> AnimalsList = [RedPanda,BengalTiger,Harpy];

  for( var i = 0; i < AnimalsList.length; i++ ) {
    print("$i - Species: ${AnimalsList[i]["species"]} | Alimentation : ${AnimalsList[i]["alimentation"]} | Age : ${AnimalsList[i]["age"]} | Family : ${AnimalsList[i]["family"]} | Size : ${AnimalsList[i]["size"]}");
  };
}

void UpdateAnimals(){

}

void DeleteAnimals(){

}


