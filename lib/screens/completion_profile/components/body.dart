import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'completion_profile_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  'Completion Profile',
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
                CompletionProfileForm(),
                SizedBox(height: getProportionateScreenHeight(20)),
                const Text(
                  'By continuing your confirm that you agree \nwith our Tren and Condition',
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
