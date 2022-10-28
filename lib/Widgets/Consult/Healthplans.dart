import 'package:flutter/material.dart';

class Healthplans extends StatelessWidget {
  const Healthplans({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Row(
          children: const [
            Text(
              "Health Insurance Plans for You",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
        SizedBox(
          height: height / 80.3,
        ),
        Image.network(
            "https://www.jagoinvestor.com/wp-content/uploads/files/apollo-munich-optima-health-restore.png"),
      ],
    );
  }
}
