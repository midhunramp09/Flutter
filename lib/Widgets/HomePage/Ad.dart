import 'package:flutter/material.dart';

class Ad extends StatelessWidget {
  const Ad({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
        "https://lh3.googleusercontent.com/-FAJ5TbslTmM/YB69cLuUORI/AAAAAAAAu7o/vV4gpV4Q0HIysk38LXWGGHu-dtZlmIEmQCLcBGAsYHQ/w400-h174/Apollo%2B247%2BApp%2BDoctor%2BFree%2BConsultation.jpg");
  }
}
