import 'package:flutter/material.dart';

class MoreHealth extends StatelessWidget {
  const MoreHealth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    List mfh = [
      {
        "i": "assests/images/billsicon.png",
        "t": "Bills",
      },
      {
        "i": "assests/images/insuranceicon.png",
        "t": "Insurance",
      },
    ];

    return Column(
      children: [
        Row(
          children: const [
            Text(
              "More From Health",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            )
          ],
        ),
        SizedBox(
          height: height / 80.3,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            border: Border.all(color: Colors.green),
          ),
          child: ListView.builder(
              itemCount: mfh.length,
              shrinkWrap: true,
              itemBuilder: (
                BuildContext build,
                int index,
              ) {
                return Card(
                  elevation: 0.5,
                  child: Column(
                    children: [
                      ListTile(
                        tileColor: Colors.white,
                        leading: SizedBox(
                          height: height / 22.94,
                          child: Image.asset(mfh[index]["i"]),
                        ),
                        title: Text(
                          mfh[index]["t"],
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 12),
                        ),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.black,
                            size: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }
}
