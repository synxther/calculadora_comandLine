import 'dart:developer';
import 'dart:io';

void main() {
  myCalculator(false);
}

newCalculator() {
  print("Nova operação? Digite 1, para sair digite 2");
  int newOp = int.parse(stdin.readLineSync()!);
  switch (newOp) {
    case 1:
      myCalculator(false);
      break;
    case 2:
      print(Process.runSync("exit", [], runInShell: true).stdout);
      break;
    default:
      print("Comando incorreto");
      newCalculator();
      break;
  }
}

myCalculator(restart) {
  if (restart) {
    print("Valor inválido, por favor, repita a operação");
    print("--------------------------------------------");
    print("\n");
  }
  print("Bem Vindos à calculadora dart por linha de comando!!!");
  print("avisos: caso digite algum valor irregular o processo se repetirá");
  print("\n");
  print("Digite o primeiro numero: ");
  double numeroUm = double.parse(stdin.readLineSync()!);
  print("Digite o segundo numero:");
  double numeroDois = double.parse(stdin.readLineSync()!);
  print(
      "[1] - Adicionar | [2] - Subtrair | [3] - Multiplicação | [4] - Divisão");
  int operador = int.parse(stdin.readLineSync()!);
  double? valor;
  switch (operador) {
    case 1:
      valor = numeroUm + numeroDois;
      break;

    case 2:
      valor = numeroUm - numeroDois;
      break;

    case 3:
      valor = numeroUm * numeroDois;
      break;

    case 4:
      valor = numeroUm / numeroDois;
      break;

    default:
      //dar uma olhada nesse comando dps
      var limpar = print(Process.runSync("clear", [], runInShell: true).stdout);
      myCalculator(true);
      break;
  }
  print("Resultado: $valor");
  newCalculator();
}
