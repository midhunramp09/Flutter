import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Healthplans extends StatelessWidget {
  const Healthplans({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Row(
          children: [
            Text(
              "Health Insurance Plans for You",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14.sp,
              ),
            ),
          ],
        ),
        SizedBox(
          height: height / 53.53,
        ),
        Image.network(
            "https://www.jagoinvestor.com/wp-content/uploads/files/apollo-munich-optima-health-restore.png"),
      ],
    );
  }
}
