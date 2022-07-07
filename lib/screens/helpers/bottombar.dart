import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:yatri/screens/helpers/color_helpers.dart';

final customBottombar = FancyBottomNavigation(
        activeIconColor: Colors.white,
        textColor: buttonColor,
        circleColor: buttonColor,
        inactiveIconColor: buttonColor,
    tabs: [
        TabData(iconData: Icons.home, title: "Home"),
        TabData(iconData: Icons.notifications, title: "Notification"),
        TabData(iconData: Icons.settings, title: "Setting")
    ],
    onTabChangedListener: (position) {
        // setState(() {
        // currentPage = position;
        // });
    },
);
