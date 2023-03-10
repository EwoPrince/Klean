import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:klean/app/core/theme/color_theme.dart';
import 'package:klean/app/global_widgets/custom_appbar.dart';
import 'package:klean/app/global_widgets/space.dart';

class Support extends StatelessWidget {
  const Support({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Support',
        notifly: true,
        calender: true,
      ),
      backgroundColor: KleanAppColors.greyBG,
      body: Column(
        children: [
          Space.Y(30),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Text(
                  'How to delete account',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.black),
                ),
                Space.Y(10),
                Divider(
                  color: KleanAppColors.greyBG,
                  thickness: 0.5,
                ),
                Space.Y(10),
                Text(
                  'when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently.' +
                      ' web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web site.',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.black),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
