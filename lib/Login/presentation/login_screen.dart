import 'dart:ui';

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/loginImage.jpeg'),
                  colorFilter:
                      ColorFilter.mode(Colors.grey, BlendMode.modulate),
                  fit: BoxFit.cover),
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20.0)),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              textfield(
                                  text: 'Email',
                                  isPassword: false,
                                  onchanged: (value) {
                                    email = value;
                                  }),
                              Row(
                                children: [
                                  const Text(
                                    "  Don't Have an Account?   ",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'Breath',
                                      decoration: TextDecoration.none,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      "Sign Up",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: 'Breath',
                                        decoration: TextDecoration.none,
                                        color: Colors.greenAccent,
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      )))
            ])));
  }
}
