import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:wasstaapp/Models/worker.dart';
import 'package:wasstaapp/widgets/bottom_nav_bar_for_profile.dart';
import 'package:wasstaapp/widgets/title_row.dart';

class ProfileScreen extends StatelessWidget {
  final Worker workerInfo;
  final Function showingProfileHandler;

  ProfileScreen(this.workerInfo, this.showingProfileHandler);

  bool openWorkerProfile = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBarForProfile(),
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Card(
                elevation: 4,
                child: Container(
                  width: double.infinity,
                  height: 173,
                  child: Image.asset(workerInfo.locationPic, fit: BoxFit.cover),
                ),
              ),
              Positioned(
                top: 25,
                left: 10,
                child: IconButton(
                  onPressed: () {
                    openWorkerProfile = false;
                    showingProfileHandler(openWorkerProfile: openWorkerProfile);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    size: 30,
                  ),
                ),
              ),
              Positioned(
                top: 90,
                right: -15,
                child: Container(
                  width: 70,
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(13)),
                  child: Icon(
                    MdiIcons.heart,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                top: 125,
                left: 35,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(workerInfo.workerImage),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 50,
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Column(
                  children: [
                    Text(
                      workerInfo.name,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      workerInfo.phoneNo,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      workerInfo.occupation,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          TitleRow(
            title: 'ئەلبومی کارەکانم',
            trailingText: 'زیاتر ببینە',
          ),
          Container(
            height: 90,
            // width: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: workerInfo.albumPics.map((e) {
                return Container(
                  // height: 100,
                  width: 90,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Image.asset(
                      e,
                      fit: BoxFit.cover,
                      // height: 200,
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          Divider(
            thickness: 1,
            color: Colors.grey,
            height: 25,
          ),
          TitleRow(title: 'دەنگدان'),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.star_rounded,
                      size: 30,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.star_rounded,
                      size: 30,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.star_border_rounded,
                      size: 30,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.star_border_rounded,
                      size: 30,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.star_border_rounded,
                      size: 30,
                    ),
                  )
                ],
              ),
              Container(
                height: 30,
                width: 110,
                child: RaisedButton(
                  color: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.check_circle,
                        size: 17,
                      ),
                      // SizedBox(
                      //   width: 15,
                      // ),
                      Text('دەنگدان'),
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 1,
                color: Colors.grey,
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    maxRadius: 30,
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Icon(
                      FontAwesomeIcons.facebook,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  CircleAvatar(
                    maxRadius: 30,
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Icon(
                      FontAwesomeIcons.instagram,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                  CircleAvatar(
                    maxRadius: 30,
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Icon(
                      FontAwesomeIcons.snapchat,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                  CircleAvatar(
                    maxRadius: 30,
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Icon(
                      FontAwesomeIcons.tiktok,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
