import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ClinicallyCuratedPackages extends StatelessWidget {
  const ClinicallyCuratedPackages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    List ccp = [
      {
        "i": "assests/images/goldmedalicon.png",
        "t": "Curated\nPackages",
      },
      {
        "i": "assests/images/fullbodyicon.png",
        "t": "Full body\ncheckup",
      },
      {
        "i": "assests/images/diabetescareicon.png",
        "t": "Diabetes",
      },
      {
        "i": "assests/images/thyroidicon.png",
        "t": "Thyroid",
      },
      {
        "i": "assests/images/heartcareicon.png",
        "t": "Heart",
      },
      {
        "i": "assests/images/kidneyicon.png",
        "t": "Kidney",
      },
      {
        "i": "assests/images/livercareicon.png",
        "t": "Liver",
      },
      {
        "i": "assests/images/womanicon.png",
        "t": "Women's\nhealth",
      },
    ];

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "CLINICALLY CURATED PACKAGES",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12.sp,
              ),
            ),
            Row(
              children: [
                Text(
                  "View all",
                  style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                      fontSize: 10.sp),
                ),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.orange,
                  size: 10.sp,
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: height / 80.3,
        ),
        GridView.count(
            crossAxisCount: 4,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            children: List.generate(ccp.length, (index) {
              return Container(
                height: height / 16.06,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      ccp[index]["i"],
                      height: height / 20.07,
                      width: width / 9.82,
                    ),
                    SizedBox(
                      height: height / 160.6,
                    ),
                    Text(
                      ccp[index]["t"],
                      style: TextStyle(fontSize: 10.sp, color: Colors.black),
                    ),
                  ],
                ),
              );
            })),
      ],
    );
  }
}
