import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login_form.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(36.0),
            child: Image.asset('assets/images/cook.png'),
          ),
          Container(
            padding: const EdgeInsets.all(24),
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height * 0.722,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome back!',
                  style: GoogleFonts.baloo2(
                      fontSize: 36, fontWeight: FontWeight.w700),
                ),
                Text(
                  'Login to your account.',
                  style: GoogleFonts.baloo2(
                      fontSize: 24, color: const Color(0xff8F9698)),
                ),
                const SizedBox(height: 40),
                LoginForm()
              ],
            ),
          )
        ],
      ),
    );
  }
}
