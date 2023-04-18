import 'package:flutter/material.dart';

import '../profile/profile_screen.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageUrl;
  final String? name;
  final String info;

  const CustomCardType2(
      {Key? key, required this.imageUrl, this.name, required this.info})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {},
        child: Card(
            clipBehavior: Clip.antiAlias,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
            elevation: 30,
            shadowColor: Color.fromARGB(255, 4, 60, 127).withOpacity(0.5),
            child: Column(
              children: [
                FadeInImage(
                  image: AssetImage(imageUrl),
                  placeholder: const AssetImage("assets/jar-loading.gif"),
                  width: double.infinity,
                  height: 230,
                  fit: BoxFit.cover,
                  fadeInDuration: const Duration(milliseconds: 300),
                ),
                if (name != null)
                  Container(
                      alignment: AlignmentDirectional.centerEnd,
                      padding:
                          const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                      child: Text(name ?? 'No Title'))
              ],
            )));
  }
}
