import 'dart:developer' as dev;

import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

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
    if (_formKey.currentState?.validate() ?? false) {
      dev.log(_nameController.text);
    } else {
      dev.log("Error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
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
                          _campoWidget(true, "Email Address", _inputTextStyle,
                              _emailAddress),
                          _campoWidget(true, "Mobile Number", _inputTextStyle,
                              _mobileNumber),
                          _campoWidget(
                              true, "Country", _inputTextStyle, _country),
                          _campoWidget(
                              true, "Password", _inputTextStyle, _password),
                          _campoWidget(true, "Confirm Password",
                              _inputTextStyle, _confirmPassword),
                          _campoWidget(false, "Referal code (Optional)",
                              _inputTextStyle, _referalCode),
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
        ));
  }
}

Widget _campoWidget(
        isRequired, String title, _inputTextStyle, _nameController) =>
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          style: _inputTextStyle,
          decoration: InputDecoration(
            labelText: title,
          ),
          controller: _nameController,
          validator: (value) {
            if (value != null && value.isEmpty && isRequired) {
              return 'Invalid';
            }
            return null;
          },
        ),
      ],
    );
