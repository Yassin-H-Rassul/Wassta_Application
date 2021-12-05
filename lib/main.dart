import 'package:flutter/material.dart';
import 'package:wasstaapp/screens/nearby_screen.dart';
import 'package:wasstaapp/screens/notifications_screen.dart';
import 'package:wasstaapp/screens/profile_screen.dart';
import 'package:wasstaapp/widgets/custom_drawer.dart';
import './screens/favourites_screen.dart';
import './screens/home_screen.dart';
import './widgets/custom_app_bar.dart';
import './widgets/bottom_nav_bar.dart';
import './Models/worker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wassta Application',
      theme: ThemeData(
        fontFamily: 'NRT',
        primaryColor: Color(0xff1b4754),
        textTheme: ThemeData.light().textTheme.copyWith(
              subtitle1: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xff1b4754),
              ),
              subtitle2: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Color(0xff304673),
              ),
              headline3: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: Color(0xff304673),
              ),

              // these body texts are texts in the drawer header.
              bodyText1: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              bodyText2: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              // this headline is specified for drawer list tiles.
              headline4: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Color(0xff1b4754),
              ),
              //these headlines are for personal info in profile screen
              headline5: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xff304673),
              ),

              headline6: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Color(0xff304673),
              ),
            ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff1b4754),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Worker yourAccountInfo = Worker(
    name: '  راوێژ موستەفا حاجی',
    phoneNo: 'ژمارەی مۆبایل: ٠٧٥٠٥٥٥٥٥٥٥',
    occupation: 'پیشە: جامچی',
    workerImage: 'assets/images/man.jpg',
    locationPic: 'assets/images/locationpicture.jpg',
    albumPics: [
      'assets/images/1.jpg',
      'assets/images/2.jpg',
      'assets/images/3.jpg',
    ],
  );

  Worker? workerInfo;
  late bool openWorkerProfile = false;

  late int selectedTabIndex = 0;

  void navigation(int tabIndex) {
    setState(() {
      selectedTabIndex = tabIndex;
    });
  }

  void showingProfileHandler(
      {required bool openWorkerProfile, Worker? workerInfo}) {
    setState(() {
      this.openWorkerProfile = openWorkerProfile;
      if (openWorkerProfile) {
        this.workerInfo = workerInfo;
      }
    });
  }

  bool isDrawerOpened = false;

  void drawerHandler() {
    setState(() {
      isDrawerOpened = !isDrawerOpened;
    });
  }

  @override
  Widget build(BuildContext context) {
    return openWorkerProfile
        ? ProfileScreen(workerInfo!, showingProfileHandler)
        : Scaffold(
            extendBodyBehindAppBar: true,
            // drawer: CustomDrawer(yourAccountInfo),
            appBar: CustomAppBar(drawerHandler),
            body: Builder(
              builder: (BuildContext context) {
                if (selectedTabIndex == 0) {
                  return Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        child: CustomDrawer(yourAccountInfo),
                      ),
                      AnimatedContainer(
                        duration: Duration(milliseconds: 1000),
                        transform: Matrix4.translationValues(
                            isDrawerOpened
                                ? MediaQuery.of(context).size.width / 2
                                : 0,
                            0,
                            0),
                        child: HomeScreen(showingProfileHandler),
                      ),
                    ],
                  );
                  // return HomeScreen(showingProfileHandler);
                } else if (selectedTabIndex == 1) {
                  return FavouritesScreen();
                } else if (selectedTabIndex == 2) {
                  return NearbyScreen();
                } else {
                  return NotificationsScreen();
                }
              },
            ),
            bottomNavigationBar: BottomNavBar(navigation),
          );
  }
}
