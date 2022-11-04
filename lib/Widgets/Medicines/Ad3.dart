import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class Ad3 extends StatelessWidget {
  const Ad3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return ImageSlideshow(
      width: width / 1.25,
      height: height / 5.736,
      initialPage: 0,
      indicatorColor: Colors.blue,
      indicatorBackgroundColor: Colors.grey,
      autoPlayInterval: 3000,
      isLoop: true,
      children: [
        Image.network(
          "https://i.ytimg.com/vi/9hAc0pQYLyk/maxresdefault.jpg",
          fit: BoxFit.cover,
        ),
        Image.network(
          "https://medical.olympusamerica.com/sites/default/files/homepage-hero/billboard_ee3_0.jpg",
          fit: BoxFit.cover,
        ),
        Image.network(
          "https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/f0a38850579201.58d3e1833f1ab.jpg",
          fit: BoxFit.cover,
        ),
        Image.network(
          "https://www.exchange4media.com/news-photo/97453-DaburRedPasteSabkoChabaJaayenge.jpg",
          fit: BoxFit.cover,
        ),
        Image.network(
          "https://2f35da97a9ad36d49db6-4d1987fef3a36cccd5478db4931039f0.ssl.cf3.rackcdn.com/assets/media/2019/03/SocialMedia_APAC_UnileverStartALittleGoodLinkedIn_OG_1200x630.jpg",
          fit: BoxFit.cover,
        ),
        Image.network(
          "https://th.bing.com/th/id/R.9085a2088e76a80db8fade25b7e55963?rik=zBU2lJzRxXbPuw&riu=http%3a%2f%2fliberles.com%2fimages%2fpediasure.jpg&ehk=wy96PSAySO8iRP2tixkcIDWGMv%2b6bs24GsOSZ3Gr6vc%3d&risl=&pid=ImgRaw&r=0",
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
