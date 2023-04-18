import 'package:flutter/material.dart';
import 'package:shop_app/screens/categoryview/art.dart';
import 'package:shop_app/screens/categoryview/socialservices.dart';
import 'package:shop_app/screens/categoryview/homeworkers.dart';

import '../../../size_config.dart';
import '../../categoryview/ds.dart';
import '../../categoryview/learning.dart';
import '../../categoryview/music.dart';
import '../../categoryview/quick.dart';
import 'section_title.dart';

class Categories1 extends StatelessWidget {
  const Categories1({
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
            title: "Categories",
            press: () {},
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CategoryCard(
                image: "assets/images/some.png",
                category: "Something Quick",
                press: () {
                  Navigator.pushNamed(context, QuickScreen.routeName);
                },
              ),
              CategoryCard(
                image: "assets/images/homeserv.png",
                category: "Home Services",
                press: () {
                  Navigator.pushNamed(context, HomeWorkersScreen.routeName);
                },
              ),
              CategoryCard(
                image: "assets/images/social.png",
                category: "Social Services",
                press: () {
                  Navigator.pushNamed(context, SocialServicesScreen.routeName);
                },
              ),
              CategoryCard(
                image: "assets/images/art.png",
                category: "Art",
                press: () {
                  Navigator.pushNamed(context, ArtScreen.routeName);
                },
              ),
              CategoryCard(
                image: "assets/images/music.png",
                category: "Music",
                press: () {
                  Navigator.pushNamed(context, MusicScreen.routeName);
                },
              ),
              CategoryCard(
                image: "assets/images/learn.png",
                category: "Learning",
                press: () {
                  Navigator.pushNamed(context, LearningScreen.routeName);
                },
              ),
              CategoryCard(
                image: "assets/images/drive.png",
                category: "Drive and Security",
                press: () {
                  Navigator.pushNamed(context, DSScreen.routeName);
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

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.category,
    required this.image,
    required this.press,
  }) : super(key: key);

  final String category, image;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: getProportionateScreenWidth(242),
          height: getProportionateScreenWidth(100),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
