import 'package:flutter/material.dart';

import '../../../constants.dart';

class NoAccountText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Don`t have an account? '),
        GestureDetector(
          onTap: () {},
          child: const Text(
            'Sing Up',
            style: TextStyle(color: kPrimaryColor),
          ),
        )
      ],
    );
  }
}
