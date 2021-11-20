import 'dart:developer' as dev;

import 'package:exerciciosimpleform/model/login.model.dart';
import 'package:exerciciosimpleform/model/register.model.dart';
import 'package:flutter/material.dart';

/*
* OBS: Ta tudo uma bagunca porque eu estou fazendo correndo devido a faculdade.
* foi mal :3
*
* Vejo que varias partes do codigo poderiam ser componentizadas e reutilizadas
* Porem, nao to tendo tempo pra isso, foi mal pessoal
* */

class RegisterScreen extends StatefulWidget {
  static String route = 'register-screen';
  final LoginModel loginModel;
  const RegisterScreen({Key? key, required this.loginModel}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _textStyle = const TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 34,
  );

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailAddress = TextEditingController();
  final TextEditingController _mobileNumber = TextEditingController();
  final TextEditingController _country = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();
  final TextEditingController _referalCode = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final _inputTextStyle = const TextStyle(
      fontWeight: FontWeight.w500, fontSize: 16, color: Color(0xFF3D4A5A));

  _onRegister() {
    if (_formKey.currentState?.validate() != false &&
        _confirmPassword.text == _password.text) {
      final RegisterModel register = RegisterModel(
          password: _password.text,
          email: _emailAddress.text,
          mobileNumber: _mobileNumber.text,
          confirmPassword: _confirmPassword.text,
          Country: _country.text,
          referalCode: _referalCode.text,
          Name: _nameController.text,
          loginModel: widget.loginModel);
      Navigator.pushNamed(context, 'verification', arguments: register);
    } else {
      dev.log("Error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 35),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Register",
                      style: _textStyle,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          _campoWidget(true, "Full name", _inputTextStyle,
                              _nameController),
                          _campoWidget(
                            true,
                            "Email Address",
                            _inputTextStyle,
                            _emailAddress,
                            inputType: TextInputType.emailAddress,
                          ),
                          _campoWidget(
                            true,
                            "Mobile Number",
                            _inputTextStyle,
                            _mobileNumber,
                            inputType: TextInputType.phone,
                          ),
                          _campoWidget(
                              true, "Country", _inputTextStyle, _country,
                              inputType: null),
                          _campoWidget(
                            true,
                            "Password",
                            _inputTextStyle,
                            _password,
                            inputType: TextInputType.number,
                          ),
                          _campoWidget(
                            true,
                            "Confirm Password",
                            _inputTextStyle,
                            _confirmPassword,
                            inputType: TextInputType.number,
                          ),
                          _campoWidget(false, "Referal code (Optional)",
                              _inputTextStyle, _referalCode,
                              inputType: TextInputType.number),
                          const SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red,
                            ),
                            onPressed: () {
                              _onRegister();
                            },
                            child: Container(
                              height: 50,
                              width: double.infinity,
                              child: Center(child: const Text("Register")),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _campoWidget extends StatelessWidget {
  const _campoWidget(
      this.isRequired, this.title, this.inputStyle, this.controller,
      {this.inputType});

  final bool isRequired;
  final String title;
  final TextStyle inputStyle;
  final TextEditingController controller;
  final TextInputType? inputType;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          keyboardType: inputType ?? TextInputType.text,
          obscureText: inputType == TextInputType.number ? true : false,
          style: inputStyle,
          decoration: InputDecoration(
            labelText: title,
          ),
          controller: controller,
          validator: (value) {
            if (value != null && value.isEmpty && isRequired) {
              return 'Invalid';
            }
            return null;
          },
        ),
      ],
    );
  }
}
