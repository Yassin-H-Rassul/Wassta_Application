import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  Function drawerHandler;

  CustomAppBar(this.drawerHandler, {Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(55.0);

  Widget buildIcon(IconData iconData) {
    return Icon(
      iconData,
      size: 30,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      leading: IconButton(
        onPressed: () {
          drawerHandler();
        },
        icon: buildIcon(
          Icons.sort,
        ),
      ),
      title: buildIcon(
        Icons.location_on,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: buildIcon(
            Icons.search,
          ),
        ),
      ],
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(20),
        ),
      ),
    );
  }
}
