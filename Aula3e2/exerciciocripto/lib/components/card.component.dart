import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardComponent extends StatelessWidget {
  // const CardComponent({Key? key}) : super(key: key);

  final String coinName;
  final String coinAbbreviation;
  final String value;
  final double finalValue;
  final Color color;

  const CardComponent(
      {Key? key,
      required this.coinName,
      required this.coinAbbreviation,
      required this.value,
      required this.finalValue,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: 90,
      child: Card(
        color: color,
        margin: const EdgeInsets.only(top: 15),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipOval(
                      child: Container(
                        width: 40,
                        height: 40,
                        color: const Color(0xff77ffffff),
                        child: Center(
                          child: Text(
                            coinAbbreviation[0],
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "$coinAbbreviation    $coinName",
                        style: const TextStyle(color: Colors.white),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "\$$finalValue",
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  )
                ],
              ),
              const Spacer(),
              Text(
                value,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w800),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
