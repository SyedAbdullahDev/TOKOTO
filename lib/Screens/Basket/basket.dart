// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class basket_screen extends StatelessWidget {
  const basket_screen({Key? key}) : super(key: key);
  static const String routeName = '/basket_screen';
  static Route route() {
    return MaterialPageRoute(
        builder: (_) => const basket_screen(),
        settings: const RouteSettings(name: routeName));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('basket_screen'),
        ),
        body: ElevatedButton(onPressed: () {
          Navigator.pushNamed(context, '/home');
        }, child: const Text('Home')),
    );
  }
}