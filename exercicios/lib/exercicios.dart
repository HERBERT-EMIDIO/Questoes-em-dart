import 'dart:async';
import 'dart:convert';
import 'dart:ffi';
//import 'dart:html';
import 'dart:io';
import 'dart:math';

void exerc1() {
  print(
      "1. Devido a uma frente fria, as pessoas ficaram curiosas sobre a temperatura e justamente surgiu a necessidade de comparar a temperatura de diferentes regiões no mundo. Mas nem todosusam a mesma escala, sendo assim crie um programa que converta a medida de uma temperatura de Fahrenheint para Celsius (limite a saída em duas casas decimais).");
  print(" ");

  stdout.write("Informe a temperatura em Fahrenheit(F): ");
  double tempFahre = double.parse(stdin.readLineSync(encoding: utf8)!);

  double cel = (5 * (tempFahre - 32)) / 9;

  print(
      "A temperatura ${tempFahre.toStringAsFixed(2)}°F em Celsius é aproximadamente: ${cel.toStringAsFixed(2)}C°.");
  print("FIM!");
}

//============================================================================//
void exerc2() {
  print(
      "2. Receba um nome completo e dê boas vindas citando apenas o primeiro nome dele.");
  print(" ");

  stdout.write("Digite seu nome completo: ");
  String? nome = stdin.readLineSync();
  if (nome != null) {
    print("Seja bem vindo(a) ${nome.split(" ")[0]}!");
    print("FIM!");
  }
}

//============================================================================//
void exerc3() {
  print(
      "3. Em um dado sistema de E-Commerce foi solicitado uma funcionalidade para pesquisar produtos por tags, a fim de facilitar que os usuários encontrem o que procuram. Na tela de visualização do produto vamos exibir as tags de forma separada. Para início você deve permitir que seja possível cadastrar as tags, elas serão cadastradas juntas estando separadas por vírgula(,). Para garantir que foi tudo okay, exiba o total de tags informadas.");
  print(" ");

  stdout.write("Informe as tags do produto:");
  List<String> tagsProdut = stdin.readLineSync()!.trim().split(',');

  print("Total de tags: ${tagsProdut.length}");
  print("FIM!");
}

//============================================================================//
void exerc4() {
  print(
      "4. Crie um programa que receba a idade do usuário e diga se ele é demaior ou não.");
  print(" ");
  print("Verificador de Idade");

  stdout.write("Informe sua idade:");
  int idade = int.parse(stdin.readLineSync()!);

  if (idade >= 18) {
    print("Você é maior de idade!");
  } else {
    print("Você é menor de idade!");
  }
  print("FIM!");
}

//============================================================================//
void exerc5() {
  print(
      "5. O estudante Carlos está querendo saber se ele foi aprovado ou não. Sabendo que a nota necessária para ser aprovado é que seja maior ou igual a 7, crie um programa onde Carlos pode colocar uma nota e o programa exiba se foi Aprovado ou Reprovado.(Use operador ternário).");
  print(" ");

  stdout.write("Informe sua nota: ");
  double nota = double.parse(stdin.readLineSync()!);

  if (nota >= 7) {
    print("Aprovado");
  } else {
    print("Reprovado");
  }
  print("FIM!");
}

//============================================================================//
void exerc6() {
  print(
      "6. Um atendente precisa tem um sistema que traz o valores dos produtos,ele está precisando saber sempre qual o valor mais caro entre dois produtos. Para prototipar a solução crie um programa que receba dois valores e exiba o valor do mais caro. Nota: O valor deve sair formatadocomo RS XXX,XX. O Valor de entrada é no máximo 999.99 e o mínimo 0.01.");
  print(" ");

  stdout.write("Informe o valor do produto 1: ");
  double produto1 = double.parse(stdin.readLineSync()!);

  stdout.write("Informe o valor do produto 2: ");
  double produto2 = double.parse(stdin.readLineSync()!);

  if (produto1 > produto2) {
    print("R\$ ${produto1.toStringAsFixed(2)}");
  } else {
    print("R\$ ${produto2.toStringAsFixed(2)}");
  }
  print("FIM!");
}

