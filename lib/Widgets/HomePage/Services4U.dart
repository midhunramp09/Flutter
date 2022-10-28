import 'package:flutter/material.dart';

class Services4U extends StatelessWidget {
  const Services4U({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    List su = [
      {
        "i": "assests/images/vaccinationicon.png",
        "t": " Vaccine",
      },
      {
        "i": "assests/images/diabetesicon.png",
        "t": "Manage Diabetes",
      },
    ];

    return Column(
      children: [
        Row(
          children: const [
            Text(
              "Services For You",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
        Divider(
          thickness: height / 1147.14,
          color: Colors.black,
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
                    itemCount: su.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: const EdgeInsets.all(5.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black12,
                          border: Border.all(color: Colors.green),
                        ),
                        height: height / 10.04,
                        width: width / 2.31,
                        child: ListTile(
                          minLeadingWidth: width / 39.3,
                          title: Text(
                            su[index]["t"],
                            style: const TextStyle(
                                fontSize: 11, fontWeight: FontWeight.bold),
                          ),
                          trailing: const Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.black,
                          ),
                          leading: Image.asset(
                            su[index]["i"],
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
