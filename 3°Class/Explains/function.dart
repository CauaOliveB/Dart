import "dart:io";

void main() {
  // int valordafuncao = soma(30,50);
  // int valorfinal = valordafuncao *2;
  // print("Este é o valor final $valorfinal");

  print(soma(10,20));

}

//função com parametro e com retorno

dynamic soma(int num1, int num2) {
  int valor = num1 + num2;
  return valor;
}