import 'package:flutter/material.dart';
import 'package:ma_book/sign_in_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(milliseconds: 500),
      () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const SignInView()));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'MaBOOK',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.w300),
        ),
      ),
    );
  }
}
