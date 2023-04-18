import 'package:animated_horizontal_calendar/animated_horizontal_calendar.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/details/components/calendar.dart';
import 'package:shop_app/screens/details/components/scheduled.dart';
import 'package:shop_app/size_config.dart';
import 'package:day_night_time_picker/day_night_time_picker.dart';

import 'color_dots.dart';
import 'hora.dart';
import 'product_description.dart';
import 'top_rounded_container.dart';
import 'product_images.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ProductImages(product: product),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              ProductDescription(
                product: product,
                pressOnSeeMore: () {},
              ),
              TopRoundedContainer(
                color: Color(0xFFF6F7F9),
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      child: AnimatedHorizontalCalendar(
                          tableCalenderIcon: Icon(
                            Icons.calendar_today,
                            color: Colors.white,
                          ),
                          date: DateTime.now(),
                          textColor: Colors.black45,
                          backgroundColor: Colors.white,
                          tableCalenderThemeData: ThemeData.light().copyWith(
                            primaryColor: Colors.green,
                            accentColor: Colors.red,
                            colorScheme:
                                ColorScheme.light(primary: Colors.green),
                            buttonTheme: ButtonThemeData(
                                textTheme: ButtonTextTheme.primary),
                          ),
                          selectedColor: Color.fromARGB(255, 6, 20, 100),
                          onDateSelected: (date) {}),
                    ),
                    SizedBox(
                        width: 250,
                        height: 50.0,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(
                                  255, 6, 20, 100) // Background color
                              ),
                          child: Text(
                            "Choose an hour",
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, DayNight.routeName);
                          },
                        )),
                    TopRoundedContainer(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: SizeConfig.screenWidth * 0.15,
                          right: SizeConfig.screenWidth * 0.15,
                          bottom: getProportionateScreenWidth(40),
                          top: getProportionateScreenWidth(15),
                        ),
                        child: DefaultButton(
                          text: "Schedule",
                          press: () {
                            Navigator.pushNamed(context, Scheduled.routeName);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
