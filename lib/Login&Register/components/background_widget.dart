import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  final bool login;
  final Widget child;
  const BackgroundWidget({
    super.key, required this.child, required this.login,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(login?'images/loginImage.png':'images/registerImage.png'),
            colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate),
            fit: BoxFit.cover),
      ),
      child: child,
    );
  }
}