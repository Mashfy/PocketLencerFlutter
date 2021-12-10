import 'package:equatable/equatable.dart';
import 'package:pocket_lencer/models/product_model.dart';

// ignore_for_file: prefer_const_constructors
// ignore_for_file: must_be_immutable
class Cart extends Equatable {
  Cart();

  double get subtotal =>
      products.fold(0, (total, current) => total + current.price);

  double deliveryFee(subtotal) {
    if (subtotal >= 1000.0) {
      return 0.0;
    } else {
      return 120.0;
    }
  }

  double total(subtotal, deliveryFee) {
    return subtotal + deliveryFee(subtotal);
  }

  String freeDelivery(subtotal) {
    if (subtotal >= 1000.0) {
      return 'You have free delivery';
    } else {
      double missing = 1000.0 - subtotal;
      return 'Add\$${missing.toStringAsFixed(2)} for free delivery';
    }
  }

  String get totalString => total(subtotal, deliveryFee).toStringAsFixed(2);
  String get subtotalString => subtotal.toStringAsFixed(2);
  String get deliveryFeeString => deliveryFee(subtotal).toStringAsFixed(2);
  String get freeDeliveryString => freeDelivery(subtotal);

  List<Product> products = [
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

  @override
  List<Object?> get props => [];
}
