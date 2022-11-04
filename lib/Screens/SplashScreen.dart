import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'NavigationPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetonavigation();
  }

  _navigatetonavigation() async {
    await Future.delayed(
        const Duration(
          milliseconds: 4000,
        ),
        () {});
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => const NavigationPage()));
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: height / 2.7,
            ),
            Image.asset(
              "assests/images/apollo247logo.jpg",
              scale: 0.9.sp,
            ),
            SizedBox(
              height: height / 4.5,
            ),
            Image.asset(
              "assests/images/syringecoloricon.png",
              height: height / 14,
            ),
          ],
        ),
      ),
    );
  }
}
