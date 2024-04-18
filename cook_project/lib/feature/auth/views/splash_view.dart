import 'package:cook_project/feature/auth/views/login_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => const LoginView()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffFFC700),
      body: SplashViewbody(),
    );
  }
}

class SplashViewbody extends StatelessWidget {
  const SplashViewbody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/cook.png'),
          Text(
            'Cook',
            style:
                GoogleFonts.baloo2(fontSize: 36, fontWeight: FontWeight.w700),
          ),
          Text(
            'everyons\'s chef',
            style:
                GoogleFonts.baloo2(fontSize: 24, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
