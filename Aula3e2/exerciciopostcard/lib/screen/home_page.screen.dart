import 'package:exercicio3/component/home_page.component.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // Nao consegui fazer de outro jeito, se possivel, explicar em aula uma maneira ^ ^
  final dataString =
      '''Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit, sed do\neiusmod tempor incididunt ut labore et\ndolore magna aliqua.\n 
Pretium quam vulputate\ndignissim suspendisse in est.\nIpsum dolor sit amet \nconsectetur adipiscing elit.\nUrna porttitor rhoncus dolor purus\nnon enim praesent elementum.\nArcu ac tortor dignissim convallis. \nSed libero enim sed faucibus.\nAmet venenatis urna cursus eget. 
Aliquet porttitor lacus luctus accumsan tortor.\nSuscipit adipiscing bibendum est ultricies.''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Postcard"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            HomePageComponent(
              Icons.person,
              "Recipient",
              Text("Ameilie N Mason"),
              Color(0xFFFC3875),
            ),
            HomePageComponent(
                Icons.business,
                "Address",
                Text(
                    "47 Greyfriars Road, Capheaton \n United Kingdom \n Ne19 5PJ"),
                Color(0xFFFCAB55)),
            HomePageComponent(
              Icons.edit,
              "Message",
              Text(dataString),
              Color(0xFF22C0FC),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF767676),
                  ),
                  onPressed: () {},
                  child: Text("SAVE DRAFT"),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFFC3875),
                  ),
                  onPressed: () {},
                  child: Text("REVIEW DESIGN"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
