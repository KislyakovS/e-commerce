import 'package:e_commerce/constants.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              Text(
                'OTP Verefication',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenHeight(28),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'We sent your code to +1 898 860 ***',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.08),
            ],
          ),
        ),
      ),
    );
  }
}
