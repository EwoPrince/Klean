import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:klean/app/core/theme/color_theme.dart';
import 'package:klean/app/global_widgets/button.dart';
import 'package:klean/app/global_widgets/space.dart';

class Upcoming extends StatelessWidget {
  const Upcoming({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Space.Y(30),
        RichText(
          text: TextSpan(
            text: 'You Dont have upcoming',
            style: TextStyle(color: KleanAppColors.darkDarkest, fontSize: 40, fontWeight: FontWeight.w800), /*defining default style is optional */
            children: <TextSpan>[
              TextSpan(
                  text: ' Appointment', style: TextStyle(fontWeight: FontWeight.w800, color: KleanAppColors.secondaryBrandBase)),
              TextSpan(
                  text: '\nYet',
                  ),

            ],
          ),
        ),
        Space.Y(30),
        Image.asset('assets/images/appointment.png'),
        Space.Y(30),
        Press.bold('Schedule New Appointment', onPressed: (){
          // Get.toNamed(Routes.NEWAPPOINTMENT);
        },)
      ],
    );
  }
}
