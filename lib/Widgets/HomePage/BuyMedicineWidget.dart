import 'package:flutter/material.dart';

class BuyMedicineWidget extends StatelessWidget {
  const BuyMedicineWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Card(
      color: Colors.teal,
      child: Column(
        children: [
          SizedBox(
            height: height / 114.71,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Text(
                "through Apollo Pharmacy\t\t",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ],
          ),
          ListTile(
            leading: Image.asset("assests/images/buymedwidgicon.png"),
            title: const Text(
              "Buy Medicine and Essentials",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.keyboard_arrow_right),
              color: Colors.white,
            ),
          ),
          Container(
            height: height / 11.47,
            padding: const EdgeInsets.all(10),
            child: ListTile(
              minLeadingWidth: width / 19.65,
              tileColor: Colors.white,
              leading: const Icon(Icons.wallet),
              title: const Text(
                "Get 100% Genuine Medicine",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black45),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
