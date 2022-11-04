import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ShopByBrand extends StatelessWidget {
  const ShopByBrand({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    List sbb = [
      {
        "i": "assests/images/nivealogo.jpg",
      },
      {
        "i": "assests/images/onetouchlogo.jpg",
      },
      {
        "i": "assests/images/horlickslogo.jpg",
      },
      {
        "i": "assests/images/zandulogo.jpg",
      },
      {
        "i": "assests/images/vaselinelogo.jpg",
      },
      {
        "i": "assests/images/pediasurelogo.jpg",
      },
      {
        "i": "assests/images/lifebuoylogo.jpg",
      },
      {
        "i": "assests/images/himalayalogo.jpg",
      },
    ];

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "SHOP BY BRAND",
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
        Divider(
          color: Colors.black,
          thickness: height / 1147.14,
        ),
        SizedBox(
          height: height / 80.3,
        ),
        SizedBox(
          height: height / 10.03,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: sbb.length,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (
                BuildContext build,
                int index,
              ) {
                return Container(
                  margin: EdgeInsets.all(5.0.sp),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.sp),
                    color: Colors.white,
                  ),
                  height: height / 10.03,
                  width: width / 2.31,
                  child: Image.asset(
                    sbb[index]["i"],
                    width: width / 2.62,
                  ),
                );
              }),
        ),
      ],
    );
  }
}
