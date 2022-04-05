import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../Models/worker.dart';

class ProfilePicAndLocation extends StatefulWidget {
  final Worker workerInformation;
  const ProfilePicAndLocation({
    Key? key,
    required this.workerInformation,
  }) : super(key: key);

  @override
  State<ProfilePicAndLocation> createState() => _ProfilePicAndLocationState();
}

class _ProfilePicAndLocationState extends State<ProfilePicAndLocation> {
  bool isProfileLiked = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Card(
          elevation: 4,
          child: SizedBox(
            width: double.infinity,
            height: 173,
            child: Image.asset(widget.workerInformation.locationPic,
                fit: BoxFit.cover),
          ),
        ),
        Positioned(
          top: 25,
          left: 10,
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              size: 30,
            ),
          ),
        ),
        Positioned(
          top: 90,
          right: 0,
          child: GestureDetector(
            onTap: () {
              setState(() {
                isProfileLiked = !isProfileLiked;
              });
            },
            child: Container(
              height: 33,
              width: 53,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: const BorderRadius.horizontal(
                  left: Radius.circular(10),
                ),
              ),
              child: Icon(
                MdiIcons.heart,
                color: isProfileLiked ? Colors.amber : Colors.white,
                size: 30,
              ),
            ),
          ),
        ),
        Positioned(
          top: 125,
          left: 35,
          child: CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(widget.workerInformation.workerImage),
          ),
        ),
      ],
    );
  }
}
