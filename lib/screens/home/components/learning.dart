import 'package:flutter/material.dart';
import 'package:shop_app/screens/home/components/courses.dart';
import 'package:shop_app/screens/home/components/courses2.dart';
import 'package:shop_app/screens/home/components/courses3.dart';

import '../../../size_config.dart';
import 'section_title.dart';

class Learning extends StatelessWidget {
  const Learning({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(
            title: "Learning",
            press: () {},
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              LearningCard(
                image: "assets/tecnico.png",
                name: "Technical",
                press: () {
                  Navigator.pushNamed(context, Courses.routeName);
                },
              ),
              SizedBox(height: 20),
              LearningCard(
                image: "assets/libros.png",
                name: "Academic",
                press: () {
                  Navigator.pushNamed(context, Courses2.routeName);
                },
              ),
              SizedBox(height: 20),
              LearningCard(
                image: "assets/pintura.png",
                name: "Artistic",
                press: () {
                  Navigator.pushNamed(context, Courses3.routeName);
                },
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }
}

class LearningCard extends StatelessWidget {
  const LearningCard({
    Key? key,
    required this.name,
    required this.press,
    required this.image,
  }) : super(key: key);

  final String name, image;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: getProportionateScreenWidth(120),
          height: getProportionateScreenWidth(100),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  height: 200,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF343434).withOpacity(0.4),
                        Color(0xFF343434).withOpacity(0.15),
                      ],
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(15.0),
                      vertical: getProportionateScreenWidth(10),
                    ),
                    child: Center(
                      child: Text.rich(
                        TextSpan(
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255)),
                          children: [
                            TextSpan(
                              text: "$name\n",
                              style: TextStyle(
                                fontSize: getProportionateScreenWidth(18),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
