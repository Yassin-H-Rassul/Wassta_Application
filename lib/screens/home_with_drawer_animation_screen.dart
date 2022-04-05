import 'package:flutter/material.dart';

import '../dummy_data.dart';
import '../widgets/custom_drawer.dart';
import 'home_screen.dart';

class HomeWithDrawerAnimationScreen extends StatelessWidget {
  const HomeWithDrawerAnimationScreen({
    Key? key,
    required this.isDrawerOpenedFlag,
  }) : super(key: key);

  final bool isDrawerOpenedFlag;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        CustomDrawer(yourAccountInfo),
        AnimatedContainer(
          duration: const Duration(
            milliseconds: 800,
          ),
          transform: Matrix4.translationValues(
            isDrawerOpenedFlag ? MediaQuery.of(context).size.width / 2 : 0,
            0,
            0,
          ),
          child: HomeScreen(),
        ),
      ],
    );
  }
}
