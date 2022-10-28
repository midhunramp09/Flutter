import 'package:flutter/material.dart';

class ConsultAppBar extends StatelessWidget {
  const ConsultAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      leading: Image.asset("assests/images/apollo247logo.jpg"),
      title: Row(
        children: [
          const Icon(
            Icons.location_on,
            color: Colors.green,
          ),
          SizedBox(
            width: width / 56.14,
          ),
          const Text(
            "ALL CITIES",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          )
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: SizedBox(
            height: height / 26.77,
            width: width / 13.1,
            child: Image.asset("assests/images/shoppingcarticon.png"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: SizedBox(
            height: height / 32.12,
            width: width / 15.72,
            child: Image.asset("assests/images/usericon.png"),
          ),
        ),
      ],
    );
  }
}
