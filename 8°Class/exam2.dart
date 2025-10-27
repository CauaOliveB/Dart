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
    print("Bird Sing");
  }
}

class Mamifero extends Animal {
  Mamifero(String specie, int age, String alimentation, String family, String size)
      : super(specie, age, alimentation, family, size);

  @override
  void emitirSom() {
    print("mammal roars");
  }
}

class CRUDZoo{

  List<Animal> AnimalsList = [];

  CRUDZoo() {

    AnimalsList.add(Mamifero("Red-Panda", 2, "Omnivore", "Ailuridae", "small size"));
    AnimalsList.add(Mamifero("Bengal-Tiger", 3, "Carnivore", "Ailuridae", "large size"));
    AnimalsList.add(Ave("Harpy", 1, "Omnivore", "Accipitridae", "medium size"));
    AnimalsList.add(Mamifero("Elephant", 15, "Herbivore", "Elephantidae", "large size"));
    AnimalsList.add(Mamifero("Squirrel", 1, "Omnivore", "Sciuridae", "small size"));

  }

  void ReadAnimals(){

    print("\n--- Current Animal List ---");

    if (AnimalsList.isEmpty) {
        print("No animals registered.");
    }
  
    for( var i = 0; i < AnimalsList.length; i++ ) {
      print("$i - Species: ${AnimalsList[i].specie} | Alimentation : ${AnimalsList[i].alimentation} | Age : ${AnimalsList[i].age} | Family : ${AnimalsList[i].family} | Size : ${AnimalsList[i].size}");
    };

  }

  void FilterReadAnimals(){
  
    print("\n--- Filter Animals ---");
    print("[1] By Size (Porte)");
    print("[2] By Alimentation");
    print("[3] By Species (Contém parte do nome)");
    print("[4] By Family");
    print("[5] By Age (Idade exata)");

    stdout.write("Enter your filter choice (1-5): ");
    String? choiceStr = stdin.readLineSync();
    int? choice = int.tryParse(choiceStr ?? '');

    if (choice == null || choice < 1 || choice > 5) {
      print("Invalid option.");
      return;
    }

    stdout.write("Enter the value to filter by: ");
    String filterValue = stdin.readLineSync()?.trim() ?? "";

    if (filterValue.isEmpty) {
      print("Filter value cannot be empty.");
      return;
    }

    List<Animal> filteredList = [];
    String filterType = "";

    switch (choice) {
      case 1: // Size
        filterType = "Size";
        String sizeFilter = filterValue.toLowerCase();
        filteredList = AnimalsList
            .where((a) => a.size.toLowerCase() == sizeFilter)
            .toList();
        break;

      case 2: // Alimentation
        filterType = "Alimentation";
        String alimentationFilter = filterValue.toLowerCase();
        filteredList = AnimalsList
            .where((a) => a.alimentation.toLowerCase() == alimentationFilter)
            .toList();
        break;

      case 3: // Species (Contains)
        filterType = "Species (contains)";
        String specieFilter = filterValue.toLowerCase();
        filteredList = AnimalsList
            .where((a) => a.specie.toLowerCase().contains(specieFilter))
            .toList();
        break;

      case 4: // Family
        filterType = "Family";
        String familyFilter = filterValue.toLowerCase();
        filteredList = AnimalsList
            .where((a) => a.family.toLowerCase() == familyFilter)
            .toList();
        break;

      case 5: // Age
        filterType = "Age";
        int? ageFilter = int.tryParse(filterValue);
        if (ageFilter == null) {
          print("Age must be a valid integer.");
          return;
        }
        filteredList = AnimalsList
            .where((a) => a.age == ageFilter)
            .toList();
        break;
    }

    // Display Results
    if (filteredList.isEmpty) {
      print("\nNo animals found for $filterType: '$filterValue'.");
    } else {
      print("\n--- Animals Found ($filterType: $filterValue) ---");
      for (var i = 0; i < filteredList.length; i++) {
        Animal current = filteredList[i];
        print("$i - Species: ${current.specie} | Alimentation: ${current.alimentation} | Age: ${current.age} | Family: ${current.family} | Size: ${current.size}");
      }
    }
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

      [1] Register New Animals
      [2] List Animals
      [3] Edit Existing Animal Data
      [4] Remove an Animal
      [5] Search for Animal(s)

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
    print("Thank you for visiting ZOOMANGE, come back anytime!");
  }

}
  
