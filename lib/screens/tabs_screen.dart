import 'package:flutter/material.dart';
import 'package:meals_app/screens/categories_screen.dart';
import 'package:meals_app/screens/favorite_screen.dart';
import 'package:meals_app/widgets/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _currentIndex = 0;

  List<Map<String, Object>> _pages = [
    {"page": CategoriesScreen(), "title": "Categories"},
    {"page": FavoriteScreen(), "title": "Favorite"},
  ];

  void _selectPage(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(_pages[_currentIndex]["title"]),
        ),
        drawer: MainDrawer(),
        body: _pages[_currentIndex]["page"],
        bottomNavigationBar: BottomNavigationBar(
          onTap: _selectPage,
          currentIndex: _currentIndex,
          selectedItemColor: Colors.amber,
          unselectedItemColor: Colors.white,
          // type: BottomNavigationBarType.shifting,
          backgroundColor: Theme.of(context).primaryColor,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.category),
              label: "Categories",
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.star),
              label: "Favorite",
            ),
          ],
        ),
      ),
    );
  }
}
