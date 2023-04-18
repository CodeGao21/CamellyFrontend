import 'package:flutter/material.dart';
import 'package:shop_app/screens/profile/profile_screen.dart';

import '../../categoryview/custom_card_type_2.dart';

class Courses2 extends StatelessWidget {
  static String routeName = "/courses2";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 254, 254, 254),
        appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 254, 254, 254),
            title: const Text('Academic Courses',
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Muli'))),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: [
            SizedBox(height: 10),
            CustomCardType2(imageUrl: 'assets/curso3.png', info: "/details"),
            SizedBox(height: 20),
            CustomCardType2(
                imageUrl: 'assets/curso6.png', info: ProfileScreen.routeName),
            SizedBox(height: 20)
          ],
        ));
  }
}
