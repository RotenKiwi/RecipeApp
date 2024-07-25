import 'package:flutter/material.dart';
import 'package:recipe/Components/firebase/firebase_helper.dart';
import 'package:recipe/Login&Register/components/background_widget.dart';
import 'package:recipe/Login&Register/components/blur_card.dart';
import 'package:recipe/Login&Register/presentation/login_screen.dart';
import 'package:recipe/constants.dart';

import '../../Components/presentation/rounded_button.dart';
import '../../Components/presentation/text_field.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

TextEditingController emailTextController = TextEditingController();
TextEditingController passwordTextController = TextEditingController();

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(flex: 3),
            bigTitle('  SignUp', Colors.white),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: BlurCard(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                    children: [
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
                        text: 'SignUp',
                        press: () {
                          signUp(emailTextController.text, passwordTextController.text);
                        },
                        color: const Color(0xff7e5e12),
                        textColor: Colors.white,
                        length: 0.9,
                      ),
                      const SizedBox(height: 36),
                    ],
                  ),
                ),
              ),
            ),
            Spacer(flex: 1)
          ],
        ),
      ),
    );
  }
}
