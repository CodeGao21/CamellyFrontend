import 'package:flutter/material.dart';

import '../../../size_config.dart';

class Progress extends StatelessWidget {
  const Progress({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 90,
        width: 350,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage('assets/barra.png'),
              fit: BoxFit.fill,
            )));
  }
}
