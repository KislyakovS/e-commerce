import 'package:e_commerce/components/default_button.dart';
import 'package:e_commerce/screens/splash/components/splash_content.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      'image': 'assets/images/splash_1.png',
      'text': 'Welcom to Toket, Let`s shop!'
    },
    {
      'image': 'assets/images/splash_2.png',
      'text':
          'We help people conect with store \naround United State of America'
    },
    {
      'image': 'assets/images/splash_3.png',
      'text': 'We show the easy way to shop. \nJust stay at home with us'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                        image: splashData[index]['image'],
                        text: splashData[index]['text'],
                      ),
                  onPageChanged: (index) {
                    setState(() {
                      currentPage = index;
                    });
                  }),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20),
                ),
                child: Column(
                  children: [
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    const Spacer(flex: 2),
                    DefaultButton(
                      text: 'Continue',
                      press: () {},
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      width: index == currentPage ? 20 : 6,
      height: 6,
      decoration: BoxDecoration(
        color: index == currentPage ? kPrimaryColor : const Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
