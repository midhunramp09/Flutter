import 'package:flutter/material.dart';

class LabTestsAppBar extends StatelessWidget {
  const LabTestsAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return AppBar(
      backgroundColor: Colors.white,
      leading: Image.asset("assests/images/apollo247logo.jpg"),
      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: const [
              Text(
                "Sample collection address",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          ),
          Row(
            children: const [
              Text(
                "LOCATE ME",
                style: TextStyle(fontSize: 15, color: Colors.orange),
              ),
              Icon(
                Icons.arrow_drop_down_sharp,
                color: Colors.green,
              )
            ],
          ),
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
