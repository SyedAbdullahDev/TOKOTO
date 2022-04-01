// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class Restraurant_detail extends StatelessWidget {
  const Restraurant_detail({Key? key}) : super(key: key);
  static const String routeName = '/Restraurant_detail';
  static Route route() {
    return MaterialPageRoute(
        builder: (_) => const Restraurant_detail(),
        settings: const RouteSettings(name: routeName));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Restraurant_detail'),
        ),
        body: ElevatedButton(onPressed: () {
          Navigator.pushNamed(context, '/home');
        }, child: const Text('Home')),
    );
  }
}