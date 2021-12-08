import 'package:equatable/equatable.dart';

// ignore_for_file: prefer_const_constructors
class Category extends Equatable {
  final String name;
  final String imageUrl;

  const Category({
    required this.name,
    required this.imageUrl,
  });

  @override
  List<Object?> get props => [name, imageUrl];

  static List<Category> categories = [
    Category(
        name: 'Art Work',
        imageUrl:
            'https://github.com/Mashfy/Graphics-Design/blob/master/artworks/AloneIn2050.png?raw=true'),
    Category(
        name: 'Vector Art',
        imageUrl:
            'https://github.com/Mashfy/Graphics-Design/blob/master/logo/Zakhrifat.png?raw=true'),
    Category(
        name: 'Character Design',
        imageUrl:
            'https://github.com/Mashfy/Graphics-Design/blob/master/artworks/Loki.png?raw=true'),
  ];
}
