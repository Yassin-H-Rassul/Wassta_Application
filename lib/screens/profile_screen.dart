import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wasstaapp/Models/worker.dart';
import 'package:wasstaapp/widgets/album_pics_listview.dart';
import 'package:wasstaapp/widgets/bottom_nav_bar_for_profile.dart';
import 'package:wasstaapp/widgets/profile_pic_and_location.dart';
import 'package:wasstaapp/widgets/title_row.dart';
import 'package:wasstaapp/widgets/voting_section.dart';

import '../widgets/profile_bio.dart';

class ProfileScreen extends StatefulWidget {
  final Worker workerInfo;

  const ProfileScreen(this.workerInfo);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isProfileLiked = false;

  Widget buildCircleAvatar(IconData iconData) {
    return CircleAvatar(
      maxRadius: 30,
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
    return Scaffold(
      bottomNavigationBar: BottomNavBarForProfile(),
      body: Column(
        children: [
          ProfilePicAndLocation(workerInformation: widget.workerInfo),
          ProfileBio(workerInformation: widget.workerInfo),
          const Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          const TitleRow(
            title: 'ئەلبومی کارەکانم',
            trailingText: 'زیاتر ببینە',
          ),
          AlbumPicsListView(workerInformation: widget.workerInfo),
          const Divider(
            thickness: 1,
            color: Colors.grey,
            height: 25,
          ),
          const TitleRow(title: 'دەنگدان'),
          const VotingSection(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildCircleAvatar(FontAwesomeIcons.facebook),
              buildCircleAvatar(FontAwesomeIcons.instagram),
              buildCircleAvatar(FontAwesomeIcons.snapchat),
              buildCircleAvatar(FontAwesomeIcons.tiktok),
            ],
          ),
        ],
      ),
    );
  }
}
