import 'package:e_commerce/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';

import 'routs.dart';
import 'screens/splash/splash_screen.dart';
import 'theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      initialRoute: ProfileScreen.routeName,
      routes: routes,
    );
  }
}
