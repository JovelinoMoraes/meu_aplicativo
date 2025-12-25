import 'package:flutter/material.dart';
import 'package:meu_aplicativo/routes/routes.dart';
import 'package:meu_aplicativo/extensions/extensions.dart';
import 'package:meu_aplicativo/widgets/lista_pessoas.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("App em Flutter")),
      body: ListaPessoas(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pushNamed(Routes.novaPagina);
        },
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}
