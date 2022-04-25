import 'package:flutter/material.dart';

class Category {
  final String id;
  final String title;
  final Color color;
  final String routeName;

  // this object cant be changed after category is created.
  const Category(
      {required this.id,
      required this.title,
      this.color = Colors.orange,
      required this.routeName});
}
