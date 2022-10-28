import 'package:flutter/material.dart';

class ClinicalDoc extends StatelessWidget {
  const ClinicalDoc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    List cd = [
      {
        "i": "assests/images/medical-record.png",
        "t": "Clinical Documents",
      },
    ];

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(color: Colors.green),
      ),
      child: ListView.builder(
          itemCount: cd.length,
          scrollDirection: Axis.vertical,
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
                      child: Image.asset(cd[index]["i"]),
                    ),
                    title: Text(
                      cd[index]["t"],
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
    );
  }
}
