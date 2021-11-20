import 'package:exemplo1/second.page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  static String route = "first-route";

  _goToSecondPage(BuildContext context) {
    Navigator.pushNamed(context, SecondPage.route);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Scaffold(
        body: Column(),
      ),
    );
  }
}
