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
      // resizeToAvoidBottomInset: false,
      body: BackgroundWidget(
        login: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(flex: 3),
            Center(child: bigTitle('Foodybite', Colors.white)),
            const Spacer(flex: 1,),
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
                      prefixIcon: Icon(Icons.person),
                      text: 'Username',
                      isPassword: false,
                      controller: usernameTextController,
                    ),
                    MyTextField(
                      prefixIcon: Icon(Icons.lock),
                      text: 'Password',
                      isPassword: true,
                      controller: passwordTextController,
                    ),
                    SizedBox(height: 15,),
                    RoundedButton(
                      text: 'Register',
                      press: () async{
                        await signUp(emailTextController.text, passwordTextController.text);
                        createUser(usernameTextController.text);
                        Navigator.pop(context);
                      },
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      length: 0.9,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        mediumContent(
                            'Already Have an Account?', Colors.white),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: mediumContent('Login In', Colors.greenAccent),
                        ),
                      ],
                    ),
                    const SizedBox(height: 36),
                  ],
                ),
              ),
            ),
            const Spacer(flex: 1)
          ],
        ),
      ),
    );
  }
}
