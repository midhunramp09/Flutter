import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class VitalOrgans extends StatelessWidget {
  const VitalOrgans({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    List vo = [
      {
        "i": "assests/images/heartcareicon.png",
        "t": "Heart",
      },
      {
        "i": "assests/images/thyroidicon.png",
        "t": "Thyroid",
      },
      {
        "i": "assests/images/painreliefcareicon.png",
        "t": "Joint Pain",
      },
      {
        "i": "assests/images/livercareicon.png",
        "t": "Liver",
      },
      {
        "i": "assests/images/respiratorycareicon.png",
        "t": "Lungs",
      },
      {
        "i": "assests/images/kidneyicon.png",
        "t": "Kidney",
      },
      {
        "i": "assests/images/fullbodyicon.png",
        "t": "Full body\ncheckup",
      },
      {
        "i": "assests/images/boneicon.png",
        "t": "Bone",
      },
    ];

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "VITAL ORGANS",
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
                    fontSize: 10.sp,
                  ),
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
            children: List.generate(vo.length, (index) {
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
                      vo[index]["i"],
                      height: height / 20.07,
                      width: width / 9.82,
                    ),
                    SizedBox(
                      height: height / 160.6,
                    ),
                    Text(
                      vo[index]["t"],
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
