import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  final Function function;
  final Color color;
  final String text;
  final double? size;

  const ButtonComponent({
    required this.function,
    required this.color,
    required this.text,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      height: 80,
      width: size ?? 80,
      child: ElevatedButton(
        onPressed: () {
          function();
        },
        child: Text(
          text,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.w900),
        ),
        style: ElevatedButton.styleFrom(
          primary: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(64.0),
          ),
        ),
      ),
    );
  }
}
