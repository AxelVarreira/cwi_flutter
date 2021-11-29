import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/*
 Aqui sera utilizado o Bloc para buscar em tempo real os pokemons da barra de pesquisa e atualizar a page.
*/

class PokemonsPage extends StatefulWidget {
  static String route = "pokemon-page";

  const PokemonsPage({Key? key}) : super(key: key);

  @override
  State<PokemonsPage> createState() => _PokemonsPageState();
}

class _PokemonsPageState extends State<PokemonsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
      child: Column(
        children: <Widget>[
          const Text("Pokemon"),
          const TextField(),
          // ListView.builder(itemBuilder: itemBuilder),
          const Spacer(),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 95,
            decoration: const BoxDecoration(color: Colors.green),
          )
        ],
      ),
    )));
  }
}
