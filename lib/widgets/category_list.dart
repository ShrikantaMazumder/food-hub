import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  const CategoryList({Key key, this.id, this.title, this.color})
      : super(key: key);

  // Select category
  void selectCategory(BuildContext context) {
    Navigator.pushNamed(
      context,
      "/category-meal",
      arguments: {
        "id": id,
        "title": title,
        "color": color,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      radius: 15,
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [color.withOpacity(0.7), color],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
