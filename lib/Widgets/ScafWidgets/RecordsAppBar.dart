import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class RecordsAppBar extends StatelessWidget {
  const RecordsAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      leading: Image.asset("assests/images/apollo247logo.jpg"),
      title: Text(
        "HEALTH RECORDS",
        style: TextStyle(
            fontSize: 12.sp, fontWeight: FontWeight.bold, color: Colors.black),
      ),
      bottom: PreferredSize(
        preferredSize: Size(50.sp, 50.sp),
        child: Container(
          padding: EdgeInsets.all(15.sp),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 28.sp,
                  ),
                  SizedBox(
                    width: width / 39.3,
                  ),
                  Text(
                    "All Profiles",
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Icon(
                    Icons.arrow_drop_down_sharp,
                    size: 20.sp,
                    color: Colors.green,
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: width / 8.73,
                  ),
                  Text(
                    "Access all health records from one\nplace!",
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
