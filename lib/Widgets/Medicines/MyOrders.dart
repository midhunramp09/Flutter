import 'package:flutter/material.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(color: Colors.green),
      ),
      child: ListTile(
        leading: Image.asset(
          "assests/images/medicinesicon.png",
          height: height / 26.77,
          width: width / 13.1,
        ),
        title: const Text(
          "My Orders",
          style: TextStyle(fontSize: 16),
        ),
        trailing: const Icon(
          Icons.keyboard_arrow_right,
          color: Colors.black,
          size: 16,
        ),
      ),
    );
  }
}
