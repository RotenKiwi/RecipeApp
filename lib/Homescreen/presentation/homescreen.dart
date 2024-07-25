import 'package:flutter/material.dart';
import 'package:recipe/Components/firebase/firebase_helper.dart';
import 'package:recipe/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: GestureDetector(),
        body: LayoutBuilder(
          builder: (context, constraints) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          primaryTitle('Hello, Mark 👋', pTextColor),
                          mediumContent('New Dish to Cook today?', Colors.grey),
                        ],
                      ),
                      CircleAvatar(
                        radius: 36.0,
                      ),    //TODO: Add User image here and on click move to profile page

                    ],
                  )
                ],
              ),
            );
          },
        ));
  }
}
