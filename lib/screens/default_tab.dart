import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meals_app/categories_screen.dart';
import 'package:meals_app/custom_drawer.dart';

class DefaultTabScreen extends StatelessWidget {
  static const routeName = "DefaultTabScreen";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 2,
      initialIndex: 1,
      child: Scaffold(
        drawer: CustomDrawer(),
        appBar: AppBar(
          title: Text("Default Tab bar"),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.favorite),
                text: "favourites",
              ),
              Tab(
                icon: Icon(Icons.category),
                text: "favourites",
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [CategoriesScreen(), CategoriesScreen()],
        ),
      ),
    );
  }
}
