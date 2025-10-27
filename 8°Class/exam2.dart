import 'dart:ffi';
import 'dart:io';

class Animal {
  String specie;
  int age;
  String alimentation;
  String family;
  String size;

  Animal(this.specie, this.age, this.alimentation, this.family, this.size);

  void emitirSom() {
    print("O animal faz um som");
  }
}

class Ave extends Animal {
  Ave(String specie, int age, String alimentation, String family, String size)
      : super(specie, age, alimentation, family, size);

  @override
  void emitirSom() {
    print("A ave canta");
  }
}

class Mamifero extends Animal {
  Mamifero(String specie, int age, String alimentation, String family, String size)
      : super(specie, age, alimentation, family, size);

  @override
  void emitirSom() {
    print("O mamífero ruge");
  }
}

class CRUDZoo{
  List<Map<String, Int>> AnimalsList = [RedPanda,BengalTiger,Harpy];

  Animal RedPanda = Animal("Red-Panda", 2, "Omnivore", "Ailuridae", "small size");
  Animal BengalTiger = Animal("Bengal-Tiger", 3, "Carnivore", "Ailuridae", "large size");
  Animal Harpy = Animal("Harpy", 1, "Omnivore", "Accipitridae", "medium size");



  void ReadAnimals(){

    for( var i = 0; i < AnimalsList.length; i++ ) {
      print("$i - Species: ${AnimalsList[i]["species"]} | Alimentation : ${AnimalsList[i]["alimentation"]} | Age : ${AnimalsList[i]["age"]} | Family : ${AnimalsList[i]["family"]} | Size : ${AnimalsList[i]["size"]}");
    };

  }

  void FilterReadAnimals(){
  
    if FilterReadAnimals == Size = Animal.where((a) => a.size == "small size").toList() || Animal.where((a) => a.size == "medium size").toList() || Animal.where((a) => a.size == "large size").toList() {
      print(" Animal : $AnimalsList[specie] - []")
    }

   
  }

  void CreateAnimal(){

  }

  void UpdateAnimal(){

  }

  void DeleteAnimal(){

  }

}

void main() {
print("Welcome to ZOOMANGE");
print("\n");

  print("===== MENU =====");
  
  print("""

      [1] Cadastrar Novos Animais
      [2] Listar Animais
      [3] Editar Dados de Animais Existentes
      [4] Remover um Animal
      [5] Buscar Animal(s)

  """);

  int choice = int.parse(stdin.readLineSync()!);

  var Controller = CRUDZoo(); // cria um objeto da classe CRUDZoo

  if (choice == 1) {
    Controller.CreateAnimal();   // chama o método
  }

  else if (choice == 2) {
    Controller.ReadAnimals();
  }

  else if (choice == 3) {
    Controller.UpdateAnimal();
  }

  else if (choice == 4) {
    Controller.DeleteAnimal();
  }

  else if (choice == 5) {
    Controller.FilterReadAnimals();
  }

  else{
    print("Obrigado por visitar o ZOOMANGE, volte sempre!");
  }

}
  
