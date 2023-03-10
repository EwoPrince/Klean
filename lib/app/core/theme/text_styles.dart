import 'package:flutter/material.dart';
import 'color_theme.dart';


class MoniAppTextStyles {
  MoniAppTextStyles._();


  static const TextStyle tinyTinyRegular = TextStyle(fontSize: 12);

  static const TextStyle smallSmallMedium =
      TextStyle(fontSize: 14, fontWeight: FontWeight.w600);

  static const TextStyle smallSmallBold = TextStyle(
      fontSize: 14,
      color:KleanAppColors.darkDarker,
      height: 1.4,
      fontWeight: FontWeight.bold);

  static const TextStyle regularRegularRegular =
      TextStyle(fontSize: 16, height: 1.5);

  static const TextStyle textButtonTextStyle =
      TextStyle(fontSize: 14, color: KleanAppColors.primaryBrandBase);
}
