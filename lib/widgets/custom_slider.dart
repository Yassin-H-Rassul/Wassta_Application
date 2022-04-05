import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../dummy_data.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({Key? key}) : super(key: key);

  @override
  _CustomSliderState createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: pictures.map((imagePath) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 4),
          height: 50,
          width: double.infinity,
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
        );
      }).toList(),
      options: CarouselOptions(
        aspectRatio: 16 / 7,
      ),
    );
  }
}
