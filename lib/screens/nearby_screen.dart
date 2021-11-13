import 'package:flutter/material.dart';

class NearbyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Nearby Screen',
        style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }
}
