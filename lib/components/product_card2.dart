import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/details/details_screen.dart';

import '../constants.dart';
import '../size_config.dart';

class ProductCard2 extends StatelessWidget {
  const ProductCard2({
    Key? key,
    this.width = 140,
    this.aspectRetio = 1.02,
    required this.product,
  }) : super(key: key);

  final double width, aspectRetio;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(5)),
      child: SizedBox(
        width: getProportionateScreenWidth(width),
        child: GestureDetector(
          onTap: () => Navigator.pushNamed(
            context,
            DetailsScreen.routeName,
            arguments: ProductDetailsArguments(product: product),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 0.9,
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(32)),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 75, 108, 149),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Hero(
                      tag: product.id.toString(),
                      child: Flexible(
                        child: Column(children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(product.images[0])),
                          SizedBox(height: 20),
                          Row(children: [
                            Column(children: [
                              Row(children: [
                                Text(
                                  product.name,
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)),
                                ),
                                SizedBox(
                                  width: 9,
                                ),
                                Text(
                                  product.lastname,
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)),
                                )
                              ]),
                              Row(
                                children: [
                                  Text(
                                    product.profesion,
                                    style: TextStyle(
                                        fontSize: 18,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255)),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star_rounded,
                                    color: Colors.yellowAccent,
                                  ),
                                  Icon(Icons.star_rounded,
                                      color: Colors.yellowAccent),
                                  Icon(Icons.star_rounded,
                                      color: Colors.yellowAccent),
                                  Icon(Icons.star_half_rounded,
                                      color: Colors.yellowAccent),
                                  Icon(Icons.star_border_rounded,
                                      color: Colors.yellowAccent)
                                ],
                              ),
                            ]),
                            Column(children: [
                              Row(children: [
                                SizedBox(width: 20),
                                Icon(
                                  Icons.attach_money_outlined,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                                Text(product.price.toString(),
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255)))
                              ])
                            ])
                          ])
                        ]),
                      )),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(50),
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                      height: getProportionateScreenWidth(28),
                      width: getProportionateScreenWidth(28),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
