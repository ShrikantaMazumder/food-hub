import 'package:flutter/material.dart';
import 'package:meals_app/screens/filters.dart';

class MainDrawer extends StatelessWidget {
  _buildListTile(String title, IconData icon, Function tabHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 24,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: "RobotoCondensed",
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      onTap: tabHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Column(
          children: [
            Container(
              height: 120,
              width: double.infinity,
              padding: EdgeInsets.all(20),
              alignment: Alignment.centerLeft,
              color: Theme.of(context).accentColor,
              child: Text(
                "Food Hub",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            _buildListTile(
              "Meals",
              Icons.restaurant,
              () => Navigator.of(context).pushReplacementNamed("/"),
            ),
            _buildListTile(
              "Filters",
              Icons.settings,
              () =>
                  Navigator.of(context).pushReplacementNamed(Filters.routeName),
            ),
          ],
        ),
      ),
    );
  }
}
