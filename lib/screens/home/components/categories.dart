import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Categories extends StatelessWidget {
  final List<Map<String, String>> categories = [
    {'icon': 'assets/icons/Flash Icon.svg', 'text': 'Flash Deal'},
    {'icon': 'assets/icons/Bill Icon.svg', 'text': 'Bill'},
    {'icon': 'assets/icons/Game Icon.svg', 'text': 'Game'},
    {'icon': 'assets/icons/Gift Icon.svg', 'text': 'Daily Gift'},
    {'icon': 'assets/icons/Discover.svg', 'text': 'More'}
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: categories
            .map(
              (item) => CategoryCard(
                  icon: item['icon'], text: item['text'], press: () {}),
            )
            .toList(),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard(
      {Key key, @required this.icon, @required this.text, @required this.press})
      : super(key: key);

  final String icon;
  final String text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(55),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(15)),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFECDF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset(icon),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              text,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
