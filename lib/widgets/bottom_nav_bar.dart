import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  late final Function navigationHandler;

  BottomNavBar(this.navigationHandler);
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedTab = 0;

  bool isSelected(int index) {
    return index == selectedTab;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: const BoxDecoration(
        color: Color(0xff1b4754),
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BottomNavItem(Icons.home, 0, "Home"),
          BottomNavItem(Icons.favorite, 1, "Favourites"),
          BottomNavItem(Icons.language, 2, "NearBy"),
          BottomNavItem(Icons.notifications, 3, "Notifications"),
        ],
      ),
    );
  }

  Widget BottomNavItem(IconData icon, int tabIndex, String label) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedTab = tabIndex;
          widget.navigationHandler(selectedTab);
        });
      },
      child: Container(
        width: 90,
        height: double.maxFinite,
        child: SizedBox(
          width: 90,
          height: 40,
          child: Column(
            children: [
              SizedBox(
                height: 40,
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: AlignmentDirectional.center,
                  children: [
                    Positioned(
                      top: isSelected(tabIndex) ? -25 : 0,
                      child: CircleAvatar(
                        radius: isSelected(tabIndex) ? 25 : 25 * 0.7,
                        backgroundColor: isSelected(tabIndex)
                            ? Colors.white
                            : const Color(0xff1b4754),
                        child: SizedBox(
                          width: 42,
                          height: isSelected(tabIndex) ? 42 : 21,
                          child: CircleAvatar(
                            backgroundColor: const Color(0xff1b4754),
                            radius: 18,
                            child: Icon(
                              icon,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Center(
                child: Text(
                  label,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: isSelected(tabIndex)
                        ? FontWeight.bold
                        : FontWeight.normal,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
