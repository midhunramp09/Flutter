import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ClinicalDoc extends StatelessWidget {
  const ClinicalDoc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    List cd = [
      {
        "i": "assests/images/medical-record.png",
        "t": "Clinical Documents",
      },
    ];

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.sp),
        color: Colors.white,
      ),
      child: ListView.builder(
          itemCount: cd.length,
          scrollDirection: Axis.vertical,
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
                    child: Image.asset(cd[index]["i"]),
                  ),
                  title: Text(
                    cd[index]["t"],
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
    );
  }
}
