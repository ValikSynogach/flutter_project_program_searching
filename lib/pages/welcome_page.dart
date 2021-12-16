// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutterlll/pages/main_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 50,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/book.png',
              width: 250,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
              ),
              child: Text(
                'Online School',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
                left: 20,
                right: 20,
              ),
              child: Text(
                'Home study during the pandemic, lots of learning Lots of professional teachers, and easy to understand',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 60,
                left: 170,
                right: 10,
              ),
              child: InkWell(
                  child: Container(
                    height: 80,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                      color: Colors.indigo[200],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 25,
                      ),
                      child: Text(
                        'Get Started',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MainPage(),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
