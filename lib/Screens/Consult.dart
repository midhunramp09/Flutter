import 'package:apolloapp/Widgets/HomePage/AskApollo.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../Widgets/Consult/Healthplans.dart';
import '../Widgets/Consult/HostpitalVideoSwitch.dart';
import '../Widgets/Consult/MyAppointments.dart';
import '../Widgets/Consult/RecommendedDoctor.dart';
import '../Widgets/Consult/TopSpecialities.dart';
import '../Widgets/ScafWidgets/ConsultAppBar.dart';

class Consult extends StatelessWidget {
  const Consult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height / 6.691),
        child: const ConsultAppBar(),
      ),
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.all(10.sp),
        children: [
          const HostpitalVideoSwitch(),
          SizedBox(
            height: height / 40.15,
          ),
          const TopSpecialities(),
          SizedBox(
            height: height / 26.77,
          ),
          const AskApollo(),
          SizedBox(
            height: height / 26.77,
          ),
          const MyAppointments(),
          SizedBox(
            height: height / 26.77,
          ),
          RecommendedDoctor(),
          SizedBox(
            height: height / 26.77,
          ),
          const Healthplans(),
        ],
      ),
    );
  }
}
