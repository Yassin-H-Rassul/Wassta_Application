import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wasstaapp/Models/worker.dart';

class CustomDrawer extends StatelessWidget {
  final Worker yourAccountInfo;

  const CustomDrawer(this.yourAccountInfo);

  Widget buildListTile(IconData iconData, String text, BuildContext context) {
    return ListTile(
      leading: Icon(
        iconData,
        color: Theme.of(context).primaryColor,
      ),
      title: Text(
        text,
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }

  Widget buildCircleAvatar(BuildContext context, IconData iconData) {
    return CircleAvatar(
      maxRadius: 27,
      backgroundColor: Theme.of(context).primaryColor,
      child: Icon(
        iconData,
        color: Colors.white,
        size: 30,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2,
      child: Drawer(
        child: Column(
          children: [
            Container(
              height: 275,
              width: double.infinity,
              color: Theme.of(context).appBarTheme.backgroundColor,
              child: DrawerHeader(
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 45,
                      backgroundImage: AssetImage('assets/images/man.jpg'),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 57,
                      child: Column(
                        children: [
                          Text(
                            yourAccountInfo.name,
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1, // these body texts are specefied for texts in the drawerHeader.
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            yourAccountInfo.phoneNo,
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '‌عراق/هەولێر',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Icon(
                                Icons.location_on,
                                size: 13,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            buildListTile(Icons.login, 'چوونە ژوورەوە', context),
            buildListTile(Icons.people_alt, 'دەربارەی ئێمە', context),
            buildListTile(Icons.contact_page, 'پەیوەندی کردن بە ئێمە', context),
            const Spacer(),
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildCircleAvatar(context, FontAwesomeIcons.facebook),
                  buildCircleAvatar(context, FontAwesomeIcons.instagram),
                  buildCircleAvatar(context, FontAwesomeIcons.snapchat),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
