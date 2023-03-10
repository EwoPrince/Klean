import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:klean/app/core/theme/color_theme.dart';
import 'package:klean/app/global_widgets/space.dart';
import '../../../routes/pages.dart';
import '../../core/p.dart';
import '../../global_widgets/button.dart';

class Ready extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KleanAppColors.secondaryBrandBase,
      body: Obx(() =>  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Space.Y(133),
              Image.asset('assets/images/ready.png', height: 290, width: 290,),
              Space.Y(40),
              const Text('You are ready to go!', style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 22
              ),),
              Space.Y(25),
              const Text('Thanks for taking your time to create \n an account with us. let’s start your \n Fitness journey',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 16
              ),),
              Space.Y(104),
              Press.light("Get Started!",
                loading: P.auth.loading.value,
                onPressed: (){
                P.auth.updateProfileController();
                //  Get.offAllNamed(Routes.DASHBOARD);
              },),
            ],
          ),
        ),
      ),
    ));
  }
}
