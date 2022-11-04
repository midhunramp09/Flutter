import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BookDocConsult extends StatelessWidget {
  const BookDocConsult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    List bdc = [
      {
        "i": "assests/images/hospitalvisiticon.png",
        "t": "Hospital",
      },
      {
        "i": "assests/images/videocallicon.png",
        "t": "Video\nConsult",
      },
    ];

    return Column(
      children: [
        Row(
          children: [
            Text(
              "Book Doctor Consult",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12.sp,
              ),
            ),
          ],
        ),
        SizedBox(
          height: height / 160.6,
        ),
        SizedBox(
            height: height / 10.04,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ListView.builder(
                    itemCount: bdc.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.all(5.0.sp),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.sp),
                          color: Colors.white,
                          border: Border.all(color: Colors.grey),
                        ),
                        height: height / 10.04,
                        width: width / 2.31,
                        child: ListTile(
                          minLeadingWidth: width / 39.3,
                          title: Text(
                            bdc[index]["t"],
                            style: TextStyle(
                                fontSize: 7.sp, fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.black,
                            size: 12.sp,
                          ),
                          leading: Image.asset(
                            bdc[index]["i"],
                            height: height / 22.94,
                            width: width / 11.23,
                          ),
                        ),
                      );
                    })
              ],
            )),
      ],
    );
  }
}
