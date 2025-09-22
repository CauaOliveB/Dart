import 'dart:io';

class Animal {
  String nome = "";
  int idade = 0;

    void fazerSom() {
      print("Som genérico...");
    }

  Animal({required this.nome,required this.idade});
}

class Cachorro extends Animal {
  String? raca;

  Cachorro({required String nome, required int idade, this.raca}) : super(nome: nome, idade: idade);

  @override
  void fazerSom() {
    print("Au Au!");
  }

}

class Gato extends Animal{
  String? cor = "";

  Gato({required String nome, required int idade, this.cor}) : super(nome: nome, idade: idade);
 
 @override
  void fazerSom() {
    print("Miau!");
  }

}

void main (){

  Cachorro dog1 = Cachorro(nome: "Duque", idade: 2, raca: "Doberman");
   print("${dog1.nome}, ${dog1.idade} anos, Raça: ${dog1.raca}");
  dog1.fazerSom();

  Gato gato1 = Gato(nome: "Senhorita", idade: 3, cor: "Branca");
   print("${gato1.nome}, ${gato1.idade} anos, Raça: ${gato1.cor}");
  dog1.fazerSom();
  
  }
