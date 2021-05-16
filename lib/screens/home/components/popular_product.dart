import 'package:e_commerce/components/product_card.dart';
import 'package:e_commerce/models/Product.dart';
import 'package:e_commerce/screens/details/details_screen.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'section_title.dart';

class PopularProduct extends StatelessWidget {
  const PopularProduct({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(title: 'Popular Product', press: () {}),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...demoProducts
                  .map(
                    (item) => ProductCard(
                      product: item,
                      press: () => Navigator.pushNamed(
                        context,
                        DetailsScreen.routeName,
                        arguments: ProductDetailsArguments(product: item),
                      ),
                    ),
                  )
                  .toList(),
              SizedBox(
                width: getProportionateScreenWidth(20),
              )
            ],
          ),
        ),
      ],
    );
  }
}
