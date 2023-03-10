import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:klean/app/core/theme/color_theme.dart';
import 'package:klean/app/global_widgets/custom_appbar.dart';
import 'package:klean/app/global_widgets/space.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KleanAppColors.greyBG,
      appBar: CustomAppBar(
        title: "Notification",
        calender: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Colors.black),
            ),
            Space.Y(20),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                children: [
                  Container(
                    height: 59,
                    width: 59,
                    decoration: BoxDecoration(
                        color: KleanAppColors.secondaryBrandBase2,
                        borderRadius: BorderRadius.all(Radius.circular(59))),
                  ),
                  Space.X(10),
                  Container(
                    width: 280,
                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Congratulation',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Colors.black),
                            ),
                           // Space.X(100),
                            Spacer(),
                            Text(
                              '8:35',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: Colors.black.withOpacity(0.6)),
                            ),
                          ],
                        ),
                        Space.Y(10),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Colors.black.withOpacity(0.6)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Space.Y(20),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                children: [
                  Container(
                    height: 59,
                    width: 59,
                    decoration: BoxDecoration(
                        color: KleanAppColors.secondaryBrandBase2,
                        borderRadius: BorderRadius.all(Radius.circular(59))),
                  ),
                  Space.X(10),
                  Container(
                    width: 280,
                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Congratulation',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Colors.black),
                            ),
                            // Space.X(100),
                            Spacer(),
                            Text(
                              '8:35',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: Colors.black.withOpacity(0.6)),
                            ),
                          ],
                        ),
                        Space.Y(10),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Colors.black.withOpacity(0.6)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Space.Y(20),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                children: [
                  Container(
                    height: 59,
                    width: 59,
                    decoration: BoxDecoration(
                        color: KleanAppColors.secondaryBrandBase2,
                        borderRadius: BorderRadius.all(Radius.circular(59))),
                  ),
                  Space.X(10),
                  Container(
                    width: 280,
                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Congratulation',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Colors.black),
                            ),
                            // Space.X(100),
                            Spacer(),
                            Text(
                              '8:35',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: Colors.black.withOpacity(0.6)),
                            ),
                          ],
                        ),
                        Space.Y(10),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Colors.black.withOpacity(0.6)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Space.Y(20),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                children: [
                  Container(
                    height: 59,
                    width: 59,
                    decoration: BoxDecoration(
                        color: KleanAppColors.secondaryBrandBase2,
                        borderRadius: BorderRadius.all(Radius.circular(59))),
                  ),
                  Space.X(10),
                  Container(
                    width: 280,
                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Congratulation',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Colors.black),
                            ),
                            // Space.X(100),
                            Spacer(),
                            Text(
                              '8:35',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: Colors.black.withOpacity(0.6)),
                            ),
                          ],
                        ),
                        Space.Y(10),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Colors.black.withOpacity(0.6)),
                        ),
                      ],
                    ),
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
