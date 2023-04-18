import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'section_title.dart';

class WorkOffers extends StatelessWidget {
  const WorkOffers({
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
            title: "Work Offers",
            press: () {},
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              OfferCard(
                image: "assets/escultura.jpg",
                offer: "Esculture",
                price: '40.0/h',
                press: () {},
              ),
              OfferCard(
                image: "assets/violin.png",
                offer: "Violin lesson",
                price: '25.0/h',
                press: () {},
              ),
              OfferCard(
                image: "assets/offer4.JPG",
                offer: "Tennis Lesson",
                price: '20.0/h',
                press: () {},
              ),
              OfferCard(
                image: "assets/bodish.jpg",
                offer: "Marriage Assistant",
                price: '15.0/h',
                press: () {},
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }
}

class OfferCard extends StatelessWidget {
  const OfferCard({
    Key? key,
    required this.offer,
    required this.price,
    required this.image,
    required this.press,
  }) : super(key: key);

  final String offer, image, price;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap: press,
        child: Container(
          width: 140,
          height: 180,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  height: 180,
                  width: 140,
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
                  child: Text.rich(
                    TextSpan(
                      style:
                          TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                      children: [
                        TextSpan(
                          text: "$offer\n",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(20),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: "$price\n",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(20),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
