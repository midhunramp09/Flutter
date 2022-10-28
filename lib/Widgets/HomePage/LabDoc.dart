import 'package:flutter/material.dart';

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
        "tt": "Packaging starting @499",
      },
      {
        "t": "Consult a Doctor",
        "i": "assests/images/doctoricon.png",
        "tl": Icons.timer_outlined,
        "tt": "Video & Hospital Consult",
      }
    ];

    return SizedBox(
        height: height / 6.69,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ListView.builder(
                itemCount: l1.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                      margin: const EdgeInsets.all(5.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
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
                              style: const TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.bold),
                            ),
                            trailing: const Icon(
                              Icons.keyboard_arrow_right,
                              color: Colors.black,
                            ),
                            leading: Image.asset(
                              l1[index]["i"],
                              height: height / 26.77,
                              width: width / 13.1,
                            ),
                          ),
                          Container(
                            color: Colors.blueGrey,
                            child: Row(
                              children: [
                                Icon(
                                  l1[index]["tl"],
                                  color: Colors.limeAccent,
                                ),
                                Text(
                                  l1[index]["tt"],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Colors.limeAccent),
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
