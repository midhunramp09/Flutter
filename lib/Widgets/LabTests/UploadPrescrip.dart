import 'package:flutter/material.dart';

class UploadPrescrip extends StatelessWidget {
  const UploadPrescrip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(color: Colors.green),
      ),
      child: ListTile(
        leading: Image.asset("assests/images/prescriptioncoloricon.png"),
        title: const Text(
          "Upload Prescription",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        subtitle: const Text(
          "Order with Prescription",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 12, color: Colors.green),
        ),
        trailing: ElevatedButton(
          style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.orange)),
          onPressed: () {},
          child: const Text(
            "UPLOAD",
            style: TextStyle(fontSize: 12),
          ),
        ),
      ),
    );
  }
}
