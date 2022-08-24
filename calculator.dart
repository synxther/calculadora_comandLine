import 'dart:developer';
import 'dart:io';

void main() {
  myCalculator();
}

myCalculator() {
  print("Bem Vindos à calculadora dart por linha de comando!!!");
  print("avisos: caso digite algum valor irregular o processo se repetirá");
  print("\n");
  print("Digite um numero: ");
  int numeroUm = int.parse(stdin.readLineSync()!);
  print("digite um novo numero:");
  int numeroDois = int.parse(stdin.readLineSync()!);
  print("1-adc 2-sub 3-mult 4-div");
  int operador = int.parse(stdin.readLineSync()!);
  int valor;
  switch (operador) {
    case 1:
      int valor = numeroUm + numeroDois;
      print(valor);
      break;

    case 2:
      int valor = numeroUm - numeroDois;
      print(valor);
      break;

    case 3:
      int valor = numeroUm * numeroDois;
      print(valor);
      break;

    case 4:
      double valor = numeroUm / numeroDois;
      break;

    default:
      //dar uma olhada nesse comando dps
      var limpar = print(Process.runSync("clear", [], runInShell: true).stdout);
      myCalculator();
      break;
  }
}
