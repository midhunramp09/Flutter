import 'package:flutter/material.dart';

class RecordsAppBar extends StatelessWidget {
  const RecordsAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      leading: Image.asset("assests/images/apollo247logo.jpg"),
      title: const Text(
        "HEALTH RECORDS",
        style: TextStyle(
            fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
      ),
    );
  }
}
