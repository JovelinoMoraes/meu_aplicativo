import 'package:flutter/material.dart';
import '../widgets/pessoa_listtile.dart';
import 'package:meu_aplicativo/models/pessoa.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: false,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("App em Flutter")),
        body: PessoaListTile(
          pessoa: Pessoa(id: 1, nome: "Jovelino", altura: 175, peso: 69),
        ),
      ),
    );
  }
}
