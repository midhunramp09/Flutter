import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'Consult.dart';
import 'HomePage.dart';
import 'LabTests.dart';
import 'Medicines.dart';
import 'Records.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int currentIndex = 0;
  final screens = [
    const HomePage(),
    const Consult(),
    const Medicines(),
    const LabTests(),
    const Records(),
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                "assests/images/homeicon.png",
                height: height / 32.12,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assests/images/consulticon.png",
                height: height / 32.12,
              ),
              label: "Consult",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assests/images/medicinesicon.png",
                height: height / 32.12,
              ),
              label: "Medicines",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assests/images/labtestsicon.png",
                height: height / 32.12,
              ),
              label: "Lab-Tests",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assests/images/recordsicon.png",
                height: height / 32.12,
              ),
              label: "Records",
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          selectedFontSize: 10.sp,
          unselectedFontSize: 10.sp,
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.black,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          }),
    );
  }
}
