import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../size_config.dart';

class SocialCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocalCard(
          svgIcon: 'assets/icons/google-icon.svg',
          press: () {},
        ),
        SocalCard(
          svgIcon: 'assets/icons/facebook-2.svg',
          press: () {},
        ),
        SocalCard(
          svgIcon: 'assets/icons/twitter.svg',
          press: () {},
        ),
      ],
    );
  }
}

class SocalCard extends StatelessWidget {
  const SocalCard({
    Key key,
    @required this.svgIcon,
    @required this.press,
  }) : super(key: key);

  final String svgIcon;
  final void Function() press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(5)),
        padding: EdgeInsets.all(getProportionateScreenWidth(12)),
        width: getProportionateScreenWidth(40),
        height: getProportionateScreenHeight(40),
        decoration: const BoxDecoration(
          color: Color(0xFFF5F6F9),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(svgIcon),
      ),
    );
  }
}
