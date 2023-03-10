
import 'package:flutter/material.dart';
import 'package:klean/app/core/theme/color_theme.dart';

import '../../../data/models/ChatMessage.dart';


class TextMessage extends StatelessWidget {
  const TextMessage({
    Key? key,
    this.message,
  }) : super(key: key);

  final ChatMessage? message;

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: const EdgeInsets.symmetric(
        horizontal:10,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: KleanAppColors.primaryBrandBase,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        message!.text!,
        style: TextStyle(
          color: message!.isSender!
              ? Colors.white
              : Theme.of(context).textTheme.bodyText1!.color,
        ),
      ),
    );
  }
}
