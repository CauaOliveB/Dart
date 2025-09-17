import 'dart:io';

class Animal{
  String name = "";
  int age = 0;
  String alimentation = "";
  String family = "";

  Animal(this.name,this.age,this.alimentation,this.family);
}


void main() {
print("Welcome to ZOOMANGE");

  Animal RedPanda = Animal("Red-Panda", 2, "Omnivore", "Ailuridae");
  Animal BengalTiger = Animal("Benga-lTiger", 3, "Carnivore", "Ailuridae");
  Animal Harpy = Animal("Harpy", 1, "Omnivore", "Accipitridae");

}

