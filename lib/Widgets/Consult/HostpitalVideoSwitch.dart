import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HostpitalVideoSwitch extends StatelessWidget {
  const HostpitalVideoSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height / 18,
      width: width,
      padding: EdgeInsets.all(3.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.sp),
        color: Colors.grey,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: height / 18,
            width: width / 2.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.sp),
              color: Colors.white,
            ),
            child: Center(
              child: Text(
                "HOSPITAL VISIT",
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ),
          ),
          Container(
            height: height / 18,
            width: width / 2.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.sp),
              //color: Colors.white,
            ),
            child: Center(
              child: Text(
                "VIDEO CONSULT",
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
