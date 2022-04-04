import 'package:equatable/equatable.dart';

class MenuItem extends Equatable {
  final int id;
  final int restraurantId;
  final String name;
  final String description;
  final String catagory;
  final double price;

  const MenuItem({
    required this.catagory,
    required this.id,
    required this.restraurantId,
    required this.name,
    required this.description,
    required this.price,
  });

  @override
  List<Object?> get props => [id, restraurantId, name, description, price, catagory];

  static List<MenuItem> menuItems = [
    const MenuItem(
      id: 1,
      restraurantId: 1,
      catagory: 'Drinks',
      name: 'Pizza',
      description: 'Awsome Pizza with tomatos and olives',
      price: 20.9,
    ),
    const MenuItem(
      catagory: 'Pizza',
      id: 1,
      restraurantId: 2,
      name: 'Fagita ',
      description: 'Awsome Cold Drinks with Ice cubes',
      price: 10.9,
    ),
    const MenuItem(
      catagory: 'Burger',
      id: 1,
      restraurantId: 1,
      name: 'Patty Burger ',
      description: 'Awsome Cold Drinks with Ice cubes',
      price: 15.9,
    ),
    const MenuItem(
      catagory: 'Desserrs',
      id: 1,
      restraurantId: 1,
      name: 'Cake',
      description: 'Awsome Cold Drinks with Ice cubes',
      price: 35.9,
    ),
    const MenuItem(
      catagory: 'Burger',
      id: 1,
      restraurantId: 1,
      name: 'Russian Salad',
      description: 'Awsome Cold Drinks with Ice cubes',
      price: 15.2,
    ),
  ];
}
