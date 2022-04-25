import 'dart:math';

import 'package:flutter/material.dart';
import '../widgets//cube.dart';

class CubeScreen extends StatefulWidget {
  const CubeScreen({Key? key, required this.title}) : super(key: key);
  static const routeName = '/cube';

  final String title;

  @override
  State<CubeScreen> createState() => _CubeScreenState();
}

class _CubeScreenState extends State<CubeScreen> {
  Offset _offset = Offset.zero;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onPanUpdate: (details) {
          setState(() => _offset += details.delta);
        },
        child: Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
          ),
          body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Transform(
              transform: Matrix4.identity()
                ..setEntry(2, 1, 0.001)
                ..rotateX(_offset.dy * pi / 180)
                ..rotateY(_offset.dx * pi / 180),
              alignment: Alignment.center,
              child: Center(child: Cube()),
            ),
          ]),
        ));
  }
}
