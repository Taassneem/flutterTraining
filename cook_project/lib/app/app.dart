// import 'package:cook_project/feature/auth/views/splash_view.dart';
import 'package:cook_project/feature/base/views/base_view.dart';
import 'package:flutter/material.dart';

class CookProject extends StatelessWidget {
  const CookProject({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BaseView(),
    );
  }
}
