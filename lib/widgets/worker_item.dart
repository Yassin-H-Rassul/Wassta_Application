import 'package:flutter/material.dart';
import '../Models/worker.dart';

class WorkerItem extends StatelessWidget {
  final Worker workerInfo;
  final Function showingProfileHandler;
  WorkerItem(this.workerInfo, this.showingProfileHandler);

  bool? openWorkerProfile = false;

  @override
  Widget build(BuildContext context) {
    // container => column/Cliprrect => both are containers
    return GestureDetector(
      onTap: () {
        openWorkerProfile = true;
        showingProfileHandler(
            openWorkerProfile: openWorkerProfile, workerInfo: workerInfo);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black38, width: 1),
            borderRadius: BorderRadius.circular(22),
          ),
          width: 140,
          height: 140,
          child: Column(
            children: [
              Container(
                width: 140,
                height: 75,
                child: ClipRRect(
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(20)),
                  child: Container(
                    color: Colors.black,
                    child: Image.asset(
                      workerInfo.workerImage,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                width: 140,
                height: 70,
                child: Column(
                  children: [
                    Text(
                      workerInfo.name,
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      workerInfo.phoneNo,
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      workerInfo.occupation,
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
