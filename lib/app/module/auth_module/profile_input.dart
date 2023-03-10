import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:klean/app/core/theme/color_theme.dart';
import 'package:klean/app/module/auth_module/Componects/intrest_page.dart';
import 'package:klean/routes/pages.dart';

import '../../global_widgets/space.dart';
import 'Componects/age_page.dart';
import 'Componects/gender_page.dart';

class ProfileInput extends StatefulWidget {
  @override
  State<ProfileInput> createState() => _ProfileInputState();
}

class _ProfileInputState extends State<ProfileInput> {
  final controller = PageController();

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  bool isLastPage = false;
  bool isFirstPage = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KleanAppColors.greyBG,
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Space.Y(120),
              TextButton(
                onPressed: () {
                  Get.offAllNamed(Routes.READY);
                },
                child: const Text(
                  'Skip',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: KleanAppColors.greyDark),
                ),
              ),
            ],
          ),
          Container(
              alignment: Alignment.topCenter,
              margin: const EdgeInsets.all(20),
              child: const LinearProgressIndicator(
                value: 0.7,
                backgroundColor: Colors.white,
                color: KleanAppColors.secondaryBrandBase,
                minHeight: 10,
              )),
          Container(
            height: 600,
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              allowImplicitScrolling: false,
              controller: controller,
              onPageChanged: (index) {
                setState(() {
                  isFirstPage = index == 0;
                  isLastPage = index == 2;
                });
              },
              children: [
                GenderPage(),
                AgePage(),
                IntrestPage(),
              ],
            ),
          ),
        ],
      ),
      bottomSheet: Container(
        color: KleanAppColors.greyBG,
        padding: const EdgeInsets.all(20),
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            isFirstPage == false
                ? GestureDetector(
                    onTap: () {
                      controller.previousPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.bounceInOut);
                    },
                    child: Container(
                      height: 35,
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      width: 92,
                      decoration: BoxDecoration(
                          border: Border.all(color: KleanAppColors.greyDark),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(
                            Icons.arrow_back_ios_sharp,
                            color: KleanAppColors.secondaryBrandBase,
                            size: 18,
                          ),
                          Text(
                            'Previous',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: KleanAppColors.secondaryBrandBase),
                          ),
                        ],
                      ),
                    ),
                  )
                : const SizedBox(),
            GestureDetector(
              onTap: () {
                isLastPage == false
                    ? controller.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.bounceInOut)
                    : Get.offAllNamed(Routes.READY);
              },
              child: Container(
                height: 35,
                padding: const EdgeInsets.only(left: 10, right: 10),
                width: 92,
                decoration: const BoxDecoration(
                    color: KleanAppColors.secondaryBrandBase,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Next',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.white,
                      size: 18,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
