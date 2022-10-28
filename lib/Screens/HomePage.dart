import 'package:apolloapp/Widgets/HomePage/LabDoc.dart';
import 'package:flutter/material.dart';

import '../Widgets/HomePage/AskApollo.dart';
import '../Widgets/HomePage/BookDocConsult.dart';
import '../Widgets/HomePage/BuyMedicineWidget.dart';
import '../Widgets/HomePage/Ad.dart';
import '../Widgets/HomePage/CircleMembership.dart';
import '../Widgets/HomePage/ProHealth.dart';
import '../Widgets/HomePage/ReferFriend.dart';
import '../Widgets/HomePage/Services4U.dart';
import '../Widgets/ScafWidgets/BottomNavBar.dart';
import '../Widgets/ScafWidgets/HomeAppBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height / 13.38),
        child: const HomeAppBar(),
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          const BuyMedicineWidget(),
          SizedBox(
            height: height / 33.2,
          ),
          const LabDoc(),
          SizedBox(
            height: height / 33.2,
          ),
          const AskApollo(),
          SizedBox(
            height: height / 33.2,
          ),
          const Ad(),
          SizedBox(
            height: height / 33.2,
          ),
          const ReferFriend(),
          SizedBox(
            height: height / 33.2,
          ),
          const CircleMembership(),
          SizedBox(
            height: height / 33.2,
          ),
          const BookDocConsult(),
          SizedBox(
            height: height / 33.2,
          ),
          const Services4U(),
          SizedBox(
            height: height / 33.2,
          ),
          const ProHealth(),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
