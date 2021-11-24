import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class GpsPage extends StatefulWidget {
  static String route = "gps-route";
  const GpsPage({Key? key}) : super(key: key);

  @override
  State<GpsPage> createState() => _GpsPageState();
}

class _GpsPageState extends State<GpsPage> {
  Position? _currentPosition;

  _getCurrentLocation() async {
    Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best).then((Position position) => {
          setState(() {
            _currentPosition = position;
          })
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            _currentPosition == null
                ? const CircularProgressIndicator()
                : Text(
                    "Latitude: ${_currentPosition?.latitude} Longitude: ${_currentPosition?.longitude}",
                  ),
            ElevatedButton(
                onPressed: () {
                  _getCurrentLocation();
                },
                child: Text("Get Location"))
          ],
        ),
      ),
    );
  }
}
