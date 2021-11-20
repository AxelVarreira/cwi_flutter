import 'package:exerciciosimpleform/router_generator.dart';
import 'package:flutter/material.dart';

/*
* OBS: Ta tudo uma bagunca porque eu estou fazendo correndo devido a faculdade.
* foi mal :3
*
* Vejo que varias partes do codigo poderiam ser componentizadas e reutilizadas
* Porem, nao to tendo tempo pra isso, foi mal pessoal
* */

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: Colors.white,
      ),
      initialRoute: 'register',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
