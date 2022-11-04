import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class WhatsappUplRecord extends StatelessWidget {
  const WhatsappUplRecord({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height / 16.06,
      padding: EdgeInsets.all(7.sp),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.sp), color: Colors.orange),
      child: Row(
        children: [
          SizedBox(
            height: height / 22.94,
            child: Image.asset("assests/images/whatsappicon.png"),
          ),
          SizedBox(
            width: width / 19.65,
          ),
          Text(
            "Now Upload your health record from Whatsapp to \n+91 8045681199",
            maxLines: 2,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.red,
                fontSize: 10.sp),
          ),
        ],
      ),
    );
  }
}
