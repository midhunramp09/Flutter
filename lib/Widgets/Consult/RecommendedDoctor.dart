import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:sizer/sizer.dart';

class RecommendedDoctor extends StatelessWidget {
  RecommendedDoctor({Key? key}) : super(key: key);
  List rd = [
    {
      "i": "assests/images/fevericon.png",
      "t": "Fever",
      "ex": "35 years",
    },
    {
      "i": "assests/images/coughicon.png",
      "t": "Cough",
      "ex": "35 years",
    },
    {
      "i": "assests/images/headacheicon.png",
      "t": "Headache",
      "ex": "35 years",
    },
    {
      "i": "assests/images/sorethroaticon.png",
      "t": "Sore Throat",
      "ex": "35 years",
    },
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height / 4.01,
      width: width,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          Colors.blueAccent,
          Colors.greenAccent,
        ],
      )),
      child: Column(
        children: [
          SizedBox(
            height: height / 53.53,
          ),
          Row(
            children: [
              SizedBox(
                width: width / 26.2,
              ),
              Text(
                "Recommended Doctors",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(
            height: height / 80.3,
          ),
          ImageSlideshow(
            width: width / 1.25,
            height: height / 5.736,
            initialPage: 0,
            indicatorColor: Colors.white,
            indicatorBackgroundColor: Colors.white,
            autoPlayInterval: 3000,
            isLoop: true,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.sp),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: height / 53.53,
                    ),
                    CircleAvatar(
                      backgroundImage: const NetworkImage(
                          "https://painlesshire.com/wp-content/uploads/2017/07/doctor.jpg"),
                      radius: 20.sp,
                    ),
                    SizedBox(
                      height: height / 160.6,
                    ),
                    Text(
                      "Dr.Venugopal Reddy",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 10.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: height / 160.6,
                    ),
                    Text(
                      "Dermatology",
                      style: TextStyle(fontSize: 10.sp, color: Colors.green),
                    ),
                    SizedBox(
                      height: height / 160.6,
                    ),
                    Text(
                      "21 yrs Experience",
                      style: TextStyle(fontSize: 10.sp, color: Colors.black),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: height / 53.53,
                    ),
                    CircleAvatar(
                      backgroundImage: const NetworkImage(
                          "https://media.istockphoto.com/photos/indian-male-doctor-picture-id177373093?k=6&m=177373093&s=612x612&w=0&h=_NNYxA7b2YR3MsxSs3s7sL4f-S5Ks-2l3ijbR1hv1wU="),
                      radius: 20.sp,
                    ),
                    SizedBox(
                      height: height / 160.6,
                    ),
                    Text(
                      "Dr.D M Mahajan",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 10.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: height / 160.6,
                    ),
                    Text(
                      "Dermatology",
                      style: TextStyle(fontSize: 10.sp, color: Colors.green),
                    ),
                    SizedBox(
                      height: height / 160.6,
                    ),
                    Text(
                      "35 yrs Experience",
                      style: TextStyle(fontSize: 10.sp, color: Colors.black),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: height / 53.53,
                    ),
                    CircleAvatar(
                      backgroundImage: const NetworkImage(
                          "https://media.istockphoto.com/photos/portrait-of-pensive-doctor-holding-medical-record-in-hospital-picture-id151811670?k=6&m=151811670&s=612x612&w=0&h=wlv4_rJbAaTguv28rM94jaZHdTu7qehxU7lAS1ndOWA="),
                      radius: 20.sp,
                    ),
                    SizedBox(
                      height: height / 160.6,
                    ),
                    Text(
                      "Dr.Smita Malhotra",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 10.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: height / 160.6,
                    ),
                    Text(
                      "Paediatician",
                      style: TextStyle(fontSize: 10.sp, color: Colors.green),
                    ),
                    SizedBox(
                      height: height / 160.6,
                    ),
                    Text(
                      "15 yrs Experience",
                      style: TextStyle(fontSize: 10.sp, color: Colors.black),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: height / 53.53,
                    ),
                    CircleAvatar(
                      backgroundImage: const NetworkImage(
                          "https://cdn9.dissolve.com/p/D430_49_353/D430_49_353_1200.jpg"),
                      radius: 20.sp,
                    ),
                    SizedBox(
                      height: height / 160.6,
                    ),
                    Text(
                      "Dr.K Surya Pavan Reddy",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 10.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: height / 160.6,
                    ),
                    Text(
                      "Diabetology",
                      style: TextStyle(fontSize: 10.sp, color: Colors.green),
                    ),
                    SizedBox(
                      height: height / 160.6,
                    ),
                    Text(
                      "18 yrs Experience",
                      style: TextStyle(fontSize: 10.sp, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
