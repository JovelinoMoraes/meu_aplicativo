import '../../models/pessoa.dart';
import 'package:flutter/material.dart';
import 'package:meu_aplicativo/extensions/extensions.dart';

class PessoaListTile extends StatelessWidget {
  final Pessoa pessoa;
  const PessoaListTile({super.key, required this.pessoa});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.green,
      child: ListTile(
        leading: Text("id: ${pessoa.id}"),
        title: Text("Nome: ${pessoa.nome}"),
        subtitle: Text("Peso: ${pessoa.peso.paraPeso()}"),
        trailing: Text("Altura: ${pessoa.altura.paraAltura()}"),
      ),
    );
  }
}
