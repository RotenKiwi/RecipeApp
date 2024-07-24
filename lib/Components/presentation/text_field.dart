import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String text;
  final bool isPassword;
  final TextEditingController controller;

  const MyTextField({
    super.key,
    required this.text,
    required this.isPassword, required this.controller, 
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextField(
        controller: controller,
        style: const TextStyle(
          color: Colors.white,
        ),
        obscureText: isPassword,
        //obscuringCharacter: '%',
        decoration: InputDecoration(
            hintText: text,
            hintStyle: const TextStyle(
              color: Colors.white,
              //fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
              fontSize: 25.0,
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