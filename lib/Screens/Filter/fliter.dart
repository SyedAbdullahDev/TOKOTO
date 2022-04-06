// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:tokoto/Model/catagory_model.dart';
import 'package:tokoto/Model/price_model.dart';

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
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Price',
              style: Theme.of(context).textTheme.headline3!.copyWith(
                    color: Colors.red,
                  ),
            ),
            Custom_price_filter(price: Price.prices),
            Text(
              'Catagory',
              style: Theme.of(context).textTheme.headline3!.copyWith(
                    color: Colors.red,
                  ),
            ),
            Custom_catagory_filter(catagories: Catagory.catagories)
          ],
        ),
      ),
    );
  }
}

class Custom_price_filter extends StatelessWidget {
  const Custom_price_filter({Key? key, required this.price}) : super(key: key);
  final List<Price> price;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: price
          .map((price) => InkWell(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.only(top: 10, bottom: 10),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Text(
                    price.price,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
              ))
          .toList(),
    );
  }
}

class Custom_catagory_filter extends StatelessWidget {
  const Custom_catagory_filter({Key? key, required this.catagories})
      : super(key: key);
  final List<Catagory> catagories;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      
      itemCount: catagories.length,
      itemBuilder: (context, index) {
        return Container(
          width: double.infinity,
          margin: const EdgeInsets.only(top: 10),
          padding: const EdgeInsets.symmetric(horizontal: 33, vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                catagories[index].name,
                style: Theme.of(context).textTheme.headline5,
              ),
              SizedBox(
                height: 25,
                child: Checkbox(
                  value: false,
                  onChanged: (bool? newValue) {

                  },
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
