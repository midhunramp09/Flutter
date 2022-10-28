import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return AppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: true,
      leading: Image.asset("assests/images/apollo247logo.jpg"),
      title: Row(
        children: const [
          Text(
            "Hi Guest",
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          Icon(
            Icons.expand_more,
            color: Colors.green,
            size: 16,
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
            height: height / 26.77,
            width: width / 13.1,
            child: Image.asset("assests/images/notificationbellicon.png"),
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
