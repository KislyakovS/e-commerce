import 'package:e_commerce/models/Product.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = '/details';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({@required this.product});
}
