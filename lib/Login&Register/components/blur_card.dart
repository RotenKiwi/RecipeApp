import 'dart:ui';
import 'package:flutter/material.dart';

class BlurCard extends StatelessWidget {
  final Widget child;
  const BlurCard({
    super.key, required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(20.0)),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
        child: child,
      ),
    );
  }
}