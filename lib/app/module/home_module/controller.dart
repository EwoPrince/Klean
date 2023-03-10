import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_stripe/flutter_stripe.dart';

import 'package:get/get.dart';

import '../../../routes/pages.dart';
import '../../core/p.dart';
import '../../core/utils/responses.dart';
import 'Componects/sub_dialog.dart';

class HomeController extends GetxController {
  RxBool loading = false.obs;
  bool ready = false ;
  RxList instructor = [].obs;
  Responses _responses = Responses();
  void instructorController() async {
    loading.value = true;
    print('true');
//    _responses = await HomeRepository.instructor();
    loading.value = false;

    if (_responses.statusCode == 200) {
      instructor.value = _responses.data;
print(instructor.value);
    //   P.auth.userModel!.value.subscription != []?
    //   _showDialog()
    //       : print( P.auth.userModel!.value.subscription);
    // } else {
    //   Get.snackbar(
    //       _responses.statusCode.toString(), _responses.data!.toString(),
    //       backgroundColor: Colors.red,
    //       colorText: Colors.white,
    //       duration: Duration(seconds: 5));
    }
    // print(_responses.message);
  }
  void _showDialog() async {
    await Get.dialog(AlertDialog(
      content: SubDialog(),
    ));
  }
  // Future<void> initPaymentSheet() async {
  //   try {
  //     // 1. create payment intent on the server
  //
  //     _responses = await HomeRepository.intStripe();
  //
  //     if (_responses.statusCode == 200) {
  //        print(_responses.data);
  //     }
  //   var data = _responses.data;
  //     print(data['paymentIntent']);
  //     // create some billingdetails
  //     final billingDetails = BillingDetails(
  //       name: 'Flutter Stripe',
  //       email: 'email@stripe.com',
  //       phone: '+48888000888',
  //       address: Address(
  //         city: 'Houston',
  //         country: 'US',
  //         line1: '1459  Circle Drive',
  //         line2: '',
  //         state: 'Texas',
  //         postalCode: '77063',
  //       ),
  //     ); // mocked data for tests
  //
  //     // 2. initialize the payment sheet
  //     await Stripe.instance.initPaymentSheet(
  //       paymentSheetParameters: SetupPaymentSheetParameters(
  //         // Main params
  //         paymentIntentClientSecret: data['paymentIntent'],
  //         merchantDisplayName: 'Flutter Stripe Store Demo',
  //         // Customer params
  //         customerId: data['customer'],
  //         customerEphemeralKeySecret: data['ephemeralKey'],
  //         // Extra params
  //         applePay: PaymentSheetApplePay(
  //           merchantCountryCode: 'DE',
  //         ),
  //         googlePay: PaymentSheetGooglePay(
  //           merchantCountryCode: 'DE',
  //           testEnv: true,
  //         ),
  //         style: ThemeMode.dark,
  //         appearance: PaymentSheetAppearance(
  //           colors: PaymentSheetAppearanceColors(
  //             background: Colors.lightBlue,
  //             primary: Colors.blue,
  //             componentBorder: Colors.red,
  //           ),
  //           shapes: PaymentSheetShape(
  //             borderWidth: 4,
  //             shadow: PaymentSheetShadowParams(color: Colors.red),
  //           ),
  //           primaryButton: PaymentSheetPrimaryButtonAppearance(
  //             shapes: PaymentSheetPrimaryButtonShape(blurRadius: 8),
  //             colors: PaymentSheetPrimaryButtonTheme(
  //               light: PaymentSheetPrimaryButtonThemeColors(
  //                 background: Color.fromARGB(255, 231, 235, 30),
  //                 text: Color.fromARGB(255, 235, 92, 30),
  //                 border: Color.fromARGB(255, 235, 92, 30),
  //               ),
  //             ),
  //           ),
  //         ),
  //         billingDetails: billingDetails,
  //       ),
  //     );
  //     await Stripe.instance.presentPaymentSheet();
  //   } catch (e) {
  //
  //     Get.snackbar(
  //         'Error', 'Error: $e' ,
  //         backgroundColor: Colors.red,
  //         colorText: Colors.white,
  //         duration: Duration(seconds: 5));
  //     rethrow;
  //   }
  // }
}
