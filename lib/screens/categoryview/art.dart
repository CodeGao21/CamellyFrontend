import 'package:flutter/material.dart';
import 'package:shop_app/components/product_card2.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/profile/profile_screen.dart';

import '../../components/product_card.dart';
import '../../components/product_card6.dart';
import 'custom_card_type_2.dart';

class ArtScreen extends StatelessWidget {
  static String routeName = "/art";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 254, 254, 254),
        appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 254, 254, 254),
            title: const Text('Art',
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Muli'))),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: [
            SizedBox(height: 20),
            ...List.generate(
              demoProducts4.length,
              (index) {
                if (demoProducts4[index].isHome)
                  return ProductCard6(product: demoProducts4[index]);

                return SizedBox
                    .shrink(); // here by default width and height is 0
              },
            ),
          ],
        ));
  }
}
