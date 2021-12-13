import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final bool isRecommended;
  final bool isPopular;

  const Product({
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.price,
    required this.isRecommended,
    required this.isPopular,
  });

  static Product fromSnapshot(DocumentSnapshot snap) {
    Product product = Product(
      name: snap['name'],
      category: snap['category'],
      imageUrl: snap['imageUrl'],
      price: snap['price'],
      isRecommended: snap['isRecommended'],
      isPopular: snap['isPopular'],
    );
    return product;
  }

  @override
  List<Object?> get props => [
        name,
        category,
        imageUrl,
        price,
        isRecommended,
        isPopular,
      ];

  static List<Product> products = [
    Product(
      name: 'Portrait',
      category: 'Art Work',
      imageUrl:
          'https://github.com/Mashfy/Graphics-Design/blob/master/logo/MyOfficialLogo.png?raw=true',
      price: 300,
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      name: 'Pixel Art',
      category: 'Art Work',
      imageUrl:
          'https://github.com/Mashfy/Graphics-Design/blob/master/artworks/bojack%20horseman.png?raw=true',
      price: 500,
      isRecommended: false,
      isPopular: true,
    ),
    Product(
      name: 'Raster Painting',
      category: 'Art Work',
      imageUrl:
          'https://github.com/Mashfy/Graphics-Design/blob/master/artworks/ElClasico.png?raw=true',
      price: 350,
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'Artist\'s special',
      category: 'Art Work',
      imageUrl:
          'https://github.com/Mashfy/Graphics-Design/blob/master/artworks/Home%20Quarantine%20music.png?raw=true',
      price: 350,
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      name: 'Evening',
      category: 'Photography',
      imageUrl:
          'https://github.com/Mashfy/Graphics-Design/blob/master/Photography/1603282959747%20(2).jpg?raw=true',
      price: 350,
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'Sunset 1',
      category: 'Photography',
      imageUrl:
          'https://github.com/Mashfy/Graphics-Design/blob/master/Photography/IMG_20210530_180600.jpg?raw=true',
      price: 450,
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      name: 'Loner',
      category: 'Photography',
      imageUrl:
          'https://github.com/Mashfy/Graphics-Design/blob/master/Photography/IMG_20200923_123029%20(2).jpg?raw=true',
      price: 700,
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      name: 'Sheer joy',
      category: 'Photography',
      imageUrl:
          'https://github.com/Mashfy/Graphics-Design/blob/master/Photography/1604323353657%20(4).jpg?raw=true',
      price: 1100,
      isRecommended: false,
      isPopular: true,
    ),
    Product(
      name: 'Sunglass',
      category: 'Photography',
      imageUrl:
          'https://github.com/Mashfy/Graphics-Design/blob/master/Photography/LRM_EXPORT_182995982473717_20191003_121607374.jpeg?raw=true',
      price: 1200,
      isRecommended: false,
      isPopular: false,
    ),
    Product(
      name: '2150',
      category: 'Character Design Art',
      imageUrl:
          'https://github.com/Mashfy/Graphics-Design/blob/master/artworks/AloneIn2050.png?raw=true',
      price: 3200,
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      name: 'Gibli',
      category: 'Character Design Art',
      imageUrl:
          'https://github.com/Mashfy/Graphics-Design/blob/master/artworks/gibli.png?raw=true',
      price: 1800,
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      name: 'Loki',
      category: 'Character Design Art',
      imageUrl:
          'https://github.com/Mashfy/Graphics-Design/blob/master/artworks/Loki.png?raw=true',
      price: 1600,
      isRecommended: true,
      isPopular: false,
    ),
  ];
}
