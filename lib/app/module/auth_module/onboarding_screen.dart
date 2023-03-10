import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:klean/app/core/theme/color_theme.dart';
import 'package:klean/routes/pages.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoarding extends StatefulWidget {
  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final controller = PageController();
  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }
  bool isLastPage = false;
  @override
  Widget build(BuildContext context) {
    //this is a page decoration for intro screen

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 80),
        child: PageView(
          controller: controller,
          onPageChanged: (index){
            setState(() {
              isLastPage = index == 1;
            });
          },
          children: [
            Container(
                child: Image.asset(
              'assets/images/boarding1.png',
              fit: BoxFit.fill,
            )),
            Container(
                child: Image.asset(
              'assets/images/boarding2.png',
              fit: BoxFit.fill,
            )),
          ],
        ),
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
                onPressed: () {
                  Get.offAllNamed(Routes.GETSTARTED);
                },
                child: Text(
                  'Skip',
                  style: TextStyle(color: KleanAppColors.darkBase),
                )),
            Center(
              child: SmoothPageIndicator(
                count: 2,
                controller: controller,
                effect: WormEffect(
                    dotColor: KleanAppColors.greyDark,
                    dotHeight: 10,
                    dotWidth: 10,
                    activeDotColor: KleanAppColors.secondaryBrandBase),
              ),
            ),

            TextButton(
                onPressed: () {
                  isLastPage == false ?
                  controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.bounceInOut):
                  Get.offAllNamed(Routes.GETSTARTED);
                },
                child: Text(

                  'Next',
                  style: TextStyle(color: KleanAppColors.darkBase),
                )),
          ],
        ),
      ),
    );
  }
}
