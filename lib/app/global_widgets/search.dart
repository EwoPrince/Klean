import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:klean/app/core/theme/color_theme.dart';
import 'package:klean/app/global_widgets/space.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(40))
      ),
      child: Row(

        children: [
          Space.X(20),
          Icon(
            Icons.search, size: 24, color: KleanAppColors.primaryBrandBase. withOpacity(0.6),

          ),
          Space.X(15),
          Text('Search here...',
          style: TextStyle(
            color: KleanAppColors.primaryBrandBase. withOpacity(0.6),
            fontSize: 16,
            fontWeight: FontWeight.w400
          ),

          ), Spacer(),
          Image.asset('assets/images/mic_red.png')
        ],
      ),
    );
  }
}
