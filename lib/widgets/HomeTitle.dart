import 'package:flutter/material.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(title,
        style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.deepPurple));
  }
}
