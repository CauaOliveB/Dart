import 'dart:io';

void main(){
  dynamic p = identificacao("Carlos", 23, "Sumaré");
  print(p);
}

dynamic identificacao(String nome, int idade, String mora) {
  dynamic x = "Olá, eu me chamo $nome, tenho $idade anos e moro em $mora";
  return x;
} 