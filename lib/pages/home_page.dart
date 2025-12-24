import 'package:flutter/material.dart';
import 'package:meu_aplicativo/pages/nova_pagina.dart';
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
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (context) {
                return NovaPagina();
              },
            ),
            (route) => false,
          );
        },
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}
