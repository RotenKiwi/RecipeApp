import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  final Widget child;
  const BackgroundWidget({
    super.key, required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/loginImage.jpeg'),
            colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate),
            fit: BoxFit.cover),
      ),
      child: child,
    );
  }
}