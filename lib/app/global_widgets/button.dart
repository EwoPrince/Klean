import 'package:flutter/material.dart';
import 'package:klean/app/core/theme/color_theme.dart';

class Press extends StatelessWidget {
  final String title;
  final Function()? onPressed;
  final Color background;
  final Color foreground;
  final bool loading;

  Press.light(this.title, {this.onPressed, this.loading = false})
      : background = Colors.white.withOpacity(0.6),
        foreground = Colors.black.withOpacity(0.6);

  Press.bold(
    this.title, {
    this.onPressed,
    this.loading = false,
    this.foreground = Colors.white,
    this.background = KleanAppColors.secondaryBrandBase,
  });

  Press.dark(this.title, {this.onPressed, this.loading = false})
      : background = const Color(0xFF2797FF),
        foreground = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: .15.ofWidth),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: ElevatedButton(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 18.0),
                child: loading
                    ? const SizedBox(
                        child: CircularProgressIndicator(),
                        height: 25,
                        width: 25,
                      )
                    : Text(
                        title,
                        style: TextStyle(
                          color: foreground,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
              ),
              onPressed: loading ? null : onPressed,
              style: ElevatedButton.styleFrom(
                  primary: background, shape: StadiumBorder()),
            ),
          ),
        ],
      ),
    );
  }
}
