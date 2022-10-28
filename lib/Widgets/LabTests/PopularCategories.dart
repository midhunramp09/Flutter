import 'package:flutter/material.dart';

class PopularCategories extends StatelessWidget {
  const PopularCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    List pc = [
      {
        "i": "assests/images/covidcareicon.png",
        "t": "Covid-19",
      },
      {
        "i": "assests/images/diabetescareicon.png",
        "t": "Diabetes",
      },
      {
        "i": "assests/images/heartcareicon.png",
        "t": "Heart",
      },
      {
        "i": "assests/images/painreliefcareicon.png",
        "t": "Joint Pain",
      },
      {
        "i": "assests/images/kidneyicon.png",
        "t": "Kidney",
      },
      {
        "i": "assests/images/boneicon.png",
        "t": "Bone",
      },
      {
        "i": "assests/images/respiratorycareicon.png",
        "t": "Lungs",
      },
      {
        "i": "assests/images/thyroidicon.png",
        "t": "Thyroid",
      },
    ];

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "POPULAR CATEGORIES",
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
        SizedBox(
          height: height / 8.03,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: pc.length,
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
                    height: height / 8.03,
                    width: width / 2.31,
                    child: Column(
                      children: [
                        SizedBox(
                          height: height / 80.3,
                        ),
                        Image.asset(
                          pc[index]["i"],
                          height: height / 20.07,
                          width: width / 9.82,
                        ),
                        SizedBox(
                          height: height / 80.3,
                        ),
                        Text(
                          pc[index]["t"],
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
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
