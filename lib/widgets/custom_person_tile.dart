import 'package:flutter/material.dart';
import 'package:meu_aplicativo/models/pessoa.dart';
import 'package:meu_aplicativo/widgets/custom_tile.dart';

class CustomPersonTile extends StatelessWidget {
  final Pessoa pessoa;
  const CustomPersonTile({super.key, required this.pessoa});

  @override
  Widget build(BuildContext context) {
    return CustomTile(
      color: Colors.lightBlue,
      leading: Text("id: ${pessoa.id}"),
      title: Text("Nome: ${pessoa.nome}", style: TextStyle(fontSize: 16)),
      subTitle: Text("Peso: ${pessoa.peso.toStringAsFixed(1)} kg"),
      trailing: Text("Altura: ${pessoa.altura} cm"),
    );
  }
}
