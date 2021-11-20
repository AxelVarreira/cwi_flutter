import 'package:exemplo1/first.page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  static String route = "second-route";

  _goToFirstPage(BuildContext context) {
    Navigator.pushNamed(context, FirstPage.route);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: null,
    );
  }
}
