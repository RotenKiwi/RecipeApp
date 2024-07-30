import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:recipe/constants.dart';

import '../../AboutUs/presentation/about_us_page.dart';

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
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AboutUsPage()));
                        },
                        child: const CircleAvatar(
                          radius: 36.0,
                        ),
                      ),
                      //TODO: Add User image here and on click move to profile page
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    height: 52,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        FilterTag(text: 'Breakfast'),
                        FilterTag(text: 'Brunch'),
                        FilterTag(text: 'Lunch'),
                        FilterTag(text: 'Dinner'),
                        FilterTag(text: 'Dessert'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  Expanded(
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            padding: const EdgeInsets.all(20.0),
                            height: 280,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.0)),
                              image: DecorationImage(
                                image: NetworkImage(
                                  'https://i.pinimg.com/564x/ca/24/3a/ca243acab3b0d4df73f29f323f58ce3f.jpg',
                                ),
                                fit: BoxFit.fitWidth,
                                colorFilter: ColorFilter.mode(
                                    Colors.grey, BlendMode.modulate),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    mediumContent('User Name', Colors.white),
                                    mediumContent('Rating: 4.8', Colors.white),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    primaryTitle(
                                        'Sen-Ryo Singapore', Colors.white),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.access_time_rounded,
                                          color: Colors.white,
                                        ),
                                        mediumContent(' 15min', Colors.white),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        ));
  }
}

class FilterTag extends StatelessWidget {
  final String text;

  const FilterTag({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 40.0,
        ),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
          color: Color(0x4c858585),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 20.0,
            ),
          ),
        ),
      ),
    );
  }
}
