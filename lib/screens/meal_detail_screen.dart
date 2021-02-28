import 'package:flutter/material.dart';
import 'package:meals_app/dummy_data.dart';

class MealDetail extends StatelessWidget {
  static const routeName = '/meal-detail';

  Widget buildSectionTitle(String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 22,
          color: Colors.black,
          fontFamily: 'RobotoCondensed',
        ),
      ),
    );
  }

  // build content container
  Widget _buildContentContainer(List items) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      height: 150,
      width: 300,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            color: Theme.of(context).accentColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 10,
              ),
              child: Text(items[index]),
            ),
          );
        },
        itemCount: items.length,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final String mealId = ModalRoute.of(context).settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedMeal.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                selectedMeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            buildSectionTitle("Ingradients"),
            _buildContentContainer(selectedMeal.ingredients),
            buildSectionTitle("Steps"),
            _buildContentContainer(selectedMeal.steps),
          ],
        ),
      ),
    );
  }
}
