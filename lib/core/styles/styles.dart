import 'package:flutter/material.dart';

TextStyle textStyle = const TextStyle(
  fontSize: 20.0,
);

List<BoxShadow> shadowAppBar = [
  BoxShadow(
    color: Colors.grey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 50,
    offset: const Offset(0, 1),
  ),
  BoxShadow(
    color: Colors.grey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 50,
    offset: const Offset(0, -1),
  ),
  BoxShadow(
    color: Colors.grey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 50,
    offset: const Offset(-1, 0),
  ),
  BoxShadow(
    color: Colors.grey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 50,
    offset: const Offset(1, 0),
  ),
];
