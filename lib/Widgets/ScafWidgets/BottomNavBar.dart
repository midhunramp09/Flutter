import 'package:flutter/material.dart';

import '../../Screens/Consult.dart';
import '../../Screens/HomePage.dart';
import '../../Screens/LabTests.dart';
import '../../Screens/Medicines.dart';
import '../../Screens/Records.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int gen = 0;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: gen,
      selectedFontSize: 14,
      unselectedFontSize: 14,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black,
      onTap: (int index) {
        setState(() {
          gen = index;
        });
        if (index == 0) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HomePage()));
        }
        if (index == 1) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Consult()));
        }
        if (index == 2) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Medicines()));
        }
        if (index == 3) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const LabTests()));
        }
        if (index == 4) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Records()));
        }
      },
      items: <BottomNavigationBarItem>[
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
    );
  }
}
