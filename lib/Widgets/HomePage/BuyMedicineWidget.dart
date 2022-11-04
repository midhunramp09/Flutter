import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BuyMedicineWidget extends StatelessWidget {
  const BuyMedicineWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Card(
      color: Colors.teal,
      child: Column(
        children: [
          SizedBox(
            height: height / 114.71,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "through Apollo Pharmacy\t\t",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 9.sp),
              ),
            ],
          ),
          ListTile(
            leading: Image.asset("assests/images/buymedwidgicon.png"),
            title: Text(
              "Buy Medicine and Essentials",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 12.sp),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.keyboard_arrow_right,
                size: 14.sp,
              ),
              color: Colors.white,
            ),
          ),
          Container(
            height: height / 11.47,
            padding: EdgeInsets.all(7.sp),
            child: ListTile(
              minLeadingWidth: width / 19.65,
              tileColor: Colors.white,
              leading: const Icon(Icons.wallet),
              title: Text(
                "Get 100% Genuine Medicine",
                style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black45),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
