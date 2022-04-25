import 'dart:math';

import 'package:flutter/material.dart';

class Cube extends StatelessWidget {
  const Cube({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// FRONT
        Transform(
            transform: Matrix4.identity()..translate(0.0, 0.0, -100.0),
            alignment: Alignment.center,
            child: Container(
                color: Colors.red,
                width: 200,
                height: 200,
                child: FlutterLogo(size: 200))),

        /// STARBOARD
        Transform(
            transform: Matrix4.identity()
              ..translate(100.0, 0.0, 0.0)
              ..rotateY(-pi / 2),
            alignment: Alignment.center,
            child: Container(
                color: Colors.orange,
                width: 200,
                height: 200,
                child: FlutterLogo(size: 200))),

        /// PORT
        Transform(
            transform: Matrix4.identity()
              ..translate(-100.0, 0.0, 0.0)
              ..rotateY(-pi / 2),
            alignment: Alignment.center,
            child: Container(
                color: Colors.green,
                width: 200,
                height: 200,
                child: FlutterLogo(size: 200))),

        /// TOP
        Transform(
            transform: Matrix4.identity()
              ..translate(0.0, -100.0, 0.0)
              ..rotateX(-pi / 2),
            alignment: Alignment.center,
            child: Container(
                color: Colors.pink,
                width: 200,
                height: 200,
                child: FlutterLogo(size: 200))),

        /// BACK
        Transform(
            transform: Matrix4.identity()..translate(0.0, 0.0, 100.0),
            alignment: Alignment.center,
            child: Container(
                color: Colors.black,
                width: 200,
                height: 200,
                child: FlutterLogo(size: 200))),

        /// BOTTOM
        Transform(
            transform: Matrix4.identity()
              ..translate(0.0, 100.0, 0.0)
              ..rotateX(-pi / 2),
            alignment: Alignment.center,
            child: Container(
                color: Colors.blue,
                width: 200,
                height: 200,
                child: FlutterLogo(size: 200))),
      ],
    );
  }
}
