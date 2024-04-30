import 'package:flutter/material.dart';
import 'package:flutter_testing/core/cache/cache_helper.dart';
import 'package:flutter_testing/core/utils/service_locator.dart';
import 'package:flutter_testing/views/on_boarding_view.dart';
import 'package:flutter_testing/views/home_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    navigate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff8E37F5), Color(0xff5C18E1)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Image.asset('assets/images/logo.png', height: 180),
        ),
      ),
    );
  }

  Future<Null> navigate() {
    return Future.delayed(const Duration(seconds: 2), () {
      bool onBoardingVisited =
          getIt.get<CacheHelper>().getData(key: 'OnBoardingVisited') ?? false;
      if (onBoardingVisited) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => const HomeView()));
      } else {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => const OnBoardingView()));
      }
    });
  }
}
