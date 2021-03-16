import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../custom_drawer.dart';

class MealDetails extends StatelessWidget {
  static const routeName = "mealDetailsRoute";

  @override
  Widget build(BuildContext context) {
    final title = ModalRoute.of(context).settings.arguments.toString();

    // TODO: implement build
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: Text(title),
      ),
    );
  }
}
