// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class Voucher extends StatelessWidget {
  const Voucher({Key? key}) : super(key: key);
  static const String routeName = '/Voucher';
  static Route route() {
    return MaterialPageRoute(
        builder: (_) => const Voucher(),
        settings: const RouteSettings(name: routeName));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Voucher'),
        ),
        body: ElevatedButton(onPressed: () {
          Navigator.pushNamed(context, '/');
        }, child: const Text('Home')),
    );
  }
}