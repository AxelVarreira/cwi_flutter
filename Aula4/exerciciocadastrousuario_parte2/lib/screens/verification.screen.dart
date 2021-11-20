import 'dart:developer' as dev;

import 'package:exerciciosimpleform/model/register.model.dart';
import 'package:flutter/material.dart';

/*
* OBS: Ta tudo uma bagunca porque eu estou fazendo correndo devido a faculdade.
* foi mal :3
*
* Vejo que varias partes do codigo poderiam ser componentizadas e reutilizadas
* Porem, nao to tendo tempo pra isso, foi mal pessoal
* */

class VerificationScreen extends StatelessWidget {
  VerificationScreen({Key? key, required this.args}) : super(key: key);
  final RegisterModel args;

  final TextEditingController _sentCode = TextEditingController();

  final _textStyle = const TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 34,
  );

  final GlobalKey<FormState> _keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    _onVerify() {
      if (_keyForm.currentState!.validate()) {
        _dataToString(args, _sentCode.text);
        Navigator.pushNamed(context, 'login');
      } else {
        dev.log("Error");
      }
    }

    _onResend() {
      if (_keyForm.currentState!.validate()) {
        _dataToString(args, _sentCode.text);
      } else {
        dev.log("Error");
      }
    }

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
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Verification",
                      style: _textStyle,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.maxFinite,
                      child: Column(
                        children: <Widget>[
                          const Text(
                            "a four verification code has been sent to your mobile number",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w400),
                          ),
                          Form(
                            key: _keyForm,
                            child: SizedBox(
                              height: 100,
                              child: TextFormField(
                                style: const TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w400,
                                ),
                                maxLength: 4,
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 15),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                                controller: _sentCode,
                                validator: (value) {
                                  if (value != null && value.isEmpty) {
                                    return "Invalid code";
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Center(
                                child: SizedBox(
                                  width: double.maxFinite,
                                  height: 50,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.red),
                                    onPressed: () {
                                      _onVerify();
                                    },
                                    child: const Text("Verify"),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Center(
                                child: SizedBox(
                                  width: double.maxFinite,
                                  height: 50,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      primary: const Color(0xFFFAFAFA),
                                    ),
                                    onPressed: () {
                                      _onResend();
                                    },
                                    child: const Text(
                                      "Resend",
                                      style: TextStyle(color: Colors.red),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
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

_dataToString(RegisterModel model, String code) {
  dev.log(model.toString() + "verification code: $code");
}
