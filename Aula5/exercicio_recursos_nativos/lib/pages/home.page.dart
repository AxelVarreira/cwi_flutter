import 'package:exercicio_recursos_nativos/pages/camera.page.dart';
import 'package:exercicio_recursos_nativos/pages/gps.page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String route = "home-route";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
                child: ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, CameraPage.route),
                    child: const Text("Camera"))),
            Center(
                child: ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, GpsPage.route), child: const Text("GPS"))),
          ],
        ));
  }
}
