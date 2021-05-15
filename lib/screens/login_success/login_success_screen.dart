import 'package:e_commerce/components/default_button.dart';
import 'package:e_commerce/screens/home/home_screen.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String routeName = '/login_success';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        title: const Text('Login Success'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(
              'assets/images/success.png',
              height: SizeConfig.screenHeight * 0.4,
            ),
            Text(
              'Login Success',
              style: TextStyle(
                fontSize: getProportionateScreenWidth(30),
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const Spacer(flex: 2),
            SizedBox(
              width: SizeConfig.screenWidth * 0.6,
              child: DefaultButton(
                text: 'Back to Home',
                press: () {
                  Navigator.pushNamed(context, HomeScreen.routeName);
                },
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
