import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meals_app/categories_screen.dart';
import 'package:meals_app/custom_drawer.dart';
import 'package:meals_app/screens/favourites.dart';

class BottomTabScreen extends StatefulWidget {
  static const routeName = "BottomTabScreen";

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BottomTabScreenState();
  }
}

class BottomTabScreenState extends State<BottomTabScreen> {
  var selected_tab_index = 0;

  List<Widget> tabScreens = [CategoriesScreen(), Favourites()];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: Text("Bottom tab bar"),
      ),
      body: tabScreens[selected_tab_index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: selectPage,
        currentIndex: selected_tab_index,
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: "Categories"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favourites"),
        ],
      ),
    );
  }

  void selectPage(int value) {
    setState(() {
      selected_tab_index = value;
    });
  }
}
