import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:klean/app/global_widgets/input.dart';

import '../../core/theme/color_theme.dart';
import '../../global_widgets/space.dart';

class EditAccount extends StatelessWidget {
  const EditAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [

                Container(
                  height: 330,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: KleanAppColors.secondaryBrandBase,
                      borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(40))),
                ),
                Positioned(
                    top: 40,
                    left: 15,
                    child: GestureDetector(
                        onTap: ()=>   Get.back(),
                        child: Image.asset('assets/icons/back.png')),

                    ),

                Positioned(
                  top: 60,
                  left: 10,
                  right: 10,
                  child: Column(
                    children: [
                      Space.Y(30),
                      CircleAvatar(
                        radius: 58,
                        backgroundColor: Colors.white.withOpacity(0.1),
                        backgroundImage:
                        AssetImage("assets/images/profile_img.png"),
                        child: Stack(children: [
                          Align(
                            alignment: Alignment.bottomRight,
                            child: CircleAvatar(
                              radius: 18,
                              backgroundColor: KleanAppColors.blueDarker,
                              child: Icon(
                                CupertinoIcons.camera_fill,
                                size: 18,
                              ),
                            ),
                          ),
                        ]),
                      ),
Space.Y(30),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.white, width: 1),
                        ),
                        padding: EdgeInsets.all(10),

                        child:
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.camera_alt, color: Colors.white, size: 18,),
                            Space.X(10),
                            Text(
                              'Change photo',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ),
                          ],
                        )

                      )
                    ],
                  ),
                ),


              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Space.Y(20),
                  Container(
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Personal Information',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: KleanAppColors.darkDarkest),
                              ),
                                   ],
                          ),
                          Space.Y(10),
                          Divider(
                            thickness: 0.5,
                            color: KleanAppColors.darkDark.withOpacity(0.5),
                          ),
                          Space.Y(10),
                          Input(
                            hint: "First Name",
                          ),
                          Space.Y(10),
                          Input(
                            hint: "Last Name",
                          ),
                          Space.Y(10),
                          Input(
                            hint: "Username",
                          ),
                          Space.Y(10),
                          Input(
                            hint: "Phone Number",
                          ),
                          Space.Y(10),
                          Input(
                            hint: "Location",
                          ),

                          Space.Y(10),
                          Input(
                            hint: "Address",
                          ),






                        ],
                      )


                  ),
                  Space.Y(20),
                  Container(
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Account Info',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: KleanAppColors.darkDarkest),
                              ),
                            ],
                          ),
                          Space.Y(10),
                          Divider(
                            thickness: 0.5,
                            color: KleanAppColors.darkDark.withOpacity(0.5),
                          ),
                          Space.Y(10),
                          Input(
                            hint: "Email",
                          ),
                          Space.Y(10),
                          Input(
                            hint: "Password",
                          ),
                          Space.Y(10),






                        ],
                      )


                  ),
                  Space.Y(20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
