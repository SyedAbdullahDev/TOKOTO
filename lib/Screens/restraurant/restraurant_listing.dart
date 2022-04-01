// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class Restraurant_listing extends StatelessWidget {
  const Restraurant_listing({Key? key}) : super(key: key);
  static const String routeName = '/Restraurant_listing';
  static Route route() {
    return MaterialPageRoute(
        builder: (_) => const Restraurant_listing(),
        settings: const RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Restraurant_listing'),
      ),
      body: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
          child: const Text('Home')),
    );
  }
}
