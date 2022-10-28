import 'package:flutter/material.dart';

import '../Widgets/Records/ClinicalDoc.dart';
import '../Widgets/Records/HealthCategories.dart';
import '../Widgets/Records/MoreHealth.dart';
import '../Widgets/Records/WhatsappUplRecord.dart';
import '../Widgets/ScafWidgets/BottomNavBar.dart';
import '../Widgets/ScafWidgets/RecordsAppBar.dart';

class Records extends StatelessWidget {
  const Records({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height / 13.38),
        child: const RecordsAppBar(),
      ),
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(15),
        children: [
          SizedBox(
            height: height / 40.15,
          ),
          const WhatsappUplRecord(),
          SizedBox(
            height: height / 40.15,
          ),
          const ClinicalDoc(),
          SizedBox(
            height: height / 40.15,
          ),
          const HealthCategories(),
          SizedBox(
            height: height / 40.15,
          ),
          const MoreHealth(),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
