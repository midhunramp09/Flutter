import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class UploadPrescrip extends StatelessWidget {
  const UploadPrescrip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.sp),
        color: Colors.white,
      ),
      child: ListTile(
        leading: Image.asset("assests/images/prescriptioncoloricon.png"),
        title: Text(
          "Upload Prescription",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12.sp,
          ),
        ),
        subtitle: Text(
          "Order with Prescription",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 10.sp,
              color: Colors.green),
        ),
        trailing: ElevatedButton(
          style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.orange)),
          onPressed: () {},
          child: Text(
            "UPLOAD",
            style: TextStyle(fontSize: 10.sp),
          ),
        ),
      ),
    );
  }
}
