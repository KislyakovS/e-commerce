import 'package:e_commerce/components/custom_bottom_navigation.dart';
import 'package:e_commerce/enums.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomButtonNavBar(
        selectedMenu: MenuState.home,
      ),
    );
  }
}
