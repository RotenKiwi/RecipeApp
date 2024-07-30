import 'package:flutter/material.dart';

const Color pTextColor = Color(0xff43927D);
const Color sTextColor = Color(0xff454545);

Text primaryTitle(String text, Color textColor) {
  return Text(
    text,
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 28,
      color: textColor,
    ),
  );
}

Text mediumContent(
  String text,
  Color textColor,
) {
  return Text(
    text,
    style: TextStyle(
        fontSize: 20,
        decoration: TextDecoration.none,
        color: textColor),
  );
}

Text bigTitle(String text, Color textColor) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 65,
      decoration: TextDecoration.none,
      fontWeight: FontWeight.w600,
      color: textColor,
    ),
  );
}

Route createRoute(
    Widget Function(BuildContext, Animation<double>, Animation<double>)
        pageBuilder) {
  return PageRouteBuilder(
    pageBuilder: pageBuilder,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
