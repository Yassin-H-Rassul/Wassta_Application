import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wasstaapp/Models/worker.dart';

class CustomDrawer extends StatelessWidget {
  Worker yourAccountInfo;

  CustomDrawer(this.yourAccountInfo);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      child: Drawer(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: Theme.of(context).appBarTheme.backgroundColor,
              child: DrawerHeader(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/images/man.jpg'),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Container(
                      height: 55,
                      child: FittedBox(
                        // width: 140,
                        // height: 70,
                        child: Column(
                          children: [
                            Text(
                              yourAccountInfo.name,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1, // these body texts are specefied for texts in the drawerHeader.
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              yourAccountInfo.phoneNo,
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '‌عراق/هەولێر',
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.location_on,
                                  size: 13,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.login,
                color: Theme.of(context).primaryColor,
              ),
              title: Text(
                'چوونە ژوورەوە',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.people_alt,
                color: Theme.of(context).primaryColor,
              ),
              title: Text(
                'دەربارەی ئێمە',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.contact_page,
                color: Theme.of(context).primaryColor,
              ),
              title: Text(
                'پەیوەندی کردن بە ئێمە',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        maxRadius: 27,
                        backgroundColor: Theme.of(context).primaryColor,
                        child: Icon(
                          FontAwesomeIcons.facebook,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      CircleAvatar(
                        maxRadius: 27,
                        backgroundColor: Theme.of(context).primaryColor,
                        child: Icon(
                          FontAwesomeIcons.instagram,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                      CircleAvatar(
                        maxRadius: 27,
                        backgroundColor: Theme.of(context).primaryColor,
                        child: Icon(
                          FontAwesomeIcons.snapchat,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
