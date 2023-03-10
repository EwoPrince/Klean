import 'package:get/get.dart';
import 'package:klean/app/data/models/Chat.dart';
import 'package:klean/app/module/account_setting/edit_account.dart';
import 'package:klean/app/module/appointments_module/appointment_screen.dart';
import 'package:klean/app/module/appointments_module/new_appointment.dart';
import 'package:klean/app/module/auth_module/get_started.dart';
import 'package:klean/app/module/auth_module/login.dart';
import 'package:klean/app/module/auth_module/onboarding_screen.dart';
import 'package:klean/app/module/auth_module/profile_input.dart';
import 'package:klean/app/module/auth_module/ready.dart';
import 'package:klean/app/module/auth_module/signup.dart';
import 'package:klean/app/module/dashboard_module/dashboard.dart';
import 'package:klean/app/module/home_module/instructors.dart';
import 'package:klean/app/module/home_module/step_screen.dart';
import 'package:klean/app/module/message_module/chat_screen.dart';
import 'package:klean/app/module/message_module/components/message.dart';
import 'package:klean/app/module/notification_module/notification_screen.dart';
import 'package:klean/app/module/profile_module/privacy_policy.dart';
import 'package:klean/app/module/profile_module/setting.dart';
import 'package:klean/app/module/home_module/subscribe_pan.dart';
import 'package:klean/app/module/profile_module/support.dart';
import 'package:klean/app/module/profile_module/t&c.dart';
import 'package:klean/app/module/profile_module/view_profile.dart';
import '../app/module/account_setting/account_setting.dart';
import '../app/module/home_module/sleep_screen.dart';
import '../app/module/message_module/message_screen.dart';




part './routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: Routes.ONBOARDING, page: () =>  OnBoarding()),
    GetPage(name: Routes.GETSTARTED, page: () =>  GetStarted()),
    GetPage(name: Routes.LOGIN, page: () =>  Login()),
    GetPage(name: Routes.SIGNUP, page: () =>  Signup()),
    GetPage(name: Routes.PROFILEINPUT, page: () =>  ProfileInput()),
    GetPage(name: Routes.READY, page: () =>  Ready()),
    GetPage(name: Routes.DASHBOARD, page: () =>  Dashboard()),
    GetPage(name: Routes.VIEWPROFILE, page: () => ViewProfile()),
    GetPage(name: Routes.APPOINTMENT, page: () => AppointmentScreen()),
    GetPage(name: Routes.NEWAPPOINTMENT, page: () => NewAppointment()),
    GetPage(name: Routes.ACCOUNTSETTING, page: () => AccountSetting()),
    GetPage(name: Routes.ACCOUNTEDIT, page: () => EditAccount()),
    GetPage(name: Routes.NOTIFICATION, page: () => NotificationScreen()),
    GetPage(name: Routes.SETTING, page: () => Setting()),
    GetPage(name: Routes.SUPPORT, page: () => Support()),
    GetPage(name: Routes.PRIVACYPOLICY, page: () => PrivacyPolicy()),
    GetPage(name: Routes.TERMCONDITIONS, page: () => TermConditionns()),
    GetPage(name: Routes.STEPSCREEN, page: () => StepScreen()),
    GetPage(name: Routes.SLEEPSCREEN, page: () => SleepScreen()),
    GetPage(name: Routes.MESSAGE, page: () => MessageScreen()),
    GetPage(name: Routes.CHAT, page: () => ChatScreen()),
    GetPage(name: Routes.SUBSCRIBE, page: () => SubscribePlan()),
    GetPage(name: Routes.INSTRUCTOR, page: () => Instructors()),
  ];
}
