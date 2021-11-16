import 'package:exerciciocalculadora/components/buttons.component.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget {
  @override
  State<HomePageScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePageScreen> {
  String _visor = "";

  final Map<String, String> map = {
    "AC": "AC",
    "7": "7",
    "8": "8",
    "9": "9",
    "0": "0",
    "1": "1",
    "2": "2",
    "3": "3",
    "4": "4",
    "5": "5",
    "6": "6",
    "8": "8",
    "+/-": "+/-",
    "%": "%",
    "/": "/",
    "X": "X",
    "-": "-",
    "+": "+",
    "=": "=",
    ",": ","
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          color: Colors.black,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.centerRight,
                  width: double.maxFinite,
                  child: Text(
                    _visor,
                    textAlign: TextAlign.right,
                    style: TextStyle(color: Colors.white, fontSize: 57),
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: <Widget>[
                              Column(
                                children: [
                                  ButtonComponent(
                                      function: () {
                                        _changeVisor("AC");
                                      },
                                      color: Color(0xFFAFAFAF),
                                      text: "AC"),
                                  ButtonComponent(
                                      function: () {
                                        _changeVisor("7");
                                      },
                                      color: Color(0xFF333333),
                                      text: "7"),
                                  ButtonComponent(
                                      function: () {
                                        _changeVisor("4");
                                      },
                                      color: Color(0xFF333333),
                                      text: "4"),
                                  ButtonComponent(
                                      function: () {
                                        _changeVisor("1");
                                      },
                                      color: Color(0xFF333333),
                                      text: "1"),
                                ],
                              ),
                              Column(
                                children: [
                                  ButtonComponent(
                                      function: () {
                                        _changeVisor("+/_");
                                      },
                                      color: Color(0xFFAFAFAF),
                                      text: "+/_"),
                                  ButtonComponent(
                                      function: () {
                                        _changeVisor("8");
                                      },
                                      color: Color(0xFF333333),
                                      text: "8"),
                                  ButtonComponent(
                                      function: () {
                                        _changeVisor("5");
                                      },
                                      color: Color(0xFF333333),
                                      text: "5"),
                                  ButtonComponent(
                                      function: () {
                                        _changeVisor("2");
                                      },
                                      color: Color(0xFF333333),
                                      text: "2"),
                                ],
                              ),
                            ],
                          ),
                          ButtonComponent(
                            function: () {
                              _changeVisor("0");
                            },
                            color: Color(0xFF333333),
                            text: "0",
                            size: 200,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          ButtonComponent(
                              function: () {
                                _changeVisor("%");
                              },
                              color: Color(0xFFAFAFAF),
                              text: "%"),
                          ButtonComponent(
                              function: () {
                                _changeVisor("%");
                              },
                              color: Color(0xFF333333),
                              text: "9"),
                          ButtonComponent(
                              function: () {
                                _changeVisor("6");
                              },
                              color: Color(0xFF333333),
                              text: "6"),
                          ButtonComponent(
                              function: () {
                                _changeVisor("3");
                              },
                              color: Color(0xFF333333),
                              text: "3"),
                          ButtonComponent(
                            function: () {
                              _changeVisor(",");
                            },
                            color: Color(0xFF333333),
                            text: ",",
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          ButtonComponent(
                              function: () {
                                _changeVisor("/");
                              },
                              color: Color(0xFFFF9500),
                              text: "/"),
                          ButtonComponent(
                              function: () {
                                _changeVisor("X");
                              },
                              color: Color(0xFFFF9500),
                              text: "x"),
                          ButtonComponent(
                              function: () {
                                _changeVisor("-");
                              },
                              color: Color(0xFFFF9500),
                              text: "-"),
                          ButtonComponent(
                              function: () {
                                _changeVisor("+");
                              },
                              color: Color(0xFFFF9500),
                              text: "+"),
                          ButtonComponent(
                            function: () {
                              _changeVisor("=");
                            },
                            color: Color(0xFFFF9500),
                            text: "=",
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _changeVisor(String value) {
    if (map.containsKey(value)) {
      if (value == "AC") {
        setState(() {
          _visor = "";
        });
      } else {
        setState(() {
          _visor += map[value]!;
        });
      }
    }
  }
}
