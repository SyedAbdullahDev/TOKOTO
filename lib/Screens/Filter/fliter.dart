// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class filter_Screen extends StatelessWidget {
  const filter_Screen({Key? key}) : super(key: key);
  static const String routeName = '/filter_Screen';
  static Route route() {
    return MaterialPageRoute(
        builder: (_) => const filter_Screen(),
        settings: const RouteSettings(name: routeName));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('filter_Screen'),
        ),
        body: ElevatedButton(onPressed: () {
          Navigator.pushNamed(context, '/home');
        }, child: const Text('Home')),
    );
  }
}