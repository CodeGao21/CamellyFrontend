import 'package:flutter/material.dart';
import 'package:shop_app/components/coustom_bottom_nav_bar.dart';
import 'package:shop_app/enums.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Image.asset('assets/camelly5.png', fit: BoxFit.fill)),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Body(),
    );
  }
}
