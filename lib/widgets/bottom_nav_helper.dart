import 'package:flutter/material.dart';

import '../screens/favourites_screen.dart';
import '../screens/home_with_drawer_animation_screen.dart';
import '../screens/nearby_screen.dart';
import '../screens/notifications_screen.dart';
import 'bottom_nav_bar.dart';
import 'custom_app_bar.dart';

class BottomNavHelper extends StatefulWidget {
  const BottomNavHelper({Key? key}) : super(key: key);
  @override
  State<BottomNavHelper> createState() => _BottomNavHelperState();
}

class _BottomNavHelperState extends State<BottomNavHelper> {
  int selectedTabIndex = 0;

  void navigation(int tabIndex) {
    setState(() {
      selectedTabIndex = tabIndex;
    });
  }

  bool isDrawerOpened = false;

  void drawerHandler() {
    setState(() {
      isDrawerOpened = !isDrawerOpened;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      HomeWithDrawerAnimationScreen(
        isDrawerOpenedFlag: isDrawerOpened,
      ),
      FavouritesScreen(),
      NearbyScreen(),
      NotificationsScreen(),
    ];
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(drawerHandler),
      body: screens[selectedTabIndex],
      bottomNavigationBar: BottomNavBar(navigation),
    );
  }
}
