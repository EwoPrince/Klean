import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:klean/app/core/theme/color_theme.dart';
import 'package:klean/app/global_widgets/custom_appbar.dart';
import 'package:klean/app/module/appointments_module/componects/past.dart';
import 'package:klean/app/module/appointments_module/componects/upcoming.dart';

import '../../global_widgets/space.dart';

class AppointmentScreen extends StatefulWidget {
  const AppointmentScreen({Key? key}) : super(key: key);

  @override
  State<AppointmentScreen> createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
  final controller = PageController();
  int pageChanged = 0;
  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Appointment',
        notifly: true,
        calender: true,
      ),
      backgroundColor: KleanAppColors.greyBG,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Space.Y(30),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    controller.animateToPage(0, duration: Duration(milliseconds: 500), curve: Curves.ease);
                  },
                  child: Container(
                    height: 45,
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    width: 100,
                    decoration:  BoxDecoration(
                        color: pageChanged == 0? KleanAppColors.secondaryBrandBase:Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Center(
                      child: Text(
                        'Upcoming',
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
                    controller.animateToPage(1, duration: Duration(milliseconds: 500), curve: Curves.ease);
                  },
                  child: Container(
                    height: 45,
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    width: 100,
                    decoration:  BoxDecoration(
                        color: pageChanged == 1? KleanAppColors.secondaryBrandBase:Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Center(
                      child: Text(
                        'Past',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            color: pageChanged == 1?Colors.white:Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 700,
              child: PageView(
                controller: controller,
                onPageChanged: (index) {
                  setState(() {
                    pageChanged = index;
                  });
                  print(pageChanged);
                },
                children: [
                 Upcoming(),
                  Past()

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
