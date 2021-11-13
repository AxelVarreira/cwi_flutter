import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final _formKey = GlobalKey();

  final TextStyle _titleStyle =
      TextStyle(fontWeight: FontWeight.w700, fontSize: 24);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    "Sign up",
                    style: _titleStyle,
                  ),
                  Spacer(),
                  Text("Already have an account? "),
                  TextButton(
                    onPressed: () {},
                    child: Text("Ola"),
                  ),
                  Form(
                    key: _formKey,
                    child: Column(children: [
                      const SizedBox(height: 32),
                      TextFormField(
                        cursorColor: ColorUtils.commonRed,
                        keyboardType: TextInputType.text,
                        textCapitalization: TextCapitalization.words,
                        decoration: InputDecoration(
                          labelText: 'Full Name',
                          labelStyle: TextStyle(
                            color: ColorUtils.commonGray,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ]),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
