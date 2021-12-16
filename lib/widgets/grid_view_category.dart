// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutterlll/widgets/base_container.dart';

class GridViewCategory extends StatelessWidget {
  GridViewCategory({
    required this.searchedItem,
  });

  late List searchedItem;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: searchedItem.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1,
      ),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(6.0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BaseContainer(
                    title: searchedItem[index]["title"],
                    backgroundimage: searchedItem[index]["image"],
                  ),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    searchedItem[index]["image"],
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    20,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  top: 30,
                ),
                child: Text(
                  searchedItem[index]["title"],
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
