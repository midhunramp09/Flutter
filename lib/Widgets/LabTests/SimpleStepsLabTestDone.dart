import 'package:flutter/material.dart';

class SimpleStepsLabTestDone extends StatelessWidget {
  const SimpleStepsLabTestDone({Key? key}) : super(key: key);

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
          "assests/images/simplestepflowcharticon.png",
          height: height / 20.07,
          width: width / 9.82,
        ),
        title: const Text(
          "3 simple steps to get a lab test done",
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: const Icon(
          Icons.keyboard_arrow_right,
          color: Colors.black,
        ),
      ),
    );
  }
}
