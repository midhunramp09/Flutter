import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../Widgets/Medicines/Ad1.dart';
import '../Widgets/Medicines/Ad3.dart';
import '../Widgets/Medicines/ExplorePopular.dart';
import '../Widgets/Medicines/FilterMenu.dart';
import '../Widgets/Medicines/MyOrders.dart';
import '../Widgets/Medicines/PlaceOrder.dart';
import '../Widgets/Medicines/ShopByBrand.dart';
import '../Widgets/Medicines/ShopByCategory.dart';
import '../Widgets/Medicines/ShopByHealth.dart';
import '../Widgets/Medicines/WinterEssentials.dart';
import '../Widgets/ScafWidgets/MedicinesAppBar.dart';

class Medicines extends StatelessWidget {
  const Medicines({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height / 6.691),
        child: const MedicinesAppBar(),
      ),
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.fromLTRB(10.sp, 0, 10.sp, 10.sp),
        children: [
          FilterMenu(),
          SizedBox(
            height: height / 160.6,
          ),
          const Ad3(),
          SizedBox(
            height: height / 80.3,
          ),
          const MyOrders(),
          SizedBox(
            height: height / 40.15,
          ),
          const PlaceOrder(),
          SizedBox(
            height: height / 40.15,
          ),
          const ShopByCategory(),
          SizedBox(
            height: height / 80.3,
          ),
          const Ad2(),
          SizedBox(
            height: height / 40.15,
          ),
          const WinterEssentials(),
          SizedBox(
            height: height / 40.15,
          ),
          const ShopByHealth(),
          SizedBox(
            height: height / 40.15,
          ),
          const ExplorePopular(),
          SizedBox(
            height: height / 40.15,
          ),
          const ShopByBrand(),
        ],
      ),
    );
  }
}
