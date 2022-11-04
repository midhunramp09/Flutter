import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CircleMembership extends StatelessWidget {
  const CircleMembership({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Row(
          children: [
            Text(
              "Circle Membership and More",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12.sp,
              ),
            )
          ],
        ),
        SizedBox(
          height: height / 80.3,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.orangeAccent,
            borderRadius: BorderRadius.circular(10.sp),
          ),
          child: Column(
            children: [
              ListTile(
                tileColor: Colors.orangeAccent,
                title: Text(
                  "Free Deliveries and Cashbacks",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 10.sp),
                ),
                subtitle: Text(
                  "Buy Circle @Rs.199 for 6 months",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                    fontSize: 9.sp,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Text(
                    "Buy Now",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 10.sp,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
