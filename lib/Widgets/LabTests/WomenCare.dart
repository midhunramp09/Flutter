import 'package:flutter/material.dart';

class WomenCare extends StatelessWidget {
  const WomenCare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    List wc = [
      {
        "i": "assests/images/bloodcellsicon.png",
        "t": "Anemia",
      },
      {
        "i": "assests/images/pregnancyicon.png",
        "t": "Pregnancy",
      },
      {
        "i": "assests/images/bloodcellsicon.png",
        "t": "Iron studies",
      },
      {
        "i": "assests/images/vitaminicon.png",
        "t": "Vitamin",
      },
    ];

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "WOMEN CARE",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Row(
              children: const [
                Text(
                  "View all",
                  style: TextStyle(
                    color: Colors.pink,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.pink,
                  size: 12,
                ),
              ],
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
        GridView.count(
            crossAxisCount: 4,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics:  const BouncingScrollPhysics(),
            children: List.generate(wc.length, (index) {
              return Container(
                height: height / 16.06,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      wc[index]["i"],
                      height: height / 20.07,
                      width: width / 9.82,
                    ),
                    SizedBox(
                      height: height / 160.6,
                    ),
                    Text(
                      wc[index]["t"],
                      style: const TextStyle(fontSize: 12, color: Colors.black),
                    ),
                  ],
                ),
              );
            })),
      ],
    );
  }
}
