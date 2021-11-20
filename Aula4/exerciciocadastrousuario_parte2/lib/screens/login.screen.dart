import 'dart:developer' as dev;

import 'package:exerciciosimpleform/model/login.model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*
* OBS: Ta tudo uma bagunca porque eu estou fazendo correndo devido a faculdade.
* foi mal :3
*
* Vejo que varias partes do codigo poderiam ser componentizadas e reutilizadas
* Porem, nao to tendo tempo pra isso, foi mal pessoal
* */

class LoginScreen extends StatelessWidget {
  static String route = 'login-screen';
  LoginScreen({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _onLogin() {
      if (_formKey.currentState!.validate()) {
        final LoginModel model = LoginModel(
            email: emailController.text, password: passwordController.text);
        Navigator.pushNamed(context, "register", arguments: model);
      } else {
        dev.log("Error");
      }
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        TextFormField(
                          style: const TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w400,
                          ),
                          decoration: const InputDecoration(
                            label: Text(
                              "Email Address",
                              style: TextStyle(
                                  color: Color(0xFF9B9B9B),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.red,
                              ),
                            ),
                          ),
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value != null && value.isEmpty) {
                              return "Invalid email";
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          style: const TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w400,
                          ),
                          obscureText: true,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            label: Text(
                              "Password",
                              style: TextStyle(
                                color: Color(0xFF9B9B9B),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.red,
                              ),
                            ),
                          ),
                          controller: passwordController,
                          validator: (value) {
                            if (value != null && value.isEmpty) {
                              return "Invalid password";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const InkWell(
                          onTap: null,
                          child: Text(
                            "Don't have an account?",
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Center(
                          child: SizedBox(
                            width: 300,
                            height: 50,
                            child: ElevatedButton(
                              style:
                                  ElevatedButton.styleFrom(primary: Colors.red),
                              onPressed: () {
                                _onLogin();
                              },
                              child: const Text("Continue"),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
