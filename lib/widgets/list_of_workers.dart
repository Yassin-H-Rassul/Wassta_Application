import 'package:flutter/material.dart';
import '../Models/worker.dart';
import 'package:wasstaapp/widgets/worker_item.dart';

class ListOfWorkers extends StatelessWidget {
  final List<Worker> informationOfWorkers;

  const ListOfWorkers(this.informationOfWorkers);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 152,
      child: ListView(
        shrinkWrap: true,
        children: informationOfWorkers.map((worker) {
          return WorkerItem(worker);
        }).toList(),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
