
// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class Promo_box extends StatelessWidget {
  const Promo_box({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 8),
          width: MediaQuery.of(context).size.width - 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.0),
            color: Theme.of(context).primaryColor,
            image: const DecorationImage(
              image: NetworkImage('https://images.pexels.com/photos/958545/pexels-photo-958545.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
              fit: BoxFit.cover,
            )
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 8),
          width: MediaQuery.of(context).size.width - 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.0),
            color: Theme.of(context).primaryColor,
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 10, left: 15, right: 130),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Free Delivery on First 3 Orders', style: Theme.of(context).textTheme.headline3!.copyWith(color: Colors.white),),
                const SizedBox(height: 15,),
                Text('Place an order of \$10 or more and the delivery Fee is on us', style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.white),),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
