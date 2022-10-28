import 'package:flutter/material.dart';

class BookDocConsult extends StatelessWidget {
  const BookDocConsult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    List bdc = [
      {
        "i": "assests/images/hospitalvisiticon.png",
        "t": "Hospital Visit",
      },
      {
        "i": "assests/images/videocallicon.png",
        "t": "Video Consult",
      },
    ];

    return Column(
      children: [
        Row(
          children: const [
            Text(
              "Book Doctor Consult",
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
                    itemCount: bdc.length,
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
                            bdc[index]["t"],
                            style: const TextStyle(
                                fontSize: 11, fontWeight: FontWeight.bold),
                          ),
                          trailing: const Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.black,
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
