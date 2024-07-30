import 'package:flutter/material.dart';
import 'package:recipe/constants.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraint) {
          double h = constraint.maxHeight;
          double w = constraint.maxWidth;
          return Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blueGrey, Colors.blueAccent, Colors.blueGrey],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft),
            ),
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  SizedBox(height: h*0.1,),
                  Center(child: bigTitle('About Us', Colors.white)),
                  SizedBox(height: h*0.1,),
                  Center(
                    child: Text(
                      'Welcome to RecipeShare, the ultimate platform for food lovers and culinary creators! Our app revolutionizes the way you discover, share, and enjoy recipes. Designed with the best features of social media, RecipeShare lets you post your favorite dishes, get likes from fellow food enthusiasts, and explore trending recipes.',
                      style: TextStyle(
                          fontSize: 22,
                          fontFamily: 'Breath',
                          decoration: TextDecoration.none,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: h*0.1,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      primaryTitle('Key Features', Colors.white),
                      SizedBox(height: h*0.02,),
                      mediumContent(
                          '1. Interactive Recipe Sharing: Post your culinary creations, follow your favorite chefs, and get inspired by an endless feed of delicious recipes.',
                          Colors.white),
                      SizedBox(height: h*0.02,),
                      mediumContent(
                          '2. Ingredient Locator: Use our GPS feature to find ingredients nearby, making your cooking experience seamless and convenient.',
                          Colors.white),
                      SizedBox(height: h*0.02,),
                      mediumContent(
                          '3. Check Nutritional Value: Powered by the Gemini API, our app suggests the nutritional value a recipe on the app holds considering its ingredients and method of preparation.',
                          Colors.white),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
