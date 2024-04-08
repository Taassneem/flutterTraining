import 'package:flutter/material.dart';

import 'widget/sign_up_form.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text(
            'Welcome to MaBook',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
          ),
          centerTitle: true),
      body: const Padding(
        padding: EdgeInsets.all(24.0),
        child: SignUpForm(),
      ),
    );
  }
}
