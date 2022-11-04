import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class Ad4 extends StatelessWidget {
  const Ad4({Key? key}) : super(key: key);

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
          "https://i.pinimg.com/originals/81/ae/0f/81ae0fc8b0c32a3fc8320fbab0b28fae.jpg",
          fit: BoxFit.cover,
        ),
        Image.network(
          "https://medical.olympusamerica.com/sites/default/files/homepage-hero/billboard_ee3_0.jpg",
          fit: BoxFit.cover,
        ),
        Image.network(
          "https://th.bing.com/th/id/OIP.7HH8HID2Hg1Ua5UyaVnsEAHaD4?pid=ImgDet&rs=1",
          fit: BoxFit.cover,
        ),
        Image.network(
          "https://th.bing.com/th/id/R.baf65d6dd7034f8706c011bd1b43154a?rik=FHebk9xgJXLARQ&riu=http%3a%2f%2fsearchengineland.com%2ffigz%2fwp-content%2fseloads%2f2014%2f08%2flab-test-experiment-ss-1920.jpg&ehk=wFaeN0TQSlSgZKoQpbAMnUfLbY0ppIvuF8lTggEAHHE%3d&risl=&pid=ImgRaw&r=0",
          fit: BoxFit.cover,
        ),
        Image.network(
          "https://2f35da97a9ad36d49db6-4d1987fef3a36cccd5478db4931039f0.ssl.cf3.rackcdn.com/assets/media/2019/03/SocialMedia_APAC_UnileverStartALittleGoodLinkedIn_OG_1200x630.jpg",
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
