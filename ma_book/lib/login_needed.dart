import 'package:flutter/material.dart';
import 'package:ma_book/sign_in_view.dart';
import 'package:ma_book/sign_up_view.dart';

class LoginNeeded extends StatelessWidget {
  const LoginNeeded({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const Icon(Icons.close),
          title: const Text(
            'Login to Continue',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
          ),
          centerTitle: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignInView()));
                },
                child: Container(
                    width: 160,
                    height: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: const Color(0xffEEF1F1)),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/login.png',
                            height: 70,
                          ),
                          const Text(
                            'Please Login',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 16),
                          )
                        ])),
              ),
              const SizedBox(height: 80),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpView()));
                },
                child: Container(
                  color: const Color(0xff3E494A),
                  child: const ListTile(
                    leading: Icon(Icons.mail_outline, color: Colors.white),
                    title: Text(
                      'Continue with Email',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 65),
              const Text(
                'You can use your email or continue with one of your social accounts.',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
              ),
              const SizedBox(height: 24),
              Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: const ListTile(
                  leading: Icon(Icons.apple),
                  title: Text(
                    'Sign in with Apple',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: const ListTile(
                  leading: Icon(Icons.account_circle_outlined),
                  title: Text(
                    'Sign in with Facebook',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: const ListTile(
                  leading: Icon(Icons.person),
                  title: Text(
                    'Sign in with Google',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
