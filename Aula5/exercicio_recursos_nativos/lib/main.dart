import 'package:camera/camera.dart';
import 'package:exercicio_recursos_nativos/pages/camera.page.dart';
import 'package:exercicio_recursos_nativos/pages/gps.page.dart';
import 'package:exercicio_recursos_nativos/pages/home.page.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  // Ensure that plugin services are initialized so that `availableCameras()`
  // can be called before `runApp()`
  WidgetsFlutterBinding.ensureInitialized();

  // Obtain a list of the available cameras on the device.
  final cameras = await availableCameras();

  // Get a specific camera from the list of available cameras.
  final firstCamera = cameras.first;

  runApp(MyApp(
    firstCamera: firstCamera,
  ));
}

class MyApp extends StatelessWidget {
  final CameraDescription firstCamera;
  const MyApp({Key? key, required this.firstCamera}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: HomePage.route,
        routes: {
          HomePage.route: (_) => HomePage(),
          CameraPage.route: (_) => CameraPage(
                camera: firstCamera,
              ),
          GpsPage.route: (_) => GpsPage()
        });
  }
}
