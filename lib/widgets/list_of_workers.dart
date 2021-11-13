import 'package:flutter/material.dart';
import '../Models/worker.dart';
import 'package:wasstaapp/widgets/worker_item.dart';

class ListOfWorkers extends StatelessWidget {
  final List<Worker> informationOfWorkers;
  final Function showingProfileHandler;

  ListOfWorkers(this.informationOfWorkers, this.showingProfileHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 200,
      height: 152,
      child: ListView(
        shrinkWrap: true,
        children: informationOfWorkers.map((worker) {
          return WorkerItem(worker, showingProfileHandler);
        }).toList(),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
