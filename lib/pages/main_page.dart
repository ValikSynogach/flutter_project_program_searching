// ignore_for_file: prefer_final_fields, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutterlll/pages/pages_for_bottom_navigation_bar/building_page.dart';
import 'package:flutterlll/pages/pages_for_bottom_navigation_bar/education_page.dart';
import 'package:flutterlll/pages/pages_for_bottom_navigation_bar/home_page.dart';
import 'package:flutterlll/pages/pages_for_bottom_navigation_bar/setting_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainNavigationBar createState() => _MainNavigationBar();
}

class _MainNavigationBar extends State<MainPage> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    BuildingPage(),
    EducationPage(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: _widgetOptions[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.business,
                size: 30,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.school,
                size: 30,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                size: 30,
              ),
              label: '',
            ),
          ],
          currentIndex: _selectedIndex,
          unselectedItemColor: Colors.black54,
          selectedItemColor: Colors.blue[300],
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (index) => setState(
            () => _selectedIndex = index,
          ),
        ),
      ),
    );
  }
}
