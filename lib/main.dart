import 'package:flutter/material.dart';
import 'package:meals_app/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals App',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(108, 92, 231, 1.0),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              headline6: TextStyle(
                fontSize: 22,
                color: Colors.white,
                fontFamily: 'RobotoCondensed',
              ),
            ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: Routes().route,
    );
  }
}
