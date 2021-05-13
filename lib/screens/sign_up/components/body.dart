import 'package:e_commerce/components/social_cards.dart';
import 'package:e_commerce/screens/sign_up/components/sign_up_form.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20),
            ),
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  'Register Account',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenHeight(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Complete your details or continue \nwith social media',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SignUpForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.07),
                SocialCards(),
                SizedBox(height: getProportionateScreenHeight(10)),
                const Text(
                  'By continuing your confirm that you agree \nwith out Term and Condition',
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
