import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:klean/app/global_widgets/button.dart';
import 'package:klean/routes/pages.dart';

import '../../../global_widgets/space.dart';


class SubDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 285,
      width: 363,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Image.asset('assets/images/sub.png', width: 143, height: 143,),


          Text(
            "Subscription Required!",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          Space.Y(10),
          Text(
            "Please subscribe first to Access the app full functionality",
           textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 12.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          Space.Y(20),
          Press.bold('Subscribe', onPressed: (){
            Get.toNamed(Routes.SUBSCRIBE);
          },)


        ],
      ),
    );
  }
}