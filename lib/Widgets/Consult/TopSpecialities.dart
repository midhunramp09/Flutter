import 'package:flutter/material.dart';

class TopSpecialities extends StatelessWidget {
  const TopSpecialities({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    List ts = [
      {
        "i": "assests/images/generalphysicianicon.jpg",
        "t": "General Physician",
      },
      {
        "i": "assests/images/gynaecologyicon.jpg",
        "t": "Gynaecology",
      },
      {
        "i": "assests/images/urologyicon.png",
        "t": "Urology",
      },
      {
        "i": "assests/images/enticon.jpg",
        "t": "ENT",
      },
      {
        "i": "assests/images/orthopaedicsicon.jpg",
        "t": "Orthopaedics",
      },
      {
        "i": "assests/images/dermatologyicon.jpg",
        "t": "Dermatology",
      },
    ];

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Book Doctor Consult",
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
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.orange,
                  size: 16,
                ),
              ],
            ),
          ],
        ),
        Divider(
          thickness: height / 1147.14,
          color: Colors.black,
        ),
        SizedBox(
          height: height / 80.3,
        ),
        GridView.count(
            crossAxisCount: 3,
            scrollDirection: Axis.vertical,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            children: List.generate(ts.length, (index) {
              return Container(
                height: height / 80.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.green),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      ts[index]["i"],
                      height: height / 13.83,
                      width: width / 6.55,
                    ),
                    SizedBox(
                      height: height / 160.6,
                    ),
                    Text(
                      ts[index]["t"],
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
