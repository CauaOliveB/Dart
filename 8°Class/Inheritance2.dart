import 'dart:io';

class Conta {
  String nome_titular = "";
  double saldoInicial = 0;
  double? investimento = 0;

  Conta({required this.nome_titular, required this.saldoInicial, this.investimento});

  void mostrarDados() {
    print("Titular: $nome_titular");
    print("Saldo Inicial: R\$ ${saldoInicial.toStringAsFixed(2)}");
    print("Investimento: R\$ ${investimento?.toStringAsFixed(2) ?? "0.00"}");
  }
}

class ContaCorrente extends Conta {
  double? limiteChequeEspecial;

  ContaCorrente({required String nome_titular, required double saldoInicial, double? investimento,  this.limiteChequeEspecial}) : 
  super(nome_titular: nome_titular, saldoInicial: saldoInicial, investimento: investimento);

  void mostrarContaCorrente (){
    super.mostrarDados();
  }
}

class ContaPoupanca extends Conta {
  int taxaRendimento = 0;

  ContaPoupanca({required String nome_titular, required double saldoInicial, double? investimento, required this.taxaRendimento}) : 
  super(nome_titular: nome_titular, saldoInicial: saldoInicial, investimento: investimento);

  void saldoAtual (){
    print("Titular: $nome_titular");
    print("Saldo Inicial: R\$ ${saldoInicial.toStringAsFixed(2)}");
    print("Investimento: R\$ ${investimento?.toStringAsFixed(2) ?? "0.00"}");
    print("==================================================================");
    print("Saldo atual: R\$ ${saldoInicial * (taxaRendimento /100) + saldoInicial}");
  }
}


void main(){

  ContaCorrente cc1 = ContaCorrente(nome_titular: "Márcio", saldoInicial:500, limiteChequeEspecial: 100);
  cc1.mostrarContaCorrente();

  print("__________________________________________________");

  ContaPoupanca cp1 = ContaPoupanca(nome_titular: "Andressa", saldoInicial: 800, taxaRendimento: 2);
  cp1.saldoAtual();
}