import 'package:flutter/material.dart';
import 'package:meals_app/dummy_data.dart';
import 'package:meals_app/widgets/category_list.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DeliMeals"),
      ),
      body: GridView(
        padding: const EdgeInsets.all(15),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: DUMMY_CATEGORIES.map((category) {
          return CategoryList(
            id: category.id,
            title: category.title,
            color: category.color,
          );
        }).toList(),
      ),
    );
  }
}
