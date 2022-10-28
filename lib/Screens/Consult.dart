import 'package:apolloapp/Widgets/HomePage/AskApollo.dart';
import 'package:flutter/material.dart';

import '../Widgets/Consult/Healthplans.dart';
import '../Widgets/Consult/MyAppointments.dart';
import '../Widgets/Consult/TopSpecialities.dart';
import '../Widgets/ScafWidgets/BottomNavBar.dart';
import '../Widgets/ScafWidgets/ConsultAppBar.dart';

class Consult extends StatelessWidget {
  const Consult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height / 13.38),
        child: const ConsultAppBar(),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          SizedBox(
            height: height / 80.3,
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
          const Healthplans(),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
