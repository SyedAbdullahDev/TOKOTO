// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({Key? key}) : super(key: key);
  static const String routeName = '/home';
  static Route route() {
    return MaterialPageRoute(
        builder: (_) => const Home_Screen(),
        settings: const RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOME'),
      ),
      body: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/location');
          },
          child: const Text('Location')),
    );
  }
}
