import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:klean/app/global_widgets/space.dart';

import '../../../core/theme/color_theme.dart';

class AppointemntItem extends StatelessWidget {
  const AppointemntItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/profile_img.png',
                height: 51,
                width: 51,
              ),
              Space.X(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Video Call',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: KleanAppColors.secondaryBrandBase),
                  ),
                  Text(
                    'Jimmy Lukacha',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: KleanAppColors.darkBase),
                  ),
                  Text(
                    'Body Specialist',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: KleanAppColors.darkBase.withOpacity(0.6)),
                  )
                ],
              ),
              Spacer(),
              Text(
                'yesterday',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: KleanAppColors.darkBase.withOpacity(0.6)),
              )
            ],
          ),
          Space.Y(20),
          Divider(
            color: Colors.black.withOpacity(0.3),
            thickness: 1,
          ),
          Row(
            children: [
              Icon(
                Icons.star,
                size: 16,
                color: KleanAppColors.secondaryBrandBase,
              ),
              Text(
                '4.8',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: KleanAppColors.darkBase),
              ),
              Space.X(10),
              Icon(
                Icons.favorite,
                size: 16,
                color: Colors.red,
              ),
              Text(
                '4.8',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: KleanAppColors.darkBase),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    color: KleanAppColors.secondaryBrandBase,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Text(
                  'Reappointment',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