//============================================================================//
void exerc7() {
  print(
      "7. Sabendo-se que os níveis considerados normais de glicose no organismo variam de 70 a 110 mg/dl, desenvolva um programa que receba o valor do nível de glicose no sangue de uma pessoa e classifique em: Hipoglicemia (quando menor que 70), Normal (quando menor ou igual a 110, mas superior ou igual a 70) e Hiperglicemia (quando superior a 110).");
  print(" ");

  stdout.write("Informe o nível de glicose: ");
  int glicose = int.parse(stdin.readLineSync()!);

  if (glicose < 70) {
    print("Hipoglicemia");
  } else if (glicose >= 70 && glicose <= 110) {
    print("Normal");
  } else {
    print("Hiperglicemia");
  }

  print("FIM!");
}

//============================================================================//
void exerc8() {
  print(
      "8. Crie um programa que receba o número do mês (1 à 12) e imprima o nome do mês (Nota: caso o número informado esteja fora do intervalo, exiba a mensagem “Mês desconhecido”).");
  print(" ");

  stdout.write("Informe o número do mês: ");
  int mes = int.parse(stdin.readLineSync()!);

  switch (mes) {
    case 1:
      print("Janeiro");
      break;
    case 2:
      print("Fevereiro");
      break;
    case 3:
      print("Março");
      break;

    case 4:
      print("Abril");
      break;

    case 5:
      print("Maio");
      break;

    case 6:
      print("Junho");
      break;

    case 7:
      print("Julho");
      break;

    case 8:
      print("Agosto");
      break;

    case 9:
      print("Setembro");
      break;

    case 10:
      print("Outubro");
      break;

    case 11:
      print("Novembro");
      break;

    case 12:
      print("Dezembro");
      break;

    default:
      print("Mês desconhecido. Digite um número entre 1 e 12");
  }
  print("FIM!");
}

//============================================================================//
void exerc9() {
  print(
      "9. Maria está querendo ir para praia, mas a mãe disse que ela só vai com as seguintes condições: Se tiver protetor solar, for fim de semana e não estiver chovendo. Faça um programa que ajude a Maria a descobrir se ela irá à praia ou não.");
  print("");

  stdout.write("Tem protetor solar? (s/n): ");
  String protetorSol = stdin.readLineSync()!;

  stdout.write("É fim de semana? (s/n): ");
  String fimDeSemana = stdin.readLineSync()!;

  stdout.write("Está chuvendo? (s/n): ");
  String chuva = stdin.readLineSync()!;

  if (protetorSol == 's' && fimDeSemana == 's' && chuva == "n") {
    print("Vá para praia!");
  } else {
    print("Triste o fim!");
  }
  print("FIM!");
}

//============================================================================//
void exerc10() {
  print(
      "10. Crie um programa que receba um número inteiro positivo, e mostre todos os números pares antes dele.");
  print(" ");

  print("======================");
  print("Descubra os Pares");

  stdout.write("Informe um número inteiro positivo: ");
  int numero = int.parse(stdin.readLineSync()!);

  for (var i = 1; i < numero; i++) {
    if (i % 2 == 0) {
      stdout.write(" ${i} ");
    }
  }

  print("\n FIM!");
}

//============================================================================//
void exerc11() {
  print(
      "11. Uma escola precisa calcular a média das notas de várias turmas, no entanto cada uma tem uma quantidade diferente de alunos. Crie um programa onde se informe o total de alunos e depois solicite as notas de cada aluno. No final, exiba a média da turma.");
  print("");

  stdout.write("Informe o total de alunos: ");
  double totalAlunos = double.parse(stdin.readLineSync()!);
  double totalNotas = 0;

  for (int i = 0; i < totalAlunos; i++) {
    stdout.write("Informe a nota do aluno ${i + 1}: ");
    double notaAluno = double.parse(stdin.readLineSync()!);
    totalNotas += notaAluno;
  }

  print("A média da turma é: ${(totalNotas / totalAlunos).toStringAsFixed(2)}");
  print("FIM!");
}

//============================================================================//
void exerc12() {
  print(
      "12. O fatorial de um número inteiro e positivo “n”, representado por “n!” (lê-se:n fatorial) é obtido a partir da multiplicação de todos os seus antecessores até o número um, cuja expressão genérica é n! = n * (n – 1) * (n – 2) * (n – 3)... 2,1. Crie um programa que receba um número inteiro positivo e imprima a sequência de valores com seu resultado.");
  print("");

  stdout.write("Informe um número que quer calcular o fatorial: ");

  int numFatorial = int.parse(stdin.readLineSync()!);
  int fator = 1;

  for (int i = numFatorial; i >= 1; i--) {
    fator *= i;
    stdout.write(" $i X ");
  }
  print(" = $fator");

  print("FIM!");
}

