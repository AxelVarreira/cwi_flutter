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
        textTheme: const TextTheme(
            headline4: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.italic,
                color: Colors.black),
            bodyText2: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.red,
            ),
            bodyText1: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w400,
            )),
        primarySwatch: Colors.red,
        inputDecorationTheme: const InputDecorationTheme(
          labelStyle: TextStyle(
            color: Color(0xFF9B9B9B),
          ),
        ),
        buttonTheme: const ButtonThemeData(buttonColor: Colors.amber),
        backgroundColor: Colors.white,
      ),
      initialRoute: 'register',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
