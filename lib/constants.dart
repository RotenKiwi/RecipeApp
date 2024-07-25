import 'package:flutter/material.dart';

Text mediumContent(String text, Color textColor,) {
  return Text(
    text,
    style: TextStyle(
        fontSize: 20,
        fontFamily: 'Breath',
        decoration: TextDecoration.none,
        color: textColor),
  );
}

Text bigTitle(String text, Color textColor) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 65,
      fontFamily: 'Breath',
      decoration: TextDecoration.none,
      fontWeight: FontWeight.w600,
      color: textColor,
    ),
  );
}
