import 'package:flutter/material.dart';

import '../Models/worker.dart';

class ProfileBio extends StatelessWidget {
  final Worker workerInformation;
  const ProfileBio({
    Key? key,
    required this.workerInformation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          width: 50,
        ),
        Container(
          margin: const EdgeInsets.only(top: 15),
          child: Column(
            children: [
              Text(
                workerInformation.name,
                style: Theme.of(context).textTheme.headline5,
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                workerInformation.phoneNo,
                style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                workerInformation.occupation,
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
