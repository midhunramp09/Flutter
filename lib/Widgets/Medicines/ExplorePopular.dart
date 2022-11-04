import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ExplorePopular extends StatelessWidget {
  const ExplorePopular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    List epp = [
      {
        "i":
            "https://assets.gadgets360cdn.com/pricee/assets/category/202006/og-banner-himalaya-1200x628_1591165053.jpg",
      },
      {
        "i":
            "https://th.bing.com/th/id/R.2ee5e5989e1738e6b1286d54659a9c46?rik=ZtEI95PzTVeUBg&riu=http%3a%2f%2fads2paper.in%2fwp-content%2fuploads%2f2017%2f11%2f17-novtoi-3.png&ehk=y0fYaKKpAOrxfZXpE9obTB4%2b3vJBvfNWNX8VPzIFJ%2bg%3d&risl=&pid=ImgRaw&r=0",
      },
      {
        "i":
            "https://th.bing.com/th/id/OIP.hGg84OXtxuggj8P20baCRgHaFV?pid=ImgDet&w=606&h=437&rs=1",
      },
    ];

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "EXPLORE - POPULAR PRODUCTS",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12.sp,
              ),
            ),
          ],
        ),
        Divider(
          color: Colors.black,
          thickness: height / 1147.14,
        ),
        SizedBox(
          height: height / 160.6,
        ),
        SizedBox(
          height: height / 5.35,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: epp.length,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (
                BuildContext build,
                int index,
              ) {
                return Container(
                  margin: EdgeInsets.all(5.0.sp),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.sp),
                    color: Colors.white,
                  ),
                  child: Image.network(
                    epp[index]["i"],
                    width: width / 2.62,
                  ),
                );
              }),
        ),
      ],
    );
  }
}
