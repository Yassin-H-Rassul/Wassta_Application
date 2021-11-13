import 'package:flutter/material.dart';

import 'package:wasstaapp/widgets/list_of_workers.dart';
import '../widgets/title_row.dart';
import '../widgets/custom_slider.dart';
import '../Models/worker.dart';

class HomeScreen extends StatefulWidget {
  final Function showingProfileHandler;

  HomeScreen(this.showingProfileHandler);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Worker> informationOfBestOfMonthWorkers = [
    Worker(
      name: 'سەروەر دلێر ڕەشید',
      phoneNo: 'ژمارەی مۆبایل: ٠٧٥٠٦٦٦٦٦٦٦',
      occupation: 'پیشە: وێنەگر',
      workerImage: 'assets/images/man5.jpeg',
      locationPic: 'assets/images/locationpicture.jpg',
      albumPics: [
        'assets/images/1.jpg',
        'assets/images/2.jpg',
        'assets/images/3.jpg',
        'assets/images/4.jpg',
      ],
    ),
    Worker(
      name: '  راوێژ موستەفا حاجی',
      phoneNo: 'ژمارەی مۆبایل: ٠٧٥٠٥٥٥٥٥٥٥',
      occupation: 'پیشە: جامچی',
      workerImage: 'assets/images/man.jpg',
      locationPic: 'assets/images/locationpicture.jpg',
      albumPics: [
        'assets/images/1.jpg',
        'assets/images/2.jpg',
        'assets/images/3.jpg',
        'assets/images/4.jpg',
      ],
    ),
    Worker(
      name: '  راوێژ موستەفا حاجی',
      phoneNo: 'ژمارەی مۆبایل: ٠٧٥٠٥٥٥٥٥٥٥',
      occupation: 'پیشە: جامچی',
      workerImage: 'assets/images/man.jpg',
      locationPic: 'assets/images/locationpicture.jpg',
      albumPics: [
        'assets/images/1.jpg',
        'assets/images/2.jpg',
        'assets/images/3.jpg',
        'assets/images/4.jpg',
      ],
    ),
    Worker(
      name: '  راوێژ موستەفا حاجی',
      phoneNo: 'ژمارەی مۆبایل: ٠٧٥٠٥٥٥٥٥٥٥',
      occupation: 'پیشە: جامچی',
      workerImage: 'assets/images/man.jpg',
      locationPic: 'assets/images/locationpicture.jpg',
      albumPics: [
        'assets/images/1.jpg',
        'assets/images/2.jpg',
        'assets/images/3.jpg',
        'assets/images/4.jpg',
      ],
    ),
  ];

  final List<Worker> informationOfLatestWorkers = [
    Worker(
      name: '  راوێژ موستەفا حاجی',
      phoneNo: 'ژمارەی مۆبایل: ٠٧٥٠٥٥٥٥٥٥٥',
      occupation: 'پیشە: جامچی',
      workerImage: 'assets/images/man.jpg',
      locationPic: 'assets/images/locationpicture.jpg',
      albumPics: [
        'assets/images/1.jpg',
        'assets/images/2.jpg',
        'assets/images/3.jpg',
        'assets/images/4.jpg',
      ],
    ),
    Worker(
      name: '  راوێژ موستەفا حاجی',
      phoneNo: 'ژمارەی مۆبایل: ٠٧٥٠٥٥٥٥٥٥٥',
      occupation: 'پیشە: جامچی',
      workerImage: 'assets/images/man.jpg',
      locationPic: 'assets/images/locationpicture.jpg',
      albumPics: [
        'assets/images/1.jpg',
        'assets/images/2.jpg',
        'assets/images/3.jpg',
        'assets/images/4.jpg',
      ],
    ),
    Worker(
      name: '  راوێژ موستەفا حاجی',
      phoneNo: 'ژمارەی مۆبایل: ٠٧٥٠٥٥٥٥٥٥٥',
      occupation: 'پیشە: جامچی',
      workerImage: 'assets/images/man.jpg',
      locationPic: 'assets/images/locationpicture.jpg',
      albumPics: [
        'assets/images/1.jpg',
        'assets/images/2.jpg',
        'assets/images/3.jpg',
        'assets/images/4.jpg',
      ],
    ),
    Worker(
      name: '  راوێژ موستەفا حاجی',
      phoneNo: 'ژمارەی مۆبایل: ٠٧٥٠٥٥٥٥٥٥٥',
      occupation: 'پیشە: جامچی',
      workerImage: 'assets/images/man.jpg',
      locationPic: 'assets/images/locationpicture.jpg',
      albumPics: [
        'assets/images/1.jpg',
        'assets/images/2.jpg',
        'assets/images/3.jpg',
        'assets/images/4.jpg',
      ],
    ),
  ];

  final List<Worker> informationOfFeaturedWorkers = [
    Worker(
      name: '  راوێژ موستەفا حاجی',
      phoneNo: 'ژمارەی مۆبایل: ٠٧٥٠٥٥٥٥٥٥٥',
      occupation: 'پیشە: جامچی',
      workerImage: 'assets/images/man.jpg',
      locationPic: 'assets/images/locationpicture.jpg',
      albumPics: [
        'assets/images/1.jpg',
        'assets/images/2.jpg',
        'assets/images/3.jpg',
        'assets/images/4.jpg',
      ],
    ),
    Worker(
      name: '  راوێژ موستەفا حاجی',
      phoneNo: 'ژمارەی مۆبایل: ٠٧٥٠٥٥٥٥٥٥٥',
      occupation: 'پیشە: جامچی',
      workerImage: 'assets/images/man.jpg',
      locationPic: 'assets/images/locationpicture.jpg',
      albumPics: [
        'assets/images/1.jpg',
        'assets/images/2.jpg',
        'assets/images/3.jpg',
        'assets/images/4.jpg',
      ],
    ),
    Worker(
      name: '  راوێژ موستەفا حاجی',
      phoneNo: 'ژمارەی مۆبایل: ٠٧٥٠٥٥٥٥٥٥٥',
      occupation: 'پیشە: جامچی',
      workerImage: 'assets/images/man.jpg',
      locationPic: 'assets/images/locationpicture.jpg',
      albumPics: [
        'assets/images/1.jpg',
        'assets/images/2.jpg',
        'assets/images/3.jpg',
        'assets/images/4.jpg',
      ],
    ),
    Worker(
      name: '  راوێژ موستەفا حاجی',
      phoneNo: 'ژمارەی مۆبایل: ٠٧٥٠٥٥٥٥٥٥٥',
      occupation: 'پیشە: جامچی',
      workerImage: 'assets/images/man.jpg',
      locationPic: 'assets/images/locationpicture.jpg',
      albumPics: [
        'assets/images/1.jpg',
        'assets/images/2.jpg',
        'assets/images/3.jpg',
        'assets/images/4.jpg',
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 67,
            ),
            CustomSlider(),
            const TitleRow(
              title: 'Best Of Month',
              trailingText: 'More',
            ),
            ListOfWorkers(
                informationOfBestOfMonthWorkers, widget.showingProfileHandler),
            const Divider(
              thickness: 1,
              height: 30,
            ),
            const TitleRow(
              title: 'Latest',
              trailingText: 'More',
            ),
            ListOfWorkers(
                informationOfLatestWorkers, widget.showingProfileHandler),
            const Divider(
              thickness: 1,
              height: 30,
            ),
            const TitleRow(
              title: 'Featured',
              trailingText: 'More',
            ),
            ListOfWorkers(
                informationOfFeaturedWorkers, widget.showingProfileHandler),
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
