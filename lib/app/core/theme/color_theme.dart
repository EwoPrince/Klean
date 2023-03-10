
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KleanAppColors {
 const KleanAppColors._();

 // greys
 static const Color greyBase = Color(0xFFCDCFD0);
 static const Color greyDark = Color(0xFF747272);
 static const Color greyBG = Color(0xFFEDEDED);

 // dark
 static const Color darkBase = Color(0xFF404446);
 static const Color darkDark = Color(0xFF202325);
 static const Color darkLighter = Color(0xFF999999);
 static const Color darkDarker = Color(0xFF202325);
 static const Color darkDarkest = Color(0xFF000000);

 // primary brand
 static const Color primaryBrandBase = Color(0xFF12AACB);


 // secondary brand
 static const Color secondaryBrandBase = Color.fromRGBO(21, 164, 243, 1);
 static const Color secondaryBrandBase2 = Color(0xFF8DE6F2);

 // yellow
 // static const Color greenLighter = Color(0xFF7DDE86);
 static const Color blueDarker = Color(0xFF171433);

 // green

}

ButtonStyle textButtonStyle = TextButton.styleFrom(
    backgroundColor: KleanAppColors.primaryBrandBase,
    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
    shape: RoundedRectangleBorder(
     borderRadius: BorderRadius.circular(6.0),
    ));
