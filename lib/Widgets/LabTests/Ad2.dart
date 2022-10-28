import 'package:flutter/material.dart';

class Ad2 extends StatelessWidget {
  const Ad2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      "https://thumbs.dreamstime.com/z/recommendations-pcr-test-preparation-vector-infographic-medical-poster-covid-nasal-throat-swabs-lab-analysis-laboratory-217094650.jpg",
    );
  }
}
