import 'package:flutter/material.dart';

class ShopByHealth extends StatelessWidget {
  const ShopByHealth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    List sbh = [
      {
        "i": "assests/images/covidcareicon.png",
        "t": "Covid Care",
      },
      {
        "i": "assests/images/diabetescareicon.png",
        "t": "Diabetes Care",
      },
      {
        "i": "assests/images/livercareicon.png",
        "t": "Liver care",
      },
      {
        "i": "assests/images/heartcareicon.png",
        "t": "Cardiac",
      },
      {
        "i": "assests/images/painreliefcareicon.png",
        "t": "Pain Relief",
      },
      {
        "i": "assests/images/oralcareicon.png",
        "t": "Oral Care",
      },
      {
        "i": "assests/images/respiratorycareicon.png",
        "t": "Respiratory",
      },
      {
        "i": "assests/images/stomachcareicon.png",
        "t": "Stomach Care",
      },
    ];

    return Column(
      children: [
        Row(
          children: const [
            Text(
              "SHOP BY HEALTH CONDITIONS",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
        Divider(
          color: Colors.black,
          thickness: height / 1147.14,
        ),
        SizedBox(
          height: height / 80.3,
        ),
        SizedBox(
          height: height / 10.03,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: sbh.length,
              shrinkWrap: true,
              physics:  const BouncingScrollPhysics(),
              itemBuilder: (
                BuildContext build,
                int index,
              ) {
                return Container(
                    margin: const EdgeInsets.all(5.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      border: Border.all(color: Colors.green),
                    ),
                    height: height / 10.03,
                    width: width / 2.31,
                    child: Column(
                      children: [
                        ListTile(
                          leading: Image.asset(
                            sbh[index]["i"],
                            height: height / 20.07,
                            width: width / 9.82,
                          ),
                          title: Text(
                            sbh[index]["t"],
                            style: const TextStyle(
                                fontSize: 12, color: Colors.black),
                          ),
                        ),
                      ],
                    ));
              }),
        ),
      ],
    );
  }
}
