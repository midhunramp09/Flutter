import 'package:flutter/material.dart';

class Ad3 extends StatelessWidget {
  const Ad3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
        "https://medical.olympusamerica.com/sites/default/files/homepage-hero/billboard_ee3_0.jpg");
  }
}
