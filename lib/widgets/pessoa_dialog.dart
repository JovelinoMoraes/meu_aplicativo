import 'package:flutter/material.dart';
import 'package:meu_aplicativo/models/pessoa.dart';
import 'package:meu_aplicativo/extensions/extensions.dart';
import 'package:meu_aplicativo/widgets/default_container_dialog.dart';

class PessoaDialog extends StatelessWidget {
  final Pessoa pessoa;
  const PessoaDialog({super.key, required this.pessoa});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Fechar", style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ],
      content: IntrinsicHeight(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Informações do usuario"),
            SizedBox(height: 8),
            DefaultDialogContainer(child: Text("Id: ${pessoa.id}")),
            DefaultDialogContainer(child: Text("Nome: ${pessoa.nome}")),
            DefaultDialogContainer(
              child: Text("Peso: ${pessoa.peso.paraPeso()}"),
            ),
            DefaultDialogContainer(
              child: Text("Altura: ${pessoa.altura.paraAltura()}"),
            ),
          ],
        ),
      ),
    );
  }
}
