import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/theme/color_theme.dart';
import '../../global_widgets/custom_appbar.dart';
import '../../global_widgets/space.dart';

class HeartScreen extends StatelessWidget {
  const HeartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: KleanAppColors.greyBG,
      appBar: CustomAppBar(
        title: 'Steps',
        notifly: true,
        calender: true,
      ),
      body: Column(
        children: [
          Space.Y(20),
          Text('You have good heart rate 85% of your goal!',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600
          ),
          ),
          Space.Y(20),
          Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                    height: 197,
                    width: 197,
                    child: CircularProgressIndicator(
                      backgroundColor:KleanAppColors.greyBase,
                      strokeWidth: 5,
                      value: 0.8,
                      color: KleanAppColors.secondaryBrandBase,
                    )),
                Positioned(


                    child: Column(
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
                    ))
              ],
            ),
          ),
          Space.Y(60),
          Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Center(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                            height: 67,
                            width: 67,
                            child: CircularProgressIndicator(
                              backgroundColor:KleanAppColors.greyBase,
                              strokeWidth: 5,
                              value: 0.8,
                              color: KleanAppColors.secondaryBrandBase,
                            )),
                        Positioned(


                            child: Image.asset(
                              "assets/images/run.png",
                              width: 22,
                              height: 22,
                            ))
                      ],
                    ),
                  ), Space.Y(10),
                  Text('35 min', style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16
                  ),)
                ],
              ),
              Column(
                children: [
                  Center(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                            height: 67,
                            width: 67,
                            child: CircularProgressIndicator(
                              backgroundColor:KleanAppColors.greyBase,
                              strokeWidth: 5,
                              value: 0.8,
                              color: Color(0xFFF995E2),
                            )),
                        Positioned(


                            child: Image.asset(
                              "assets/images/cycling.png",
                              width: 22,
                              height: 22,
                            ))
                      ],
                    ),
                  ),
                  Space.Y(10),
                  Text('35 min', style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16
                  ),)
                ],
              ),
              Column(
                children: [
                  Center(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                            height: 67,
                            width: 67,
                            child: CircularProgressIndicator(
                              backgroundColor:KleanAppColors.greyBase,
                              strokeWidth: 5,
                              value: 0.8,
                              color:  Color(0xFFF5D25D),
                            )),
                        Positioned(


                            child: Image.asset(
                              "assets/images/swimming.png",
                              width: 22,
                              height: 22,
                            ))
                      ],
                    ),
                  ),
                  Space.Y(10),
                  Text('35 min', style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16
                  ),)
                ],
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
    );
  }
}
