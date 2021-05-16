import 'package:e_commerce/models/Cart.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class CartScreen extends StatelessWidget {
  static String routeName = '/cart';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          const Text(
            'Your Cart',
            style: TextStyle(color: Colors.black),
          ),
          Text(
            '${demoCarts.length} items',
            style: Theme.of(context).textTheme.caption,
          )
        ],
      ),
    );
  }
}
