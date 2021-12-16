// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        'Setting Page',
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
