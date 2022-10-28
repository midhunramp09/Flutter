import 'package:flutter/material.dart';

class WhatsappUplRecord extends StatelessWidget {
  const WhatsappUplRecord({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      child: ListTile(
        tileColor: Colors.orange,
        leading: SizedBox(
          height: height / 22.94,
          child: Image.asset("assests/images/whatsappicon.png"),
        ),
        title: const Text(
          "Now Upload your health record from Whatsapp to \t\t+91 8045681199",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.red, fontSize: 12),
        ),
      ),
    );
  }
}
