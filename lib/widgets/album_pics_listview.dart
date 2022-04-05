import 'package:flutter/material.dart';

import 'package:wasstaapp/Models/worker.dart';

class AlbumPicsListView extends StatelessWidget {
  final Worker workerInformation;
  const AlbumPicsListView({
    Key? key,
    required this.workerInformation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: workerInformation.albumPics.map((picPath) {
          return Container(
            width: 90,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.asset(
                picPath,
                fit: BoxFit.cover,
                // height: 200,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
