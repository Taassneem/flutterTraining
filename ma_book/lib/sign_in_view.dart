import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const Icon(Icons.cancel_outlined),
          title: const Text(
            'Login to Continue',
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          centerTitle: true),
      body: Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xffEEF1F1)),
                child: Column(children: [
                  Image.asset(
                    'assets/images/login.png',
                    height: 50,
                  ),
                  const Text('Please Login')
                ])),
          )
        ],
      ),
    );
  }
}
