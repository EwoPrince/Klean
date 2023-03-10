import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:klean/app/core/theme/color_theme.dart';
import 'package:klean/app/global_widgets/button.dart';
import 'package:klean/routes/pages.dart';

import '../../global_widgets/space.dart';

class Instructors extends StatelessWidget {
  Instructors({Key? key}) : super(key: key);
  Map item =  Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KleanAppColors.greyBG,
      body: Column(
        children: [
          Stack(
            children: [


              Container(
                height: 478,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: KleanAppColors.secondaryBrandBase,
                    borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(40))),
              ),
              //   Image.network(YoutubeThumbnail(youtubeId: 'TicGJQqrq2M').standard()),
              Container(
                height: 366,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage( image:NetworkImage(item['image'] ),fit: BoxFit.fill),
                    borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(40))),
              ),

              // Positioned(
              //   left: 10,
              //   right: 10,
              //   child:    GestureDetector(
              //     //  onTap: ()=> Get.toNamed(Routes.DIETVIDEO, arguments: [item,]),
              //       child: Image.asset("assets/images/video_play.png")),
              // ),
              Positioned(
                  top: 50,
                  left: 10,
                  child:  GestureDetector(
                      onTap: (){
                        Get.back();
                      },
                      child: Image.asset('assets/icons/back.png', ))
              ),
              Positioned(
                bottom: 30,
                left: 15,
                right: 15,
                child:   Column(

                  children: [
                    Text(
                      item['name'],
                      style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w700),
                    ),
                    Space.Y(20),
                    Text(
                      item['field'],
                      style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),


            ],
          ),
          Space.Y(20),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Press.bold('Book Appointment', onPressed: (){
              Get.toNamed(Routes.NEWAPPOINTMENT);
            },),
          )
        ],
      ),
    );
  }
}
