import 'package:aula5/models/dog.model.dart';
import 'package:aula5/repository/dog_image.repository.dart';
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
      home: RandomDogPage(),
    );
  }
}

class RandomDogPage extends StatefulWidget {
  const RandomDogPage({Key? key}) : super(key: key);

  @override
  State<RandomDogPage> createState() => _RandomDogPageState();
}

class _RandomDogPageState extends State<RandomDogPage> {
  DogModel model = DogModel(
    url: "https://images.dog.ceo/breeds/affenpinscher/n02110627_12808.jpg",
  );

  DogImageRepository repository = DogImageRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21252B),
      body: Container(
        width: double.maxFinite,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                  width: double.maxFinite,
                  child: Image.network(
                    model.url,
                  )),
              SizedBox(
                width: double.maxFinite,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF03A87C),
                  ),
                  onPressed: () async {
                    DogModel modelOnPressed = await repository.getRandomDog();
                    setState(() {
                      model = modelOnPressed;
                    });
                  },
                  child: const Text("Refresh"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
