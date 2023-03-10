import 'package:get/get.dart';
import 'package:klean/app/module/auth_module/controller.dart';
import 'package:klean/app/module/location_module/controller.dart';
import 'package:klean/app/module/message_module/controller.dart';

import '../module/home_module/controller.dart';

class P {
  static initialize() {
//    Get.put(SplashController());
//    Get.put(UserRepositry());
    Get.put(LocController());
    Get.put(AuthController());
    Get.put(HomeController());
    Get.put(MessageController());
  }

//  static SplashController get splash => Get.find();
//  static UserRepositry get user => Get.find();
  static LocController get loc => Get.find();
  static AuthController get auth => Get.find();
  static HomeController get home => Get.find();
  static MessageController get message => Get.find();
}
