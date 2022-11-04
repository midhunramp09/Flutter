import 'package:apolloapp/Widgets/HomePage/LabDoc.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../Widgets/HomePage/AskApollo.dart';
import '../Widgets/HomePage/BookDocConsult.dart';
import '../Widgets/HomePage/BuyMedicineWidget.dart';
import '../Widgets/HomePage/Ad.dart';
import '../Widgets/HomePage/CircleMembership.dart';
import '../Widgets/HomePage/ProHealth.dart';
import '../Widgets/HomePage/ReferFriend.dart';
import '../Widgets/HomePage/Services4U.dart';
import '../Widgets/ScafWidgets/HomeAppBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height / 6.691),
        child: const HomeAppBar(),
      ),
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.all(10.sp),
        children: [
          const BuyMedicineWidget(),
          SizedBox(
            height: height / 53.53,
          ),
          const LabDoc(),
          SizedBox(
            height: height / 53.53,
          ),
          const AskApollo(),
          SizedBox(
            height: height / 53.53,
          ),
          const ReferFriend(),
          SizedBox(
            height: height / 53.53,
          ),
          const CircleMembership(),
          SizedBox(
            height: height / 32.12,
          ),
          const Ad(),
          SizedBox(
            height: height / 40.15,
          ),
          const BookDocConsult(),
          SizedBox(
            height: height / 53.53,
          ),
          const Services4U(),
          SizedBox(
            height: height / 53.53,
          ),
          const ProHealth(),
        ],
      ),
    );
  }
}
