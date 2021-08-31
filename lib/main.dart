import 'package:flutter/material.dart';
import 'package:tawakalna/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        // '/': (context) => CategoriesScreen(),
        '/': (context) => Home(),
        // CategoryMealsScreen.routeName: (context) => CategoryMealsScreen(),
        // MealDetailScreen.routeName:  (context) => MealDetailScreen(),
      },
    );
  }
}
