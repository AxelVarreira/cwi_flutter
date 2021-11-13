import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          flex: 1,
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.purple[100],
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.purple[200],
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.purple[300],
                ),
              )
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Row(children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.red[100],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.red[200],
              ),
            )
          ]),
        ),
        Expanded(
          flex: 2,
          child: Row(children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.green[100],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.green[200],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.green[300],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.green[400],
              ),
            ),
          ]),
        ),
      ],
    ));
  }
}
