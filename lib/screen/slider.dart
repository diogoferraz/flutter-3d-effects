import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key, required this.title}) : super(key: key);
  static const routeName = '/slider';

  final String title;

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: CarouselSlider(
          slideTransform: const CubeTransform(),
          slideIndicator: CircularSlideIndicator(
            padding: const EdgeInsets.only(bottom: 30),
          ),
          unlimitedMode: true,
          children: [
            Container(
              color: Colors.deepPurple,
            ),
            Container(
              color: Colors.redAccent,
            )
          ]),
    );
  }
}
