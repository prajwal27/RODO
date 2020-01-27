import 'package:flutter/material.dart';
import 'package:rodo/homescreen.dart';
import 'package:rodo/splash_screen.dart';

import 'package:rodo/router.dart' as router;

void main() {
  runApp(new MaterialApp(
    home: SplashScreen(),
    onGenerateRoute: router.generateRoute,
    // routes: <String, WidgetBuilder>{
    //   '/HomeScreen': (BuildContext context) => HomeScreen()
    // },
  ));
}