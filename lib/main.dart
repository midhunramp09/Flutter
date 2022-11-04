import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Screens/MyHomePage.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return Sizer(builder: (context, orientation, deviceType) {
      return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Apollo 24/7 App',
        home: MyHomePage(),
      );
    });
  }
}
