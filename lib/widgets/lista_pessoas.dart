import 'package:flutter/material.dart';
import 'package:meu_aplicativo/mock/gerar_pessoas.dart';
import 'package:meu_aplicativo/widgets/custom_person_tile.dart';

class ListaPessoas extends StatelessWidget {
  const ListaPessoas({super.key});

  @override
  Widget build(BuildContext context) {
    final pessoas = gerarPessoas(20);

    return ListView.builder(
      itemCount: pessoas.length,
      itemBuilder: (context, index) {
        return CustomPersonTile(pessoa: pessoas[index]);
      },
    );
  }
}
