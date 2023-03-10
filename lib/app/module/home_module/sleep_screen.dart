import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:klean/app/global_widgets/custom_appbar.dart';
import 'package:klean/app/global_widgets/space.dart';

import '../../core/theme/color_theme.dart';

class SleepScreen extends StatelessWidget {
  const SleepScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KleanAppColors.greyBG,
      appBar: CustomAppBar(
        title: 'Sleep',
        notifly: true,
        calender: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Space.Y(20),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(

                  text: 'You have Sleep',
                  style: TextStyle(color: KleanAppColors.darkDarkest, fontSize: 24, fontWeight: FontWeight.w800), /*defining default style is optional */
                  children: <TextSpan>[
                    TextSpan(
                        text: ' 90%', style: TextStyle(fontWeight: FontWeight.w800, color: KleanAppColors.secondaryBrandBase)),
                    TextSpan(
                        text: '\n of your goal!',   style: TextStyle(fontWeight: FontWeight.w800, )),


                  ],
                ),
              ),
              Space.Y(20),
              Stack(
                children: [
                  CircularPercentIndicator(
                    radius: 100.0,
                    startAngle: 300.0,
                    animation: true,
                    animationDuration: 1200,
                    lineWidth: 7.0,

                    percent: 0.8,
                    center: Container(
                      width: 190,
                      height: 190,
                      decoration: const BoxDecoration(
                          color: KleanAppColors.blueDarker,
                          borderRadius: BorderRadius.all(Radius.circular(100))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ImageIcon(AssetImage('assets/images/sleep.png',),color: Colors.white, size: 32,)
,
                          Space.Y(10),
                          Text('90%',    style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w800,
                              color: Colors.white),),
                          Text('of daily goals',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.white.withOpacity(0.3)),),
                        ],
                      ),
                    ),
                    circularStrokeCap: CircularStrokeCap.round,
                    backgroundColor: Colors.white,
                    progressColor:KleanAppColors.secondaryBrandBase,
                  ),
                  CircularPercentIndicator(
                    radius: 100.0,
                    startAngle: 220.0,
                    animation: true,
                    animationDuration: 1200,
                    lineWidth: 7.0,

                    percent: 0.4,

                    circularStrokeCap: CircularStrokeCap.round,
                    backgroundColor: Colors.white.withOpacity(0.001),
                    progressColor:Color(0xFFF995E2),
                  ),
                ],
              ),
              Space.Y(60),
              Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircularPercentIndicator(
                    radius: 35.0,

                    animation: true,
                    animationDuration: 1200,
                    lineWidth: 6.0,
                    percent: 0.8,
                    center: Container(
                      height: 62,
                      width: 62,
                      padding: EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                          color: KleanAppColors.blueDarker,
                          borderRadius: BorderRadius.all(Radius.circular(100))),
                      child:     Container(
                          height: 16,
                          width: 16,
                          child: ImageIcon(AssetImage('assets/images/sleep.png',),color: KleanAppColors.secondaryBrandBase, size: 10, ))
                      ,

                    ),
                    circularStrokeCap: CircularStrokeCap.round,
                    backgroundColor: Colors.white,
                    progressColor:KleanAppColors.secondaryBrandBase,
                    footer:     Text('Deep Sleep', style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 16
                    ),),
                  ), CircularPercentIndicator(
                    radius: 35.0,

                    animation: true,
                    animationDuration: 1200,
                    lineWidth: 6.0,
                    percent: 0.8,
                    center: Container(
                      height: 62,
                      width: 62,
                      padding: EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                          color: KleanAppColors.blueDarker,
                          borderRadius: BorderRadius.all(Radius.circular(100))),
                      child:     Container(
                          height: 16,
                          width: 16,
                          child: ImageIcon(AssetImage('assets/images/sleep.png',),color: Color(0xFFF995E2), size: 10, ))
                      ,

                    ),
                    circularStrokeCap: CircularStrokeCap.round,
                    backgroundColor: Colors.white,
                    progressColor: Color(0xFFF995E2),
                    footer:     Text('Light Sleep', style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 16
                    ),),
                  ),
                ],
              ),
              Space.Y(40),

              Container(
                padding: EdgeInsets.all(20),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Alarm', style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14
                            ),),
                            Text('06:30 Am', style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 14
                            ),),
                          ],
                        ),
                        Icon(Icons.alarm, size: 32, color: KleanAppColors.secondaryBrandBase,),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Alarm', style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14
                            ),),
                                Text('06:30 Am', style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 14
                            ),),
                          ],
                        ),
                      ],
                    ),
                    Space.Y(15),
                    Divider(
                      thickness: 1,
                      color: KleanAppColors.secondaryBrandBase2,
                    ),
                    Space.Y(15),
                    Text('Daily Breakdown', style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14
                    ),),
                    Space.Y(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text('06:30 Am', style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 14
                            ),),
                            Text('Went to sleep', style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14
                            ),),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text('06:30 Am', style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 14
                            ),),
                            Text('Woke up', style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14
                            ),),
                          ],
                        ),


                      ],
                    ),
                    Space.Y(20),
                    Divider(
                      thickness: 1,
                      color: KleanAppColors.secondaryBrandBase2,
                    ),
                    Space.Y(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text('06:30 Am', style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 14
                            ),),
                            Text('Went to sleep', style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14
                            ),),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text('06:30 Am', style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 14
                            ),),
                            Text('Woke up', style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14
                            ),),
                          ],
                        ),


                      ],
                    ),
                  ],
                ),
              ),
              Space.Y(40),
              Image.asset('assets/images/graph.png'),

            ],
          ),
        ),
      ),
    );
  }
}
