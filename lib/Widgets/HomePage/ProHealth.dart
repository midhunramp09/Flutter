import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ProHealth extends StatelessWidget {
  const ProHealth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Apollo Prohealth",
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
        Image.network(
            "https://assets.apollo247.com/images/ogimages/apollo-pro-care.jpg"),
      ],
    );
  }
}
