import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.sp),
        color: Colors.white,
      ),
      child: ListTile(
        leading: Image.asset(
          "assests/images/medicinesicon.png",
          height: height / 26.77,
          width: width / 13.1,
        ),
        title: Text(
          "My Orders",
          style: TextStyle(fontSize: 12.sp),
        ),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.black,
          size: 12.sp,
        ),
      ),
    );
  }
}
