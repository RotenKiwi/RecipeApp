import 'dart:ui';

import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final Icon prefixIcon;
  final String text;
  final bool isPassword;
  final TextEditingController controller;

  const MyTextField({
    super.key,
    required this.text,
    required this.isPassword, required this.controller, required this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextField(
        controller: controller,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 24,
          decoration: TextDecoration.none
        ),
        obscureText: isPassword,
        //obscuringCharacter: '%',
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          filled: true,
            fillColor: Color(0x80ffffff),
            hintText: text,
            hintStyle: const TextStyle(
              color: Colors.black,
              //fontWeight: FontWeight.w500,
              fontSize: 20.0,
                decoration: TextDecoration.none
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: const BorderSide(
                color: Colors.white,
                width: 1,
                style: BorderStyle.solid,
              ),
            )),
      ),
    );
  }
}