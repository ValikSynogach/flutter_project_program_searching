// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables,

import 'package:flutter/material.dart';
import 'package:flutterlll/array/array_grid_view_category.dart';
import 'package:flutterlll/widgets/grid_view_category.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List _filterGridView = cardData;
  final _searchController = TextEditingController();

  void _searchGridView(String query) {
    if (query.isNotEmpty) {
      _filterGridView = cardData.where(
        (cardData) {
          return (cardData['title'] as String).contains(query);
        },
      ).toList();
    } else {
      _filterGridView = cardData;
    }
    setState(() {
      _filterGridView;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
            top: 35,
            left: 18,
            right: 18,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.menu,
                    size: 30,
                  ),
                  CircleAvatar(
                    radius: 23,
                    backgroundImage: AssetImage(
                      'assets/profile.png',
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  bottom: 5,
                ),
                child: Text(
                  'Hey Ashik,',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'Find a course you want to learn',
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: TextField(
                  controller: _searchController,
                  onChanged: (value) {
                    _searchGridView(value);
                  },
                  decoration: InputDecoration(
                    labelText: 'Search for anything',
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 13,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Category',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: GridViewCategory(
                  searchedItem: _filterGridView,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
