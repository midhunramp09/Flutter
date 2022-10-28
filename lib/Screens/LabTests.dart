import 'package:apolloapp/Widgets/Medicines/Ad3.dart';
import 'package:flutter/material.dart';

import '../Widgets/LabTests/Ad2.dart';
import '../Widgets/LabTests/ClinicallyCuratedPackages.dart';
import '../Widgets/LabTests/PopularCategories.dart';
import '../Widgets/LabTests/SimpleStepsLabTestDone.dart';
import '../Widgets/LabTests/UploadPrescrip.dart';
import '../Widgets/LabTests/VitalOrgans.dart';
import '../Widgets/LabTests/WomenCare.dart';
import '../Widgets/ScafWidgets/BottomNavBar.dart';
import '../Widgets/ScafWidgets/LabTestsAppBar.dart';

class LabTests extends StatelessWidget {
  const LabTests({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height / 13.38),
        child: const LabTestsAppBar(),
      ),
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(15),
        children: [
          const Ad2(),
          SizedBox(
            height: height / 80.3,
          ),
          const UploadPrescrip(),
          SizedBox(
            height: height / 26.77,
          ),
          const PopularCategories(),
          SizedBox(
            height: height / 53.53,
          ),
          const SimpleStepsLabTestDone(),
          SizedBox(
            height: height / 26.77,
          ),
          const ClinicallyCuratedPackages(),
          SizedBox(
            height: height / 26.77,
          ),
          const VitalOrgans(),
          SizedBox(
            height: height / 26.77,
          ),
          const WomenCare(),
          SizedBox(
            height: height / 80.3,
          ),
          const Ad3(),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
