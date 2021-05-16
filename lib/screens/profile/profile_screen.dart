import 'package:e_commerce/components/custom_bottom_navigation.dart';
import 'package:e_commerce/constants.dart';
import 'package:e_commerce/enums.dart';
import 'package:e_commerce/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'components/body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = '/profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Body(),
      bottomNavigationBar: CustomButtonNavBar(
        selectedMenu: MenuState.profile,
      ),
    );
  }
}
