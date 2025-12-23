import 'package:flutter/material.dart';
import 'package:meu_aplicativo/models/pessoa.dart';
import 'package:meu_aplicativo/extensions/extensions.dart';

class PessoaDialog extends StatelessWidget {
  final Pessoa pessoa;
  const PessoaDialog({super.key, required this.pessoa});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: IntrinsicHeight(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Id: ${pessoa.id}"),
            Text("Nome: ${pessoa.nome}"),
            Text("Peso: ${pessoa.peso.paraPeso()}"),
            Text("Altura: ${pessoa.altura.paraAltura()}"),
          ],
        ),
      ),
    );
  }
}
