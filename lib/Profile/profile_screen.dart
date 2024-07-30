import 'package:flutter/material.dart';
import 'package:recipe/Components/presentation/rounded_button.dart';

import '../AboutUs/presentation/about_us_page.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: GestureDetector(
        onTap: (){Navigator.of(context).pop();},
        child: Container(
          padding: EdgeInsets.all(12.0),
          child: Icon(Icons.arrow_back_ios_new_outlined),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      backgroundColor: Colors.blueGrey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Text('--------------------------------------------------------------------------------------------', style: TextStyle(color: Colors.white),),
                RoundedButton(
                  text: 'My Account',
                  press: () {},
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  length: 0.9,
                ),
                SizedBox(
                  height: 20,
                ),
                RoundedButton(
                  text: 'My Likes',
                  press: () {},
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  length: 0.9,
                ),
                SizedBox(
                  height: 20,
                ),
                RoundedButton(
                  text: 'My Recipes',
                  press: () {},
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  length: 0.9,
                ),
                SizedBox(
                  height: 20,
                ),
                RoundedButton(
                  text: 'About Us',
                  press: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => AboutUsPage()));
                  },
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  length: 0.9,
                ),
                SizedBox(height: 400,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
