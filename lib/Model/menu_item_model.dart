import 'package:equatable/equatable.dart';

class MenuItem extends Equatable {
  final int id;
  final int restraurantId;
  final String name;
  final String description;
  final double price;

  const MenuItem({
    required this.id,
    required this.restraurantId,
    required this.name,
    required this.description,
    required this.price,
  });

  @override
  List<Object?> get props => [id, restraurantId, name, description, price];

  static List<MenuItem> menuItems = [
    const MenuItem(
      id: 1,
      restraurantId: 1,
      name: 'Pizza',
      description: 'Awsome Pizza with tomatos and olives',
      price: 20.9,
    ),
    const MenuItem(
      id: 2,
      restraurantId: 2,
      name: 'Cold Drink',
      description: 'Awsome Cold Drinks with Ice cubes',
      price: 10.9,
    ),
  ];
}
