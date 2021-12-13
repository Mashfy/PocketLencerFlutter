import 'package:cloud_firestore/cloud_firestore.dart';
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
  List<Object?> get props => [
        name,
        imageUrl,
      ];

  static Category fromSnapshot(DocumentSnapshot snap) {
    Category category = Category(
      name: snap['name'],
      imageUrl: snap['imageUrl'],
    );
    return category;
  }

  static List<Category> categories = [
    Category(
        name: 'Art Work',
        imageUrl:
            'https://github.com/Mashfy/Graphics-Design/blob/master/logo/me.png?raw=true'),
    Category(
        name: 'Photography',
        imageUrl:
            'https://github.com/Mashfy/Graphics-Design/blob/master/Photography/IMG_20210530_180600.jpg?raw=true'),
    Category(
        name: 'Character Design Art',
        imageUrl:
            'https://github.com/Mashfy/Graphics-Design/blob/master/artworks/AloneIn2050.png?raw=true'),
  ];
}
