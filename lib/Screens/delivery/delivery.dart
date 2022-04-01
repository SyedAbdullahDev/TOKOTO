// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class Delivery_screen extends StatelessWidget {
  const Delivery_screen({Key? key}) : super(key: key);
  static const String routeName = '/Delivery_screen';
  static Route route() {
    return MaterialPageRoute(
        builder: (_) => const Delivery_screen(),
        settings: const RouteSettings(name: routeName));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Delivery_screen'),
        ),
        body: ElevatedButton(onPressed: () {
          Navigator.pushNamed(context, '/');
        }, child: const Text('Home')),
    );
  }
}