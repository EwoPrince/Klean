import 'package:flutter/cupertino.dart';
import 'package:klean/app/global_widgets/space.dart';
import 'package:klean/app/module/appointments_module/componects/appointment_item.dart';

import '../../../core/theme/color_theme.dart';

class Past extends StatelessWidget {
  const Past({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
Space.Y(50),
          Text(
            'No Pevious appointment',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: KleanAppColors.darkDark),
          ),
          // Space.Y(10),
          // AppointemntItem(),
          // Space.Y(10),
          // AppointemntItem(),
          // Space.Y(10),
          // AppointemntItem(),
          // Space.Y(10),
          // AppointemntItem()


        ],
      ),
    );
  }
}
