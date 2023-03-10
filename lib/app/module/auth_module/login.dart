import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:klean/app/global_widgets/button.dart';
import 'package:klean/app/global_widgets/input.dart';
import 'package:klean/app/global_widgets/space.dart';

import '../../../routes/pages.dart';
import '../../core/p.dart';
import '../../core/theme/color_theme.dart';
import '../../global_widgets/custom_appbar.dart';

class Login extends StatelessWidget {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Obx(() =>

      Scaffold(
      backgroundColor: KleanAppColors.greyBG,
      appBar: CustomAppBar(title: '',),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.asset('assets/images/logoFit.png', width: 206, height: 55,)),
              Space.Y(62),
              const Text(
                'Sign in your Account',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: KleanAppColors.darkDarkest
                ),

              ),
              Space.Y(34),
              Form(
                  key: _key,
                  child: Column(
                children: [
                  Input(
                    label: 'Email Address',
                    hint: 'Enter Email Address',
                    controller: P.auth.email,
                    type: InputType.email,
                    validator: (v) =>
                    v!.isEmail ? null : "Email is poorly formatted",

                  ),
                  Space.Y(20),
                  Input(
                    label: 'Password',
                    hint: 'Enter Password',
                    controller: P.auth.password,
                    type: InputType.password,
                    validator: (v) =>
                    v!.isNotEmpty ? null : "Password cannot be blank",

                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(onPressed: (){}, child:  const Text(
                        'Forget Password?',
                       textAlign: TextAlign.right,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: KleanAppColors.darkDarkest
                        ),

                      ),),
                    ],
                  ),
                  Space.Y(107),
                  Press.bold('Sign In', onPressed: (){
                    if (_key.currentState!.validate()) {
                      // Get.toNamed(Routes.DASHBOARD);
                      P.auth.loginController();
                    }
                  },
                    loading: P.auth.loading.value,
                  ),

                  Space.Y(31),
                  const Text(
                    'or Sign in with',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontSize: 16,

                        fontWeight: FontWeight.w400,
                        color: KleanAppColors.greyDark
                    ),

                  ),
                  Space.Y(31),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/icons/google.png',),
                      Space.X(10),
                      Image.asset('assets/icons/facebook.png',)
                    ],
                  ),
                  Space.Y(48),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Dont have an Account? ',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: KleanAppColors.darkBase
                        ),

                      ),
                      TextButton(onPressed: (){
                        Get.toNamed(Routes.SIGNUP);
                      }, child: const Text(
                        'Signup',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: KleanAppColors.secondaryBrandBase
                        ),

                      ))

                    ],

                  ),
                ],
              ) )
            ],
          ),
        ),
      ),
       ));
  }
}
