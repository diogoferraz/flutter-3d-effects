import 'package:flutter/material.dart';
import '../screen/cube.dart';
import '../screen/slider.dart';

import '../models/category.dart';

const DUMMY_CATEGORIES = [
  Category(
      id: 'c1',
      title: 'Pure Cube 3D',
      color: Colors.purple,
      routeName: CubeScreen.routeName),
  Category(
      id: 'c2',
      title: 'Hexagon 3D Transition',
      color: Colors.red,
      routeName: SliderScreen.routeName)
];
