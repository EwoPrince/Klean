import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import '../../core/p.dart';
import 'package:klean/app/core/theme/color_theme.dart';
import 'package:klean/routes/pages.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  delayedMove({int milli = 4000, String? to}) async {
    await Future.delayed(Duration(milliseconds: milli));
    P.initialize();
    P.loc.getCurrentLocation();
    Get.offAllNamed(Routes.ONBOARDING);
  }

  login({int milli = 3000, String? to}) async {
    await Future.delayed(Duration(milliseconds: milli));
    P.initialize();
    P.loc.getCurrentLocation();
    P.auth.getUserController();
    Get.offAllNamed(Routes.DASHBOARD);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KleanAppColors.greyBase,
      body: Stack(
        children: [
          StreamBuilder<User?>(
            stream: FirebaseAuth.instance.authStateChanges(),
            initialData: FirebaseAuth.instance.currentUser,
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return delayedMove();
              }
              return login();
            },
          ),
          Center(
            child: Image.asset('assets/images/logo.png'),
          ),
        ],
      ),
    );
  }
}
