import 'package:flutter/material.dart';
import 'package:tawakalna/home.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays(
      [SystemUiOverlay.bottom, SystemUiOverlay.top]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Init.instance.initialize(),
      builder: (context, AsyncSnapshot snapshot) {
        // Show splash screen while waiting for app resources to load:
        if (snapshot.connectionState == ConnectionState.waiting) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,home: Splash());
        } else {
          // Loading is done, return the app:
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: MyHomePage(),
          );
        }
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

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


class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xe1f5fe).withOpacity(1.0),
      body: Center(child: Image.asset('assets/images/splash_screen.png', fit: BoxFit.fill,)),
    );
  }
}

class Init {
  Init._();
  static final instance = Init._();

  Future initialize() async {
    // This is where you can initialize the resources needed by your app while
    // the splash screen is displayed.  Remove the following example because
    // delaying the user experience is a bad design practice!
    await Future.delayed(Duration(seconds: 5));
  }
}
