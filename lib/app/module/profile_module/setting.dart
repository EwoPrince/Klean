import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:klean/app/global_widgets/custom_appbar.dart';
import 'package:klean/app/global_widgets/space.dart';

import '../../../routes/pages.dart';
import '../../core/p.dart';
import '../../core/theme/color_theme.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KleanAppColors.greyBG,
      appBar: CustomAppBar(title: 'Setting',
        notifly: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
Space.Y(20),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Space.Y(20),
                    Text(
                      'Account',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.black),
                    ),
                    Space.Y(25),
                    Divider(
                      color: KleanAppColors.greyBG,
                      thickness: 0.5,
                    ),
                    Space.Y(10),
                    Row(
                     children: [
                       Icon(
                         Icons.lock, size: 18, color: KleanAppColors.secondaryBrandBase2,
                       ),
                       Space.X(10),
                       Text(
                         'Change Password',
                         style: TextStyle(
                             fontWeight: FontWeight.w500,
                             fontSize: 16,
                             color: Colors.black),
                       ),
                       Spacer(),
                       Icon(
                         Icons.keyboard_arrow_right_outlined,
                       ),
                     ],
                    ),
                    Space.Y(10),
                    Divider(
                      color: KleanAppColors.greyBG,
                      thickness: 0.5,
                    ),
                    Space.Y(10),
                    // Row(
                    //   children: [
                    //     Icon(
                    //       Icons.notification_add, size: 18, color: KleanAppColors.secondaryBrandBase2,
                    //     ),
                    //     Space.X(10),
                    //     Text(
                    //       'Notification',
                    //       style: TextStyle(
                    //           fontWeight: FontWeight.w500,
                    //           fontSize: 16,
                    //           color: Colors.black),
                    //     ),
                    //     Spacer(),
                    //     Icon(
                    //       Icons.keyboard_arrow_right_outlined,
                    //     ),
                    //   ],
                    // ),


                    Space.Y(10),
                    GestureDetector(
                      onTap: (){
                        Get.toNamed(Routes.TERMCONDITIONS);
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.settings, size: 18, color: KleanAppColors.secondaryBrandBase2,
                          ),
                          Space.X(10),
                          Text(
                            'Privacy',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.black),
                          ),
                          Spacer(),
                          Icon(
                            Icons.keyboard_arrow_right_outlined,
                          ),
                        ],
                      ),
                    ),
                    Space.Y(10),
                    Divider(
                      color: KleanAppColors.greyBG,
                      thickness: 0.5,
                    ),
                    Space.Y(10),
                    // Row(
                    //   children: [
                    //     Icon(
                    //       Icons.payment, size: 18, color: KleanAppColors.secondaryBrandBase2,
                    //     ),
                    //     Space.X(10),
                    //     Text(
                    //       'Payment',
                    //       style: TextStyle(
                    //           fontWeight: FontWeight.w500,
                    //           fontSize: 16,
                    //           color: Colors.black),
                    //     ),
                    //     Spacer(),
                    //     Icon(
                    //       Icons.keyboard_arrow_right_outlined,
                    //     ),
                    //   ],
                    // ),
                    // Space.Y(10),
                    // Divider(
                    //   color: KleanAppColors.greyBG,
                    //   thickness: 0.5,
                    // ),
                    Space.Y(10),
                    GestureDetector(
                      onTap: () async => {
                        await FirebaseAuth.instance.signOut()
                          ,
                      Get.back(),
                      Get.offAllNamed(Routes.GETSTARTED)
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.logout, size: 18, color: KleanAppColors.secondaryBrandBase2,
                          ),
                          Space.X(10),
                          Text(
                            'Sign Out',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.black),
                          ),
                          Spacer(),
                          Icon(
                            Icons.keyboard_arrow_right_outlined,
                          ),
                        ],
                      ),
                    ),
                    Space.Y(10),

                  ],
                ),
              ),
              Space.Y(20),

            ],
          ),
        ),
      ),
    );
  }
}
