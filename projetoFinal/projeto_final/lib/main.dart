import 'package:flutter/material.dart';
import 'package:projeto_final/presenter/pages/pokemon/pokemon_detail.page.dart';
import 'package:projeto_final/presenter/pages/pokemon/pokemons.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: PokemonDetailPage.route,
      routes: {
        PokemonsPage.route: (_) => const PokemonsPage(),
        PokemonDetailPage.route: (_) => const PokemonDetailPage(),
      },
    );
  }
}
