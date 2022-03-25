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
          'https://images.unsplash.com/photo-1505962758314-85bfe836a5b9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
      price: 40.3,
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      name: 'Pixel Art',
      category: 'Art Work',
      imageUrl:
          'https://i.pinimg.com/564x/23/74/49/2374492ff2fccab4b0ea647f47feec28.jpg',
      price: 50.7,
      isRecommended: false,
      isPopular: true,
    ),
    Product(
      name: 'Raster Painting',
      category: 'Art Work',
      imageUrl:
          'https://render.fineartamerica.com/images/images-profile-flow/400/images/artworkimages/mediumlarge/1/1-portrait-of-alexander-reid-1887-vincent-van-gogh.jpg',
      price: 35.2,
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'Artist\'s special',
      category: 'Art Work',
      imageUrl:
          'https://i.pinimg.com/564x/a2/38/c2/a238c2668ef874da89808a65f509fbba.jpg',
      price: 35.30,
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      name: 'Evening',
      category: 'Photography',
      imageUrl:
          'https://i.pinimg.com/564x/5c/4a/ac/5c4aac95f642754fc0804cc31378a7dd.jpg',
      price: 38.9,
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'Sunset 1',
      category: 'Photography',
      imageUrl:
          'https://i.pinimg.com/736x/f4/79/70/f4797096c7eda947c3641060a8fa0107.jpg',
      price: 45.03,
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      name: 'Loner',
      category: 'Photography',
      imageUrl:
          'https://i.pinimg.com/564x/d8/5c/c3/d85cc3fbc2f923ea90db3472c53baf79.jpg',
      price: 70.99,
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      name: 'Sheer joy',
      category: 'Photography',
      imageUrl:
          'https://i.pinimg.com/564x/65/cc/f8/65ccf86e994f922a5462d879f8b7560d.jpg',
      price: 110.99,
      isRecommended: false,
      isPopular: true,
    ),
    Product(
      name: 'Sunglass',
      category: 'Photography',
      imageUrl: 'https://i.redd.it/d09bf25mxtc31.jpg',
      price: 120.8,
      isRecommended: false,
      isPopular: true,
    ),
    Product(
      name: '2150',
      category: 'Character Design Art',
      imageUrl:
          'https://i.pinimg.com/564x/77/26/e0/7726e05fae4c987cd115f8b66fdd58c6.jpg',
      price: 320.99,
      isRecommended: false,
      isPopular: false,
    ),
    Product(
      name: 'Gibli',
      category: 'Character Design Art',
      imageUrl:
          'https://i.pinimg.com/564x/6c/0d/c3/6c0dc3b974e5638bcfd9a6445141650f.jpg',
      price: 18.3,
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      name: 'Loki',
      category: 'Character Design Art',
      imageUrl:
          'https://i.pinimg.com/564x/2d/4c/22/2d4c22e6345af7ebb676f003e24a6187.jpg',
      price: 160.2,
      isRecommended: true,
      isPopular: false,
    ),
  ];
}
