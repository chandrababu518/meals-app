import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meals_app/categories_screen.dart';
import 'package:meals_app/category_item.dart';
import 'package:meals_app/screens/bottom_tab_screen.dart';
import 'package:meals_app/screens/default_tab.dart';
import 'package:meals_app/screens/filter_screen.dart';
import 'package:meals_app/screens/home_screen.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).primaryColor;
    // TODO: implement build
    return Drawer(
        child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color.withOpacity(0.7), color],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Filters"),
            onTap: () {
              return Navigator.of(context)
                  .pushReplacementNamed(FilterScreen.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.fullscreen),
            title: Text("Default Tab"),
            onTap: () {
              return Navigator.of(context)
                  .pushReplacementNamed(DefaultTabScreen.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.tab),
            title: Text("Bottom Tab"),
            onTap: () {
              return Navigator.of(context)
                  .pushReplacementNamed(BottomTabScreen.routeName);
            },
          )
        ],
      ),
    ));
  }
}
