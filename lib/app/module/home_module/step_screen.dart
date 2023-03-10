import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:klean/app/global_widgets/custom_appbar.dart';
import 'package:klean/app/global_widgets/space.dart';

import '../../core/theme/color_theme.dart';

class StepScreen extends StatelessWidget {
  const StepScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KleanAppColors.greyBG,
      appBar: CustomAppBar(
        title: 'Steps',
        notifly: true,
        calender: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Space.Y(20),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(

                text: 'You have walked',
                style: TextStyle(color: KleanAppColors.darkDarkest, fontSize: 24, fontWeight: FontWeight.w800), /*defining default style is optional */
                children: <TextSpan>[
                  TextSpan(
                      text: ' 40%', style: TextStyle(fontWeight: FontWeight.w800, color: KleanAppColors.secondaryBrandBase)),
                  TextSpan(
                      text: '\n of your goal!',   style: TextStyle(fontWeight: FontWeight.w800, )),


                ],
              ),
            ),
            Space.Y(20),
            Center(
              child: CircularPercentIndicator(
                radius: 100.0,
                startAngle: 220.0,
                animation: true,
                animationDuration: 1200,
                lineWidth: 7.0,
                percent: 0.8,
                center: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/icons/shoe.png",
                      width: 47,
                      height: 47,
                    ),

                    Text('2285',    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                        color: KleanAppColors.darkDarkest),),
                    Text('Step',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: KleanAppColors.greyBase),),
                  ],
                ),
                circularStrokeCap: CircularStrokeCap.round,
                backgroundColor: Colors.white,
                progressColor:KleanAppColors.secondaryBrandBase,
              ),
            ),
            Space.Y(60),
            Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircularPercentIndicator(
                  radius: 35.0,
                  animation: true,
                  animationDuration: 1200,
                  lineWidth: 4.0,
                  percent: 0.8,
                  center: Image.asset(
                    "assets/images/run.png",
                    width: 22,
                    height: 22,
                  ),
                  circularStrokeCap: CircularStrokeCap.round,
                  backgroundColor: Colors.white,
                  progressColor:KleanAppColors.secondaryBrandBase,
               footer:     Text('35 min', style: TextStyle(
                   fontWeight: FontWeight.w600,
                   fontSize: 16
               ),),
                ),
                CircularPercentIndicator(
                  radius: 35.0,

                  animation: true,
                  animationDuration: 1200,
                  lineWidth: 4.0,
                  percent: 0.8,
                  center: Image.asset(
                    "assets/images/cycling.png",
                    width: 22,
                    height: 22,
                  ),
                  circularStrokeCap: CircularStrokeCap.round,
                  backgroundColor: Colors.white,
                  progressColor: Color(0xFFF995E2),
                  footer:     Text('35 min', style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16
                  ),),
                ),
                CircularPercentIndicator(
                  radius: 35.0,

                  animation: true,
                  animationDuration: 1200,
                  lineWidth: 4.0,
                  percent: 0.8,
                  center: Image.asset(
                    "assets/images/swimming.png",
                    width: 22,
                    height: 22,
                  ),
                  circularStrokeCap: CircularStrokeCap.round,
                  backgroundColor: Colors.white,
                  progressColor:  Color(0xFFF5D25D),
                  footer:     Text('35 min', style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16
                  ),),
                ),

              ],
            ),
            Space.Y(60),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Image.asset('assets/images/graph.png'),
            )
          ],
        ),
      ),
    );
  }
}
