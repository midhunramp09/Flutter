import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PlaceOrder extends StatelessWidget {
  const PlaceOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Container(
      height: height / 8.03,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.sp),
        color: Colors.white,
      ),
      child: ListTile(
        title: Text(
          "Place your order via prescription",
          style: TextStyle(
            fontSize: 12.sp,
          ),
        ),
        trailing: Image.asset(
          "assests/images/prescriptioncoloricon.png",
          height: height / 16.06,
        ),
        subtitle: ElevatedButton(
          onPressed: () {},
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.orange),
          ),
          child: Text(
            "UPLOAD",
            style: TextStyle(fontSize: 10.sp),
          ),
        ),
      ),
    );
  }
}
