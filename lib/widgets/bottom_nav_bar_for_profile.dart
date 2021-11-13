import 'package:flutter/material.dart';

class BottomNavBarForProfile extends StatefulWidget {
  @override
  State<BottomNavBarForProfile> createState() => _BottomNavBarForProfileState();
}

class _BottomNavBarForProfileState extends State<BottomNavBarForProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      decoration: const BoxDecoration(
        color: Color(0xff1b4754),
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 7),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BottomNavItem(
            Icons.phone_in_talk,
          )
        ],
      ),
    );
  }

  Widget BottomNavItem(IconData icon) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 100,
        child: IconButton(
          icon: Icon(
            icon,
            color: Colors.white,
            size: 45,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