//============================================================================//
void exerc13() {
  print(
      "13. Faça um programa que receba a idade de N pessoas, caso a pessoa queira informar que terminou ela digitará -1 e o programa informará o total de pessoas com idade superior ou igual a 18, e o total de pessoas com idade inferior a 18.");
  print(" ");

  bool condicao = true;
  int deMaior = 0;
  int deMenor = 0;

  while (condicao) {
    stdout.write("Informe a idade da pessoa: ");
    int idade = int.parse(stdin.readLineSync()!);
    switch (idade) {
      case -1:
        break;
      default:
        if (idade >= 18) {
          deMaior++;
        } else {
          deMenor++;
        }
        break;
    }
    print("Total maior de idade: $deMaior");
    print("Total menor de idade: $deMenor");
    print("FIM!");
  }
}

//=============================================================================//
void exerc14() {
  print(
      "14 - Faça um programa que simule uma calculadora, tendo as seguintes operações: Soma, Subtração, Multiplicação, Divisão e Resto. O usuário poderá informar qual operação quer fazer e após isso digitará dois números positivos. O programa deverá exibir o resultado conforme a operação selecionada. Para sair da calculadora o usuário deve digitar 0.");
  print("");

  print("CALCULADORA EM DART");

  print("1 - Somar");
  print("2 - Subtrair");
  print("3 - Multiplicar");
  print("4 - Dividir");
  print("5 - Resto");
  print("0 - sair");

  stdout.write("Escolha uma opção: ");
  int opcao = int.parse(stdin.readLineSync()!);

  switch (opcao) {
    case 1:
      stdout.write(
          "\nOK!!  \nA CALCULADORA escolhida foi (ADIÇÂO). \nIforme, agora, a TABUADA que deseja: ");
      int tabuada = int.parse(stdin.readLineSync()!);
      print(
          "\nSua opção foi $tabuada , iremos mostrar a tabuada de $tabuada!\n");
      for (int i = 0; i < 11; i++) {
        print("$tabuada + $i = ${tabuada + i}");
      }
      print("FIM!!");
      break;

    case 2:
      stdout.write(
          "\nOK!!  \nA CALCULADORA escolhida foi (SUBTRAÇÃO). \nIforme, agora, a TABUADA que deseja: ");
      int tabuada = int.parse(stdin.readLineSync()!);
      print(
          "\nSua opção foi $tabuada , iremos mostrar a tabuada de $tabuada!\n");
      for (int i = 0; i < 11; i++) {
        print("$tabuada - $i = ${tabuada - i}");
      }
      print("FIM!!");

      break;

    case 3:
      stdout.write(
          "\nOK!!  \nA CALCULADORA escolhida foi (MULTIPLICAÇÃO). \nIforme, agora, a TABUADA que deseja: ");
      int tabuada = int.parse(stdin.readLineSync()!);
      print(
          "\nSua opção foi $tabuada , iremos mostrar a tabuada de $tabuada!\n");
      for (int i = 0; i < 11; i++) {
        print("$tabuada X $i = ${tabuada * i}");
      }
      print("FIM!!");
      break;

    case 4:
      stdout.write(
          "\nOK!!  \nA CALCULADORA escolhida foi (DIVISÃO). \nIforme, agora, a TABUADA que deseja: ");
      int tabuada = int.parse(stdin.readLineSync()!);
      print(
          "\nSua opção foi $tabuada , iremos mostrar a tabuada de $tabuada!\n");
      for (int i = 0; i < 11; i++) {
        print("$tabuada ÷ $i = ${(tabuada / i).toStringAsFixed(2)}");
      }
      print("FIM!!");
      break;

    case 5:
      stdout.write(
          "\nOK!!  \nA CALCULADORA escolhida foi (RESTO DE UMA DIVISÃO). \nIforme, agora, a TABUADA que deseja: ");
      double tabuada = double.parse(stdin.readLineSync()!);
      print(
          "\nSua opção foi $tabuada , iremos mostrar a tabuada de $tabuada!\n");
      for (int i = 0; i < 11; i++) {
        print("$tabuada ÷ $i = ${(tabuada % i).toStringAsFixed(2)}");
      }
      print("FIM!!");
      break;

    case 0:
      print("\nOK!! Sua opção foi Sair do Programa! \n Obrigado!");
      break;

    default:
      print("Opção Desconhecida!");
  }
}
