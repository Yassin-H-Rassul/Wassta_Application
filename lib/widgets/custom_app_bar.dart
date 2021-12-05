import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  Function drawerHandler;

  CustomAppBar(this.drawerHandler);

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(55.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      leading:
          // Builder(builder: (builderContext) {

          //   return

          IconButton(
        onPressed: () {
          // Scaffold.of(builderContext).openDrawer();
          drawerHandler();
        },
        icon: const Icon(
          Icons.sort,
          size: 30,
        ),
      ),
      // }),
      title: const Icon(
        Icons.location_on,
        size: 30,
      ),
      actions: const [
        Icon(
          Icons.search,
          size: 30,
        ),
      ],
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
    );
  }
}
