import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:klean/app/core/theme/color_theme.dart';
import 'package:klean/app/global_widgets/button.dart';
import 'package:klean/app/global_widgets/space.dart';

import '../../core/p.dart';
import '../../global_widgets/custom_appbar.dart';

class SubscribePlan extends StatelessWidget {
  const SubscribePlan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KleanAppColors.greyBG,
      appBar: CustomAppBar(title: 'Subscribe'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: KleanAppColors.darkDarker),
                child: Column(
                  children: [
                    Text(
                      '\$14.99',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 20),
                    ),
                    Space.Y(10),
                    Text(
                      'PER WEEK',
                      style: TextStyle(
                          color: KleanAppColors.primaryBrandBase,
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),
                    Space.Y(10),
                    Text(
                      'STATER',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 18),
                    ),
                    Space.Y(20),
                    Text(
                      'MEAL & WORKOUT PLAN',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                    Space.Y(20),
                    Text(
                      'WEEKLY CHECK-INS',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                    Space.Y(20),
                    Text(
                      'MEET FRIENDS',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                    Space.Y(20),
                    Text(
                      'FITNESS TRACKER',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                    Space.Y(20),
                    Press.bold('Subscribe', onPressed: () async {
               //    P.home.initPaymentSheet();
                    //  await Stripe.instance.createPaymentMethod(PaymentMethodParams.card(paymentMethodData: PaymentMethodData()));
                    },)
                  ],
                ),
              ),
              Space.Y(30),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: KleanAppColors.darkDarker),
                child: Column(
                  children: [
                    Text(
                      '\$29.99',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 20),
                    ),
                    Space.Y(10),
                    Text(
                      'PER WEEK',
                      style: TextStyle(
                          color: KleanAppColors.primaryBrandBase,
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),
                    Space.Y(10),
                    Text(
                      'STANDARD',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 18),
                    ),
                    Space.Y(20),
                    Text(
                      'REG. NURSE CONSULT',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                    Space.Y(20),
                    Text(
                      'DIETICIAN CONSULT',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                    Space.Y(20),
                    Text(
                      'PHYSIO CONSULT',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                    Space.Y(20),
                    Text(
                      'MEAL & WORKOUT PLAN',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                    Space.Y(20),
                 Text(
                      'WEEKLY CHECK-INS',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                    Space.Y(20),
                 Text(
                      'MEET FRIENDS',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                    Space.Y(20),
                 Text(
                      'FITNESS TRACKER',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                    Space.Y(20),
                 Text(
                      '24/7 SUPPORT',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                    Space.Y(20),
                    Press.bold('Subscribe', onPressed: () async {
                    //  P.home.initPaymentSheet();
                      //  await Stripe.instance.createPaymentMethod(PaymentMethodParams.card(paymentMethodData: PaymentMethodData()));
                    },)
                  ],
                ),
              ),
             Space.Y(30),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: KleanAppColors.darkDarker),
                child: Column(
                  children: [
                    Text(
                      '\$49.99',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 20),
                    ),
                    Space.Y(10),
                    Text(
                      'PER WEEK',
                      style: TextStyle(
                          color: KleanAppColors.primaryBrandBase,
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),
                    Space.Y(10),
                    Text(
                      'PRO',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 18),
                    ),
                    Space.Y(20),
                    Text(
                      'DOCTOR CONSULT',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                    Space.Y(20),
                    Text(
                      '1:1 FITNESS COACH',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                    Space.Y(20),
                    Text(
                      'REG. NURSE CONSULT',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                    Space.Y(20),
                    Text(
                      'DIETICIAN CONSULT',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                    Space.Y(20),
                 Text(
                      'PHYSIO CONSULTS',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                    Space.Y(20),
                 Text(
                      'MEAL & WORKOUT PLAN',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                    Space.Y(20),
                 Text(
                      'MEET FRIENDS',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                    Space.Y(20),
                 Text(
                      'FITNESS TRACKER',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                    Space.Y(20),
                  Text(
                      '24/7 SUPPORT',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                    Space.Y(20),
                    Press.bold('Subscribe', onPressed: () async {
                     // P.home.initPaymentSheet();
                      //  await Stripe.instance.createPaymentMethod(PaymentMethodParams.card(paymentMethodData: PaymentMethodData()));
                    },)
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
