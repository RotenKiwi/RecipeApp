import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:recipe/Components/presentation/text_field.dart';
import 'package:recipe/constants.dart';

import '../../Components/presentation/rounded_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

TextEditingController emailTextController = TextEditingController();
TextEditingController passwordTextController = TextEditingController();

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/loginImage.jpeg'),
              colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate),
              fit: BoxFit.cover),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Spacer(
            flex: 3,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(
              "Welcome !",
              style: TextStyle(
                fontSize: 65,
                fontFamily: 'Breath',
                decoration: TextDecoration.none,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(20.0)),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      MyTextField(
                        text: 'Email',
                        isPassword: false,
                        controller: emailTextController,
                      ),
                      MyTextField(
                        text: 'Password',
                        isPassword: true,
                        controller: passwordTextController,
                      ),
                      RoundedButton(
                          text: 'Continue',
                          press: () {},
                          color: const Color(0xff7e5e12),
                          textColor: Colors.white,
                          length: 0.9),
                      const SizedBox(height: 36,),
                      Row(
                        children: [
                          Text(
                            "  Don't Have an Account?   ",
                            style: mediumContent(Colors.white),
                            textAlign: TextAlign.start,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Sign Up",
                              style: mediumContent(Colors.greenAccent),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const Spacer(
            flex: 1,
          ),
        ]),
      ),
    );
  }
}
