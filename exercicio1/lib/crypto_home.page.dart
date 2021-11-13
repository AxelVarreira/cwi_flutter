import 'package:flutter/material.dart';

class CryptoHomePage extends StatelessWidget {
  const CryptoHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Crypto Bank"),
        elevation: 0,
        backgroundColor: Color(0xFF413E65),
      ),
      body: Container(
        color: Color(0xFF413E65),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 19, horizontal: 0),
                child: Column(
                  children: [
                    Text(
                      "Text",
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
