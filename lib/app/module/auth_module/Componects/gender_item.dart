import 'package:flutter/cupertino.dart';
import 'package:klean/app/global_widgets/space.dart';
import '../../../core/theme/color_theme.dart';

class GenderItem extends StatelessWidget {
  String title;
  String image;
bool selected;
  GenderItem(this.title, this.image, this.selected, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height:200 ,
      width: 130,
      decoration:   BoxDecoration(
          color: selected != true? KleanAppColors.greyBG : KleanAppColors.secondaryBrandBase,
        borderRadius:      const BorderRadius.all(Radius.circular(20))
      ),
      padding: const EdgeInsets.all(10),

      child: Column(
        children: [
          Image.asset(image, height: 150,),
           Space.Y(5),
           Text(
            title,
            textAlign: TextAlign.right,
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: KleanAppColors.greyDark
            ),

          ),
        ],
      ),
    );
  }
}
