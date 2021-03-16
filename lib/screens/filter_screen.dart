import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meals_app/custom_drawer.dart';

class FilterScreen extends StatelessWidget {
  static const routeName = "FilterScreen";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: Text("Filters"),
      ),
    );
  }
}
