// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BuildingPage extends StatelessWidget {
  const BuildingPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        'Building Page',
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
