import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:numberpicker/numberpicker.dart';

import '../../../core/p.dart';
import '../../../core/theme/color_theme.dart';
import '../../../global_widgets/space.dart';

class AgePage extends StatefulWidget {
  @override
  State<AgePage> createState() => _AgePageState();
}

class _AgePageState extends State<AgePage> {

  @override
  Widget build(BuildContext context) {
    return   Obx(() =>  Column(
      children: [
        const Text(
          'How old are you?',
          textAlign: TextAlign.right,
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: KleanAppColors.darkDarkest),
        ),
        Space.Y(12),
        const Text(
          'Help us to create your\n personalized plan',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: KleanAppColors.greyDark),
        ),
        Space.Y(80),
        NumberPicker(
          value: P.auth.age.value,
          itemCount: 8,
          minValue: 10,
          haptics: true,
          selectedTextStyle: TextStyle(
            color: KleanAppColors.secondaryBrandBase,
            fontWeight: FontWeight.w700,
            fontSize: 45
          ),
          textStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: KleanAppColors.greyDark
          ),
          maxValue: 100,
          onChanged: (value) =>  P.auth.age.value = value,
        ),

      ],
    ));
  }
}
