import 'package:flutter/material.dart';
import 'package:tawakalna/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Almarai',
        accentColor: Color(0xFF5E9A92),
        textTheme: TextTheme(
          bodyText1: TextStyle(
            fontFamily: 'Almarai',
            color: Color(0xFF5E9A92),
            fontSize: 14,
          ),
          bodyText2: TextStyle(
            fontFamily: 'Almarai',
            color: Colors.black,
            fontSize: 16,
          ),
          headline1: TextStyle(
            fontFamily: 'Almarai',
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 14,
          ),
          headline2: TextStyle(
            fontFamily: 'Almarai',
            color: Color(0xFF5E9A92),
            fontWeight: FontWeight.w700,
          ),

        ),
      ),
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
