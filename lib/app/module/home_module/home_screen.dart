import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import 'package:klean/app/core/theme/color_theme.dart';
import 'package:klean/app/global_widgets/input.dart';
import 'package:klean/app/global_widgets/space.dart';
import 'package:klean/app/module/home_module/Componects/home_tab_item.dart';
import 'package:klean/routes/pages.dart';
import 'package:provider/provider.dart';

import '../../core/p.dart';
import '../../global_widgets/button.dart';
import '../../global_widgets/search.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = PageController();

 int pageChanged = 0;
  @override
  void dispose() {
    // TODO: implement dispose

    controller.dispose();
    super.dispose();
  }
  @override
  void initState() {
    // TODO: implement initState
    P.home.instructorController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    

    return SingleChildScrollView(
      child:Obx(() => Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Space.Y(54),
            Row(
              children: [
                ClipOval(
                  child: Image.network(
                   // P.auth.userModel!.value.profileUrl!,
                    '',
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                  ),
                ),
                Space.X(10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi, '+P.auth.userModel!.value.firstName!,
                      style: const TextStyle(
                          color: KleanAppColors.darkDarkest,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    Space.Y(5),
                    Text(
                      'How are you doing today!',
                      style: TextStyle(
                          color: KleanAppColors.secondaryBrandBase,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),
                Spacer(),
                IconButton(onPressed: (){
                  Get.toNamed(Routes.MESSAGE);
                }, icon: Icon(Icons.chat_bubble_outline, color: KleanAppColors.primaryBrandBase,))
              ],
            ),
            Space.Y(48),
           // Search(),
           //  Space.Y(30),
            GestureDetector(
              onTap: (){
                Get.toNamed(Routes.GOAL);
              },
              child: Container(
                height: 102,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: KleanAppColors.blueDarker,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Fitness Goal Progress: 0%',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w800),
                      ),
                      Space.Y(13),
                      Container(
                          alignment: Alignment.topCenter,
                          child: LinearProgressIndicator(
                            value: 0,
                            backgroundColor: Colors.white,
                            color: KleanAppColors.secondaryBrandBase,
                            minHeight: 10,
                          )),
                    ],
                  ),
                ),
              ),
            ),
            Space.Y(13),
            P.home.loading.value == true?
                Center(
                  child:
                  CircularProgressIndicator(),
                ):
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
//                children: [
//                  for( var item in P.home.instructor)
//                    InstructorCard(item)
//                ],
              ),
            ),
            Space.Y(28),
            Center(
              child: Text(
                'Keep with our plan , You are doing great!',
                style: TextStyle(
                    color: KleanAppColors.darkBase,
                    fontSize: 14,
                    fontWeight: FontWeight.w800),
              ),
            ),
            Space.Y(28),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: (){
                    controller.animateToPage(0, duration: Duration(milliseconds: 500),  curve: Curves.ease);
                  },
                  child: Container(
                    height: 35,
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    width: 62,
                    decoration:  BoxDecoration(
                        color: pageChanged == 0? KleanAppColors.secondaryBrandBase:Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Center(
                      child: Text(
                        'Daily',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            color: pageChanged == 0?Colors.white:Colors.black),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    controller.animateToPage(1, duration: Duration(milliseconds: 500),  curve: Curves.ease);
                  },
                  child: Container(
                    height: 35,
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    width: 62,
                    decoration:  BoxDecoration(
                        color: pageChanged == 1? KleanAppColors.secondaryBrandBase:Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Center(
                      child: Text(
                        'Weekly',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            color: pageChanged == 1?Colors.white:Colors.black),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    controller.animateToPage(2, duration: Duration(milliseconds: 500), curve:   Curves.ease);
                  },
                  child: Container(
                    height: 35,
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    width: 68,
                    decoration:  BoxDecoration(
                        color: pageChanged == 2? KleanAppColors.secondaryBrandBase:Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Center(
                      child: Text(
                        'Monthly',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            color: pageChanged == 2?Colors.white:Colors.black),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    controller.animateToPage(3, duration: Duration(milliseconds: 500), curve: Curves.ease);
                  },
                  child: Container(
                    height: 35,
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    width: 62,
                    decoration:  BoxDecoration(
                        color: pageChanged == 3? KleanAppColors.secondaryBrandBase:Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Center(
                      child: Text(
                        'Yearly',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            color: pageChanged == 3?Colors.white:Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Space.Y(28),
            TabItem(),


          ],
        ),
      ),
    ));
  }
}
