// ignore_for_file: avoid_print, no_duplicate_case_values
import 'package:flutter/material.dart';
import 'package:tokoto/Screens/Home/home.dart';
import 'package:tokoto/Screens/Location/location.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print("The route is ${settings.name}");
    switch (settings.name) {
      case '/':
        return Home_Screen.route();
      case Home_Screen.routeName:
        return Home_Screen.route();
      case Location.routeName:
        return Location.route();
      default:
      return _errorRoute(); 
    }
  }
  
  static Route _errorRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text("ERROR"),
              ),
            ),
        settings: const RouteSettings(name: '/error'));
  }
}
