import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MoreHealth extends StatelessWidget {
  const MoreHealth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    List mfh = [
      {
        "i": "assests/images/billsicon.png",
        "t": "Bills",
      },
      {
        "i": "assests/images/insuranceicon.png",
        "t": "Insurance",
      },
    ];

    return Column(
      children: [
        Row(
          children: [
            Text(
              "More From Health",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12.sp,
              ),
            )
          ],
        ),
        SizedBox(
          height: height / 80.3,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.sp),
            color: Colors.white,
          ),
          child: ListView.builder(
              itemCount: mfh.length,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (
                BuildContext build,
                int index,
              ) {
                return Column(
                  children: [
                    ListTile(
                      tileColor: Colors.white,
                      leading: SizedBox(
                        height: height / 22.94,
                        child: Image.asset(mfh[index]["i"]),
                      ),
                      title: Text(
                        mfh[index]["t"],
                        style: TextStyle(color: Colors.black, fontSize: 10.sp),
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.black,
                          size: 10.sp,
                        ),
                      ),
                    ),
                  ],
                );
              }),
        ),
      ],
    );
  }
}
