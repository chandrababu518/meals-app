import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meals_app/dummy_data.dart';
import 'package:meals_app/meal_item.dart';

class CategoryMealsScreen extends StatelessWidget {
  // final String id;
  // final String title;
  // final Color color;

  // CategoryMealsScreen(this.color, this.title, this.id);
  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final title = arguments['title'];
    final id = arguments['id'];
    final categoryMeals = DUMMY_MEALS.where((item) {
      return item.categories.contains(id);
    }).toList();
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        // backgroundColor: color,
      ),
      body: ListView.builder(
          itemBuilder: (ctx, i) {
            return MealItem(
              imgUrl: categoryMeals[i].imageUrl,
              title: categoryMeals[i].title,
            );
          },
          itemCount: categoryMeals.length),
    );
  }
}
