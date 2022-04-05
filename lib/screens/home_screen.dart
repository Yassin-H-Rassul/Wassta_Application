import 'package:flutter/material.dart';
import 'package:wasstaapp/widgets/list_of_workers.dart';
import '../dummy_data.dart';
import '../widgets/title_row.dart';
import '../widgets/custom_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 73,
            ),
            const CustomSlider(),
            const SizedBox(
              height: 20,
            ),
            const TitleRow(
              title: 'Best Of Month',
              trailingText: 'More',
            ),
            ListOfWorkers(
              informationOfBestOfMonthWorkers,
            ),
            const Divider(
              thickness: 1,
              height: 30,
            ),
            const TitleRow(
              title: 'Latest',
              trailingText: 'More',
            ),
            ListOfWorkers(
              informationOfLatestWorkers,
            ),
            const Divider(
              thickness: 1,
              height: 30,
            ),
            const TitleRow(
              title: 'Featured',
              trailingText: 'More',
            ),
            ListOfWorkers(
              informationOfFeaturedWorkers,
            ),
            const Divider(
              thickness: 1,
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
