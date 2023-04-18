import 'package:flutter/material.dart';
import 'package:shop_app/screens/home/components/learning.dart';
import 'package:shop_app/screens/home/components/progress.dart';
import 'package:shop_app/screens/home/components/section_title.dart';
import 'package:shop_app/screens/home/components/workoffers.dart';

import '../../../size_config.dart';
import 'categories.dart';
import 'namebanner.dart';
import 'home_header.dart';
import 'popular_product.dart';
import 'categories1.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            NameBanner(),
            SizedBox(height: getProportionateScreenWidth(10)),
            HomeHeader(),
            SizedBox(height: 10),
            Categories1(),
            SizedBox(height: getProportionateScreenWidth(30)),
            PopularProducts(),
            SizedBox(height: getProportionateScreenWidth(30)),
            WorkOffers(),
            SizedBox(height: getProportionateScreenWidth(30)),
            Learning(),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child: SectionTitle(
                title: "Course Progress",
                press: () {},
              ),
            ),
            SizedBox(height: 20),
            Progress(),
            Container(
                child: Center(
                  child: Text("Carpentry Training",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 255, 255))),
                ),
                height: 35,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.circular(20),
                )),
            SizedBox(
              height: 10,
            ),
            Container(
                child: Center(
                  child: Text("Mechanical Training",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 255, 255))),
                ),
                height: 35,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.purpleAccent,
                  borderRadius: BorderRadius.circular(20),
                )),
            SizedBox(
              height: 10,
            ),
            Container(
                child: Center(
                  child: Text("WaterColor Course",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 255, 255))),
                ),
                height: 35,
                width: 350,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 13, 107, 62),
                  borderRadius: BorderRadius.circular(20),
                )),
            SizedBox(
              height: 10,
            ),
            Container(
                child: Center(
                  child: Text("Piano Training",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 255, 255))),
                ),
                height: 35,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(20),
                )),
            SizedBox(
              height: 10,
            ),
            Container(
                child: Center(
                  child: Text("Nursing Training",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 255, 255))),
                ),
                height: 35,
                width: 350,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 27, 157, 152),
                  borderRadius: BorderRadius.circular(20),
                )),
          ],
        ),
      ),
    );
  }
}
