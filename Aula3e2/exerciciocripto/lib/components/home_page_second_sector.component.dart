import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'card.component.dart';

class SecondSectorHomePage extends StatelessWidget {
  const SecondSectorHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const <Widget>[
              Text(
                "Your Coins",
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
              Icon(
                Icons.add,
                size: 42,
                color: Colors.green,
              ),
            ],
          ),
          Column(
            children: const <Widget>[
              CardComponent(
                coinName: "Bitcoin",
                coinAbbreviation: "BTC",
                value: "6.20",
                finalValue: 6730.49,
                color: Color(0xFFF5317F),
              ),
              CardComponent(
                coinName: "Ethereum",
                coinAbbreviation: "ETH",
                value: "18.05",
                finalValue: 490.26,
                color: Color(0xFF8739E5),
              ),
              CardComponent(
                coinName: "Litecoin",
                coinAbbreviation: "LTC",
                value: "51.80",
                finalValue: 130.31,
                color: Color(0xFFE56336),
              ),
              CardComponent(
                coinName: "Ripple",
                coinAbbreviation: "XRP",
                value: "819k",
                finalValue: 0.49,
                color: Color(0xFF7DBD28),
              ),
            ],
          )
        ],
      ),
    );
  }
}
