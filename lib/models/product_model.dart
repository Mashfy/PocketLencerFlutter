import 'package:equatable/equatable.dart';

// ignore_for_file: prefer_const_constructors
class Product extends Equatable {
  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final bool isDiscounted;
  final bool isPopular;

  const Product({
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.price,
    required this.isPopular,
    required this.isDiscounted,
  });

  @override
  List<Object?> get props => [
        name,
        category,
        imageUrl,
        price,
        isPopular,
        isDiscounted,
      ];

  static List<Product> products = [
    Product(
      name: 'Portrait',
      category: 'Art Work',
      imageUrl:
          'https://github.com/Mashfy/Graphics-Design/blob/master/logo/MyOfficialLogo.png?raw=true',
      price: 300,
      isDiscounted: true,
      isPopular: false,
    ),
    Product(
      name: 'Pixel Art',
      category: 'Art Work',
      imageUrl:
          'https://github.com/Mashfy/Graphics-Design/blob/master/artworks/bojack%20horseman.png?raw=true',
      price: 500,
      isDiscounted: false,
      isPopular: true,
    ),
    Product(
      name: 'Raster Painting',
      category: 'Art Work',
      imageUrl:
          'https://github.com/Mashfy/Graphics-Design/blob/master/artworks/ElClasico.png?raw=true',
      price: 350,
      isDiscounted: true,
      isPopular: true,
    ),
    Product(
      name: 'Digital Photography',
      category: 'Art Work',
      imageUrl:
          'https://github.com/Mashfy/Graphics-Design/blob/master/Digital%20Photography/klause.jpg?raw=true',
      price: 350,
      isDiscounted: true,
      isPopular: false,
    ),
    Product(
      name: 'Logo',
      category: 'Vector Art',
      imageUrl:
          'https://github.com/Mashfy/Graphics-Design/blob/master/logo/Kathgolap.png?raw=true',
      price: 1000,
      isDiscounted: true,
      isPopular: false,
    ),
    Product(
      name: 'Banner',
      category: 'Vector Art',
      imageUrl:
          'https://github.com/Mashfy/Graphics-Design/blob/master/logo/GamingParadise.png?raw=true',
      price: 900,
      isDiscounted: false,
      isPopular: true,
    ),
    Product(
      name: 'Website svg',
      category: 'Vector Art',
      imageUrl:
          'https://github.com/Mashfy/Graphics-Design/blob/master/artworks/Home%20Quarantine%20music.png?raw=true',
      price: 1500,
      isDiscounted: true,
      isPopular: true,
    ),
    Product(
      name: 'Game Character',
      category: 'Character Design',
      imageUrl:
          'https://github.com/Mashfy/Graphics-Design/blob/master/artworks/breaking%20bad.png?raw=true',
      price: 1200,
      isDiscounted: true,
      isPopular: true,
    ),
    Product(
      name: 'Movie Tv Series Character',
      category: 'Character Design',
      imageUrl:
          'https://github.com/Mashfy/Graphics-Design/blob/master/artworks/WallE.png?raw=true',
      price: 1200,
      isDiscounted: false,
      isPopular: true,
    ),
  ];
}
