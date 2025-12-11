import 'dart:math';
import 'package:faker/faker.dart';
import 'package:meu_aplicativo/models/pessoa.dart';

List<Pessoa> gerarPessoas(int quantidade) {
  final faker = Faker();
  return List.generate(
    quantidade,
    (index) => Pessoa(
      id: index,
      nome: faker.person.name(),
      altura: Random().nextInt(200),
      peso: Random().nextDouble(),
    ),
  );
}
