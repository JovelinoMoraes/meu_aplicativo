import 'package:flutter/material.dart';
import 'package:meu_aplicativo/routes/routes.dart';
import 'package:meu_aplicativo/pages/home_page.dart';
import 'package:meu_aplicativo/pages/nova_pagina.dart';

Map<String, WidgetBuilder> routes = {
  Routes.initialRoute: (BuildContext context) => HomePage(),
  Routes.novaPagina: (BuildContext context) => NovaPagina(),
};
