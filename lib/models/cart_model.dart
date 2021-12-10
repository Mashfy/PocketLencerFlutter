import 'package:equatable/equatable.dart';
import 'package:pocket_lencer/models/product_model.dart';

// ignore_for_file: prefer_const_constructors
// ignore_for_file: must_be_immutable
class Cart extends Equatable {
  final List<Product> products;

  const Cart({this.products = const <Product>[]});

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

  @override
  List<Object?> get props => [products];
}
