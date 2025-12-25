import 'package:flutter/material.dart';
import 'package:meu_aplicativo/extensions/extensions.dart';

class NovaPagina extends StatelessWidget {
  const NovaPagina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Nova Pagina")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.pop();
          },
          child: Text("Voltar"),
        ),
      ),
    );
  }
}
