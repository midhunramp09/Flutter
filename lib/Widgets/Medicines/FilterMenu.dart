import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class FilterMenu extends StatelessWidget {
  FilterMenu({Key? key}) : super(key: key);
  int val = 1;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        DropdownButton(
          items: [
            DropdownMenuItem(
              value: 1,
              child: Text(
                "Shop By Category",
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            DropdownMenuItem(
              value: 2,
              child: Text(
                "Baby Care",
                style: TextStyle(fontSize: 12.sp),
              ),
            ),
            DropdownMenuItem(
              value: 3,
              child: Text(
                "Health & Nutrition",
                style: TextStyle(fontSize: 12.sp),
              ),
            ),
            DropdownMenuItem(
              value: 4,
              child: Text(
                "Women Care",
                style: TextStyle(fontSize: 12.sp),
              ),
            ),
            DropdownMenuItem(
              value: 5,
              child: Text(
                "Personal Care",
                style: TextStyle(fontSize: 12.sp),
              ),
            ),
            DropdownMenuItem(
              value: 6,
              child: Text(
                "Ayurveda",
                style: TextStyle(fontSize: 12.sp),
              ),
            ),
            DropdownMenuItem(
              value: 7,
              child: Text(
                "Health Devices",
                style: TextStyle(fontSize: 12.sp),
              ),
            ),
            DropdownMenuItem(
              value: 8,
              child: Text(
                "Home Essentials",
                style: TextStyle(fontSize: 12.sp),
              ),
            ),
            DropdownMenuItem(
              value: 9,
              child: Text(
                "Covid Essentials",
                style: TextStyle(fontSize: 12.sp),
              ),
            ),
          ],
          hint: Text(
            "Shop by Category",
            style: TextStyle(
              color: Colors.black,
              fontSize: 12.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          onChanged: (int? value) {},
        ),
        SizedBox(
          width: width / 26.2,
        ),
        Row(
          children: [
            Icon(
              Icons.percent_rounded,
              color: Colors.black,
              size: 16.sp,
            ),
            SizedBox(
              width: width / 131,
            ),
            Text(
              "Special Offers",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12.sp,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
