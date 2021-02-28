import 'package:flutter/material.dart';
import 'package:meals_app/screens/category_meal_screen.dart';
import 'package:meals_app/screens/meal_detail_screen.dart';
import 'package:meals_app/screens/tabs_screen.dart';

class Routes {
  static const homeScreen = '/';
  static const categoryMeal = CategoryMealScreen.routeName;
  static const mealDetail = MealDetail.routeName;

  final route = <String, WidgetBuilder>{
    Routes.homeScreen: (ctx) => TabsScreen(),
    Routes.categoryMeal: (ctx) => CategoryMealScreen(),
    Routes.mealDetail: (ctx) => MealDetail(),
  };
}
