import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:klean/routes/pages.dart';

import '../../../core/theme/color_theme.dart';
import '../../../global_widgets/space.dart';

class TabItem extends StatelessWidget {
  const TabItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              GestureDetector(
                onTap: (){
                  Get.snackbar('Wanning', 'Connect to smart watch to view realtime stat',
                      backgroundColor: Colors.yellow,
                      colorText: Colors.black,
                      duration: Duration(seconds: 5));
                  Get.toNamed(Routes.STEPSCREEN);
                },
                child: Container(
                  height: 228,
width: Get.width/2.5,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Steps',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: KleanAppColors.darkDarkest),
                            ),
                            Spacer(),
                            Image.asset(
                              "assets/icons/shoe.png",
                              width: 32,
                              height: 32,
                            )
                          ],
                        ),
                        Center(
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                  height: 107,
                                  width: 107,
                                  child: CircularProgressIndicator(
                                    backgroundColor:KleanAppColors.greyBase,
                                    strokeWidth: 5,
                                    value: 0.0,
                                    color: KleanAppColors.secondaryBrandBase,
                                  )),
                              Positioned(


                                  child: Column(
                                    children: [
                                      Text('0',    style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          color: KleanAppColors.darkDarkest),),
                                      Text('Step',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: KleanAppColors.greyBase),),
                                    ],
                                  ))
                            ],
                          ),
                        ),
                        Space.Y(20),
                        Row(
                          children: [
                            Text(
                              'Taken: ',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: KleanAppColors.darkDarkest),
                            ),
                            Text(
                              ' 0',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: KleanAppColors.secondaryBrandBase),
                            ),
                          ],
                        ),
                        Space.Y(5),
                        Row(
                          children: [
                            Text(
                              'Target: ',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: KleanAppColors.darkDarkest),
                            ),
                            Text(
                              ' 0',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: KleanAppColors.secondaryBrandBase),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Space.Y(20),
              // Container(
              //   height: 228,
              //   width: 158,
              //   decoration: const BoxDecoration(
              //       color: Colors.white,
              //       borderRadius: BorderRadius.all(Radius.circular(20))),
              //   child: Padding(
              //     padding: const EdgeInsets.all(14.0),
              //     child: Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Row(
              //           children: [
              //             Text(
              //               'Heart',
              //               textAlign: TextAlign.right,
              //               style: TextStyle(
              //                   fontSize: 14,
              //                   fontWeight: FontWeight.w700,
              //                   color: KleanAppColors.darkDarkest),
              //             ),
              //             Spacer(),
              //             Image.asset(
              //               "assets/images/heart.png",
              //               width: 32,
              //               height: 32,
              //             )
              //           ],
              //         ),
              //         Center(
              //           child: Image.asset(
              //             "assets/images/heart_rate.png",
              //
              //             height: 100,
              //           ),
              //         ),
              //         Space.Y(20),
              //
              //
              //         Row(
              //           children: [
              //             Text(
              //               '0 bmp',
              //               textAlign: TextAlign.right,
              //               style: TextStyle(
              //                   fontSize: 14,
              //                   fontWeight: FontWeight.w700,
              //                   color: KleanAppColors.darkDarkest),
              //             ),
              //
              //           ],
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              Space.Y(20),
              // Container(
              //   height: 228,
              //   width: 158,
              //   decoration: const BoxDecoration(
              //       color: Colors.white,
              //       borderRadius: BorderRadius.all(Radius.circular(20))),
              //   child: Padding(
              //     padding: const EdgeInsets.all(14.0),
              //     child: Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Row(
              //           children: [
              //             Text(
              //               'Water',
              //               textAlign: TextAlign.right,
              //               style: TextStyle(
              //                   fontSize: 14,
              //                   fontWeight: FontWeight.w700,
              //                   color: KleanAppColors.darkDarkest),
              //             ),
              //             Spacer(),
              //             Image.asset(
              //               "assets/images/water_cup.png",
              //               width: 32,
              //               height: 32,
              //             )
              //           ],
              //         ),
              //         Space.Y(30),
              //         Center(
              //           child: Image.asset(
              //             "assets/images/water.png",
              //
              //             height: 60,
              //           ),
              //         ),
              //         Space.Y(30),
              //         Row(
              //           children: [
              //             Text(
              //               'Taken: ',
              //               textAlign: TextAlign.right,
              //               style: TextStyle(
              //                   fontSize: 14,
              //                   fontWeight: FontWeight.w700,
              //                   color: KleanAppColors.darkDarkest),
              //             ),
              //             Text(
              //               ' 0ml',
              //               textAlign: TextAlign.right,
              //               style: TextStyle(
              //                   fontSize: 14,
              //                   fontWeight: FontWeight.w700,
              //                   color: KleanAppColors.secondaryBrandBase),
              //             ),
              //           ],
              //         ),
              //         Space.Y(5),
              //         Row(
              //           children: [
              //             Text(
              //               'Target: ',
              //               textAlign: TextAlign.right,
              //               style: TextStyle(
              //                   fontSize: 14,
              //                   fontWeight: FontWeight.w700,
              //                   color: KleanAppColors.darkDarkest),
              //             ),
              //             Text(
              //               ' 0ml',
              //               textAlign: TextAlign.right,
              //               style: TextStyle(
              //                   fontSize: 14,
              //                   fontWeight: FontWeight.w700,
              //                   color: KleanAppColors.secondaryBrandBase),
              //             ),
              //           ],
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              // Space.Y(20),

            ],
          ),

          Column(
            children: [
              GestureDetector(
                onTap: (){

    Get.snackbar('Wanning', 'Connect to smart watch to view realtime stat',
    backgroundColor: Colors.yellow,
    colorText: Colors.black,
    duration: Duration(seconds: 5));
    Get.toNamed(Routes.SLEEPSCREEN);
    },

                child: Container(
                  height: 139,


width: Get.width/2.5,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Sleep',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: KleanAppColors.darkDarkest),
                            ),
                            Spacer(),
                            Image.asset(
                              "assets/images/sleep.png",
                              width: 32,
                              height: 32,
                            )
                          ],
                        ),

                        Space.Y(40),
                        Row(
                          children: [
                            Text(
                              'Wake Time: ',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: KleanAppColors.darkDarkest),
                            ),
                            Text(
                              ' 0:00 AM',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: KleanAppColors.secondaryBrandBase),
                            ),
                          ],
                        ),
                        Space.Y(5),
                        Row(
                          children: [
                            Text(
                              'Sleep Time: ',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: KleanAppColors.darkDarkest),
                            ),
                            Text(
                              '0:00 AM',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: KleanAppColors.secondaryBrandBase),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Space.Y(20),
              // Container(
              //   height: 228,
              //   width: 158,
              //   decoration: const BoxDecoration(
              //       color: Colors.white,
              //       borderRadius: BorderRadius.all(Radius.circular(20))),
              //   child: Padding(
              //     padding: const EdgeInsets.all(14.0),
              //     child: Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Row(
              //           children: [
              //             Text(
              //               'Calories',
              //               textAlign: TextAlign.right,
              //               style: TextStyle(
              //                   fontSize: 14,
              //                   fontWeight: FontWeight.w700,
              //                   color: KleanAppColors.darkDarkest),
              //             ),
              //             Spacer(),
              //             Image.asset(
              //               "assets/images/fire.png",
              //               width: 32,
              //               height: 32,
              //             )
              //           ],
              //         ),
              //         Center(
              //           child: Stack(
              //             alignment: Alignment.center,
              //             children: [
              //               Container(
              //                   height: 107,
              //                   width: 107,
              //                   child: CircularProgressIndicator(
              //                     backgroundColor:KleanAppColors.greyBase,
              //                     strokeWidth: 5,
              //                     value: 0.0,
              //                     color: KleanAppColors.secondaryBrandBase,
              //                   )),
              //               Positioned(
              //
              //
              //                   child: Column(
              //                     children: [
              //                       Text('0',    style: TextStyle(
              //                           fontSize: 14,
              //                           fontWeight: FontWeight.w700,
              //                           color: KleanAppColors.darkDarkest),),
              //                       Text('Kcal',
              //                         style: TextStyle(
              //                             fontSize: 12,
              //                             fontWeight: FontWeight.w400,
              //                             color: KleanAppColors.greyBase),),
              //                     ],
              //                   ))
              //             ],
              //           ),
              //         ),
              //         Space.Y(20),
              //
              //         Row(
              //           children: [
              //             Text(
              //               'Taken: ',
              //               textAlign: TextAlign.right,
              //               style: TextStyle(
              //                   fontSize: 14,
              //                   fontWeight: FontWeight.w700,
              //                   color: KleanAppColors.darkDarkest),
              //             ),
              //             Text(
              //               ' 0 ',
              //               textAlign: TextAlign.right,
              //               style: TextStyle(
              //                   fontSize: 14,
              //                   fontWeight: FontWeight.w700,
              //                   color: KleanAppColors.secondaryBrandBase),
              //             ),
              //           ],
              //         ),
              //         Space.Y(5),
              //         Row(
              //           children: [
              //             Text(
              //               'Target: ',
              //               textAlign: TextAlign.right,
              //               style: TextStyle(
              //                   fontSize: 14,
              //                   fontWeight: FontWeight.w700,
              //                   color: KleanAppColors.darkDarkest),
              //             ),
              //             Text(
              //               ' 0 ',
              //               textAlign: TextAlign.right,
              //               style: TextStyle(
              //                   fontSize: 14,
              //                   fontWeight: FontWeight.w700,
              //                   color: KleanAppColors.secondaryBrandBase),
              //             ),
              //           ],
              //         ),
              //
              //       ],
              //     ),
              //   ),
              // ),
              // Space.Y(20),
              // Container(
              //   height: 228,
              //   width: 158,
              //   decoration: const BoxDecoration(
              //       color: Colors.white,
              //       borderRadius: BorderRadius.all(Radius.circular(20))),
              //   child: Padding(
              //     padding: const EdgeInsets.all(14.0),
              //     child: Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Row(
              //           children: [
              //             Text(
              //               'Workout',
              //               textAlign: TextAlign.right,
              //               style: TextStyle(
              //                   fontSize: 14,
              //                   fontWeight: FontWeight.w700,
              //                   color: KleanAppColors.darkDarkest),
              //             ),
              //             Spacer(),
              //             Image.asset(
              //               "assets/images/workout.png",
              //               width: 32,
              //               height: 32,
              //             )
              //           ],
              //         ),
              //
              //         Spacer(),
              //         Row(
              //           children: [
              //             Text(
              //               'Taken: ',
              //               textAlign: TextAlign.right,
              //               style: TextStyle(
              //                   fontSize: 14,
              //                   fontWeight: FontWeight.w700,
              //                   color: KleanAppColors.darkDarkest),
              //             ),
              //             Text(
              //               ' 0 min',
              //               textAlign: TextAlign.right,
              //               style: TextStyle(
              //                   fontSize: 14,
              //                   fontWeight: FontWeight.w700,
              //                   color: KleanAppColors.secondaryBrandBase),
              //             ),
              //           ],
              //         ),
              //         Space.Y(5),
              //         Row(
              //           children: [
              //             Text(
              //               'Target: ',
              //               textAlign: TextAlign.right,
              //               style: TextStyle(
              //                   fontSize: 14,
              //                   fontWeight: FontWeight.w700,
              //                   color: KleanAppColors.darkDarkest),
              //             ),
              //             Text(
              //               ' 0 min',
              //               textAlign: TextAlign.right,
              //               style: TextStyle(
              //                   fontSize: 14,
              //                   fontWeight: FontWeight.w700,
              //                   color: KleanAppColors.secondaryBrandBase),
              //             ),
              //           ],
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              Space.Y(20),

            ],
          )
        ],
      ),
    );
  }
}
