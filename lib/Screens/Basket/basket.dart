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
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(),
                  shadowColor: Colors.red,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                child: const Text('Apply'),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text('basket_screen'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Cutlery',
                style: Theme.of(context).textTheme.headline3!.copyWith(
                      color: Colors.red,
                    ),
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                padding: const EdgeInsets.symmetric(horizontal: 25),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Do you need cutlery?',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      child: SwitchListTile(
                        value: false,
                        dense: false,
                        onChanged: (bool? newValue) {},
                      ),
                    )
                  ],
                ),
              ),
              Text(
                'Items',
                style: Theme.of(context).textTheme.headline3!.copyWith(
                      color: Colors.red,
                    ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(top: 7),
                    padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Text(
                          '1x',
                          style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.red),
                        ),
                        const SizedBox(width: 20,),
                        Expanded(
                          child: Text(
                            'Special Pizza',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        Text(
                          '\$4.99',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ));
  }
}
