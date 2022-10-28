import 'package:flutter/material.dart';

class Ad2 extends StatelessWidget {
  const Ad2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
        "https://i.pinimg.com/originals/7d/20/d3/7d20d36d7018ee2c4014a2e9057a3b99.jpg");
  }
}
