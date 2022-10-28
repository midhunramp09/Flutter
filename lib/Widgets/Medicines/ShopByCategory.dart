import 'package:flutter/material.dart';

class ShopByCategory extends StatelessWidget {
  const ShopByCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    List aa = [
      {
        "i": "assests/images/babycareicon.png",
        "t": "Baby Care",
      },
      {
        "i": "assests/images/nutritionicon.png",
        "t": "Health & Nutrition",
      },
      {
        "i": "assests/images/personalcareicon.png",
        "t": "Personal care",
      },
      {
        "i": "assests/images/ayurveda.png",
        "t": "Ayurveda",
      },
      {
        "i": "assests/images/healthdevicesicon.png",
        "t": "Health Devices",
      },
      {
        "i": "assests/images/homeessentialsicon.png",
        "t": "Home Essentials",
      },
      {
        "i": "assests/images/healthyicon.png",
        "t": "Health Condition",
      },
      {
        "i": "assests/images/covidessentials.png",
        "t": "Covid Essentials",
      },
    ];

    return Column(
      children: [
        Row(
          children: const [
            Text(
              "SHOP BY CATEGORY",
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
              itemCount: aa.length,
              shrinkWrap: true,
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
                            aa[index]["i"],
                            height: height / 20.07,
                            width: width / 9.82,
                          ),
                          title: Text(
                            aa[index]["t"],
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
