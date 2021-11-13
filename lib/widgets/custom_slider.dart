import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CustomSlider extends StatefulWidget {
  @override
  _CustomSliderState createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  final List<String> _pictures = [
    'assets/images/1.jpg',
    'assets/images/2.jpg',
    'assets/images/3.jpg',
    'assets/images/4.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: _pictures.map((imagePath) {
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
