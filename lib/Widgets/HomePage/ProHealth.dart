import 'package:flutter/material.dart';

class ProHealth extends StatelessWidget {
  const ProHealth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ListTile(
          title: Text(
            "Apollo Prohealth",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          trailing: Icon(
            Icons.keyboard_arrow_right,
            color: Colors.black,
          ),
        ),
        Image.network(
            "https://assets.apollo247.com/images/ogimages/apollo-pro-care.jpg"),
      ],
    );
  }
}
