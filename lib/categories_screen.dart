import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meals_app/category_item.dart';
import 'package:meals_app/custom_drawer.dart';
import 'package:meals_app/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  static const routeName = "categories";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView(
        padding: EdgeInsets.all(10),
        children: DUMMY_CATEGORIES.map((category) {
          return CategoryItem(category.color, category.title, category.id);
        }).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 3 / 2));
  }
}
