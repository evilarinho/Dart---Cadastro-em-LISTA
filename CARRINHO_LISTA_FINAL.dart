
import 'dart:io';
String text;


main() {

  bool condicao = true;
  List<String> produtos = [];
  int opcao ;

  while (condicao) {
    print("\n| ESCOLHA A OPÇÃO: | \n");
    print("1 - SAIR");
    print("2 - IMPRIMIR");
    print("3 - REMOVER");
    print("4 - ADICIONAR");
    print("");
    stdout.write("==> ");
    opcao = int.parse(stdin.readLineSync());
    print("");
    if (opcao == 1) {
      sair(produtos);
      break;
    } else if (opcao == 2) {
      print("--- IMPRIMINDO ---");
      imprimir(produtos);
    } else if (opcao == 3) {
      print("--- REMOVER ---");
      remover(produtos);
    } else if (opcao == 4) {
      print("--- ADICIONAR ---");
      adicionarAlista(produtos);
    }
  }
}


sair(produtos) {
    print("=== TERMINOU O PROGRAMA ===");
    return;
  }

imprimir(produtos) {
  print("");
  if (produtos.isEmpty) {
    print("++ Lista Vazia ++");
  }else{
    for (var i = 0; i < produtos.length; i++) {
      print("ITEM $i ${produtos[i]}");
     }
  }
}

remover(produtos) {

  print("");

  if (produtos.isNotEmpty) {
    print("QUAL ITEM DA LISTA DESEJA REMOVER");
    imprimir(produtos);

    stdout.write("\n==> ");
    var item = stdin.readLineSync();
    produtos.remove(item);
    return;
  } else {
    print("IMPOSSÍVEL REMOVER\n++ Lista Vazia ++");
  }
}


adicionarAlista(produtos) {

  stdout.write("==> ");
  text = stdin.readLineSync();


  if (produtos.contains(text)) {
    print("O ITEM '${text},' NÃO FOI ADICIONADO A LISTA, POIS JÁ EXISTE.");
    //break;
  } else {
    produtos.add(text);
    print("");
    print("ITENS NA LISTA");
    for (var j = 0; j < produtos.length; j++) {
      print("- $j ${produtos[j]}");
    }
    return;
  }
}





