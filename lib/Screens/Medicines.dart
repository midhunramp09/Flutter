import 'package:flutter/material.dart';

import '../Widgets/Medicines/Ad1.dart';
import '../Widgets/Medicines/Ad3.dart';
import '../Widgets/Medicines/ExplorePopular.dart';
import '../Widgets/Medicines/MyOrders.dart';
import '../Widgets/Medicines/PlaceOrder.dart';
import '../Widgets/Medicines/ShopByBrand.dart';
import '../Widgets/Medicines/ShopByCategory.dart';
import '../Widgets/Medicines/ShopByHealth.dart';
import '../Widgets/ScafWidgets/BottomNavBar.dart';
import '../Widgets/ScafWidgets/MedicinesAppBar.dart';

class Medicines extends StatelessWidget {
  const Medicines({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height / 13.38),
        child: const MedicinesAppBar(),
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          const Ad3(),
          SizedBox(
            height: height / 80.3,
          ),
          const MyOrders(),
          SizedBox(
            height: height / 26.77,
          ),
          const PlaceOrder(),
          SizedBox(
            height: height / 26.77,
          ),
          const ShopByCategory(),
          SizedBox(
            height: height / 80.3,
          ),
          const Ad2(),
          SizedBox(
            height: height / 40.15,
          ),
          const ShopByBrand(),
          SizedBox(
            height: height / 26.77,
          ),
          const ShopByHealth(),
          SizedBox(
            height: height / 26.77,
          ),
          const ExplorePopular(),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
