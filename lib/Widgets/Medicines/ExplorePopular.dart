import 'package:flutter/material.dart';

class ExplorePopular extends StatelessWidget {
  const ExplorePopular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    List epp = [
      {
        "i":
            "https://th.bing.com/th/id/R.2ee5e5989e1738e6b1286d54659a9c46?rik=ZtEI95PzTVeUBg&riu=http%3a%2f%2fads2paper.in%2fwp-content%2fuploads%2f2017%2f11%2f17-novtoi-3.png&ehk=y0fYaKKpAOrxfZXpE9obTB4%2b3vJBvfNWNX8VPzIFJ%2bg%3d&risl=&pid=ImgRaw&r=0",
      },
      {
        "i":
            "https://th.bing.com/th/id/OIP.hGg84OXtxuggj8P20baCRgHaFV?pid=ImgDet&w=606&h=437&rs=1",
      },
      {
        "i":
            "https://www.detecvision.com/wp-content/uploads/2016/02/omron_poster-900x600.png",
      },
      {
        "i":
            "https://th.bing.com/th/id/R.8b45dbed07b50a4129ee07b93c6eb536?rik=KS5ihBSvwFOz0g&riu=http%3a%2f%2fwww.truehart.design%2fwp-content%2fuploads%2f2018%2f10%2fHome-Remedies-for-your-Medical-Posters.jpg&ehk=4cVn8X9gj0P5hY2eJ3Q0MYKFdCR6ixQOBo5w84KcVXU%3d&risl=&pid=ImgRaw&r=0",
      },
    ];

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "EXPLORE - POPULAR PRODUCTS",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
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
          height: height / 5.35,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: epp.length,
              shrinkWrap: true,
              physics:  const BouncingScrollPhysics(),
              itemBuilder: (
                BuildContext build,
                int index,
              ) {
                return Container(
                  margin: const EdgeInsets.all(5.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all(color: Colors.green),
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
