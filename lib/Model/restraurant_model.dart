// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:tokoto/Model/menu_item_model.dart';

class Restraurant extends Equatable {
  final int id;
  final String imageUrl;
  final String name;
  final List<String> tags;
  final List<MenuItem> menuItems;
  final int deliveryTime;
  final double deliveryFee;
  final double distance;

  Restraurant({
    required this.menuItems,
    required this.id,
    required this.imageUrl,
    required this.name,
    required this.tags,
    required this.deliveryTime,
    required this.deliveryFee,
    required this.distance,
  });

  @override
  List<Object?> get props => [
        id,
        imageUrl,
        name,
        tags,
        deliveryTime,
        deliveryFee,
        distance,
      ];

  List<Restraurant> restraurant = [
    Restraurant(
      menuItems: MenuItem.menuItems
          .where((menuItem) => menuItem.restraurantId == 1)
          .toList(),
      id: 1,
      imageUrl:
          'https://www.posist.com/restaurant-times/wp-content/uploads/2016/04/traits-successful-restaurant-business.jpg',
      name: 'Garvish Hotel',
      tags: const ['Italian', 'Desserts', 'Ice Cream'],
      deliveryTime: 30,
      deliveryFee: 10.0,
      distance: 0.5,
    ),
    Restraurant(
      menuItems: MenuItem.menuItems
          .where((menuItem) => menuItem.restraurantId == 2)
          .toList(),
      id: 2,
      imageUrl: 'https://www.businesslist.pk/img/cats/restaurants.jpg',
      name: 'Usmania Hotel',
      tags: const ['Chinese', 'Desserts', 'Salad'],
      deliveryTime: 50,
      deliveryFee: 20.0,
      distance: 1.5,
    ),
    Restraurant(
      menuItems: MenuItem.menuItems
          .where((menuItem) => menuItem.restraurantId == 3)
          .toList(),
      id: 3,
      imageUrl:
          'https://i2.wp.com/www.itssouthasian.com/wp-content/uploads/2020/10/restaurants.jpg',
      name: 'Al Aziz Hotel',
      tags: const ['Chinese', 'Desserts', 'Salad'],
      deliveryTime: 30,
      deliveryFee: 20.0,
      distance: 1.5,
    ),
    Restraurant(
      menuItems: MenuItem.menuItems
          .where((menuItem) => menuItem.restraurantId == 4)
          .toList(),
      id: 4,
      imageUrl:
          'https://pide.org.pk/wp-content/uploads/webinar-restaurant-industry-of-pakistan-opportunities-and-market-dynamics.jpg',
      name: 'Royal Hotel',
      tags: const ['Chinese', 'Desserts', 'Salad'],
      deliveryTime: 20,
      deliveryFee: 10.0,
      distance: 1.0,
    ),
  ];
}