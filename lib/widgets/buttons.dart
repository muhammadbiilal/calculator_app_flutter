import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  CalculatorButton(
      {Key? key,
      required this.title,
      this.color = const Color(0xffa5a5a5),
      required this.onPress})
      : super(key: key);

  final String title;
  final Color color;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPress,
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Container(
            height: 80,
            decoration: BoxDecoration(shape: BoxShape.circle, color: color),
            child: Center(
                child: Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 22),
            )),
          ),
        ),
      ),
    );
  }
}
