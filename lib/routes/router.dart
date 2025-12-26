import 'package:flutter/material.dart';
import 'package:meu_aplicativo/routes/routes.dart';
import 'package:meu_aplicativo/pages/home_page.dart';
import 'package:meu_aplicativo/pages/criar_pessoa_page.dart';

Map<String, WidgetBuilder> routes = {
  Routes.initialRoute: (BuildContext context) => HomePage(),
  Routes.novaPagina: (BuildContext context) => CriarPessoaPage(),
};
