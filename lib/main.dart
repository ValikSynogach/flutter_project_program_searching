// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutterlll/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'last Project',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: Myhomepage(),
    );
  }
}

class Myhomepage extends StatefulWidget {
  Myhomepage({
    Key? key,
  }) : super(key: key);

  @override
  State<Myhomepage> createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: WelcomePage(),
      ),
    );
  }
}
