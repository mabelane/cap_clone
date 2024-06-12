import 'package:cap_clone/view/shared/default_button.dart';
import 'package:flutter/material.dart';

import '../../../utils/constant/icon_path.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Theme.of(context).colorScheme.surface,
          child: Column(
            children: [
              Stack(
                children: [
                  hello,
                ],
              ),
              defaultButton(
                  context: context, text: "Sign In", onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
