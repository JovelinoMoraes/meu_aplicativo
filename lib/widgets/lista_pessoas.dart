import 'package:flutter/material.dart';
import 'package:meu_aplicativo/mock/gerar_pessoas.dart';
import 'package:meu_aplicativo/widgets/pessoa_listtile.dart';

class ListaPessoas extends StatelessWidget {
  const ListaPessoas({super.key});

  @override
  Widget build(BuildContext context) {
    final pessoas = gerarPessoas(20);

    return ListView.builder(
      itemBuilder: (context, index) {
        return PessoaListTile(pessoa: pessoas[index]);
      },
    );
  }
}
