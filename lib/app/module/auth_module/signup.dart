import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:klean/app/global_widgets/custom_appbar.dart';
import '../../../routes/pages.dart';
import '../../core/p.dart';
import '../../core/theme/color_theme.dart';
import '../../global_widgets/button.dart';
import '../../global_widgets/input.dart';
import '../../global_widgets/space.dart';

class Signup extends StatelessWidget {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Obx(() =>Scaffold(
      backgroundColor: KleanAppColors.greyBG,
      appBar:  CustomAppBar(title: '',),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15),
          child:Form(
    key: _key,
    child:  Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(child: Image.asset(
                'assets/images/logoFit.png', width: 206, height: 55,)),
              Space.Y(62),
              const Text(
                'Create New Account',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: KleanAppColors.darkDarkest
                ),

              ),
              const Text(
                'Enter Your details to create account',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: KleanAppColors.greyDark
                ),

              ),
              Space.Y(50),
              Form(child: Column(
                children: [
                  Input(
                    label: 'Full name',
                    hint: 'Enter Full Name',
                    type: InputType.text,
                    controller: P.auth.fullName,
                    validator: (v) =>
                    v!.isNotEmpty ? null : "Full name cannot be blank",

                  ),
                  Space.Y(20),
                  Input(
                    label: 'Email Address',
                    hint: 'Enter Email Address',
                    type: InputType.email,
                    controller: P.auth.email,
                    validator: (v) =>
                    v!.isEmail ? null : "Email is poorly formatted",

                  ),
                  Space.Y(20),
                  Input(
                    label: 'Password',
                    hint: 'Enter Password',
                    type: InputType.password,
                    controller: P.auth.password,
                    validator: (v) =>
                    v!.isNotEmpty ? null : "Password cannot be blank",
                  ),

                  Space.Y(107),
                  Press.bold('Sign Up',
                    loading: P.auth.loading.value,
                    onPressed: () {

                    if (_key.currentState!.validate()) {
                      // Get.toNamed(Routes.DASHBOARD);

                      P.auth.registerController();
                    }
                  },),

                  Space.Y(31),
                  const Text(
                    'or Sign Up with',
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
                  Space.Y(15),
                  TextButton(onPressed: () {
                        Get.toNamed(Routes.TERMCONDITIONS);
                      }, child: const Text(
                    'Agree Terms & Conductions',

                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: KleanAppColors.greyDark
                    ),

                  ),
                  ),
                  Space.Y(15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Aready have an Account? ',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: KleanAppColors.darkBase
                        ),

                      ),
                      TextButton(onPressed: () {
                        Get.toNamed(Routes.LOGIN);
                      }, child: const Text(
                        'Sign in',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: KleanAppColors.secondaryBrandBase
                        ),

                      )),

                    ],

                  ),
                ],
              ))
            ],
          ),),
        ),
      ),
    ));
  }}
