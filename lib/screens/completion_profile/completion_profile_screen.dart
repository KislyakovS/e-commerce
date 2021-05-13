import 'package:flutter/material.dart';

import 'components/body.dart';

class CompletionProfileScreen extends StatelessWidget {
  static String routeName = '/completion_profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Body(),
    );
  }
}
