import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../Widgets/LabTests/Ad2.dart';
import '../Widgets/LabTests/Ad4.dart';
import '../Widgets/LabTests/ClinicallyCuratedPackages.dart';
import '../Widgets/LabTests/PopularCategories.dart';
import '../Widgets/LabTests/SimpleStepsLabTestDone.dart';
import '../Widgets/LabTests/UploadPrescrip.dart';
import '../Widgets/LabTests/VitalOrgans.dart';
import '../Widgets/LabTests/WomenCare.dart';
import '../Widgets/ScafWidgets/LabTestsAppBar.dart';

class LabTests extends StatelessWidget {
  const LabTests({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height / 6.691),
        child: const LabTestsAppBar(),
      ),
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.all(10.sp),
        children: [
          const Ad4(),
          SizedBox(
            height: height / 80.3,
          ),
          const UploadPrescrip(),
          SizedBox(
            height: height / 40.15,
          ),
          const ClinicallyCuratedPackages(),
          SizedBox(
            height: height / 40.15,
          ),
          const PopularCategories(),
          SizedBox(
            height: height / 80.3,
          ),
          const SimpleStepsLabTestDone(),
          SizedBox(
            height: height / 40.15,
          ),
          const VitalOrgans(),
          SizedBox(
            height: height / 40.15,
          ),
          const WomenCare(),
          SizedBox(
            height: height / 53.53,
          ),
          const Ad2(),
        ],
      ),
    );
  }
}
