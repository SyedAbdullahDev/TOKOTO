// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class Location extends StatelessWidget {
  const Location({Key? key}) : super(key: key);
  static const String routeName = '/location';
  static Route route() {
    return MaterialPageRoute(
        builder: (_) => const Location(),
        settings: const RouteSettings(name: routeName));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Location'),
        )
    );
  }
}