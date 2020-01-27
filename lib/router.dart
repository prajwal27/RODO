import 'package:flutter/material.dart';
import 'package:rodo/routing_constants.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeScreenRoute:
      return MaterialPageRoute(builder: (context) => HomeView());
    case LoginViewRoute:
      return MaterialPageRoute(builder: (context) => LoginView());
    default:
      return MaterialPageRoute(builder: (context) => HomeView());
  }
}