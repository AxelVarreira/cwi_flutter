import 'package:flutter/material.dart';

class PokemonDetailPage extends StatelessWidget {
  static String route = "pokemon-detail-page";

  // Adicionar variaveis dinamicas

  const PokemonDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 600),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: double.maxFinite,
              decoration: const BoxDecoration(color: Colors.green),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 700,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(48),
                  topRight: Radius.circular(48),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 64),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      "Squirtle",
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 550.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: double.maxFinite,
              child: Image.network(
                "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/7.png",
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
