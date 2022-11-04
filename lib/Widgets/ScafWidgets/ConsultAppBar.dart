import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ConsultAppBar extends StatelessWidget {
  const ConsultAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      leading: Image.asset("assests/images/apollo247logo.jpg"),
      title: Row(
        children: [
          Icon(
            Icons.location_on,
            color: Colors.green,
            size: 16.sp,
          ),
          SizedBox(
            width: width / 56.14,
          ),
          Text(
            "ALL CITIES",
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          )
        ],
      ),
      actions: [
        Padding(
          padding: EdgeInsets.all(7.sp),
          child: SizedBox(
            height: height / 26.77,
            width: width / 13.1,
            child: Image.asset("assests/images/shoppingcarticon.png"),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(7.sp),
          child: SizedBox(
            height: height / 32.12,
            width: width / 15.72,
            child: Image.asset("assests/images/usericon.png"),
          ),
        ),
      ],
      bottom: PreferredSize(
        preferredSize: Size(50.sp, 50.sp),
        child: Container(
          height: height / 11.47,
          padding: EdgeInsets.all(7.sp),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.sp),
            color: Colors.white,
            border: Border.all(color: Colors.white60),
          ),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              fontSize: 10.sp,
            ),
            decoration: InputDecoration(
              suffixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5.sp)),
              ),
              fillColor: Colors.white60,
              filled: true,
              hintText: "search for doctors, specialties & symptoms",
            ),
          ),
        ),
      ),
    );
  }
}
