import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/theme/color_theme.dart';
import '../../global_widgets/space.dart';

class AccountSetting extends StatelessWidget {
  const AccountSetting({Key? key}) : super(key: key);

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
                      Text(
                        'Ewo prince',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
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
                  GestureDetector(
                    // onTap: ()=> Get.toNamed(Routes.ACCOUNTEDIT),
                    child: Container(
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
padding: EdgeInsets.all(15),
                        child: Row(
                        children: [
                          Icon(Icons.edit, size: 14, color: Colors.black, ),
                          Space.X(10),
                          Text(
                            'Account Setting',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: KleanAppColors.darkDarkest),
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios, size: 14, color: Colors.black, ),
                        ],
                      )
                      
                 
                    ),
                  ),Space.Y(20),
                  Container(
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
                      padding: EdgeInsets.all(15),
                      child: Row(
                        children: [
                          Icon(Icons.logout_outlined, size: 14, color: Colors.black, ),
                          Space.X(10),
                          Text(
                            'Log Out',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: KleanAppColors.darkDarkest),
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios, size: 14, color: Colors.black, ),
                        ],
                      )


                  )

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
