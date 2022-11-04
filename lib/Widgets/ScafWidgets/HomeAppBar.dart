import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return AppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: true,
      leading: Image.asset("assests/images/apollo247logo.jpg"),
      title: Row(
        children: [
          Text(
            "Hi Guest",
            style: TextStyle(color: Colors.black, fontSize: 12.sp),
          ),
          Icon(
            Icons.expand_more,
            color: Colors.green,
            size: 12.sp,
          ),
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
            height: height / 26.77,
            width: width / 13.1,
            child: Image.asset("assests/images/notificationbellicon.png"),
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
          height: 70,
          padding: EdgeInsets.all(7.sp),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              fontSize: 12.sp,
            ),
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5.sp)),
              ),
              fillColor: Colors.white60,
              filled: true,
              hintText: "search for medicines, doctors, lab tests",
            ),
          ),
        ),
      ),
    );
  }
}
