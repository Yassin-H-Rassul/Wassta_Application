import 'package:flutter/material.dart';
import 'widgets/bottom_nav_helper.dart';

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
        primaryColor: const Color(0xff1b4754),
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
      home: const BottomNavHelper(),
    );
  }
}
