// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:flutterlll/widgets/grid_view_category.dart';

class BaseContainer extends StatelessWidget {
  const BaseContainer({
    required this.title,
    required this.backgroundimage,
    Key? key,
  }) : super(key: key);

  final String title;
  final String backgroundimage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[900],
        foregroundColor: Colors.white,
        title: Text(
          title,
          textAlign: TextAlign.end,
        ),
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage(
                  backgroundimage,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
