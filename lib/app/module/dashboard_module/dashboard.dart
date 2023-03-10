import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:klean/app/core/theme/color_theme.dart';
import 'package:klean/app/module/home_module/home_screen.dart';
import 'package:klean/app/module/profile_module/profile_screen.dart';

class Dashboard extends StatefulWidget {
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int pageIndex = 0;

  final pages = [
      HomeScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KleanAppColors.greyBG,
      body: Center(child: pages[pageIndex]),
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Container(
                        padding: const EdgeInsets.all(10),
                        color: KleanAppColors.secondaryBrandBase,
                        child: const ImageIcon(
                          AssetImage('assets/icons/home.png'),
                          color: Colors.white,
                          size: 20,
                        )))
                :    ImageIcon(
              AssetImage('assets/icons/home.png'),
              color: Colors.black.withOpacity(0.4),
              size: 20,
            ), iconSize: 40,

          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                    padding: const EdgeInsets.all(10),
                    color: KleanAppColors.secondaryBrandBase,
                    child: const ImageIcon(
                      AssetImage('assets/icons/social.png'),
                      color: Colors.white,
                      size: 20,
                    )))
                :   ImageIcon(
              AssetImage('assets/icons/social.png'),
              color: Colors.black.withOpacity(0.4),
              size: 20,
            ), iconSize: 40,
          ),
          
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: pageIndex == 2
                ? ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                    padding: const EdgeInsets.all(10),
                    color: KleanAppColors.secondaryBrandBase,
                    child: const ImageIcon(
                      AssetImage('assets/icons/profile.png'),
                      color: Colors.white,
                      size: 20,
                    )))
                :    ImageIcon(
              AssetImage('assets/icons/profile.png'),
              color: Colors.black.withOpacity(0.4),
              size: 20,
            ), iconSize: 40,
          ),
        ],
      ),
    );
  }
}
