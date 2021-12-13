import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pocket_lencer/blocs/category/category_bloc.dart';
import 'package:pocket_lencer/blocs/product/product_bloc.dart';
import 'package:pocket_lencer/models/models.dart';
import 'package:pocket_lencer/repositories/category/category_repository.dart';
import 'package:pocket_lencer/widgets/widgets.dart';
// ignore_for_file: prefer_const_constructors
// ignore_for_file: sized_box_for_whitespace
// ignore_for_file: use_key_in_widget_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
// ignore_for_file: avoid_unnecessary_containers

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => HomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Pocket Lencer'),
      bottomNavigationBar: CustomNavBar(),
      body: Column(
        children: [
          BlocBuilder<CategoryBloc, CategoryState>(
            builder: (context, state) {
              if (state is CategoryLoading) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (state is CategoryLoaded) {
                return CarouselSlider(
                  options: CarouselOptions(
                    aspectRatio: 1.5,
                    viewportFraction: 0.9,
                    enlargeCenterPage: true,
                    enlargeStrategy: CenterPageEnlargeStrategy.height,
                  ),
                  items: state.categories
                      .map((category) => HeroCarouselCard(category: category))
                      .toList(),
                );
              } else {
                return Text('Something went wrong.');
              }
            },
          ),
          SectionTitle(title: "DISCOUNTED PACKAGES"),
          // BlocBuilder<ProductBloc, ProductState>(
          //   builder: (context, state) {
          //     if (state is ProductLoading) {
          //       return Center(
          //         child: CircularProgressIndicator(),
          //       );
          //     }
          //     if (state is ProductLoaded) {
          //       return ProductCarousel(
          //           products: Product.products
          //               .where((product) => product.isDiscounted)
          //               .toList());
          //     } else {
          //       return Text('Something went wrong.');
          //     }
          //   },
          // ),
          ProductCarousel(
              products: Product.products
                  .where((product) => product.isDiscounted)
                  .toList()),
          SectionTitle(title: "POPULAR PACKAGES"),
          ProductCarousel(
              products: Product.products
                  .where((product) => product.isPopular)
                  .toList()),
        ],
      ),
    );
  }
}
