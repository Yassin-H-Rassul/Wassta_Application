import 'package:flutter/material.dart';
import 'package:wasstaapp/Models/worker.dart';
import 'package:wasstaapp/widgets/bottom_nav_bar.dart';
import 'package:wasstaapp/widgets/custom_app_bar.dart';
import 'package:wasstaapp/widgets/custom_drawer.dart';

class NotificationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Notification Screen',
        style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }
}
