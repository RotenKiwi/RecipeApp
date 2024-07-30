import 'package:flutter/material.dart';
import 'package:recipe/Components/firebase/firebase_helper.dart';
import 'package:recipe/Login&Register/components/background_widget.dart';
import 'package:recipe/Login&Register/components/blur_card.dart';
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
TextEditingController usernameTextController = TextEditingController();

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BackgroundWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(flex: 1),
            bigTitle('  SignUp', Colors.white),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: BlurCard(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                    children: [
                      MyTextField(
                        text: 'Email',
                        isPassword: false,
                        controller: emailTextController,
                      ),
                      MyTextField(
                        text: 'Username',
                        isPassword: false,
                        controller: usernameTextController,
                      ),
                      MyTextField(
                        text: 'Password',
                        isPassword: true,
                        controller: passwordTextController,
                      ),
                      RoundedButton(
                        text: 'SignUp',
                        press: () async{
                          await signUp(emailTextController.text, passwordTextController.text);
                          createUser(usernameTextController.text);
                          Navigator.pop(context);
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
            const Spacer(flex: 3)
          ],
        ),
      ),
    );
  }
}
