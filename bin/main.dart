import 'dart:io';

/*Criar um sistema de lista de cadastro de nomes*/

void limparTerminal(){
  if (Platform.isWindows) {
    Process.runSync("cls", [], runInShell: true);
  } else {
    print("\x1B[2J\x1B[0;0H");
  }
}

String? getUserInput(String prompt) {
  print(prompt);
  return stdin.readLineSync();
}

void main(){
  List<String> listNames = [];
  print("Ola este e um sistema de cadastro de nome em lista!!");
  print("----------");

  while (true) {
    print("Voce deseja digitar nomes para lista ?\nYes ou No");
    String? tipo = stdin.readLineSync()?.toUpperCase();

    if (tipo == 'NO') {
      print("Cadstro finalizado.");
      break;
    } else if (tipo == 'YES') {
      String? name = getUserInput("Digite um nome: ");
      if (name != null && name.isNotEmpty) {
        listNames.add(name);
        print("Nome adicionado, com sucesso!");
        limparTerminal();
      } else {
        print("Por favor insira um nome valido!");
      }
    } else {
      print("Resposta invalida. Por favor, digite 'YES' ou 'NO'.");
    }
  }
  print("Lista de nomes cadastrdos:\n$listNames");
}


