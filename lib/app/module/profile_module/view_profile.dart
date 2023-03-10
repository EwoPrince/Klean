import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:klean/app/global_widgets/custom_appbar.dart';
import 'package:provider/provider.dart';

import '../../../routes/pages.dart';
import '../../core/p.dart';
import '../../core/theme/color_theme.dart';
import '../../global_widgets/space.dart';

class ViewProfile extends StatelessWidget {
  const ViewProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 420,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: KleanAppColors.secondaryBrandBase2,
                      borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(40))),
                ),
                Container(
                  height: 330,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: KleanAppColors.secondaryBrandBase,
                      borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(40))),
                ),
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
                  top: 50,
                  left: 10,
                  right: 10,
                  child: Column(
                    children: [
                      Space.Y(30),
                      CircleAvatar(
                        radius: 58,
                        backgroundColor: Colors.white.withOpacity(0.1),
                        backgroundImage:
                        NetworkImage(P.auth.userModel!.value.gender!),
                        child: Stack(children: [
                          Align(
                            alignment: Alignment.bottomRight,
                            child: P.auth.loadingUpload.value !=  true?
                            GestureDetector(
                              onTap: (){
                             P.auth.chooseImageCamera();
                              },
                              child: CircleAvatar(
                                radius: 18,
                                backgroundColor: KleanAppColors.blueDarker,
                                child: Icon(
                                  CupertinoIcons.camera_fill,
                                  size: 18,
                                ),
                              ),
                            ):
                            CircularProgressIndicator()
                            ,
                          ),
                        ]),
                      ),
                      Space.Y(30),
                      Text(
                        P.auth.userModel!.value.firstName!,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                      )
                    ],
                  ),
                ),
                Positioned(
                    bottom: 35,
                    left: 10,
                    right: 10,
                    child: IntrinsicHeight(
                        // ignore: unnecessary_new
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Column(
                              children: [
                                Text(
                                  P.auth.userModel!.value.id!,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16),
                                ),
                                Text(
                                  'Weight',
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.3),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                            VerticalDivider(),
                            Column(
                              children: [
                                Text(
                            P.auth.userModel!.value.id!,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16),
                                ),
                                Text(
                                  'Height',
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.3),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                            VerticalDivider(),
                            Column(
                              children: [
                                Text(
                                  P.auth.userModel!.value.age.toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16),
                                ),
                                Text(
                                  'Age',
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.3),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        )))
              ],
            ),
            Space.Y(20),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      GestureDetector(

                        child: Container(
                          height: 178,
                          width: 158,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(20))),
                          child: Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset('assets/icons/goal.png', height: 33, width: 33,),
                                Spacer(),
                                Text('My Goal', style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black
                                ),)
                              ],
                            ),
                          ),
                        ),
                        onTap: ()=> Get.toNamed(Routes.GOAL),
                      ),
                      Space.Y(20),
                      GestureDetector(
                        onTap: ()=> Get.toNamed(Routes.APPOINTMENT),
                        child: Container(
                          height: 178,
                          width: 158,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(20))),
                          child: Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset('assets/icons/appointment.png', height: 33, width: 33,),
                                Spacer(),
                                Text('Appointments', style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black
                                ),)
                              ],
                            ),
                          ),
                        ),
                      ),
                      Space.Y(20),
                      // Container(
                      //   height: 178,
                      //   width: 158,
                      //   decoration: const BoxDecoration(
                      //       color: Colors.white,
                      //       borderRadius: BorderRadius.all(Radius.circular(20))),
                      //   child: Padding(
                      //     padding: const EdgeInsets.all(25.0),
                      //     child: Column(
                      //       crossAxisAlignment: CrossAxisAlignment.start,
                      //       children: [
                      //         Image.asset('assets/icons/payment.png', height: 33, width: 33,),
                      //         Spacer(),
                      //         Text('My Payment', style: TextStyle(
                      //             fontSize: 16,
                      //             fontWeight: FontWeight.w700,
                      //             color: Colors.black
                      //         ),)
                      //       ],
                      //     ),
                      //   ),
                      // ),
                      // Space.Y(20),
                      // GestureDetector(
                      //   onTap: ()=> Get.toNamed(Routes.ACCOUNTSETTING),
                      //   child: Container(
                      //     height: 178,
                      //     width: 158,
                      //     decoration: const BoxDecoration(
                      //         color: Colors.white,
                      //         borderRadius: BorderRadius.all(Radius.circular(20))),
                      //     child: Padding(
                      //       padding: const EdgeInsets.all(25.0),
                      //       child: Column(
                      //         crossAxisAlignment: CrossAxisAlignment.start,
                      //         children: [
                      //           Image.asset('assets/icons/edit_account.png', height: 33, width: 33,),
                      //           Spacer(),
                      //           Text('Edit Account', style: TextStyle(
                      //               fontSize: 16,
                      //               fontWeight: FontWeight.w700,
                      //               color: Colors.black
                      //           ),)
                      //         ],
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      // Space.Y(20),

                    ],
                  ),
                  Column(
                    children: [
                      // GestureDetector(
                      //   onTap: (){
                      //     Get.toNamed(Routes.BODYMEASURE);
                      //   },
                      //   child: Container(
                      //     height: 178,
                      //     width: 158,
                      //     decoration: const BoxDecoration(
                      //         color: Colors.white,
                      //         borderRadius: BorderRadius.all(Radius.circular(20))),
                      //     child: Padding(
                      //       padding: const EdgeInsets.all(25.0),
                      //       child: Column(
                      //         crossAxisAlignment: CrossAxisAlignment.start,
                      //         children: [
                      //           Image.asset('assets/icons/body_measurment.png', height: 33, width: 33,),
                      //           Spacer(),
                      //           Text('Body Measurment', style: TextStyle(
                      //               fontSize: 16,
                      //               fontWeight: FontWeight.w700,
                      //               color: Colors.black
                      //           ),)
                      //         ],
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      Space.Y(20),
                      Container(
                        height: 178,
                        width: 158,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20))),
                        child: Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('assets/icons/invite_friend.png', height: 33, width: 33,),
                              Spacer(),
                              Text('Invite Friend', style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black
                              ),)
                            ],
                          ),
                        ),
                      ),
                      Space.Y(20),
                      GestureDetector(
                        onTap: (){
                          Get.toNamed(Routes.SETTING);
                        },
                        child: Container(
                          height: 178,
                          width: 158,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(20))),
                          child: Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset('assets/icons/setting.png', height: 33, width: 33,),
                                Spacer(),
                                Text('Setting', style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black
                                ),)
                              ],
                            ),
                          ),
                        ),
                      ),


                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
