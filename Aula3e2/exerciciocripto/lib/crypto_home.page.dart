import 'package:flutter/material.dart';

import 'components/home_page_first_sector.component.dart';
import 'components/home_page_second_sector.component.dart';

class CryptoHomePage extends StatelessWidget {
  const CryptoHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Current Portfolio")),
        elevation: 0,
        backgroundColor: const Color(0xFF413E65),
      ),
      body: Container(
        color: Color(0xFF413E65),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 19, horizontal: 0),
                  child: Column(
                    children: <Widget>[
                      const FirstSectorHomePage(),
                      Expanded(
                        flex: 3,
                        child: Container(
                          decoration: const BoxDecoration(),
                          width: double.infinity,
                          child: Column(
                            children: const <Widget>[
                              SecondSectorHomePage(),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
