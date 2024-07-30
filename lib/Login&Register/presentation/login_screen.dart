import 'package:flutter/material.dart';
import 'package:recipe/Components/firebase/firebase_helper.dart';
import 'package:recipe/Components/presentation/text_field.dart';
import 'package:recipe/Homescreen/presentation/homescreen.dart';
import 'package:recipe/Login&Register/presentation/register_screen.dart';
import 'package:recipe/constants.dart';

import '../../Components/presentation/rounded_button.dart';
import '../components/background_widget.dart';
import '../components/blur_card.dart';

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
      // resizeToAvoidBottomInset: false,
      body: BackgroundWidget(
        login: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(flex: 3),
            Center(child: bigTitle('Foodybite', Colors.white)),
            const Spacer(flex: 4,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Column(
                  children: [
                    MyTextField(
                      prefixIcon: Icon(Icons.email_outlined),
                      text: 'Email',
                      isPassword: false,
                      controller: emailTextController,
                    ),
                    MyTextField(
                      prefixIcon: Icon(Icons.lock),
                      text: 'Password',
                      isPassword: true,
                      controller: passwordTextController,
                    ),
                    RoundedButton(
                      text: 'Continue',
                      press: () async {
                        if (await signIn(emailTextController.text,
                            passwordTextController.text)) {
                          Navigator.of(context).push(createRoute(
                              (context, animation, secondaryAnimation) =>
                                  const HomeScreen()));
                        } else {
                          print('ERROR: Cant Login');
                        }
                      },
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      length: 0.8,
                    ),
                    const SizedBox(height: 36),
                    Row(
                      children: [
                        mediumContent(
                            '    Don\'t Have an Account?', Colors.white),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).push(createRoute(
                              (context, animation, secondaryAnimation) =>
                                  const RegisterScreen(),
                            ));
                          },
                          child: mediumContent('Sign Up', Colors.greenAccent),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
            const Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
