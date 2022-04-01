// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class Checkout extends StatelessWidget {
  const Checkout({Key? key}) : super(key: key);
  static const String routeName = '/Checkout';
  static Route route() {
    return MaterialPageRoute(
        builder: (_) => const Checkout(),
        settings: const RouteSettings(name: routeName));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
        ),
        body: ElevatedButton(onPressed: () {
          Navigator.pushNamed(context, '/');
        }, child: const Text('Home')),
    );
  }
}