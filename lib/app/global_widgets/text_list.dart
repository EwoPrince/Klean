import 'package:flutter/material.dart';
import 'package:klean/app/core/theme/color_theme.dart';
import 'package:klean/app/global_widgets/space.dart';

class TextList extends StatelessWidget {
  final String text;


  TextList(String y)
      : text = y;




  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8),
      child: Row(
        children: [
          Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
                color: KleanAppColors.secondaryBrandBase,
                borderRadius:
                BorderRadius.all(  Radius.circular(40))),
          ),
          Space.X(10),
          Text(
            text,
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 14),
          ),
        ],
      ),
    );
  }
}