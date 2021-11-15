import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstSectorHomePage extends StatelessWidget {
  const FirstSectorHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: const BoxDecoration(
// color: Colors.red,
            ),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              "Balance",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const <Widget>[
                Text(
                  "\$103,463",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 34),
                ),
                Text(".59",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 34,
                        color: Colors.grey))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const <Widget>[
                Text(
                  "+28.20%",
                  style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "today",
                  style: TextStyle(color: Colors.grey),
                )
              ],
            )
          ],
        ),
      ),
    );
    ;
  }
}
