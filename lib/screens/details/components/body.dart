import 'package:e_commerce/models/Product.dart';
import 'package:flutter/material.dart';

import 'product_images.dart';

class Body extends StatelessWidget {
  const Body({Key key, @required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return ProductImages(product: product);
  }
}
