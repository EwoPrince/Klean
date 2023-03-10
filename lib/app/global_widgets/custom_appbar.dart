
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:klean/app/global_widgets/space.dart';
import 'package:klean/routes/pages.dart';

import '../core/theme/color_theme.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
    CustomAppBar({
    Key? key,
    this.notifly = false,
      this.calender = false,
    required this.title,
  }) : super(key: key);

  final String title;
  bool notifly;
    bool calender;

  @override
  Widget build(BuildContext context) {
    return AppBar(
backgroundColor: KleanAppColors.greyBG,
      centerTitle: true,
      title: Text(
        title,
        style: TextStyle(
          color: KleanAppColors.darkDarkest,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      leading: GestureDetector(onTap:(){
        Get.back();
      },child: Image.asset('assets/icons/back.png', )),
      actions: [
        calender == true? IconButton(onPressed: (){}, icon: ImageIcon(
          AssetImage('assets/icons/calender.png'),
          color: KleanAppColors.primaryBrandBase,
        ),): SizedBox(),
        Space.X(10),
        notifly == true? IconButton(onPressed: (){
          Get.toNamed(Routes.NOTIFICATION);
        }, icon: ImageIcon(
          AssetImage('assets/icons/clarity_notification.png'),
          color: KleanAppColors.primaryBrandBase,
        ),): SizedBox(),



      ],

      elevation: 0,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(50);
}
