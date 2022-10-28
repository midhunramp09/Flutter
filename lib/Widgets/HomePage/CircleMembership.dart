import 'package:flutter/material.dart';

class CircleMembership extends StatelessWidget {
  const CircleMembership({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Row(
          children: const [
            Text(
              "Circle Membership and More",
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
            color: Colors.orangeAccent,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.green),
          ),
          child: Card(
            child: Column(
              children: [
                ListTile(
                  tileColor: Colors.orangeAccent,
                  title: const Text(
                    "Free Deliveries and Cashbacks",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 12),
                  ),
                  subtitle: const Text(
                    "Buy Circle @Rs.199 for 6 months",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                      fontSize: 11,
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Text(
                      "Buy Now",
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
