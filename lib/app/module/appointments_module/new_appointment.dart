import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:klean/app/core/theme/color_theme.dart';
import 'package:klean/app/global_widgets/button.dart';
import 'package:klean/app/global_widgets/custom_appbar.dart';
import 'package:klean/app/global_widgets/space.dart';

class NewAppointment extends StatefulWidget {
  const NewAppointment({Key? key}) : super(key: key);

  @override
  State<NewAppointment> createState() => _NewAppointmentState();
}

class _NewAppointmentState extends State<NewAppointment> {
  List moriningSlot = [
    {
      "name": "10:00AM",
    },
    {
      "name": "10:30AM",
    },
    {
      "name": "11:00AM",
    },
    {
      "name": "11:30AM",
    },
    {
      "name": "12:00AM",
    },
    {
      "name": "12:30AM",
    },
  ];
  void showCustomDialog(BuildContext context) {
    showGeneralDialog(
      context: context,
      barrierLabel: "Barrier",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: Duration(milliseconds: 700),
      pageBuilder: (_, __, ___) {
        return Center(
            child: Material(
          type: MaterialType.transparency,
          child: Container(
            height: 360,
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                color: KleanAppColors.secondaryBrandBase2,
                borderRadius: BorderRadius.circular(40)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Order Details',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: KleanAppColors.darkDarkest),
                    ),
                    Spacer(),
                    Icon(
                      Icons.close,
                      color: Colors.black,
                    ),
                  ],
                ),
                Space.Y(30),
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            'Selected \n Date',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color:
                                    KleanAppColors.darkDarkest.withOpacity(0.6)),
                          ),
                          Space.Y(20),
                          Text(
                            '16/11/2022',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color:
                                    KleanAppColors.darkDarkest),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Text(
                            'Selected \n Date',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color:
                                    KleanAppColors.darkDarkest.withOpacity(0.6)),
                          ),
                          Space.Y(20),
                          Text(
                            '16/11/2022',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color:
                                    KleanAppColors.darkDarkest),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Space.Y(28),
                Row(
                  children: [
                    Text(
                      'Estimate Cost',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: KleanAppColors.darkDarkest),
                    ),
                    Spacer(),
                    Text(
                      '500',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: KleanAppColors.darkDarkest),
                    ),


                  ],
                ),
                Text(
                  'Monthly Subscription',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: KleanAppColors.darkDarkest.withOpacity(0.7)),
                ),
                Space.Y(30),
                Row(
                  children: [
                    Expanded(child: Press.bold('Cancel', onPressed: (){ Get.back();}, )),
                    Space.X(20),
                    Expanded(child: Press.bold('Confirm', onPressed: (){Get.back();}, background: KleanAppColors.primaryBrandBase,))
                  ],
                )
              ],
            ),
          ),
        ));
      },
      transitionBuilder: (_, anim, __, child) {
        Tween<Offset> tween;
        if (anim.status == AnimationStatus.reverse) {
          tween = Tween(begin: Offset(-1, 0), end: Offset.zero);
        } else {
          tween = Tween(begin: Offset(1, 0), end: Offset.zero);
        }

        return SlideTransition(
          position: tween.animate(anim),
          child: FadeTransition(
            opacity: anim,
            child: child,
          ),
        );
      },
    );
  }

  String morintime = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Appointment',
        notifly: true,
        calender: true,
      ),
      backgroundColor: KleanAppColors.greyBG,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CalendarDatePicker2(
                config: CalendarDatePicker2Config(
                    calendarType: CalendarDatePicker2Type.single,
                    selectedDayHighlightColor:
                        KleanAppColors.secondaryBrandBase),
                initialValue: [],
              ),
              Row(
                children: [
                  Icon(
                    Icons.access_time,
                    size: 24,
                    color: KleanAppColors.secondaryBrandBase,
                  ),
                  Space.X(10),
                  Text(
                    'Time',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: KleanAppColors.darkDarkest),
                  ),
                ],
              ),
              Space.Y(10),
              Text(
                'Morning Slot',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: KleanAppColors.darkDarkest.withOpacity(0.6)),
              ),
              Space.Y(10),
              Container(
                height: 80,
                child: GridView.count(
                    crossAxisCount: 5,
                    childAspectRatio: 2.5,
                    crossAxisSpacing: 4.0,
                    mainAxisSpacing: 8.0,
                    children: List.generate(moriningSlot.length, (index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            morintime = moriningSlot[index]['name'];
                          });
                        },
                        child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: moriningSlot[index]['name'] == morintime
                                ? BoxDecoration(
                                    color: KleanAppColors.secondaryBrandBase,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)))
                                : BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                            child: Center(
                                child: Text(
                              moriningSlot[index]['name'],
                              style: TextStyle(
                                  color:
                                      moriningSlot[index]['name'] == morintime
                                          ? Colors.white
                                          : Colors.black),
                            ))),
                      );
                    })),
              ),
              Space.Y(10),
              Text(
                'Evening Slot',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: KleanAppColors.darkDarkest.withOpacity(0.6)),
              ),
              Space.Y(10),
              Container(
                height: 80,
                child: GridView.count(
                    crossAxisCount: 5,
                    childAspectRatio: 2.5,
                    crossAxisSpacing: 4.0,
                    mainAxisSpacing: 8.0,
                    children: List.generate(moriningSlot.length, (index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            morintime = moriningSlot[index]['name'];
                          });
                        },
                        child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: moriningSlot[index]['name'] == morintime
                                ? BoxDecoration(
                                    color: KleanAppColors.secondaryBrandBase,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)))
                                : BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                            child: Center(
                                child: Text(
                              moriningSlot[index]['name'],
                              style: TextStyle(
                                  color:
                                      moriningSlot[index]['name'] == morintime
                                          ? Colors.white
                                          : Colors.black),
                            ))),
                      );
                    })),
              ),
              Space.Y(20),
              Text(
                'Note',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: KleanAppColors.darkDarkest),
              ),
              Space.Y(20),
              Text(
                '*    Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: KleanAppColors.darkDarkest.withOpacity(0.7)),
              ),
              Space.Y(20),
              Text(
                '*    Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: KleanAppColors.darkDarkest.withOpacity(0.7)),
              ),
              Space.Y(20),
              Text(
                '*    Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: KleanAppColors.darkDarkest.withOpacity(0.7)),
              ),
              Space.Y(20),
              Press.bold(
                'Next',
                onPressed: () {
                  showCustomDialog(context);
                },
              ),
              Space.Y(20),
            ],
          ),
        ),
      ),
    );
  }
}
