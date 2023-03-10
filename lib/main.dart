import 'dart:async';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:klean/routes/pages.dart';
import 'package:provider/provider.dart';

//  import 'app/core/p.dart';
import 'app/module/splash_module/splash_screen.dart';
// Import the generated file
import 'firebase_options.dart';
Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  
  // P.initialize();
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  static FirebaseAnalyticsObserver observer =
  FirebaseAnalyticsObserver(analytics: analytics);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
      GetMaterialApp(
        title: 'klean',
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.INITIAL,
        defaultTransition: Transition.fade,
        getPages: AppPages.pages,
        home: const Splash(),
    );
  }
}

