import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
