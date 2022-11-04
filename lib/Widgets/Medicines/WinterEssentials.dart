import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class WinterEssentials extends StatelessWidget {
  const WinterEssentials({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    List we = [
      {
        "i":
            "https://th.bing.com/th/id/OIP.FF54iooF65i8zxiUskcgDwHaHf?pid=ImgDet&rs=1",
        "t": "Soffola Honey,100% natural, 500 ml",
        "p": "299.99",
      },
      {
        "i":
            "https://th.bing.com/th/id/OIP.WAjAZufPi7qaFEMUcqN_vAHaHa?pid=ImgDet&rs=1",
        "t": "Nivea Moisturizing Body Lotion, 500 ml",
        "p": "339.99",
      },
      {
        "i":
            "https://i5.walmartimages.com/asr/0410f7e6-4a00-41c3-afa5-192dc3eadb33_1.b9190f9ac05c8014e7a36c9ef831e6c0.jpeg",
        "t": "Sensodyne Rapid Relief Toothpaste",
        "p": "199.99",
      },
      {
        "i":
            "https://i5.walmartimages.com/asr/a47236d4-b346-473f-ac40-6eb5c73f31bd_1.1626a4018009e9c2997485914acf9e27.jpeg",
        "t": "Pampers Baby Wipes, skin safe, 100 pcs",
        "p": "179.99",
      },
      {
        "i":
            "https://nutrabay.com/wp-content/uploads/2017/07/89094021177_1.jpg",
        "t": "Isopure Protein Powder, chocolate, 500 gm",
        "p": "1999.99",
      },
      {
        "i":
            "https://th.bing.com/th/id/OIP.oj3VBRRoJr0FpG9R4SaW_QHaHa?pid=ImgDet&rs=1",
        "t": "Vicks Vaporub Gel, value pack, 110 ml",
        "p": "239.99",
      },
      {
        "i":
            "https://i5.walmartimages.com/asr/4e2bc5c3-077e-476a-9408-5f06ab2c73bf_1.7f26f2b8c0ccad58fc2a50bd471589f3.jpeg",
        "t": "Cetaphil Moisturizing Lotion, 100 ml",
        "p": "379.99",
      },
      {
        "i":
            "https://th.bing.com/th/id/OIP.mDgW3xoWylqcxOrv7-m1_gHaHa?pid=ImgDet&rs=1",
        "t": "Cofsils Ginger Lemon, 10 lozenges",
        "p": "29.99",
      },
    ];

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "WINTER ESSENTIALS",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12.sp,
              ),
            ),
            Row(
              children: [
                Text(
                  "View all",
                  style: TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                    fontSize: 10.sp,
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.orange,
                  size: 10.sp,
                ),
              ],
            ),
          ],
        ),
        Divider(
          color: Colors.black,
          thickness: height / 1147.14,
        ),
        SizedBox(
          height: height / 80.3,
        ),
        SizedBox(
          height: height / 3.212,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: we.length,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (
                BuildContext build,
                int index,
              ) {
                return Container(
                  margin: EdgeInsets.all(5.0.sp),
                  //alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.sp),
                    color: Colors.white,
                  ),
                  height: height / 3.212,
                  width: width / 2,
                  child: Column(
                    children: [
                      SizedBox(
                        height: height / 8.92,
                        width: width / 4.36,
                        child: Image.network(
                          we[index]["i"],
                        ),
                      ),
                      Text(
                        we[index]["t"],
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 12.sp,
                        ),
                      ),
                      SizedBox(
                        height: height / 80.3,
                      ),
                      Divider(
                        color: Colors.black,
                        thickness: height / 1147.14,
                      ),
                      SizedBox(
                        height: height / 80.3,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.currency_rupee,
                            size: 12.sp,
                            color: Colors.black,
                          ),
                          Text(
                            we[index]["p"],
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height / 40.15,
                      ),
                      Row(
                        children: [
                          Text(
                            "ADD TO CART",
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }
}
