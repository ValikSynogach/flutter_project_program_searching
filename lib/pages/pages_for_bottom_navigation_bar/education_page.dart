// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class EducationPage extends StatelessWidget {
  const EducationPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        'Education Page',
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
