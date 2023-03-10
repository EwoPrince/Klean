import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:klean/app/core/theme/color_theme.dart';
import 'package:klean/app/global_widgets/space.dart';
import 'package:klean/routes/pages.dart';
import 'package:provider/provider.dart';

import '../../core/p.dart';
//import '../feed_module/componects/feed_item.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    // TODO: implement initState
//    P.feed.getUserController(P.auth.userModel!.value.id);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    
    return  Column(
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
                  top: 40,
                  right: 15,
                  child: TextButton(
                    onPressed: () {
                      Get.toNamed(Routes.VIEWPROFILE);
                    },
                    child: Text(
                      'Profile',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  )),
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
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: [
                          Text(
                            P.auth.userModel!.value.age!.toString(),
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 16),
                          ),
                          Text(
                            'Followers',
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
                      P.auth.userModel!.value.age!.toString(),
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 16),
                          ),
                          Text(
                            'Following',
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
    // Expanded(
    //   child: SingleChildScrollView(
    //   child:
    //         Obx(
    //               () =>  P.feed.loadingProfile.value == true
    //               ? Center(
    //             child: CircularProgressIndicator(),
    //           )
    //               :
    //           Padding(
    //             padding: const EdgeInsets.all(15.0),
    //             child: Column(
    //               children: [
    //                 for (var element in P.feed.profileFeed!)
    //                   FeedItem(element),
    //               ],
    //             ),
    //           ),
    //         ),
    //   ),
    // )
     ],
     
    );
  }
}
