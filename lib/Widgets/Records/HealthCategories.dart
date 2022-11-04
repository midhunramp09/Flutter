import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HealthCategories extends StatelessWidget {
  const HealthCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    List hc = [
      {
        "i": "assests/images/prescriptionicon.png",
        "t": "Consult & Prescriptions",
      },
      {
        "i": "assests/images/labicon.png",
        "t": "Test Reports",
      },
      {
        "i": "assests/images/hospitalicon.png",
        "t": "Hospitalization",
      },
      {
        "i": "assests/images/healthconditionicon.png",
        "t": "Health Conditions",
      },
      {
        "i": "assests/images/syringeicon.png",
        "t": "Vaccination",
      },
    ];

    return Column(
      children: [
        Row(
          children: [
            Text(
              "Health Categories",
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
              itemCount: hc.length,
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
                        child: Image.asset(hc[index]["i"]),
                      ),
                      title: Text(
                        hc[index]["t"],
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10.sp,
                        ),
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
