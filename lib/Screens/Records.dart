import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../Widgets/Records/ClinicalDoc.dart';
import '../Widgets/Records/HealthCategories.dart';
import '../Widgets/Records/MoreHealth.dart';
import '../Widgets/Records/WhatsappUplRecord.dart';
import '../Widgets/ScafWidgets/RecordsAppBar.dart';

class Records extends StatelessWidget {
  const Records({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height / 4.723),
        child: const RecordsAppBar(),
      ),
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.all(10.sp),
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
    );
  }
}
