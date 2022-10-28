import 'package:flutter/material.dart';

class ReferFriend extends StatelessWidget {
  const ReferFriend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(color: Colors.green),
      ),
      child: Card(
        child: ListTile(
          leading: Image.asset("assests/images/refer.png"),
          title: const Text(
            "Refer & Earn up to Rs.100",
            style: TextStyle(
                color: Colors.blueAccent, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            "Your friend get Rs.100 on signup",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          trailing: const Icon(Icons.keyboard_arrow_right),
        ),
      ),
    );
  }
}
