import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'form_forgot.dart';
import 'no_account_text.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  'Forgot Password',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenHeight(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Please enter your email and we will send \nyou a link to return to your account',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.1),
                FormForgotPassword(),
                SizedBox(height: SizeConfig.screenHeight * 0.1),
                NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
