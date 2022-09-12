import 'package:flutter/material.dart';
import 'package:flutter_realstate_ui/screens/first_screen.dart';
import 'package:flutter_realstate_ui/tools/colors.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import '../tools/text_style.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PersistentTabController _controller;

    _controller = PersistentTabController(initialIndex: 0);
    List<Widget> _buildScreens() {
      return [
        const FirstScreen(),
        const FirstScreen(),
        const FirstScreen(),
        const FirstScreen(),
      ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.home),
          title: ("Home"),
          textStyle: textColor12,
          activeColorPrimary: primaryColor2,
          inactiveColorPrimary: iconColor,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.favorite),
          title: ("Favorite"),
          textStyle: textColor12,
          activeColorPrimary: primaryColor2,
          inactiveColorPrimary: iconColor,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.bookmark),
          title: ("Bookmark"),
          textStyle: textColor12,
          activeColorPrimary: primaryColor2,
          inactiveColorPrimary: iconColor,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.person),
          title: ("Setting"),
          textStyle: textColor12,
          activeColorPrimary: primaryColor2,
          inactiveColorPrimary: iconColor,
        ),
      ];
    }

    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: backGroundColor,
      // Default is Colors.white.
      handleAndroidBackButtonPress: true,
      // Default is true.
      resizeToAvoidBottomInset: true,
      // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true,
      // Default is true.
      hideNavigationBarWhenKeyboardShows: true,
      // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: backGroundColor,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style9, // Choose the nav bar style with this property.
    );
  }
}
