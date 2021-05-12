import 'package:e_commerce/constants.dart';
import 'package:e_commerce/routs.dart';
import 'package:e_commerce/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Muli',
        textTheme: TextTheme(
            body1: TextStyle(color: kTextColor),
            body2: TextStyle(color: kTextColor)),
      ),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
