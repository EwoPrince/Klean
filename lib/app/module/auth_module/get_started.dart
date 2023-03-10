import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:klean/app/core/theme/color_theme.dart';
import 'package:klean/app/global_widgets/button.dart';
import 'package:klean/app/global_widgets/space.dart';
import 'package:klean/routes/pages.dart';

class GetStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
    Column(
          children: [
            Space.Y(86),
            Image.asset('assets/images/logoFit.png', width: 206, height: 55,),
            Space.Y(64),
            Text(
              'Welcome to Klean',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w500,
                color: KleanAppColors.darkBase
              ),
            ),
            Space.Y(10),
            Text(
              'Bringing Klean services to Everyone',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: KleanAppColors.darkBase
              ),

            ),
            Space.Y(58),
            Image.asset('assets/images/boarding3.png', fit: BoxFit.fill,),
            
          ],
        ),

      bottomSheet: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        height: 180,
        child: Column(

          children: [
            Press.bold("Get Started", onPressed: (){
              Get.toNamed(Routes.SIGNUP);
            },),
            Space.Y(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have Account?',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: KleanAppColors.darkBase
                  ),

            ),
                TextButton(onPressed: (){
                  Get.toNamed(Routes.LOGIN);
                }, child: Text(
                  'Signin',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: KleanAppColors.secondaryBrandBase
                  ),

                ))

          ],

        ),

          ]

    ),
      ));
  }
}
