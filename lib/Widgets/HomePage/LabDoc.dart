import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LabDoc extends StatelessWidget {
  const LabDoc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    List l1 = [
      {
        "t": "Book Lab Tests",
        "i": "assests/images/microscopeicon.png",
        "tl": Icons.percent_outlined,
        "tt": "Packages @499",
      },
      {
        "t": "Consult a Doctor",
        "i": "assests/images/doctoricon.png",
        "tl": Icons.timer_outlined,
        "tt": "Video Consult",
      }
    ];

    return SizedBox(
        height: height / 8.03,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ListView.builder(
                itemCount: l1.length,
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
                        border: Border.all(color: Colors.green),
                      ),
                      height: height / 6.69,
                      width: width / 2.31,
                      child: Column(
                        children: [
                          ListTile(
                            minLeadingWidth: width / 39.3,
                            title: Text(
                              l1[index]["t"],
                              style: TextStyle(
                                  fontSize: 8.sp, fontWeight: FontWeight.bold),
                            ),
                            trailing: Icon(
                              Icons.keyboard_arrow_right,
                              color: Colors.black,
                              size: 12.sp,
                            ),
                            leading: Image.asset(
                              l1[index]["i"],
                              height: height / 26.77,
                              width: width / 13.1,
                            ),
                          ),
                          Container(
                            color: Colors.lime,
                            child: Row(
                              children: [
                                Icon(
                                  l1[index]["tl"],
                                  size: 20.sp,
                                  color: Colors.lightBlue,
                                ),
                                SizedBox(
                                  width: width / 78.6,
                                ),
                                Text(
                                  l1[index]["tt"],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10.sp,
                                      color: Colors.lightBlue),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ));
                })
          ],
        ));
    // );
  }
}
