import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../core/p.dart';
import '../../../core/theme/color_theme.dart';
import '../../../global_widgets/space.dart';
import '../controller.dart';
import 'gender_item.dart';

class GenderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Obx(
            () =>  Column(
      children: [
        const Text(
          'Gender',
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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
                onTap: () {
                  P.auth.changeGender(widget: Gender.MALE);
                },
                child: GenderItem(
                    'Male',
                    'assets/images/male.png',
                    P.auth.gender.value == Gender.MALE)),
            Space.X(20),
            GestureDetector(
                onTap: () {
                  P.auth.changeGender(widget: Gender.FEMALE);
                },
                child: GenderItem(
                    'Female',
                    'assets/images/female.png',
                    P.auth.gender.value == Gender.FEMALE)),
          ],
        ),
      ],
    ));
  }
}
