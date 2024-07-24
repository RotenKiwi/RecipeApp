import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function() press;
  final Color color, textColor;
  final double length;

  const RoundedButton({
    super.key,
    required this.text,
    required this.press,
    required this.color,
    required this.textColor,
    required this.length,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: FractionallySizedBox(
          widthFactor: length,
          child: Container(
            //width: length.width,
            color: color,
            child: TextButton(
                onPressed: press,
                child: Text(
                  text,
                  style: TextStyle(
                    fontFamily: 'Breath',
                    fontWeight: FontWeight.w600,
                    color: textColor,
                    fontSize: 30,
                  ),
                )),
          ),
        ));
  }
}