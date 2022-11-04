import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyAppointments extends StatelessWidget {
  const MyAppointments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          children: [
            Text(
              "My Appointments",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12.sp,
              ),
            ),
          ],
        ),
        SizedBox(
          height: height / 53.53,
        ),
        Container(
          height: height / 13.38,
          width: width / 0.9825,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.sp),
            color: Colors.white70,
            border: Border.all(color: Colors.grey),
          ),
          child: ListTile(
            title: Text(
              "My Appointments",
              style: TextStyle(
                fontSize: 12.sp,
              ),
            ),
            leading: Image.asset(
              "assests/images/consulticon.png",
              height: height / 22.94,
              width: width / 11.23,
            ),
            trailing: Icon(
              Icons.keyboard_arrow_right,
              color: Colors.black,
              size: 14.sp,
            ),
          ),
        ),
      ],
    );
  }
}
